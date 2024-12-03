
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Listings</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
        }
        #jobListContainer {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }
        .card {
            background: white;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            padding: 15px;
            width: 250px; /* Set a fixed width for cards */
            transition: transform 0.2s;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .card-title {
            font-size: 18px;
            margin: 0;
        }
        .card-text {
            margin: 5px 0;
        }
        .card-btn {
            background-color: #007bff;
            color: white;
            border: none;
            padding: 10px 15px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .card-btn:hover {
            background-color: #0056b3;
        }
        .filter-container {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>
    <div class="filter-container">
        <!-- Add filter options here -->
        <h3>Filter by Job Type</h3>
        <label><input type="checkbox" value="Full Time"> Full Time</label>
        <label><input type="checkbox" value="Part Time"> Part Time</label>
        <label><input type="checkbox" value="Permanent"> Permanent</label>
        <label><input type="checkbox" value="Contract"> Contract</label>
        <!-- Add more filter options as needed -->
    </div>
    
    <div id="jobListContainer">
        <!-- Job listings will be inserted here -->
    </div>
    
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="quform/js/app1.js">
        
    </script>
</body>
</html>
