<%@page import="JopSeeker.Job"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <link rel="stylesheet" href="css/plugins.css" />

    <!-- search css -->
    <link rel="stylesheet" href="search/search.css" />

    <!-- quform css -->
    <link rel="stylesheet" href="quform/css/base.css">

    <!-- core style css -->
    <link href="css/styles.css" rel="stylesheet" />
    <!-- Include SweetAlert -->
    <style type="text/css">
 /* General card styling */
/* General card styling */

.yash1 {
  display: grid;
  grid-template-columns: repeat(1, 1fr); /* 4 cards per row on large screens */
  gap: 20px; /* Space between cards */
  padding: 10px;
}
.card {
    width: calc(32.33% - 20px); /* Set width for 3 cards per row */
    background: white;
    border-radius: 16px;
    box-shadow: 0 15px 25px rgba(0, 0, 0, 0.2); /* Shadow for depth */
    transition: transform 0.4s, box-shadow 0.4s;
    overflow: hidden;
    border: 1px solid #fe9703;
    padding: 18px;
    margin: 10px; /* Margin around each card */
    display: inline-block;
}


.card-container {
    display: flex;
    flex-wrap: wrap;
    justify-content: center; /* Center-align cards */
    gap: 1rem; /* Space between cards */
}


@media (max-width: 1200px) {
    .card {
        width: calc(49% - 20px); 
    }
}


@media (max-width: 992px) {
    .card {
        width: calc(45% - 20px);
        width: 50%;
        margin-left: 23%;
    }

}


@media (max-width: 768px) {
    .card {
        width: calc(100% - 20px); 
        margin: 10px auto;
        }
}


.card-btn {
    display: inline-block;
    padding: 10px 18px;
    margin-top: 15px;
    background: #fe9703;
    color: white;
    font-weight: bold;
    border: none;
    border-radius: 30px;
    cursor: pointer;
    transition: background 0.4s, transform 0.2s;
    box-shadow: 0 5px 10px rgba(0, 123, 255, 0.2);
}

/* Full-width button on small screens */
@media (max-width: 576px) {
    .card-btn {
        width: 100%;
        text-align: center;
        padding: 10px;
    }
}

/* Banner styling */
.banner2:after,
.banner2:before {
    position: absolute;
    width: 100%;
    height: 100%;
    content: "";
    background: rgba(38, 174, 97, 0.1);
    z-index: 1;
}

.banner2:after {
    left: 0;
    top: 0;
    width: 50%;
}

.banner2:before {
    left: 50%;
    border-radius: 0 10px 10px 0;
}

/* Responsive typography */
h1, h2, h3, h4, h5, h6,
.h1, .h2, .h3, .h4, .h5, .h6 {
    font-weight: 600;
    font-family: 'Archivo', sans-serif;
    color: #1e2022;
    text-align: center;
    margin: 10px 0;
    font-size: 1.5rem;
}

@media (max-width: 768px) {
    h1, h2, h3, h4, h5, h6,
    .h1, .h2, .h3, .h4, .h5, .h6 {
        font-size: 1.3rem;
    }
}

/* Additional padding/margin adjustments */
.mt-n3 {
    margin: 1rem 0.4rem;
    padding: 0 5%;
}

/* Styling for specific elements */
.card-content {
    display: flex;
    flex-direction: column;
    align-items: center;
}

/* Style for card's individual title, text, and button */
.card-title {
    font-size: 1.2rem;
    margin-bottom: 10px;
}

.card-text {
    font-size: 1rem;
    margin-bottom: 8px;
}

/* Hover effect on cards */
.card:hover {
    transform: translateY(-10px); /* Slight lift on hover */
    box-shadow: 0 20px 40px rgba(0, 0, 0, 0.3); /* Stronger shadow */
}




    </style>
    
</head>

<body>

    <!-- PAGE LOADING
    ================================================== -->
    <div id="preloader"></div>

    <!-- MAIN WRAPPER
    ================================================== -->
    <div class="main-wrapper">

        <!-- HEADER
        ================================================== -->
        <header class="header-style2">


            <div class="navbar-default">

                <!-- start top search -->
                
                <!-- end top search -->

                <div class="container-fluid px-lg-1-6 px-xl-2-5 px-xxl-2-9">
                    <div class="row align-items-center">
                        <div class="col-12 col-lg-12">
                            <div class="menu_area alt-font">
                                <nav class="navbar navbar-expand-lg navbar-light p-0">

                                    <div class="navbar-header navbar-header-custom">
                                        <!-- start logo --
                                        <a href="index.html" class="navbar-brand logodefault"><img id="logo" src="" alt="logo"></a>
                                        <!-- end logo -->
                                    </div>

                                    <div class="navbar-toggler"></div>

                                    <!-- menu area -->
                                    <ul class="navbar-nav ms-auto" id="nav" style="display: none;">
                                        <li><a href="#!">Home</a>
                                            
                                        </li>
                                        <li><a href="#!">Pages</a>
                                            <ul>
                                                <li><a href="aboutus.html">About Us</a></li>
												<li><a href="how-it-works.html">How It Works</a></li>
												<li><a href="testimonials.html">Testimonials</a></li>
												<li><a href="pricing-plans.html">Pricing Plans</a></li>
												<li><a href="FAQ.jsp">FAQ</a></li>
												<li><a href="javascript:void(0)" id="openModalBtn" class="contact-link">Contact Us</a></li>
												<li><a href="#!">User Pages</a></li>
                                                    <ul>
                                                        <li><a href="login.html">Login</a></li>
                                                        <li><a href="registration.html">Register</a></li>
                                                        <li><a href="forgot-password.html">Forgot Password</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#!">Others</a>
                                                    <ul>
                                                        <li><a href="privacy-policy.html">Privacy Policy</a></li>
                                                        <li><a href="terms-and-conditions.html">Terms & Conditions</a></li>
                                                        <li><a href="coming-soon.html">Coming Soon</a></li>
                                                        <li><a href="404-page.html">404 Page</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li ><a href="alljobs.jsp">Jobs</a>
                                            <a href=""></a>
                                        </li>
                                        <li><a href="#!">Explore</a>
                                            <ul>
                                                <li><a href="#!">Candidates</a>
                                                    <ul>
                                                        <li><a href="candidate-grid.html">Candidate Grid</a></li>
                                                        <li><a href="candidate-list.html">Candidate List</a></li>
                                                        <li><a href="candidate-details.html">Candidate Details</a></li>
                                                        <li><a href="candidate-dashboard.html">Candidate Dashboard</a></li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="#!">Employers</a>
                                                    <ul>
                                                        <li><a href="employers-grid.html">Employer Grid</a></li>
                                                        <li><a href="employers-list.html">Employer List</a></li>
                                                        <li><a href="employer-details.html">Employer Details</a></li>
                                                        <li><a href="employer-dashboard.html">Employer Dashboard</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#!">Elements</a>
                                            
                                    <li>
                                                    <a href="profile.jsp">Profile</a>
                                                    
                                                </li>
										
                                   
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>

        <!-- BANNER
        ================================================== -->
        <section class="banner2">
            <div class="container">
                <div class="row">
                    <div class="content-column col-lg-7">
                        <div class="inner-column pe-xxl-5">
                            <div class="banner-title mb-md-2-5">
                                <h1 class="mb-3">Find Your Dream Jobs</h1>
                                <p class="display-28">3.5 lakh+ jobs for you to explore</p>
                            </div>
                            <!--Start Job Search Form -->
                              <div class="job-search-form">
        <div class="quform-elements">
            <div class="row mt-n3">
                <!-- Begin Text input element for Job Title -->
                <div class="col-md-5 mt-3">
                    <div class="quform-element">
                        <div class="quform-input">
                            <input id="jobTitleSearch" class="form-control" type="text" name="job-title" placeholder="Job title, keywords, or company" required />
                        </div>
                    </div>
                </div>
                <!-- End Text input element -->

                <!-- Begin Text input element for Location -->
                <div class="col-md-4 mt-3">
                    <div class="quform-element">
                        <div class="quform-input">
                            <input id="locationSearch" class="form-control" type="text" name="location" placeholder="City or postcode" required />
                        </div>
                    </div>
                </div>
                <!-- End Text input element -->

                <!-- Begin Submit button -->
                <div class="col-md-3 mt-3">
                    <div class="quform-submit-inner">
                        <button class="butn" type="submit"><span>Find Jobs</span></button>
                    </div>
                    <div class="quform-loading-wrap"><span class="quform-loading"></span></div>
                </div>
                <!-- End Submit button -->
            </div>
        </div>
    </div>
                            
                            <!--End Job Search Form -->
                            <!-- Popular Search -->
                            <div class="popular-searches">
                                <span class="pe-3 font-weight-600">Trending Keywords : </span>
                                <a href="#!">Designer</a>,
                                <a href="#!">Developer</a>,
                                <a href="#!">Web</a>,
                                <a href="#!">IOS</a>,
                                <a href="#!">PHP</a>,
                                <a href="#!">Senior</a>,
                                <a href="#!">Engineer</a>
                            </div>
                            <!-- End Popular Search -->
                        </div>
                    </div>
                    <div class="image-column col-lg-4">
                        <div class="image-box">
                            <div class="row align-items-center">
                                <div class="col-6">
                                    <img src="img/banner/banner-04.jpg" class="border-radius-5" alt="...">
                                </div>
                                <div class="col-6">
                                    <img src="img/banner/banner-02.jpg" class="mb-4 border-radius-5" alt="...">
                                    <img src="img/banner/banner-03.jpg" class="border-radius-5" alt="...">
                                </div>
                            </div>
                           
                            <div class="banner-image-text bottom-text text-center d-none d-sm-block">
                                <h6 class="mb-4">10k+ Candidates</h6>
                                <ul class="list-unstyled users-list m-1">
                                    <li>
                                        <img class="rounded-circle" src="img/avatar/avatar-01.jpg" alt="...">
                                    </li>
                                    <li>
                                        <img class="rounded-circle" src="img/avatar/avatar-02.jpg" alt="...">
                                    </li>
                                    <li>
                                        <img class="rounded-circle" src="img/avatar/avatar-03.jpg" alt="...">
                                    </li>
                                    <li>
                                        <img class="rounded-circle" src="img/avatar/avatar-05.jpg" alt="...">
                                    </li>
                                    <li>
                                        <img class="rounded-circle" src="img/avatar/avatar-06.jpg" alt="...">
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>



        

        <!---all jobs cards-->

       	<!-- <div id="jobcategories"> -->
        <div class="grid-container" id="">
            <div class="job-card">
                <img src="img/IT.jpg" alt="IT" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Information Technology</h2>
                    <a href="" class="job-count">24458 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="img/IT.jpg" alt="Manufacturing" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Manufacturing / Engineering</h2>
                    <a href="" class="job-count">6938 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=BNK" alt="Banking" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Banking & Finance</h2>
                    <a href="" class="job-count">3158 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=SCM" alt="SCM" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">SCM & Operations/BPO</h2>
                    <a href="" class="job-count">3340 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=SALES" alt="Sales" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Sales & Marketing Jobs</h2>
                    <a href="" class="job-count">7241 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=ALL" alt="All Jobs" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">All Jobs</h2>
                    <a href="" class="job-count">76838 Jobs</a>
                </div>
            </div>
       
        </div>
		
	<div id="contactModal" class="modal">
        <div class="modal-content">
            <span class="close" id="closeModalBtn">&times;</span>
            <h2>Contact Us</h2>
            <form action="Contact" method="post">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>

                <label for="email">Email:</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>

                <label for="phone">Phone:</label>
                <input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>

                <label for="message">Message:</label>
                <textarea id="message" name="message" rows="4" placeholder="Enter your message" required></textarea>

                <input type="submit" value="Submit">
            </form>
        </div>
    </div>
    <div  id="contactModal" class="modal">
    
    </div>

	
        <!-- JOB CATEGORIES
        ================================================== -->
        <section id="jobcategorie">
            <div class="container border-bottom border-color-extra-light-gray mb-6 pb-6">
                <div class="section-heading1">
                    
                    <h2><strong>Top trending</strong> categories</h2>
                </div>
                <div class="job-categories owl-carousel owl-theme">
                    <div class=" card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-01.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">02 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-12.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Accounting</a></h4>
                                    <p class="mb-0 display-30 text-white">Auditor, Financial Analyst & More..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-02.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">86 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-13.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Marketing</a></h4>
                                    <p class="mb-0 display-30 text-white">Sales, Purchasing & More..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-03.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">20 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-14.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Customer Service</a></h4>
                                    <p class="mb-0 display-30 text-white">Customer Satisfation, Support & More..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-04.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">12 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-15.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Development</a></h4>
                                    <p class="mb-0 display-30 text-white">Technology, Coding & More ...</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-05.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">55 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-16.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Construction</a></h4>
                                    <p class="mb-0 display-30 text-white">Civil Engineer, Architect & More..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class=" card-style5">
                        <div class="categories-img bg-img cover-background min-height-250" data-background="img/content/job-categorie-06.jpg"></div>
                        <div class="card-body">
                            <span class="job-position">43 Jobs</span>
                            <div class="d-flex align-items-center">
                                <div class="flex-shrink-0">
                                    <div class="categories-icon">
                                        <img src="img/icons/icon-17.png" alt="...">
                                    </div>
                                </div>
                                <div class="flex-grow-1 ms-3">
                                    <h4 class="h5 mb-1"><a href="job-listing.html" class="text-white">Design</a></h4>
                                    <p class="mb-0 display-30 text-white">Branding, web & More..</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="container">
                <div class="row mt-n1-9">
                 
        <div class="col-sm-6 col-lg-3 mt-1-9 text-center text-sm-start">
            <div class="d-sm-flex align-items-center">
                <div class="flex-shrink-0 mb-3 mb-sm-0">
                    <img src="img/icons/icon-09.png" alt="Jobs Icon">
                </div>
                <div class="flex-grow-1 border-sm-start border-color-extra-light-gray ps-sm-3 ps-xl-4 ms-sm-3 ms-xl-4">
                    <!-- Placeholder for Jobs Posted count -->
                    <h3 id="jobCountDisplay" class="countup h1 text-secondary mb-1"></h3>
                    <span class="text-muted">Jobs Posted</span>
                </div>
            </div>
        
</div> 



<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="app6.js" >
/* $.ajax({
    url: '/jobCount',  // Corrected to match the servlet URL
    type: 'GET',
    dataType: 'json',
    success: function(data) {
        $('#jobCountDisplay').text(data.jobCount); // Update the job count
    },
    error: function(xhr, status, error) {
        console.error("Error fetching job count: ", error);
        $('#jobCountDisplay').text("0");  // Default to 0 if there's an error
    }
}); */

</script>

                 <div class="col-sm-6 col-lg-3 mt-1-9 text-center text-sm-start">
    <div class="d-sm-flex align-items-center">
        <div class="flex-shrink-0 mb-3 mb-sm-0">
            <img src="img/icons/icon-10.png" alt="Job icon">
        </div>
        <div class="flex-grow-1 border-sm-start border-color-extra-light-gray ps-sm-3 ps-xl-4 ms-sm-3 ms-xl-4">
            <h3 id="applicationCount" class="countup h1 text-secondary mb-1">0</h3>
            <span class="font-weight-500 text-muted">Applications Submitted</span>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script src="app8.js">
</script>
                    <div class="col-sm-6 col-lg-3 mt-1-9 text-center text-sm-start">
                        <div class="d-sm-flex align-items-center">
                            <div class="flex-shrink-0 mb-3 mb-sm-0">
                                <img src="img/icons/icon-11.png" alt="...">
                            </div>
                            <div class="flex-grow-1 border-sm-start border-color-extra-light-gray ps-sm-3 ps-xl-4 ms-sm-3 ms-xl-4">
                                <h3 class="countup h1 text-secondary mb-1">220</h3>
                                <span class="font-weight-500 text-muted">Companies</span>
                            </div>
                        </div>
                    </div>
                  <div class="col-sm-6 col-lg-3 mt-1-9 text-center text-sm-start">
    <div class="d-sm-flex align-items-center">
        <div class="flex-shrink-0 mb-3 mb-sm-0">
            <img src="img/icons/icon-21.png" alt="...">
        </div>
        <div class="flex-grow-1 border-sm-start border-color-extra-light-gray ps-sm-3 ps-xl-4 ms-sm-3 ms-xl-4">
            <!-- Dynamic user count will be inserted here -->
            <h3 class="countup h1 text-secondary mb-1" id="userCountDisplay"></h3>
            <span class="font-weight-500 text-muted">Candidates</span>
        </div>
    </div>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script type="text/javascript" src="app7.js">

</script>
                </div>
            </div>
             </div>
        </section>
        

        <!-- RECENT JOBS
        ================================================== -->
  <div class="section-heading2">
    <h2><strong>Latest Job</strong> Postings</h2>
</div>
<section class="yash">
    <div id="jobListContainer" cl> <!-- Updated ID here -->
    </div>
</section>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="app3Log.js"></script>

        <!-- TOP COMPANY
        ================================================== -->
        
        <!-- OUR PROCESS
        ================================================== -->
        <section class="bg-light">
            <div class="container">
                <div class="section-heading2">
                    
                    <h2><strong>Our working</strong> process</h2>
                </div>
                <div class="row mt-n1-9">
                    <div class="col-sm-6 col-lg-3 mt-1-9">
                        <div class="process-style2 first">
                            <div class="process-arrow">
                                <div class="process-icon-box">
                                    <img src="img/icons/icon-22.png" alt="...">
                                </div>
                                <div class="process-contnet">
                                    <h4 class="h5">01. Create Account</h4>
                                    <p class="mb-0">Sign Up Your Profile</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 mt-1-9">
                        <div class="process-style2">
                            <div class="process-arrow">
                                <div class="process-icon-box">
                                    <img src="img/icons/icon-23.png" alt="...">
                                </div>
                                <div class="process-contnet">
                                    <h4 class="h5">02. CV / Resume Upload</h4>
                                    <p class="mb-0">Upload By Category</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 mt-1-9">
                        <div class="process-style2">
                            <div class="process-arrow">
                                <div class="process-icon-box">
                                    <img src="img/icons/icon-24.png" alt="...">
                                </div>
                                <div class="process-contnet">
                                    <h4 class="h5">03. Find Vacancy</h4>
                                    <p class="mb-0">Choose A Suitable Job</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 mt-1-9">
                        <div class="process-style2 last">
                            <div class="process-arrow">
                                <div class="process-icon-box">
                                    <img src="img/icons/icon-25.png" alt="...">
                                </div>
                                <div class="process-contnet">
                                    <h4 class="h5">04. Apply Them</h4>
                                    <p class="mb-0">Get Personal Job Offer</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

      
        <!-- FOOTER
        ================================================== -->
        <footer class="bg-light">
            <div class="container">
                <div class="row mt-n2-6">
                    <div class="col-sm-6 col-lg-5 mt-2-6">
                        <a href="#!" class="footer-logo"><img src="" class="mb-1-6" alt="..."></a>
                        <p>Advertise your jobs to hundreds of thousands of monthly customers and seek 15.8 million CV in our database.</p>
                        <ul class="contact-list black">
                            <li class="d-flex"><span class="fa fa-home pe-3"></span><a href="#!">Eliora Technologies pvt.ltd</a></li>
                            <li class="d-flex"><span class="fa fa-phone-alt pe-3"></span><a href="#!">(+91) 123 456 789</a></li>
                            <li class="d-flex"><span class="fa fa-envelope pe-3"></span><a href="#!">EioraTechnologies@gmail.com</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-lg-2 offset-lg-1 mt-2-6">
                        <div class="ps-sm-1-6 ps-lg-0">
                            <h3 class="h5 mb-1-6 mb-lg-1-9">Information</h3>
                            <ul class="footer-list-style2">
                                <li><a href="Register.jsp">About us</a></li>
                                <li><a href="Register.jsp">Blog</a></li>
                                <li><a href="Register.jsp">Our Process</a></li>
                                <li><a href="Register.jsp">Our Pricing</a></li>
                                <li><a href="Register.jsp">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2 mt-2-6">
                        <h3 class="h5 mb-1-6 mb-lg-1-9">Candidates</h3>
                        <ul class="footer-list-style2">
                            <li><a href="Register.jsp">Applied Job</a></li>
                            <li><a href="Register.jsp">CV Manager</a></li>
                            <li><a href="Register.jsp">Shortlisted Jobs</a></li>
                            <li><a href="Register.jsp">Job Alerts</a></li>
                            <li><a href="Register.jsp">Dashboard</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-lg-2 mt-2-6">
                        <div class="ps-sm-1-6 ps-lg-0">
                            <h3 class="h5 mb-1-6 mb-lg-1-9">Employers</h3>
                            <ul class="footer-list-style2">
                                <li><a href="Register.jsp">Job Packages</a></li>
                                <li><a href="Register.jsp">Company Profile</a></li>
                                <li><a href="Register.jsp">Manage Job</a></li>
                                <li><a href="Register.jsp">Resume Alerts</a></li>
                                <li><a href="Register.jsp">Post a Job</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bar bg-white">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 text-center">
                            <p class="d-inline-block mb-0">&copy; <span class="current-year"></span>  Develop By
                                <a href="https://www.elioratechno.com/" target="_blank" class="text-primary secondary-hover">Eliora Technologies Pvt.Ltd.</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

    </div>
    

    <!-- BUY TEMPLATE
    ================================================== --
    <div class="buy-theme alt-font d-none d-lg-inline-block"><a href="https://wrapbootstrap.com/theme/job-board-job-portal-html-template-WB0S2FC71" target="_blank"><i class="fas fa-cart-plus"></i><span>Buy Template</span></a></div>

    <div class="all-demo alt-font d-none d-lg-inline-block"><a href="https://www.chitrakootweb.com/contact.html" target="_blank"><i class="far fa-envelope"></i><span>Quick Question?</span></a></div>

    <!-- start scroll to top -->
    <a href="#!" class="scroll-to-top"><i class="fas fa-angle-up" aria-hidden="true"></i></a>


    <script src="js/jquery.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/core.min.js"></script>
    <script src="js/main1.js"></script>
    <script src="quform/js/plugins.js"></script>
    <script src="quform/js/scripts.js"></script>


    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

      <script>
        // Modal logic
        const modal = document.getElementById("contactModal");
        const btn = document.getElementById("openModalBtn");
        const closeBtn = document.getElementById("closeModalBtn");

        btn.onclick = function () {
            modal.style.display = "block";
        }

        closeBtn.onclick = function () {
            modal.style.display = "none";
        }

        window.onclick = function (event) {
            if (event.target === modal) {
                modal.style.display = "none";
            }
        }
    </script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <% 
    // Get session attributes for the icon and message
    String sessionIcon = (String) session.getAttribute("icon");
    String sessionMessage = (String) session.getAttribute("message");

    // Only show the message if the session attributes are set
    if (sessionIcon != null && sessionMessage != null) {
%>
    <script>
        Swal.fire({
            icon: '<%= sessionIcon %>',
            title: '<%= sessionMessage %>',
            confirmButtonText: 'OK'
        });
    </script>
    <%
        session.removeAttribute("icon");
        session.removeAttribute("message");
    }
%>   
</body>
</html>