<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Posting Form</title>
    <style>
        body { font-family: Arial, sans-serif; line-height: 1.6; color: #333; max-width: 600px; margin: 0 auto; padding: 20px; background-color: #f4f4f4; }
        .form-container { background-color: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1); }
        h1 { text-align: center; color: #2c3e50; }
        .form-group { margin-bottom: 15px; }
        label { display: block; margin-bottom: 5px; font-weight: bold; }
        input, select, textarea { width: 100%; padding: 8px; border: 1px solid #ddd; border-radius: 4px; box-sizing: border-box; }
        textarea { height: 100px; resize: vertical; }
        button { display: block; width: 100%; padding: 10px; background-color: #3498db; color: #fff; border: none; border-radius: 4px; cursor: pointer; font-size: 16px; }
        button:hover { background-color: #2980b9; }
        @media (max-width: 480px) { body { padding: 10px; } .form-container { padding: 15px; } }
        .company-list { display: flex; flex-wrap: wrap; gap: 5px; margin-top: 10px; }
        .selectCompany { padding: 5px 10px; background-color: #3498db; color: #fff; border: none; border-radius: 4px; cursor: pointer; }
    </style>
</head>
<body>
<%
    String ccid = (String) session.getAttribute("cid"); // Fetch 'ccid' from session

    if (ccid == null) {
        // If ccid is null, the session might have expired or the admin is not logged in
        
    } else {
        // Debugging: Print the ccid to see if it's correctly retrieved
        System.out.println("Session Admin ID (ccid): " + ccid);
    }
%>

<div class="form-container">
    <h1>Job Posting Form</h1>
    <form id="jobPostingForm" action="jobcreate" method="post">
        <!-- Hidden field for CID -->
        <input type="text" name="ccid" id="ccid" value="<%= ccid %>">
        
        <!-- Rest of the form fields -->
        <div class="form-group">
            <label>Job Title:</label>
            <input type="text" id="jobTitle" name="jobTitle" required>
        </div>
        <div class="form-group">
            <label for="company">Company:</label>
            <input type="text" id="company" name="company" required>
        </div>
        <div class="form-group">
            <label for="jobType">Job Type:</label>
            <input type="text" id="jobType" name="jobType" required>
        </div>
        <div class="form-group">
            <label for="location">Location:</label>
            <input type="text" id="location" name="location" required>
        </div>
        <div class="form-group">
            <label for="experience">Experience (years):</label>
            <input type="number" id="experience" name="experience" min="0" step="1" required>
        </div>
        <div class="form-group">
            <label for="salary">Salary:</label>
            <input type="text" id="salary" name="salary" placeholder="e.g., 5,00,000 - 7,00,000" required>
        </div>
        <div class="form-group">
            <label for="description">Job Description:</label>
            <textarea id="description" name="description" required></textarea>
        </div>
        
        <button type="submit">Submit Job Posting</button>
    </form>

    <!-- Company Selection Section -->
    <!-- <div id="companyList" class="company-list"></div>
</div>
 -->
<script>
$(document).ready(function() {
    // Fetch company data on page load
    $.ajax({
        url: 'joblist1', // URL of your servlet
        type: 'GET',
        success: function(data) {
            console.log(data); // Log the data for debugging

            // Assuming your data is an array of companies
            if (data.length > 0) {
                data.forEach(function(company) {
                    // Dynamically add each company to a list of buttons
                    $('#companyList').append(
                        '<button type="button" class="selectCompany" data-cid="' + company.cid + '">' + company.company_name + '</button>'
                    );
                });

                // Add click event to each company button
                $('.selectCompany').click(function() {
                    var cid = $(this).data('cid'); // Get the cid from the button's data attribute
                    $('#ccid').val(cid); // Set the ccid input value in the form
                    alert("Selected Company ID: " + cid); // Optional alert for confirmation
                });
            } else {
                alert("No companies found.");
            }
        },
        error: function(xhr, status, error) {
            alert("An error occurred while fetching company data: " + error);
        }
    });
});
</script>
</body>
</html>
