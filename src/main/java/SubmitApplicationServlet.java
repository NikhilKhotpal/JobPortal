import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.Authenticator.RequestorType;
import java.net.ResponseCache;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.mail.internet.MimeBodyPart;
import jakarta.mail.internet.MimeMultipart;

@WebServlet("/submit")
@MultipartConfig
public class SubmitApplicationServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/jobseeker1"; // Update your DB URL
    private static final String DB_USER = "root"; // Update your DB user
    private static final String DB_PASSWORD = ""; // Update your DB password

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session= request.getSession();
        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Establish connection
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
                // Retrieve specific data based on form input
            
                String jobId = request.getParameter("ccid"); // Job ID selected by user
               
                String applicantEmail = request.getParameter("emailid"); // Applicant email
                System.out.println("CCID: " + jobId);

                // Fetch job title based on the selected job ID
                String jobTitle = getJobTitleByCid(jobId, conn);
                if (jobTitle == null) {
                    out.println("Job title not found for the given Job ID.");
                    response.sendRedirect("alljobs.jsp");
                    return;
                }
                // Check if the user has already applied for this job
                if (hasUserApplied(jobId, applicantEmail, conn)) {
                    out.println("You have already applied for this job.");
                    
                    return; // Exit the method if the user has already applied
                }

                // Fetch company email based on jobId (cid)
                String companyEmail = getCompanyEmailByCid(jobId, conn);
                if (companyEmail == null) {
                	System.out.println("Company Email  : " +companyEmail);
                    out.println("Company email not found for the job ID."+companyEmail);
                    return;
                }

                // Handle resume file upload
                Part resumePart = request.getPart("resume");
                if (resumePart == null || resumePart.getSubmittedFileName() == null || resumePart.getSize() == 0) {
                    out.println("No resume file was uploaded.");
                    return;
                }
                String resumeFileName = resumePart.getSubmittedFileName();

                // Save the resume file in an 'uploads' directory
                String savePath = getServletContext().getRealPath("") + File.separator + "uploads";
                File fileSaveDir = new File(savePath);
                if (!fileSaveDir.exists()) {
                    fileSaveDir.mkdir();
                }
                resumePart.write(savePath + File.separator + resumeFileName);

                // Insert application details into the database
                String sql = "INSERT INTO applications (resume_path, appid, emailid) VALUES (?, ?, ?)";
                try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                    stmt.setString(1, "uploads/" + resumeFileName); // path to the resume
                    stmt.setString(2, jobId);
                    stmt.setString(3, applicantEmail);

                    int rowsAffected = stmt.executeUpdate();
                    if (rowsAffected > 0) {
                        // Send email to the company with the job title and applicant email
                        String companyEmailSubject = "New Job Application for " + jobTitle;
                        String companyEmailBody = "Dear Hiring Manager,\n\nA new application has been submitted for the " + jobTitle + " position.\n\nApplicant Email: " + applicantEmail;

                        if (sendEmail(companyEmail, companyEmailSubject, companyEmailBody, savePath + File.separator + resumeFileName)) {
                            out.println("Application submitted successfully! Resume uploaded and email sent to the company.");

                            // Send confirmation email to the applicant
                            String applicantEmailSubject = "Application Confirmation for " + jobTitle;
                            String applicantEmailBody = "Thank you for applying for the " + jobTitle + " position. Your resume has been successfully submitted.";

                            if (sendEmail(applicantEmail, applicantEmailSubject, applicantEmailBody, null)) {
                                out.println("Confirmation email sent to the applicant.");
                            } else {
                                out.println("Failed to send confirmation email to the applicant.");
                            }
                        } else {
                            out.println("Failed to send email to the company.");
                        }
                    } else {
                        out.println("Failed to submit application.");
                    }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.println("An error occurred: " + e.getMessage());
        }
    }

    // Retrieve company email based on jobId
    private String getCompanyEmailByCid(String cid, Connection conn) {
        String email = null;
        String query = "SELECT a.cemail FROM adminlogin a JOIN jobs j ON a.cid = j.id WHERE a.cid = ?";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, cid);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                email = rs.getString("cemail");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return email;
    }

    // Retrieve job title based on jobId
    private String getJobTitleByCid(String id, Connection conn) {
        String jobTitle = null;
        String query = "SELECT job_title FROM jobs WHERE ccid = ?";
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, id);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                jobTitle = rs.getString("job_title");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return jobTitle;
    }

    // The getjobapplied method
    private boolean hasUserApplied(String jobId, String applicantEmail, Connection conn) {
        boolean applied = false;
        String query = "SELECT COUNT(*) FROM applications WHERE appid = ? AND emailid = ?";
        
        try (PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, jobId);
            stmt.setString(2, applicantEmail);
            ResultSet rs = stmt.executeQuery();
            
            if (rs.next() && rs.getInt(1) > 0) {
                applied = true; // User has already applied for this specific job post
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return applied;
    }

    // Email sending function
    private boolean sendEmail(String recipient, String subject, String body, String attachmentPath) {
        Properties properties = new Properties();
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(properties, new jakarta.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication("khotpalnikhil492@gmail.com", "porfyyrsysnhgxsq"); // Update with your email credentials
            }
        });

        try {
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress("khotpalnikhil492@gmail.com"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipient));
            message.setSubject(subject);

            MimeMultipart multipart = new MimeMultipart();

            // Body part
            MimeBodyPart bodyPart = new MimeBodyPart();
            bodyPart.setText(body);
            multipart.addBodyPart(bodyPart);

            // Attachment part
            if (attachmentPath != null) {
                MimeBodyPart attachmentPart = new MimeBodyPart();
                attachmentPart.attachFile(attachmentPath);
                multipart.addBodyPart(attachmentPart);
            }

            message.setContent(multipart);
            Transport.send(message);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
