
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class ValidateOtp
 */
@WebServlet("/ValidateOtp")
public class ValidateOtp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int value = Integer.parseInt(request.getParameter("otp"));
        HttpSession session = request.getSession();
        Integer otp = (Integer) session.getAttribute("otp");

        RequestDispatcher dispatcher = null;

        if (otp == null) {
            // If there's no OTP in session, redirect to the OTP page with an error
            request.setAttribute("message", "Session expired. Please request a new OTP.");
            dispatcher = request.getRequestDispatcher("otp.jsp");
            dispatcher.forward(request, response);
            return;
        }

        if (value == otp) {
            // OTP is correct
            request.setAttribute("email", request.getParameter("email"));
            request.setAttribute("status", "success");
            dispatcher = request.getRequestDispatcher("newPassword.jsp");
            dispatcher.forward(request, response);
        } else {
            // Invalid OTP
            request.setAttribute("errorMessage", "Invalid OTP. Please try again."); // Set error message
            dispatcher = request.getRequestDispatcher("otp.jsp"); // Forward back to the OTP page
            dispatcher.forward(request, response);
        }
    }
}