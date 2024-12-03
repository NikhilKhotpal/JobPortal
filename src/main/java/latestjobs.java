import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

import JopSeeker.Job;

@WebServlet("/latestJobs")
public class latestjobs extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Assuming you have a method to fetch jobs from your database
        List<Job> jobList = fetchJobList();

        // Set the job list as an attribute
        request.setAttribute("jobList", jobList);

        // Forward to your JSP
        request.getRequestDispatcher("jobList.jsp").forward(request, response);
    }

    private List<Job> fetchJobList() {
        // Implementation to fetch jobs from your database
        // This is just a placeholder
        return List.of(new Job(),
                        new Job());
    }
}
