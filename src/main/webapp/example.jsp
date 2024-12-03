<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Listings</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        body {
            font-family: Arial, sans-serif;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
    <script>
        
    </script>
</head>
<body>

<h1>Job Listings</h1>
<table id="jobListings">
    <thead>
        <tr>
            <th>Company ID</th>
            <th>Company Name</th>
            <th>Company Email</th>
        </tr>
    </thead>
    <tbody>
        <!-- Job listings will be populated here by JavaScript -->
    </tbody>
</table>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="new.js"></script>
</body>
</html>
