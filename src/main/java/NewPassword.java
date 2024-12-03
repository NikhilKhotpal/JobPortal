import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String newPassword = request.getParameter("password");
        String confPassword = request.getParameter("confPassword");
        RequestDispatcher dispatcher = null;

        // Check if the passwords match
        if (newPassword == null || confPassword == null || !newPassword.equals(confPassword)) {
            // Passwords do not match
            request.setAttribute("errorMessage", "New password and confirm password do not match.");
            dispatcher = request.getRequestDispatcher("newPassword.jsp"); // Adjust this if your JSP name is different
            dispatcher.forward(request, response);
            return; // Stop further processing
        }

        try {
            // Load the MySQL JDBC driver
            Class.forName("com.mysql.jdbc.Driver");
            // Establish a connection to the database
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobseeker1", "root", "");
            // Prepare the SQL statement to update the password
            PreparedStatement pst = con.prepareStatement("UPDATE users SET password = ? WHERE email = ?");
            pst.setString(1, newPassword);
            pst.setString(2, (String) session.getAttribute("email"));

            // Execute the update
            int rowCount = pst.executeUpdate();
            if (rowCount > 0) {
                // Password reset was successful
                request.setAttribute("icon", "success");
                request.setAttribute("message", "Password reset successfully!");
            } else {
                // Password reset failed
                request.setAttribute("icon", "error");
                request.setAttribute("message", "Password reset failed. Please try again.");
            }
            // Forward to Register.jsp
            dispatcher = request.getRequestDispatcher("Register.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            // Handle exceptions (you might want to set an error message here too)
            request.setAttribute("icon", "error");
            request.setAttribute("message", "An error occurred while resetting the password.");
            dispatcher = request.getRequestDispatcher("Register.jsp");
            dispatcher.forward(request, response);
        }
    }
}
