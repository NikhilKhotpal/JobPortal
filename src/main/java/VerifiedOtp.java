

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

/**
 * Servlet implementation class VerifiedOtp
 */
@WebServlet("/verifyOtp")
public class VerifiedOtp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerifiedOtp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		HttpSession session = request.getSession();
        String sessionOtp = (String) session.getAttribute("otp");
        String inputOtp = request.getParameter("otp");

        if (inputOtp.equals(sessionOtp)) {
            session.removeAttribute("otp"); // OTP verified, remove it from session
            response.sendRedirect("Register.jsp"); // Redirect to main page
        } else {
            request.setAttribute("message", "Invalid OTP. Please try again.");
            request.getRequestDispatcher("newPassword.jsp").forward(request, response);
        }
		
	}

}
