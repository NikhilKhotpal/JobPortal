import java.io.BufferedReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.json.JSONObject;

import com.google.gson.Gson;

import JopSeeker.Job;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Jobsearch")
public class JobSearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Read the request body
        StringBuilder sb = new StringBuilder();
        String line;
        try (BufferedReader reader = request.getReader()) {
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
        }
        
        // Parse the JSON data
        JSONObject json = new JSONObject(sb.toString());
        String jobTitle = json.getString("jobTitle");
        String location = json.getString("location");

        // Perform your search logic here (query your database, etc.)

        // Example response
        JSONObject jsonResponse = new JSONObject();
        jsonResponse.put("message", "Search successful");
        jsonResponse.put("jobTitle", jobTitle);
        jsonResponse.put("location", location);
        // Return results as JSON
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(jsonResponse.toString());
    }
}
