import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.google.gson.Gson;
import JopSeeker.Job;

@WebServlet("/joblist")
public class Jopservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/jobseeker1"; 
    private static final String DB_USER = "root"; 
    private static final String DB_PASSWORD = ""; 

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        List<Job> jobs = fetchJobListFromDatabase();
        Gson gson = new Gson();
        String json = gson.toJson(jobs); // Convert job list to JSON

        out.print(json); // Send JSON response
        out.flush();
    }

    private List<Job> fetchJobListFromDatabase() {
        List<Job> jobs = new ArrayList<>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            stmt = conn.createStatement();
            String sql = "SELECT id,job_title, company, job_type, location, experience, salary, created_at,description FROM jobs"; 
            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                Job job = new Job();
                job.setId(rs.getInt("id")); // Assuming you don't have an ID in your SQL query
                job.setJobTitle(rs.getString("job_title"));
                job.setCompany(rs.getString("company"));
                job.setJobType(rs.getString("job_type"));
                job.setLocation(rs.getString("location"));
                job.setExperience(rs.getString("experience"));
                job.setSalary(rs.getString("salary"));
                job.setCreatedAt(rs.getTimestamp("created_at"));
                job.setDescription(rs.getString("description")); // Set job description

                //job.setCategory(rs.getString("category")); // Assuming you have added this to your SQL query

                jobs.add(job);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return jobs; // Return the populated job list
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
