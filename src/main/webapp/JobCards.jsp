<%@ page import="java.util.List" %>
<%@ page import="JopSeeker.Job" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Listings</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #e0f7fa, #f1f8e9);
            padding: 20px;
            color: #333;
        }

        .container {
            display: flex;
            flex-direction: column;
            max-width: 1200px;
            margin: 0 auto;
        }

        .sidebar {
            width: 100%;
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        .main-content {
            width: 100%;
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
            color: #007bff;
            font-size: 28px;
        }

        h2 {
            color: #007bff;
        }

        h3 {
            color: #0056b3;
            margin-bottom: 10px;
        }

        .job-listings {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
        }

        .card {
            width: 100%;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            overflow: hidden;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 15px rgba(0, 0, 0, 0.2);
        }

        .card-content {
            padding: 20px;
            background-color: #f9f9f9;
        }

        .card-title {
            font-size: 22px;
            color: #007bff;
            margin-bottom: 10px;
        }

        .card-text {
            font-size: 16px;
            color: #666;
            margin: 5px 0;
        }

        .card-btn {
            display: inline-block;
            margin-top: 15px;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            background: linear-gradient(to right, #007bff, #0056b3);
            color: #fff;
            font-size: 16px;
            cursor: pointer;
            transition: background 0.3s ease-in-out;
            text-align: center;
        }

        .card-btn:hover {
            background: linear-gradient(to right, #0056b3, #003a75);
        }

        .filter-section {
            margin-bottom: 20px;
        }

        .filter-options {
            display: flex;
            flex-direction: column;
            gap: 5px;
        }

        .filter-option {
            display: flex;
            align-items: center;
        }

        .filter-option input[type="checkbox"] {
            margin-right: 5px;
        }

        #jobFoundCount {
            font-weight: bold;
        }

        /* Responsive Design */
        @media (min-width: 768px) {
            .container {
                flex-direction: row;
            }

            .sidebar {
                width: 250px;
                margin-right: 20px;
                margin-bottom: 0;
            }

            .main-content {
                flex: 1;
            }

            .card {
                width: calc(50% - 20px);
            }
        }

        @media (min-width: 992px) {
            .card {
                width: calc(33.333% - 20px);
            }
        }
    </style>
    <style type="text/css">
        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            margin-bottom: 20px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 16px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        input[type="text"]:focus {
            border-color: #007bff;
            outline: none;
            box-shadow: 0 2px 10px rgba(0, 123, 255, 0.2);
        }
    </style>
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="filter-section">
                <h3>Job Title</h3>
                <div class="filter-options" id="jobTitleFilter"></div>
            </div>
            <div class="filter-section">
                <h3>Job Type</h3>
                <div class="filter-options" id="jobTypeFilter"></div>
            </div>
            <div class="filter-section">
                <h3>Experience</h3>
                <div class="filter-options" id="experienceFilter"></div>
            </div>
            <div class="filter-section">
                <h3>Location</h3>
                <div class="filter-options" id="locationFilter"></div>
            </div>
        </aside>
        <main class="main-content">
            <h1>Job Listings (<span id="jobFoundCount">0</span> Jobs Found)</h1>
            <div class="job-listings" id="jobListContainer">
                <!-- Job cards will be populated here dynamically -->
            </div>
        </main>
    </div>
    
    <div class="filter-section">
        <h3>Search Job Title</h3>
        <input type="text" id="jobTitleSearch" placeholder="Enter job title..." />
    </div>
    <div class="filter-section">
        <h3>Search Location</h3>
        <input type="text" id="locationSearch" placeholder="Enter location..." />
    </div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="app.js">
     
    </script>
</body>
</html>
