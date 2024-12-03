import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import JopSeeker.Job;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/jobcreate")
public class JobServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Database connection details
    private static final String DB_URL = "jdbc:mysql://localhost:3306/jobseeker1"; // Change this to your DB URL
    private static final String DB_USER = "root"; // Change this to your DB username
    private static final String DB_PASSWORD = ""; // Change this to your DB password

    // This method handles GET requests to display the job data
    protected void doGet(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws ServletException, IOException {
    	List<Job> jobList = new ArrayList<>();
    	
        // Fetch jobs from the database
        try {
            Class.forName("com.mysql.jdbc.Driver"); // Use "com.mysql.cj.jdbc.Driver" for newer MySQL versions
            try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
                 PreparedStatement stmt = conn.prepareStatement("SELECT * FROM jobs");
                 ResultSet rs = stmt.executeQuery()) {
            	String[] id1=request.getParameterValues("id");
                while (rs.next()) {
                    Job job = new Job();
                    job.setId(rs.getInt("id"));
                    job.setJobTitle(rs.getString("job_title"));
                    job.setCompany(rs.getString("company"));
                    job.setJobType(rs.getString("job_type"));
                    job.setLocation(rs.getString("location"));
                    job.setExperience(rs.getString("experience"));
                    job.setSalary(rs.getString("salary"));
                    job.setDescription(rs.getString("description"));
                    job.setCreatedAt(rs.getDate("created_at")); // Assuming you have a created_at column
                    
                    jobList.add(job);
                }
                session.setAttribute("id", id1);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
       
        request.getSession().setAttribute("jobList", jobList);
        System.out.println("Hello job is here " +jobList);
        // Set the jobs as a request attribute
        request.setAttribute("jobList", jobList);
        
        // Forward the request to the JSP page
        request.getRequestDispatcher("JobCards.jsp").forward(request, response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String newJobTitle = request.getParameter("jobTitle");
        String company = request.getParameter("company");
        String jobType = request.getParameter("jobType");
        String location = request.getParameter("location");
        String experience = request.getParameter("experience");
        String salary = request.getParameter("salary");
        String description = request.getParameter("description");
        String cid = request.getParameter("ccid");

        if (cid == null || cid.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Admin ID is required.");
            return;
        }

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);

            // Insert the new job into the database
            PreparedStatement jobStmt = conn.prepareStatement(
                "INSERT INTO jobs (job_title, company, job_type, location, experience, salary, description, ccid) VALUES (?, ?, ?, ?, ?, ?, ?, ?)",
                PreparedStatement.RETURN_GENERATED_KEYS
            );
            jobStmt.setString(1, newJobTitle);
            jobStmt.setString(2, company);
            jobStmt.setString(3, jobType);
            jobStmt.setString(4, location);
            jobStmt.setString(5, experience);
            jobStmt.setString(6, salary);
            jobStmt.setString(7, description);
            jobStmt.setString(8, cid);
            jobStmt.executeUpdate();

            // Get the generated job ID
            ResultSet jobRs = jobStmt.getGeneratedKeys();
            int jobId = 0;
            if (jobRs.next()) {
                jobId = jobRs.getInt(1);
            }
            jobStmt.close();

            // Fetch all user IDs
            PreparedStatement userStmt = conn.prepareStatement("SELECT id FROM users");
            ResultSet userRs = userStmt.executeQuery();

            // Insert notifications for each user
            PreparedStatement notifyStmt = conn.prepareStatement(
                "INSERT INTO notifications (user_id, message, job_id) VALUES (?, ?, ?)"
            );
            String message = "A new job has been posted: " + newJobTitle + " at " + company;
            while (userRs.next()) {
                int userId = userRs.getInt("id");
                notifyStmt.setInt(1, userId);
                notifyStmt.setString(2, message);
                notifyStmt.setInt(3, jobId);
                notifyStmt.addBatch(); // Batch processing for efficiency
            }
            notifyStmt.executeBatch();
            notifyStmt.close();
            userStmt.close();

            conn.close();

            System.out.println("Job and notifications created successfully.");
            session.setAttribute("ccid", cid);
            session.setAttribute("company1", company);

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        // Redirect back to the job listings page
        response.sendRedirect("JobCards.jsp");
    }
}