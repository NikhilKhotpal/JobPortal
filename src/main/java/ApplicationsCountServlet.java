

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import jakarta.*;

import org.json.JSONObject;

/**
 * Servlet implementation class ApplicationsCountServlet
 */
@WebServlet("/applicationscount11")
public class ApplicationsCountServlet extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql://localhost:3306/jobseeker1";  // Database URL
    private static final String DB_USER = "root";  // Database user
    private static final String DB_PASSWORD = "";  // Database password

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        response.setCharacterEncoding("UTF-8");

        try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD)) {
            // Query to get the count of jobs
        	String query = "SELECT COUNT(*) appid FROM applications";
            PreparedStatement stmt = conn.prepareStatement(query);
            ResultSet rs = stmt.executeQuery();

            int jobCount = 0;
            if (rs.next()) {
                jobCount = rs.getInt("appid");  // Get the count from the first column
            }

            // Send the job count as JSON
            out.print("{\"jobCount\": " + jobCount + "}");  // Response in JSON
            out.flush();
        } catch (SQLException e) {
            e.printStackTrace();
            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
            out.print("{\"error\": \"Error fetching job count: " + e.getMessage() + "\"}");
        }
    }
}
