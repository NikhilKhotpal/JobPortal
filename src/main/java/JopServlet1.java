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
import JopSeeker.Company;

@WebServlet("/joblist1")
public class JopServlet1 extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/jobseeker1"; 
    private static final String DB_USER = "root"; 
    private static final String DB_PASSWORD = ""; 

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter out = response.getWriter();

        List<Company> companies = fetchCompanyListFromDatabase();
        Gson gson = new Gson();
        String json = gson.toJson(companies); // Convert company list to JSON

        out.print(json); // Send JSON response
        out.flush();
    }

    private List<Company> fetchCompanyListFromDatabase() {
        List<Company> companies = new ArrayList<>();
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            Class.forName("com.mysql.jdbc.Driver"); // Updated driver class for MySQL Connector/J 8.0+
            conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
            stmt = conn.createStatement();
            String sql = "SELECT cid, company, cemail, password FROM adminlogin"; // Fetch specific fields

            rs = stmt.executeQuery(sql);

            while (rs.next()) {
                Company company = new Company();
                company.setCid(rs.getInt("cid")); // Assuming cid is an Integer
                company.setCompanyName(rs.getString("company")); // Assuming there's a field called 'company'
                company.setCemail(rs.getString("cemail")); // Assuming there's a field called 'cemail'
                
                // Don't send password in response for security reasons. 
                // Instead, handle password securely (hashing, not sending over network).
                
                companies.add(company); // Add the company to the list
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

        return companies; // Return the populated company list
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
