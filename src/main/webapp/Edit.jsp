<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Profile</title>
</head>
<body>

<%
    // Retrieve the ID from session or request
    String id1 = (String) session.getAttribute("id");
    if (id1 == null || id1.isEmpty()) {
        out.println("<p>Error: User ID not found. Please log in again.</p>");
        return;
    }

    // Initialize variables for profile data
    String name = "", profile = "", institute = "", address = "", email = "", mobile = "";
    String date = "", gender = "", location = "", hometown = "", experience = "", degree = "";
    String educationInstitute = "", batch = "", skills = "", certifications = "", resume = "";email="";

    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        // Connect to the database
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobseeker1", "root", "");

        // Fetching user profile details
        String profileSql = "SELECT * FROM userprofile WHERE id = ?";
        stmt = conn.prepareStatement(profileSql);
        stmt.setString(1, id1);
        rs = stmt.executeQuery();

        if (rs.next()) {
            name = rs.getString("name");
            profile = rs.getString("profile");
            institute = rs.getString("institute");
            address = rs.getString("address");
            //email = rs.getString("email");
            mobile = rs.getString("mobile");
            date = rs.getString("date");
            gender = rs.getString("gender");
            location = rs.getString("location");
            hometown = rs.getString("hometown");
            experience = rs.getString("experience");
            degree = rs.getString("degree");
            educationInstitute = rs.getString("educationinstitute");
            batch = rs.getString("batch");
            skills = rs.getString("skills");
            certifications = rs.getString("certifications");
            resume = rs.getString("resume");
            email=rs.getString("emailids");
        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>

<h2>Edit Your Profile</h2>

<form method="post" action="profilesave" enctype="multipart/form-data">
    <input type="text" name="id" value="<%= id1 %>" />

    <label for="name">Name</label>
    <input type="text" name="name" value="<%= name %>" required />
    <label for="emailids">Email</label>
    <input type="email" name="emailids" value="<%=email %>">
	<label for="profile">Profile</label>
	<input type="text" name="institute" value="<%=institute%>">
	<label for="address">Address</label>
	<input type="text" name="address" value="<%=address %>"> 
	<label for="mobile">Mobile</label>
	<input type="text" name="mobile" value="<%=mobile %>">
	<label for="date">Date</label>
	<input type="text" name="date" value="<%= date%>">
	<label for="gender">Gender</label>
	<input type="text" name="gender" value="<%=gender%>">
	<label for="location">Location</label>
	<input type="text" name="location" value="<%=location %>">
	<label for="hometown">Hometown</label>
	<input type="text" name="hometown" value="<%=hometown %>">
	<label for="experience">Experience</label>
	<input type="text" name="experince" value="<%=experience %>">
	<label for="degree">Degree</label>
	<input type="text" name="degree" value="<%=degree %>">
	<label for="educationinstitute">Educationinstitute</label>
	<input type="text" name="educationinstitute" value="<%=educationInstitute %>">
	<label for="batch">Batch</label>
	<input type="text" name="batch" value="<%=batch %>">
	<label for="skills">Skills</label>
	<input type="text" name="skills" value="<%= skills%>">
	<label for="certifications">Certifications</label>
	<input type="text" name="certifications" value="<%=certifications %>">
	<label for="resume">Resume</label>
	<input type="file" name="resume" value="<%=resume %>">
    <!-- Other form fields -->

    <button type="submit">Save Changes</button>
</form>


</body>
</html>
