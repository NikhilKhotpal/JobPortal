import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;
import java.util.Random;
import jakarta.mail.Message;
import jakarta.mail.MessagingException;
import jakarta.mail.PasswordAuthentication;
import jakarta.mail.Session;
import jakarta.mail.Transport;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/forgotPassword")
public class ForgotPassword extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        RequestDispatcher dispatcher = null;
        int otpvalue = 0;
        HttpSession mySession = request.getSession();
        boolean emailExists = false;

        // Database connection parameters
        String dbUrl = "jdbc:mysql://localhost:3306/jobseeker1";
        String dbUser = "root";
        String dbPassword = "";

        if (email != null && !email.isEmpty()) {
            // Check if email exists in the database
            try {
                // Load the database driver (if required)
                Class.forName("com.mysql.jdbc.Driver");
                
                // Establish a database connection
                Connection connection = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

                // Query to check if the email exists
                String query = "SELECT * FROM users WHERE email = ?";
                PreparedStatement preparedStatement = connection.prepareStatement(query);
                preparedStatement.setString(1, email);
                ResultSet resultSet = preparedStatement.executeQuery();

                if (resultSet.next()) {
                    // Email exists
                    emailExists = true;
                }

                // Close database resources
                resultSet.close();
                preparedStatement.close();
                connection.close();

            } catch (Exception e) {
                e.printStackTrace();
            }

            if (emailExists) {
                // Generate OTP
                Random rand = new Random();
                otpvalue = rand.nextInt(1255650);

                // Email properties
                Properties props = new Properties();
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");
                props.put("mail.smtp.auth", "true");
                props.put("mail.smtp.starttls.enable", "true"); // Enable STARTTLS

                // Create session
                Session session = Session.getInstance(props, new jakarta.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        // Replace with your email and app password
                        return new PasswordAuthentication("khotpalnikhil492@gmail.com", "porfyyrsysnhgxsq");
                    }
                });

                try {
                    // Compose email message
                    MimeMessage message = new MimeMessage(session);
                    message.setFrom(new InternetAddress("khotpalnikhil492@gmail.com")); // Sender's email
                    message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
                    message.setSubject("Vflyorions Technology Pvt. Ltd. - OTP Verification");
                    message.setText("Your OTP for changing password is: " + otpvalue);

                    // Send the message
                    Transport.send(message);
                    System.out.println("Message sent successfully");

                    request.setAttribute("message", "OTP is sent to your email id");
                    mySession.setAttribute("otp", otpvalue);
                    mySession.setAttribute("email", email);

                    // Forward to EnterOtp.jsp
                    dispatcher = request.getRequestDispatcher("otp.jsp");
                    dispatcher.forward(request, response);

                } catch (MessagingException e) {
                    e.printStackTrace();
                    throw new RuntimeException(e);
                }
            } else {
                // Email not found in database, set error message
                request.setAttribute("errorMessage", "Invalid email, please try again.");
                dispatcher = request.getRequestDispatcher("forgotPassword.jsp"); // Forward back to the same page
                dispatcher.forward(request, response);
            }
        }
    }
}
