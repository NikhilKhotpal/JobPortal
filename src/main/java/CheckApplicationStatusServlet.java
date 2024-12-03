

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.json.JSONObject;

/**
 * Servlet implementation class CheckApplicationStatusServlet
 */
@WebServlet("/checkApplicationStatus")
public class CheckApplicationStatusServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("application/json");

        int jobId = Integer.parseInt(request.getParameter("jobId"));
        int userId = Integer.parseInt(request.getParameter("userId")); // Assume user ID is sent

        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobseeker1", "user", "password")) {
            String sql = "SELECT COUNT(*) FROM applications WHERE job_id = ? AND user_id = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setInt(1, jobId);
                stmt.setInt(2, userId);
                try (ResultSet rs = stmt.executeQuery()) {
                    JSONObject json = new JSONObject();
                    if (rs.next() && rs.getInt(1) > 0) {
                        json.put("applied", true); // User already applied
                    } else {
                        json.put("applied", false); // New application
                    }
                    response.getWriter().print(json);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
        }
    }
}
