<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Job Listings</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet"/>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f8f8;
            color: #333;
            margin: 0;
            padding: 0;
        }
        .filters {
            display: flex;
            justify-content: space-between;
            padding: 10px 20px;
            background-color: #fff;
            border-bottom: 1px solid #e0e0e0;
        }
        .filters button {
            background-color: #800080;
            border: none;
            border-radius: 4px;
            color: #fff;
            padding: 10px 20px;
            cursor: pointer;
        }
        .filters button:hover {
            background-color: #5a005a;
        }
        .filters select {
            padding: 10px;
            border: 1px solid #e0e0e0;
            border-radius: 4px;
        }
        .container {
            display: flex;
            padding: 20px;
        }
        .job-listings {
            width: 50%;
            padding-right: 10px;
        }
        .job-details {
            width: 50%;
            padding-left: 10px;
        }
        .job-card, .job-detail-card {
            background-color: #fff;
            border: 1px solid #e0e0e0;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }
        .job-card {
            border-left: 4px solid #800080;
        }
        .job-card h2, .job-detail-card h2 {
            font-size: 18px;
            margin: 0 0 10px;
        }
        .job-card p, .job-detail-card p {
            margin: 5px 0;
        }
        .job-card .tags, .job-detail-card .tags {
            display: flex;
            flex-wrap: wrap;
        }
        .job-card .tags span, .job-detail-card .tags span {
            background-color: #e0e0e0;
            border-radius: 4px;
            padding: 5px 10px;
            margin: 5px;
            font-size: 12px;
        }
        .job-card .quick-apply, .job-detail-card .quick-apply {
            color: #800080;
            font-weight: bold;
            cursor: pointer;
        }
        .job-detail-card .save-report {
            display: flex;
            justify-content: space-between;
        }
        .job-detail-card .save-report button {
            background-color: #fff;
            border: 1px solid #800080;
            border-radius: 4px;
            color: #800080;
            padding: 10px 20px;
            cursor: pointer;
        }
        .job-detail-card .save-report button:hover {
            background-color: #800080;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="filters">
        <button>Quick Apply</button>
        <select>
            <option>Location</option>
        </select>
        <select>
            <option>Experience</option>
        </select>
        <select>
            <option>Salary</option>
        </select>
        <select>
            <option>Function</option>
        </select>
        <select>
            <option>Industry</option>
        </select>
        <select>
            <option>Role</option>
        </select>
        <select>
            <option>Job type</option>
        </select>
        <select>
            <option>Job Freshness</option>
        </select>
        <select>
            <option>Education</option>
        </select>
        <button>All Filters</button>
    </div>
    <div class="container">
        <div class="job-listings">
            <div class="job-card">
                <img src="https://placehold.co/50x50" alt="Company logo" width="50" height="50"/>
                <h2>Java Developer</h2>
                <p>Cybage Software Private Limited</p>
                <p><i class="fas fa-briefcase"></i> Permanent Job</p>
                <p><i class="fas fa-map-marker-alt"></i> Pune</p>
                <p><i class="fas fa-clock"></i> 6-9 years</p>
                <p><i class="fas fa-money-bill-wave"></i> Confidential</p>
                <div class="tags">
                    <span>JAVA</span>
                    <span>APACHE CAMEL</span>
                    <span>SPRING BOOT</span>
                    <span>RESTFUL WEB SERVICES</span>
                    <span>SQL</span>
                </div>
                <p><i class="fas fa-calendar-alt"></i> 3 days ago</p>
                <p class="quick-apply"><i class="fas fa-paper-plane"></i> Quick Apply</p>
            </div>
            <div class="job-card">
                <img src="https://placehold.co/50x50" alt="Company logo" width="50" height="50"/>
                <h2>Java Full Stack Developer</h2>
                <p>Synechron</p>
                <p><i class="fas fa-briefcase"></i> Permanent Job</p>
                <p><i class="fas fa-map-marker-alt"></i> Bengaluru / Bangalore</p>
                <p><i class="fas fa-clock"></i> 5-8 years</p>
                <p><i class="fas fa-money-bill-wave"></i> 2850000 - 3000000 INR</p>
                <div class="tags">
                    <span>JAVA</span>
                    <span>SPRING BOOT</span>
                    <span>MICROSERVICES</span>
                    <span>ANGULAR</span>
                </div>
                <p><i class="fas fa-calendar-alt"></i> 3 days ago</p>
                <p class="quick-apply"><i class="fas fa-paper-plane"></i> Quick Apply</p>
            </div>
        </div>
        <div class="job-details">
            <div class="job-detail-card">
                <img src="https://placehold.co/50x50" alt="Company logo" width="50" height="50"/>
                <h2>Java Developer</h2>
                <p>Cybage Software Private Limited</p>
                <div class="tags">
                    <span>Highlights</span>
                    <span>Job Description</span>
                    <span>More Info</span>
                    <span class="quick-apply">Recruiter Information</span>
                </div>
                <p><strong>Rujutaka</strong></p>
                <p><strong>FUNCTIONS</strong></p>
                <p>Human Resources, IT</p>
                <p><strong>INDUSTRIES</strong></p>
                <p>IT/Computers - Software</p>
                <p><strong>SKILLS/ROLES I HIRE FOR</strong></p>
                <p>IT</p>
                <p><strong>LEVEL HIRING FOR</strong></p>
                <p>High Level, Top Management</p>
                <div class="tags">
                    <span>9 Active Jobs</span>
                    <span>759 Followers</span>
                    <button>Follow</button>
                </div>
                <div class="save-report">
                    <button>Save</button>
                    <button>Report</button>
                </div>
            </div>
        </div>
    </div>
</body>
</html>