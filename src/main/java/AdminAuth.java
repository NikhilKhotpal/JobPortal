import jakarta.mail.Authenticator;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.Random;

/**
 * Servlet implementation class AdminAuth
 */
@WebServlet("/AdminAuth") // Corrected the servlet URL mapping
public class AdminAuth extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database credentials
    private static final String DB_URL = "jdbc:mysql://localhost:3306/jobseeker1";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        String action = request.getParameter("action");
        String email = request.getParameter("cemail");
        String password = request.getParameter("password");
        String companyName = request.getParameter("company"); // Corrected variable name

        Connection conn = null;
        String message = "";
        String icon = "";
        HttpSession session = request.getSession(); // To store OTP for validation

        try {
            // Load the MySQL driver
            Class.forName("com.mysql.jdbc.Driver"); // Use 'com.mysql.cj.jdbc.Driver' for MySQL Connector/J 8.0+
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            if ("login".equals(action)) {
                String checkEmailSQL = "SELECT cid,password FROM adminlogin WHERE cemail = ?";
                try (PreparedStatement psCheck = conn.prepareStatement(checkEmailSQL)) {
                    psCheck.setString(1, email);
                    ResultSet rsCheck = psCheck.executeQuery();

                    if (!rsCheck.next()) {
                        icon = "error";
                        message = "No User Found! Please register.";
                    } else {
                        String storedPassword = rsCheck.getString("password");

                        if (storedPassword.equals(password)) {
                            // Password is correct, generate OTP
                            int otp = generateOtp();
                            session.setAttribute("otp", otp);  // Store OTP in session
                            session.setAttribute("email", email);  // Store email for later use
                            session.setAttribute("cid", rsCheck.getString("cid"));  // Store cid in session
                            // Send OTP to email
                            sendOtpEmail(email, otp);

                            // Redirect to OTP verification page
                            response.sendRedirect("loginOtp1.jsp");
                            return;  // Ensure no further processing happens after redirect
                        } else {
                            icon = "error";
                            message = "Incorrect Password! Please try again.";
                        }
                    }
                }
            } else if ("register".equals(action)) {
                // Check if email already exists
                String checkEmailExistsSQL = "SELECT cemail FROM adminlogin WHERE cemail = ?";
                try (PreparedStatement psCheckExists = conn.prepareStatement(checkEmailExistsSQL)) {
                    psCheckExists.setString(1, email);
                    ResultSet rsExists = psCheckExists.executeQuery();

                    if (rsExists.next()) {
                        icon = "error";
                        message = "Email already exists! Please login or use another email.";
                    } else {
                        // Insert user details into the database
                        String insertSQL = "INSERT INTO adminlogin (company, cemail, password) VALUES (?, ?, ?)";
                        try (PreparedStatement psInsert = conn.prepareStatement(insertSQL)) {
                            psInsert.setString(1, companyName); // Corrected variable name
                            psInsert.setString(2, email);
                            psInsert.setString(3, password);
                            int rowsAffected = psInsert.executeUpdate();

                            if (rowsAffected > 0) {
                                icon = "success";
                                message = "Registration successful! Please login.";
                            } else {
                                icon = "error";
                                message = "Registration failed. Please try again.";
                            }
                        }
                    }
                }
            } else if ("verifyOtp".equals(action)) {
                // OTP Verification logic
                int enteredOtp = Integer.parseInt(request.getParameter("otp"));
                Integer storedOtp = (Integer) session.getAttribute("otp");

                if (storedOtp != null && enteredOtp == storedOtp) {
                    // OTP is correct, redirect to dashboard
                    icon = "success";
                    message = "Login Successful! Welcome back.";
                    response.sendRedirect("Insert.jsp");
                    return;  // Ensure no further processing happens after redirect
                } else {
                    icon = "error";
                    message = "Invalid OTP! Please try again.";
                }
            }

            // Setting attributes for feedback
            request.setAttribute("icon", icon);
            request.setAttribute("message", message);
            request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("icon", "error");
            request.setAttribute("message", "Error Occurred! Something went wrong.");
            request.getRequestDispatcher("AdminLogin.jsp").forward(request, response);
        } finally {
            try {
                if (conn != null) conn.close();
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
    }

    // Method to generate random OTP
    private int generateOtp() {
        Random random = new Random();
        return 100000 + random.nextInt(900000);  // Generates a 6-digit OTP
    }

    // Method to send OTP via email
    private void sendOtpEmail(String recipientEmail, int otp) throws MessagingException {
        // Email sending settings
        String senderEmail = "khotpalnikhil492@gmail.com";  // Use your email
        String senderPassword = "porfyyrsysnhgxsq"; // Use your email password
        String smtpHost = "smtp.gmail.com";
        int smtpPort = 587;

        // Set properties for email connection
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", smtpHost);
        props.put("mail.smtp.port", smtpPort);

        // Get email session
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(senderEmail, senderPassword);
            }
        });

        // Create the email content
        Message message = new MimeMessage(session);
        message.setFrom(new InternetAddress(senderEmail));
        message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(recipientEmail));
        message.setSubject("Your OTP for Login");
        message.setText("Dear user,\n\nYour OTP for login is: " + otp + "\n\nThank you!");

        // Send the email
        Transport.send(message);
    }
}