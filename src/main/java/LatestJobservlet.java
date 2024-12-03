

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.json.JSONArray;
import org.json.JSONObject;

/**
 * Servlet implementation class LatestJobservlet
 */
@WebServlet("/LatestJob")
public class LatestJobservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LatestJobservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		 response.setContentType("application/json");
	        PrintWriter out = response.getWriter();
	        JSONArray jsonArray = new JSONArray();
	        ArrayList<JSONObject> jobList = new ArrayList<>(); // Create an ArrayList to hold job entries

	        // Use try-with-resources to ensure resources are closed properly
	        try (Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobseeker1", "root", "");
	             PreparedStatement stmt = conn.prepareStatement("SELECT * FROM jobs ORDER BY created_at DESC LIMIT 6");
	             ResultSet rs = stmt.executeQuery()) {

	            // Process the result set and convert each job entry to a JSONObject
	            while (rs.next()) {
	                JSONObject job = new JSONObject();
	                job.put("title", rs.getString("job_title"));
	                job.put("company", rs.getString("company"));
	                job.put("type", rs.getString("job_type"));
	                job.put("location", rs.getString("location"));
	                job.put("experience", rs.getInt("experience"));
	                job.put("salary", rs.getDouble("salary"));
	                job.put("postedOn", rs.getTimestamp("created_at").toString());
	                
	                jobList.add(job); // Add job JSONObject to the ArrayList
	            }

	        } catch (Exception e) {
	            e.printStackTrace();
	            response.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
	            out.print("{\"error\":\"An error occurred while retrieving jobs.\"}");
	            return; // Return early on error to avoid sending an empty array
	        }

	        // Convert ArrayList to JSONArray before sending the response
	        for (JSONObject job : jobList) {
	            jsonArray.put(job);
	        }

	        // Send the JSON array as response
	        out.print(jsonArray.toString());
	        out.flush();
	    
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
