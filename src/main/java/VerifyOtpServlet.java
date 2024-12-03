import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/verifyOtp1")
public class VerifyOtpServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();
        String message;
        String icon;

        try {
            int enteredOtp = Integer.parseInt(request.getParameter("otp"));
            Integer storedOtp = (Integer) session.getAttribute("otp");
            Long otpGenerationTime = (Long) session.getAttribute("otpGenerationTime");

            if (storedOtp != null && otpGenerationTime != null) {
                long currentTime = System.currentTimeMillis();
                long timeDifference = currentTime - otpGenerationTime;

                if (timeDifference > 60000) { // 60 seconds (1 minute)
                    icon = "error";
                    message = "OTP Expired! Please generate a new one.";
                    session.removeAttribute("otp"); // Remove expired OTP
                } else if (enteredOtp == storedOtp) {
                    icon = "success";
                    message = "Login Successful! Welcome back.";

                    // Retrieve the user ID from the session (assuming it's stored during login)
                    Integer userId = (Integer) session.getAttribute("userId");

                    if (userId != null) {
                        // Redirect to Dashboard.jsp with user ID as a query parameter
                        response.sendRedirect("LoginDashboard.jsp?id=" + userId);
                    } else {
                        // If userId is not in session, handle it accordingly
                        response.sendRedirect("LoginDashboard.jsp");
                    }
                    return;
                } else {
                    icon = "error";
                    message = "Invalid OTP! Please try again.";
                }
            } else {
                icon = "error";
                message = "No OTP found! Please generate a new one.";
            }

            // Store the message in session and redirect back to OTP entry page
            session.setAttribute("icon", icon);
            session.setAttribute("message", message);
            response.sendRedirect("otp1.jsp");

        } catch (Exception e) {
            e.printStackTrace();
            session.setAttribute("icon", "error");
            session.setAttribute("message", "Error Occurred! Something went wrong.");
            response.sendRedirect("otp1.jsp");
        }
    }
}
