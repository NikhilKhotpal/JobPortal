<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile Page</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <link rel="stylesheet" href="css/profile.css">
    <style>
      
    </style>
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


    <div class="container">
        <div class="left-panel">
            <div class="profile-header">
                <div style="display: flex; align-items: center;">
                    <img alt="" height="80" id="profile-pic" class="edit-profile" onclick="openModal()" src="https://storage.googleapis.com/a1aa/image/j9skNJGhjsIyHxFvayzMJU6lBBr36baR81pPYivcVWMeVP4JA.jpg" width="80"/>
                    <div>
                        <div>
                            <strong id="name"><%=name %></strong>
                            <span class="level" id="level"></span>
                        </div>
                        <div id="profile-link"></div>
                        <div><i class="fas fa-graduation-cap"></i> <span id="institute"><%=institute %></span></div>
                        <div><i class="fas fa-map-marker-alt"></i> <span id="address"><%=address %></span></div>
                        <div class="share-profile"><i class="fas fa-share"></i> Share profile</div>
                    </div>
                </div>
                <div class="edit-profile" onclick="openModal()"><i class="fas fa-edit"></i> </div>
            </div>
            
            <div class="info-section">
                <div>
                    <% 
    String sesemail1 = (String) session.getAttribute("email");
    if (sesemail1 != null) {
    	//System.out.println(sesemail1);
%>
    <div>Email: <%= sesemail1 %></div>
<% 
    } else {
%>
    <div>Email not available.</div>
<% 
    }
%>
</div>       <!-- Remove this block to prevent the full name from being displayed -->
                    <div class="label">Date of birth</div>
                    <div class="value" id="dob"><%=date %></div>
                </div>
                <div>
                    <div class="label">Gender</div>
                    <div class="value" id="gender"><%=gender %></div>
                </div>
                
                <div>
                    <div class="label">Current location</div>
                    <div class="value" id="location"><%=location %></div>
                </div>
                <div>
                    <div class="label">Hometown</div>
                   
                    <div  id="hometown" ><%=hometown %></div>
                </div>
            </div>
        </div>
        <div class="right-panel">
            <div class="section">
                <div class="section-header"><%=experience %></div>
                <div class="section-content">
                    <div>Total Years of experience: <span id="experience"><%=experience %></span></div>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Education</div>
                <div class="section-content">
                    <div class="education-item">
                        <div class="details">
                            <i class="fas fa-graduation-cap"></i>
                            <div>
                                <div><strong id="degree"><%=degree %></strong></div>
                                <div id="education-institute"><%=institute %></div>
                                <div class="batch" id="batch"><%=batch %></div>
                                <div class="type" id="education-type"><%=educationInstitute %>></div>
                            </div>
                        </div>
                        <div class="edit-link" onclick="openModal('education')"></div>
                    </div>
                    <div class="add-link" onclick="openModal('education')">+ Add</div>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Skills</div>
                <div class="section-content">
                    <div id="skills-earned"><%=skills %></div>
                    <div class="skills-item">
                        <div class="details">
                            <i class="fas fa-check-circle"></i>
                          
                         
                        </div>
                        <div class="edit-link" onclick="openModal('skills')"></div>
                    </div>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Certification</div>
                <div class="section-content">
                    <div id="certifications"><%=certifications %></div>
                    <div class="add-link" onclick="openModal('certifications')">+ Add New</div>
                </div>
            </div>
            <div class="section">
                <div class="section-header">Resume</div>
                <div class="section-content">
                    <div id="resume"><%=resume %></div>
                    <div class="add-link" onclick="openModal('resume')">+ Add Resume</div>
                </div>
            </div>
        </div>
    </div>
    <!-- The Modal -->
    <div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close" onclick="closeModal()">&times;</span>
            <h2>Edit Profile</h2>
             <form id="" method="post" action="profilesave"  onsubmit="">
    <label for="edit-profile-pic">Profile Picture URL</label>
    <input type="text" id="edit-profile-pic" name="edit-profile-pic" value="https://storage.googleapis.com/a1aa/image/j9skNJGhjsIyHxFvayzMJU6lBBr36baR81pPYivcVWMeVP4JA.jpg">
	<label for="email">Email</label>
	<input type="text" name="email" value="<%=sesemail1%>">
	<%String id=(String) session.getAttribute("id"); 
	%>
	<label>Id</label>
	<input type="text" name="id" id="id" value="<%=id %>">
    <label for="name">Name</label>
    <input type="text" id="name" name="name" value="<%=name%>">
    <label for="profile">Profile Link</label>
    <input type="text" id="profile" name="profile" value="<%=profile %>">
    <label for="institute">Institute</label>
    <input type="text" id="institute" name="institute" value="<%=institute %>">
    <label for="address">Address</label>
    <input type="text" id="address" name="address" value="<%=address %>">
    <label for="mobile">Mobile number</label>
    <input type="tel" id="mobile" name="mobile" value="<%=mobile %>">
    <label for="date">Date of birth</label>
    <input type="text" id="date" name="date" value="<%=date %>">
    <label for="gender">Gender</label>
    <input type="text" id="gender" name="gender" value="<%=gender %>">
    <label for="location">Current location</label>
    <input type="text" id="location" name="location" value="<%=location %>">
    <label for="hometown">Hometown</label>
    <input type="text" id="hometown" name="hometown" value="<%=hometown%>">
    <label for="experience">Work Experience</label>
    <input type="text" id="experience" name="experience" value="<%= experience%>">
    <label for="degree">Degree</label>
    <input type="text" id="degree" name="degree" value="<%=degree %>">
    <label for="education-institute">Education Institute</label>
    <input type="text" id="education-institute" name="educationinstitute" value="<%=educationInstitute %>">
    <label for="batch">Batch</label>
    <input type="text" id="batch" name="batch" value="<%=batch %>">
    <label for="skills">Skills (comma separated)</label>
    <input type="text" id="skills" name="skills" value="<%=skills %>">
    <label for="certifications">Certifications</label>
    <input type="text" id="certifications" name="certifications" value="<%=certifications %>">
    <label for="resume">Resume</label>
    
    <input type="file" id="resume" name="resume" value="<%=resume %>">
    <div><%=resume %></div>
    <button type="submit">Save</button>
</form>
        </div>
    </div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="aapp10.js">
    </script>
</body>
</html>