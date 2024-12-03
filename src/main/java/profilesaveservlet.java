import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/profilesave")
public class profilesaveservlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public profilesaveservlet() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // This method will load the current user profile data for editing
        HttpSession session = request.getSession();
        String email = (String) session.getAttribute("email"); // Get user email from session (assuming the email is stored in session)
       System.out.println(email);
        String id= request.getParameter("id");

        if (email != null) {
            try {
                // Database connection
                Class.forName("com.mysql.jdbc.Driver");  // Use the correct driver class
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobseeker1", "root", "");

                String sql = "SELECT * FROM userprofile WHERE id = ?";
                PreparedStatement ps = con.prepareStatement(sql);
                ps.setString(1, id);
                ResultSet rs = ps.executeQuery();

                if (rs.next()) {
                    // Set the data to request attributes for displaying in the edit.jsp
                    request.setAttribute("name", rs.getString("name"));
                    request.setAttribute("profile", rs.getString("profile"));
                    request.setAttribute("institute", rs.getString("institute"));
                    request.setAttribute("address", rs.getString("address"));
                    request.setAttribute("mobile", rs.getString("mobile"));
                    request.setAttribute("date", rs.getString("date"));
                    request.setAttribute("gender", rs.getString("gender"));
                    request.setAttribute("location", rs.getString("location"));
                    request.setAttribute("hometown", rs.getString("hometown"));
                    request.setAttribute("experience", rs.getString("experience"));
                    request.setAttribute("degree", rs.getString("degree"));
                    request.setAttribute("educationinstitute", rs.getString("educationinstitute"));
                    request.setAttribute("batch", rs.getString("batch"));
                    request.setAttribute("skills", rs.getString("skills"));
                    request.setAttribute("certifications", rs.getString("certifications"));
                    request.setAttribute("resume", rs.getString("resume"));
                }

                // Forward to the edit page (edit.jsp)
                request.getRequestDispatcher("/edit.jsp").forward(request, response);

            } catch (Exception ex) {
                ex.printStackTrace();
                response.getWriter().println("Error loading profile: " + ex.getMessage());
            }
        } else {
            response.getWriter().println("User not logged in.");
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // This method will handle saving the updated profile data or inserting a new one if not present
    	  HttpSession session = request.getSession();
          String email = (String) session.getAttribute("email"); // Get user email from session (assuming the email is stored in session)
         System.out.println(email);
        String id= request.getParameter("id");

       // String id = (String) session.getAttribute("id"); // Get user email from session (assuming the email is stored in session)

        if (id != null) {
            String name = request.getParameter("name");
            String profile = request.getParameter("profile");
            String institute = request.getParameter("institute");
            String address = request.getParameter("address");
            String mobile = request.getParameter("mobile");
            String date = request.getParameter("date");
            String gender = request.getParameter("gender");
            String location = request.getParameter("location");
            String hometown = request.getParameter("hometown");
            String experience = request.getParameter("experience");
            String degree = request.getParameter("degree");
            String educationinstitute = request.getParameter("educationinstitute");
            String batch = request.getParameter("batch");
            String skills = request.getParameter("skills");
            String certification = request.getParameter("certifications");
            String resume = request.getParameter("resume");

            try {
                // Database connection
                Class.forName("com.mysql.jdbc.Driver");  // Use the correct driver class
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobseeker1", "root", "");

                // First, check if the profile already exists for the email
                String checkSql = "SELECT COUNT(*) FROM userprofile WHERE id = ?";
                PreparedStatement checkPs = con.prepareStatement(checkSql);
                checkPs.setString(1, id);
                ResultSet checkRs = checkPs.executeQuery();
                checkRs.next();
                int count = checkRs.getInt(1);

                if (count > 0) {
                    // Profile exists, so update the profile
                    String updateSql = "UPDATE userprofile SET name = ?, profile = ?, institute = ?, address = ?, mobile = ?, date = ?, gender = ?, location = ?, hometown = ?, experience = ?, degree = ?, educationinstitute = ?, batch = ?, skills = ?, certifications = ?, resume = ? WHERE id = ?";
                    PreparedStatement ps = con.prepareStatement(updateSql);

                    ps.setString(1, name);
                    ps.setString(2, profile);
                    ps.setString(3, institute);
                    ps.setString(4, address);
                    ps.setString(5, mobile);
                    ps.setString(6, date);
                    ps.setString(7, gender);
                    ps.setString(8, location);
                    ps.setString(9, hometown);
                    ps.setString(10, experience);
                    ps.setString(11, degree);
                    ps.setString(12, educationinstitute);
                    ps.setString(13, batch);
                    ps.setString(14, skills);
                    ps.setString(15, certification);
                    ps.setString(16, resume);
                    ps.setString(17, id);  // Email is used to uniquely identify the user

                    int rowsAffected = ps.executeUpdate();
                    if (rowsAffected > 0) {
                        // If update is successful, set updated values in session
                        session.setAttribute("name", name);
                        session.setAttribute("profile", profile);
                        session.setAttribute("institute", institute);
                        session.setAttribute("address", address);
                        session.setAttribute("mobile", mobile);
                        session.setAttribute("date", date);
                        session.setAttribute("gender", gender);
                        session.setAttribute("location", location);
                        session.setAttribute("hometown", hometown);
                        session.setAttribute("experience", experience);
                        session.setAttribute("degree", degree);
                        session.setAttribute("educationinstitute", educationinstitute);
                        session.setAttribute("batch", batch);
                        session.setAttribute("skills", skills);
                        session.setAttribute("certifications", certification);
                        session.setAttribute("resume", resume);

                        response.getWriter().println("Profile updated successfully.");
                    } else {
                        response.getWriter().println("Failed to update profile.");
                    }
                } else {
                	String sql="INSERT INTO userprofile ( name, profile, institute, address, mobile, date, gender, location, hometown, experience, degree, educationinstitute, batch, skills, certifications, resume,id,emailids) "
         		           + "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?,?)";
         		PreparedStatement ps=con.prepareStatement(sql);
         		
                 ps.setString(1, name);
                 ps.setString(2, profile);
                 ps.setString(3, institute);
                 ps.setString(4, address);
                 ps.setString(5, mobile);
                 ps.setString(6, date);
                 ps.setString(7, gender);
                 ps.setString(8, location);
                 ps.setString(9, hometown);
                 ps.setString(10, experience);
                 ps.setString(11, degree);
                 ps.setString(12, educationinstitute);
                 ps.setString(13, batch);
                 ps.setString(14, skills);
                 ps.setString(15, certification);
                 ps.setString(16, resume);
                 ps.setString(17, id);
                 ps.setString(18, email);


                    int rowsAffected = ps.executeUpdate();
                    if (rowsAffected > 0) {
                        // Set the newly created profile values in session
                        session.setAttribute("sesname", name);
                        session.setAttribute("profile", profile);
                        session.setAttribute("institute", institute);
                        session.setAttribute("address", address);
                        session.setAttribute("mobile", mobile);
                        session.setAttribute("date", date);
                        session.setAttribute("gender", gender);
                        session.setAttribute("location", location);
                        session.setAttribute("hometown", hometown);
                        session.setAttribute("experience", experience);
                        session.setAttribute("degree", degree);
                        session.setAttribute("educationinstitute", educationinstitute);
                        session.setAttribute("batch", batch);
                        session.setAttribute("skills", skills);
                        session.setAttribute("certifications", certification);
                        session.setAttribute("resume", resume);
                        session.setAttribute("id", id);
                        response.getWriter().println("Profile created successfully.");
                    } else {
                        response.getWriter().println("Failed to create profile.");
                    }
                }
            } catch (Exception ex) {
                ex.printStackTrace();
                response.getWriter().println("Error saving profile: " + ex.getMessage());
            }
        } else {
            response.getWriter().println("User not logged in.");
        }
    }
}
