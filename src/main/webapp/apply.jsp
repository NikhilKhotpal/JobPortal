<%@ page import="JopSeeker.Company" %>
<%@ page import="java.sql.*" %>
<%@ page import="jakarta.servlet.http.*, jakarta.servlet.*" %>
<%@ page import="java.io.File" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <meta charset="UTF-8">
    <title>Job Application</title>
    <link rel="stylesheet" href="css/style.css">
   <style>
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f7f6;
            margin: 0;
            padding: 0;
        }

        .form-container {
            max-width: 700px;
            margin: 50px auto;
            padding: 30px;
            background-color: white;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }

        .form-container:hover {
            transform: scale(1.02);
        }

        h1 {
            text-align: center;
            color: #333;
            font-weight: 700;
            margin-bottom: 25px;
        }

        .form-container label {
            display: block;
            font-weight: 500;
            margin-bottom: 8px;
            color: #555;
        }

        .form-container input[type="text"],
        .form-container input[type="file"],
        .form-container button {
            width: 100%;
            padding: 14px;
            margin: 10px 0;
            border-radius: 8px;
            border: 1px solid #ddd;
            font-size: 16px;
        }

        .form-container button {
            background-color: #007BFF;
            color: white;
            cursor: pointer;
            font-weight: bold;
            border: none;
            transition: background-color 0.3s;
        }

        .form-container button:hover {
            background-color: #0056b3;
        }

        .form-container a {
            display: inline-block;
            margin: 15px 0;
            color: #007BFF;
            text-decoration: none;
            font-weight: 500;
            text-align: center;
            width: 100%;
        }

        .form-container a:hover {
            text-decoration: underline;
        }

        .form-details {
            background-color: #f9f9f9;
            padding: 15px;
            border-radius: 8px;
            border: 1px solid #e1e1e1;
            margin-bottom: 20px;
            font-size: 16px;
        }

        .form-details p {
            margin: 5px 0;
        }

        .form-details strong {
            color: #333;
            font-weight: 600;
        }

        .file-upload {
            display: flex;
            justify-content: space-between;
            align-items: center;
            border: 2px dashed #ddd;
            border-radius: 8px;
            padding: 10px;
            cursor: pointer;
            position: relative;
        }

        .file-upload:hover {
            border-color: #007BFF;
        }

        .file-upload i {
            font-size: 20px;
            color: #333;
        }

        .file-upload span {
            font-size: 16px;
            color: #777;
            flex-grow: 1;
            text-align: left;
        }

        .file-upload input[type="file"] {
            opacity: 0;
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            cursor: pointer;
        }

        .preview-container {
            margin-top: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            padding: 10px;
            background-color: #f9f9f9;
            display: none; /* Initially hidden */
        }

        .preview-container iframe {
            width: 100%;
            height: 500px;
            border: none;
        }
    </style>

</head>
<body>

<%
    String id = request.getParameter("id");
    String jobTitle = "";
    String jobType = "";
    String location = "";
    String salary = "";
    String experience="";
    String cid = ""; 
    String cemail = ""; // Initialize cemail
	String ccid= "";
    Connection conn = null;
    PreparedStatement stmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobseeker1", "root", "");
        String jobSql = "SELECT job_title, job_type, location, salary, experience, ccid FROM jobs WHERE id = ?";
        stmt = conn.prepareStatement(jobSql);
        stmt.setString(1, id);
        rs = stmt.executeQuery();

        if (rs.next()) {
            jobTitle = rs.getString("job_title");
            jobType = rs.getString("job_type");
            location = rs.getString("location");
            salary = rs.getString("salary");
            experience = rs.getString("experience");
            ccid = rs.getString("ccid");  // Retrieve ccid associated with the job
        } else {
            out.println("<p>No job found with ID: " + id + "</p>");
        }


        stmt.close();

        String adminSql = "SELECT cid, company, cemail FROM adminlogin"; // Adjust query as necessary
        stmt = conn.prepareStatement(adminSql);
        rs = stmt.executeQuery();

        while (rs.next()) {
            cid = rs.getString("cid");
            cemail = rs.getString("cemail");
        }
    } catch (Exception e) {
        e.printStackTrace();
        out.println("<p>Error occurred while fetching job data. Please try again later.</p>");
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
        if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
        if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
    }
%>


<div class="form-container">
    <h1>Apply for Job</h1>

    <div class="form-details">
        <p><strong>Job Role:</strong> <%= jobTitle %></p>
        <p><strong>Job Type:</strong> <%= jobType %></p>
        <p><strong>Location:</strong> <%= location %></p>
        <p><strong>Salary:</strong> <%= salary %></p>
        <p><strong>Experience:</strong> <%= experience %></p>
    </div>

    <form action="submit" id="applicationForm" method="post" enctype="multipart/form-data">
        <input type="hidden" name="id" value="<%= id %>">
	<input type="hidden" name="ccid" value="<%= ccid%>">
        <!-- Email Input Section -->
        <label for="email">Email</label>
        <input type="text" id="email" name="emailid" placeholder="Enter your email" required>
        
        <!-- File Upload Section -->
        <label for="resume">Upload Resume</label>
        <div class="file-upload">
            <i class="fas fa-file-upload"></i>
            <span id="file-name">Choose file</span>
            <input type="file" id="resume" name="resume" accept=".pdf,.doc,.docx" required disabled>
        </div>

        <div class="preview-container" id="preview-container">
            <h3>Resume Preview:</h3>
            <iframe id="resume-preview" src="" frameborder="0"></iframe>
        </div>

        <!-- Submit Button -->
        <button type="submit" id="">Submit Application</button>
    </form>
</div>


<script>
    $("#applicationForm").submit(function(event) {
        event.preventDefault();
        $.ajax({
            url: 'submit',
            type: 'POST',
            data: new FormData(this),
            processData: false,
            contentType: false,
            success: function(response) {
                // Assuming your server sends a success message or status, we can check it
                if (response === "Application submitted successfully!") {
                    // Redirect to the alljobs page upon success
                    window.location.href = "alljobs.jsp";  // Redirect to alljobs.jsp page
                } else {
                    alert(response); // Show the server response if something went wrong
                    window.location.href = "alljobs.jsp";
                }  
            },
            error: function(xhr, status, error) {
                alert("An error occurred: " + error);
            }
        });
    });
</script>
<script >
$(document).ready(function() {
    // Fetch company data on page load
    $.ajax({
        url: 'joblist1', // URL of your servlet
        type: 'GET',
        success: function(data) {
            // Process the data received
            console.log(data); // Log the data for debugging

            // Loop through the received data to display company details
            data.forEach(function(company) {
                // Example of appending data to a div (adjust as needed)
                $('#companyList').append(
                    
                );
            });
            $('.selectCompany').click(function() {
                var cid = $(this).data('cid'); // Get the cid from the button data attribute
                $('#cid').val(cid); // Set the cid input value
                alert("Selected Company ID: " + cid); // Optional alert for confirmation
            });
        },
        error: function(xhr, status, error) {
            alert("An error occurred while fetching company data: " + error);
        }
    });
});
</script>

<script>
    // Check if email is entered before opening file selector
    document.getElementById('resume').addEventListener('click', function(e) {
        var emailInput = document.getElementById('email').value;
        if (!emailInput.includes('@') || !emailInput.includes('.')) {
            e.preventDefault(); // Prevent file selection
            alert("Please enter your email before selecting a file."); // Alert user
        }
    });

    // Enable file input when a valid email is entered
    document.getElementById('email').addEventListener('input', function() {
        var emailInput = this.value;
        var fileInput = document.getElementById('resume');

        // Basic email validation (you can make it more sophisticated)
        if (emailInput.includes('@') && emailInput.includes('.')) {
            fileInput.disabled = false; // Enable file input
        } else {
            fileInput.disabled = true; // Disable file input if email is invalid
            document.getElementById('file-name').textContent = "Choose file"; // Reset file name
        }
    });

    // File selection logic
    document.getElementById('resume').addEventListener('change', function(e) {
        var fileName = e.target.files[0].name;
        document.getElementById('file-name').textContent = fileName;

        // Create a URL for the selected file and set it to the iframe
        var file = e.target.files[0];
        var fileURL = URL.createObjectURL(file);
        
        // Show the preview container and set the src of the iframe
        var previewContainer = document.getElementById('preview-container');
        var resumePreview = document.getElementById('resume-preview');
        
        if (file.type === "application/pdf") {
            resumePreview.src = fileURL; // For PDF files
            previewContainer.style.display = 'block'; // Show preview
        } else if (file.type === "application/vnd.openxmlformats-officedocument.wordprocessingml.document" || 
                   file.type === "application/msword") {
            resumePreview.src = "about:blank"; // Word files can't be previewed directly
            previewContainer.style.display = 'block'; // Show preview
            alert("Word documents cannot be previewed directly in the browser.");
        } else {
            alert("Invalid file type. Please upload a PDF or Word document.");
        }
    });
</script>

</body>
</html>
