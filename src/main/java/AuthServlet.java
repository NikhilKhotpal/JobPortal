import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.Random;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;    
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;

@WebServlet("/auth")
public class AuthServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/jobseeker1";
    private static final String DB_USER = "root";
    private static final String DB_PASSWORD = "";

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String action = request.getParameter("action");
        String email = request.getParameter("email");
        String fullName = request.getParameter("fullname");
        String password = request.getParameter("password");
        HttpSession session = request.getSession();
        session.setAttribute("otpSent", true); // To store OTP for validation
        String message=null;
        String icon=null;
        String message1=null;
        String emailErrorIcon = null;

        try {
            // Load MySQL driver and establish connection
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            if ("signup".equals(action)) {
                // Registration Logic

                // Check if email already exists
                String checkEmailSQL = "SELECT email FROM users WHERE email = ?";
                PreparedStatement psCheck = conn.prepareStatement(checkEmailSQL);
                psCheck.setString(1, email);
                ResultSet rsCheck = psCheck.executeQuery();

                if (rsCheck.next()) {
                    emailErrorIcon = "error";
                    message1 = "Email Already Exists! Please log in.";
                } else {
                    // Store the password directly (without hashing)
                    String sql = "INSERT INTO users (fullname, email, password) VALUES (?, ?, ?)";
                    PreparedStatement ps = conn.prepareStatement(sql);
                    ps.setString(1, fullName);
                    ps.setString(2, email);
                    ps.setString(3, password); // Store password as plain text

                    int result = ps.executeUpdate();
                    if (result > 0) {
                        icon = "success";
                        message = "Registration Successful! You can now log in.";
                    } else {
                        icon = "error";
                        message = "Registration Failed! Please try again.";
                    }
                }

            } else if ("login".equals(action)) {
                // Login Logic: Check if the email exists first
                String checkEmailSQL = "SELECT id,password FROM users WHERE email = ?";
                PreparedStatement psCheck = conn.prepareStatement(checkEmailSQL);
                psCheck.setString(1, email);
                ResultSet rsCheck = psCheck.executeQuery();

                if (!rsCheck.next()) {
                    // Email does not exist
                    icon = "error";
                    message = "No User Found! Please register.";
                } else {
                    // Get the stored plain text password from the database
                    String storedPassword = rsCheck.getString("password");

                    // Compare input password with the stored plain text password
                    if (storedPassword.equals(password)) {
                        // Password is correct, now generate OTP
                        session.setAttribute("id", rsCheck.getString("id"));
                        int otp = generateOtp();
                        session.setAttribute("otp", otp); // Store OTP in session
                        session.setAttribute("otpGenerationTime", System.currentTimeMillis());
                        session.setAttribute("email", email); // Store email for later use
                        session.setAttribute("fullName", fullName);

                        // Send OTP to email
                        sendOtpEmail(email, otp);

                        // Redirect to OTP verification page
                        response.sendRedirect("otp1.jsp");
                        return; // Ensure no further processing happens after redirect
                    } else {
                        icon = "error";
                        message = "Incorrect Password! Please try again.";
                    }
                }
            } else {
                icon = "error";
                message = "Invalid Action!";
            }

            // Close the connection
            conn.close();

            // Store the message in session
            request.getSession().setAttribute("icon", icon);
            request.getSession().setAttribute("message", message);
            request.getSession().setAttribute("message1", message1);
            request.getSession().setAttribute("emailErrorIcon", emailErrorIcon);
            session.setAttribute("sesemail11", email); // This should correctly store the email in session 
            session.setAttribute("sesfname", fullName);

            // Redirect to Register.jsp or appropriate page
            response.sendRedirect("Register.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            request.getSession().setAttribute("icon", "error");
            request.getSession().setAttribute("message", "Error Occurred! Something went wrong.");
            response.sendRedirect("Register.jsp");
        }
    }

    // Method to generate random OTP
    private int generateOtp() {
        Random random = new Random();
        return 100000 + random.nextInt(900000); // Generates a 6-digit OTP
    }

    // Method to send OTP via email
    private void sendOtpEmail(String recipientEmail, int otp) throws MessagingException {
        // Email sending settings
        String senderEmail = "khotpalnikhil492@gmail.com"; // Use your email
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
        message.setSubject("Vflyorions Technology pvt. ltd.... Your OTP for Login");
        message.setText("Dear user,\n\nYour OTP for login is: " + otp + "\n\nThank you!");

        // Send the email
        Transport.send(message);
    }
}
