<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- metas -->
    <meta charset="utf-8">
    <meta name="author" content="Chitrakoot Web" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="shortcut icon" href="img/logos/Eliora.png">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="keywords" content="Job Portal HTML Template" />
    <meta name="description" content="Job Board - Job Portal HTML Template" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
    <title>Job Portal</title>

    <!-- plugins -->
    <link rel="stylesheet" href="css/plugins.css" />
    <link rel="stylesheet" href="search/search.css" />
    <link rel="stylesheet" href="quform/css/base.css">
    <link href="css/styles.css" rel="stylesheet" />
    
    <!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    
   <!--  <link href="css/new.css" rel="stylesheet" />  -->

    <style>
        /* General Body Styling */
body {
    font-family: 'Poppins', sans-serif;
    margin: 0;
    padding: 0;
    background-color: #fff;
}

/* Section Cards */
.section-cards {
    display: flex;
    flex-wrap: wrap;
    gap: 10px;
    padding: 20px;
    overflow-x: auto;
    background: white;
    border-bottom: 1px solid #e0e0e0;
}

.section-card {
    flex: 1 1 200px;
    max-width: 300px;
    padding: 10px 20px;
    border: 1px solid #e0e0e0;
    border-radius: 20px;
    cursor: pointer;
    white-space: nowrap;
}

.section-card:hover {
    background-color: #f5f5f5;
}

/* Main Content */
.main-content {
    display: flex;
    max-width: 1200px;
    margin: 20px auto;
    gap: 20px;
    padding: 0 20px;
    flex-wrap: wrap;
    margin-left: -10px;
}

/* Job Listings */
.job-listings {
    flex: 1;
    min-width: 300px;
}

.job-card {
    background: white;
    border-radius: 8px;
    padding: 16px;
    margin-bottom: 16px;

    cursor: pointer;
 
}



/* Job Details */
.job-title {
    font-size: 18px;
    color: #0a66c2;
    margin-bottom: 8px;
}

.company-name {
    font-size: 16px;
    margin-bottom: 8px;
}

.job-meta {
    display: flex;
    gap: 16px;
    color: #666;
    font-size: 14px;
    margin-bottom: 8px;
    flex-wrap: wrap;
}

.job-tags {
    display: flex;
    gap: 8px;
    flex-wrap: wrap;
}

.tag {
    background: #f3f2ef;
    padding: 4px 8px;
    border-radius: 4px;
    font-size: 12px;
}

/* Job Detail Section */
.job-detail {
    flex: 1;
    background: white;
    border-radius: 8px;
    padding: 24px;
    position: sticky;
    top: 20px;
    max-height: calc(100vh - 40px);
    overflow-y: auto;
    min-width: 300px;
}

/* Detail Tabs */
.detail-header {
    margin-bottom: 24px;
}

.detail-tabs {
    display: flex;
    gap: 24px;
    margin-bottom: 24px;
    border-bottom: 1px solid #e0e0e0;
    padding-bottom: 12px;
}

.tab {
    color: #666;
    cursor: pointer;
    padding-bottom: 12px;
    position: relative;
}

.tab.active {
    color: #0a66c2;
}

.tab.active::after {
    content: '';
    position: absolute;
    bottom: -13px;
    left: 0;
    right: 0;
    height: 2px;
    background: #0a66c2;
}

/* Apply Button */
.apply-btn {
    background: #0a66c2;
    color: white;
    padding: 12px 24px;
    border-radius: 24px;
    border: none;
    font-weight: bold;
    cursor: pointer;
    margin-top: 16px;
}

.apply-btn:hover {
    background: #084d8c;
}

/* Contact Button */
.contact-btn {
    display: block;
    margin: 50px auto;
    padding: 15px 30px;
    background: linear-gradient(135deg, #0073e6 0%, #005bb5 100%);
    color: white;
    border: none;
    border-radius: 30px;
    cursor: pointer;
    font-size: 20px;
    font-weight: bold;
    transition: all 0.4s ease;
    box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.3);
}

.contact-btn:hover {
    background: linear-gradient(135deg, #005bb5 0%, #00408a 100%);
    box-shadow: 0px 6px 12px rgba(0, 0, 0, 0.4);
    transform: translateY(-2px);
}

/* Modal */
.modal {
    display: none;
    position: fixed;
    z-index: 999;
    left: 0;
    top: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.8);
    backdrop-filter: blur(8px);
    transition: opacity 0.5s ease;
}

.modal-content {
    background: white;
    margin: 10% auto;
    padding: 40px;
    border-radius: 20px;
    box-shadow: 0 15px 30px rgba(0, 0, 0, 0.5);
    max-width: 500px;
    text-align: center;
    animation: fadeIn 0.4s;
}

/* Heading */
h2 {
    color: #0073e6;
    margin-bottom: 20px;
    font-weight: bold;
    font-size: 28px;
}

/* Fade-in Animation */
@keyframes fadeIn {
    from { opacity: 0; transform: scale(0.9); }
    to { opacity: 1; transform: scale(1); }
}

/* Responsive Adjustments */
@media (max-width: 768px) {
    .main-content {
        flex-direction: column;
        padding: 0 10px;
    }

    .job-detail {
        position: static;
        max-height: none;
        padding: 16px;
    }

    .job-listings,
    .job-card,
    .section-card {
        width: 100%;
    }

    .detail-tabs {
        flex-direction: column;
        gap: 10px;
    }

    .apply-btn,
    .contact-btn {
        width: 100%;
    }
}

@media (max-width: 480px) {
    .job-title {
        font-size: 16px;
    }

    .company-name {
        font-size: 14px;
    }

    .job-meta {
        font-size: 12px;
    }

    h2 {
        font-size: 24px;
    }

    .section-card {
        flex: 1 1 100%;
        max-width: 100%;
    }
}

  /* Base styles for jobTypeFilter and locationFilter items */
  #jobTypeFilter, #locationFilter {
    display: flex;
    overflow-x: auto;
    white-space: nowrap;
  }

  #jobTypeFilter div, #locationFilter div {
    width: 200px; /* Default width */
    height: 50px;
    background-color: lightgray;
    font-weight : bold;
    margin-right: 10px;
    border-radius: 8px;
    display: flex;
    align-items: center;
    justify-content: center;
    font-size: 1rem;
    color: #333;
  }

  /* Adjustments for tablet screens (max-width 992px) */
  @media (max-width: 992px) {
    #jobTypeFilter div, #locationFilter div {
      width: 180px;
      font-size: 0.9rem; /* Adjust font size */
    }
  }

  /* Adjustments for smaller screens (max-width 768px) */
  @media (max-width: 768px) {
    #jobTypeFilter div, #locationFilter div {
      width: 150px;
      font-size: 0.85rem;
      margin-right: 8px;
    }
  }

  /* Adjustments for very small screens (max-width 576px) */
  @media (max-width: 576px) {
    #jobTypeFilter div, #locationFilter div {
      width: 130px;
      font-size: 0.8rem;
      margin-right: 6px;
    }
  }

  /* Adjustments for extra small screens (max-width 480px) */
  @media (max-width: 480px) {
    #jobTypeFilter div, #locationFilter div {
      width: 120px;
      font-size: 0.75rem;
      margin-right: 5px;
    }
  }

  /* Adjustments for very tiny screens (max-width 360px) */
  @media (max-width: 360px) {
    #jobTypeFilter div, #locationFilter div {
      width: 100px;
      font-size: 0.7rem;
      margin-right: 4px;
    }
  }
  .card-btn {
    display: block; /* Make the button a block element */
    padding: 12px 20px;
    margin-top: 15px;
    background: linear-gradient(45deg, #fe9703, #fe9703);
    color: white;
    font-weight: bold;
    border: none;
    border-radius: 30px;
    cursor: pointer;
    transition: background 0.4s, transform 0.2s;
    box-shadow: 0 5px 10px rgba(0, 123, 255, 0.2);
    width: fit-content; /* Button width adjusts based on content */
    margin-left: auto;
    margin-right: auto; /* Center the button horizontally */
}
   .header-style2 .navbar-nav>li>a {
    text-decoration: none;
   }
</style>

</head>

<body>

    <!-- PAGE LOADING -->
    <div id="preloader"></div>

    <!-- MAIN WRAPPER -->
    <div class="main-wrapper">
        <!-- HEADER -->
        <header class="header-style2">
            <div class="navbar-default">
                <div class="top-search bg-secondary">
                    <div class="container-fluid px-lg-1-6 px-xl-2-5 px-xxl-2-9">
                        <form class="search-form" action="search.html" method="GET" accept-charset="utf-8">
                            <div class="input-group">
                                <span class="input-group-addon cursor-pointer">
                                </span>
                                <input type="text" id="searchInput" class="search-form_input form-control" name="s" autocomplete="off" placeholder="Search by job title or location" oninput="filterJobs()">
                                
                                 
                                <span class="input-group-addon close-search mt-1"><i class="fas fa-times"></i></span>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="container-fluid px-lg-1-6 px-xl-2-5 px-xxl-2-9">
                    <div class="row align-items-center">
                        <div class="col-12 col-lg-12">
                            <div class="menu_area alt-font">
                                <nav class="navbar navbar-expand-lg navbar-light p-0">
                                    <div class="navbar-header navbar-header-custom">
                                        <!-- Logo could be added here -->
                                    </div>
                                    <div class ="navbar-toggler"></div>

                                    <!-- Menu Area -->
                                    <ul class="navbar-nav ms-auto" id="nav">
                                        <li><a href="LoginDashboard.jsp">Home</a></li>
                                        <li><a href="#!">Pages</a>
                                            <ul>
                                                <li><a href="aboutus.html">About Us</a></li>
                                                <li><a href="how-it-works.html">How It Works</a></li>
                                                <li><a href="testimonials.html">Testimonials</a></li>
                                                <li><a href="pricing-plans.html">Pricing Plans</a></li>
                                                <li><a href="FAQ.jsp">FAQ</a></li>
                                                <li><a href="javascript:void(0)" id="openModalBtn" class="contact-link">Contact Us</a></li>
                                                <li><a href="#!">User  Pages</a>
                                                    <ul>
                                                       
                                                        
                                                    </ul>
                                                </li>
                                                <li><a href="#!">Others</a>
                                                    <ul>
                                                        <li><a href="privacy-policy.html">Privacy Policy</a></li>
                                                        <li><a href="terms-and-conditions.html">Terms & Conditions</a></li>
                                                        <li><a href="coming-soon.html">Coming Soon</a></li>
                                                        <li><a href="404-page.html">404 Page</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
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
                                    
                                        
                                    </ul>
                                    <!-- end menu area -->
                                    <div class="attr-nav align-items-lg-center ms-lg-auto">
                                        <ul>
                                            <li class="search"><a href="Register.jsp"><i class="fas fa-search"></i></a></li>
                                           
                                        </ul>
                                    </div>
                                </nav>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </header>
      <div class="filters">
  <!--  <input type="text" id="searchInput" placeholder="Search by job title or location" oninput="filterJobs()" /> -->
    <div class="category-filters">
        <!-- Section cards for categories -->
      <!--   <div class="section-card" data-category="IT QA Tester" onclick="filterJobs('it')">IT</div>
        <div class="section-card" data-category="Manufacturing" onclick="filterJobs('Manufacturing')">Manufacturing</div> -->
        <!-- Add more categories as needed -->
     <!--    <div class="section-card" data-category="" onclick="filterJobs()">All</div> Shows all jobs -->
    </div>
</div>
<div style="display: flex; overflow-x: auto; width: 100%; padding: 10px;">
  <!-- Container for job types with a single full scroll -->
  <div id="jobTypeFilter" style="display: flex; white-space: nowrap; flex-wrap: nowrap;">
    <!-- Example items inside jobTypeFilter -->
    <div style="flex: 0 0 auto; width: 200px; height: 50px; background-color: lightgray; margin-right: 10px; text-align: center;">Job Type 1</div>
    <div style="flex: 0 0 auto; width: 200px; height: 50px; background-color: lightgray; margin-right: 10px; text-align: center;">Job Type 2</div>
    <div style="flex: 0 0 auto; width: 200px; height: 50px; background-color: lightgray; margin-right: 10px; text-align: center;">Job Type 3</div>
    <!-- Add more items as needed -->
  </div>
</div>

<!-- Filter container for locations with a full scroll -->
<div style="display: flex; overflow-x: auto; width: 100%; padding: 10px;">
  <div id="locationFilter" style="display: flex; white-space: nowrap; flex-wrap: nowrap;">
    <!-- Example items inside locationFilter -->
    <div style="flex: 0 0 auto; width: 200px; height: 50px; background-color: lightblue; margin-right: 10px; text-align: center;">Location 1</div>
    <div style="flex: 0 0 auto; width: 200px; height: 50px; background-color: lightblue; margin-right: 10px; text-align: center;">Location 2</div>
    <div style="flex: 0 0 auto; width: 200px; height: 50px; background-color: lightblue; margin-right: 10px; text-align: center;">Location 3</div>
    <!-- Add more items as needed -->
  </div>
</div>


<hr>

<div class="main-content">
    <div class="job-listings" id="jobListings">
        <!-- Job listings will be inserted here -->
    </div>
    <div class="job-detail" id="jobDetail">
        <!-- Job details will be inserted here -->
    </div>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<script src="apppp2.js">

</script>
<script type="text/javascript" src="checkapplicationstatus.js"></script>
      <!-- FOOTER -->
<footer class="bg-light">
    <div class="container">
        <div class="row mt-n2-6">
            <div class="col-sm-6 col-lg-5 mt-2-6">
                <a href="#!" class="footer-logo">
                    <img src="logo.png" class="mb-1-6" alt="Eliora Technologies Logo">
                </a>
                <p>Advertise your jobs to hundreds of thousands of monthly customers and seek 15.8 million CVs in our database.</p>
                <ul class="contact-list black">
                    <li class="d-flex"><span class="fa fa-home pe-3"></span><a href="#!">Eliora Technologies Pvt. Ltd.</a></li>
                    <li class="d-flex"><span class="fa fa-phone-alt pe-3"></span><a href="tel:+91123456789">(+91) 123 456 789</a></li>
                    <li class="d-flex"><span class="fa fa-envelope pe-3"></span><a href="mailto:EioraTechnologies@gmail.com">EioraTechnologies@gmail.com</a></li>
                </ul>
            </div>
            <div class="col-sm-6 col-lg-2 offset-lg-1 mt-2-6">
                <div class="ps-sm-1-6 ps-lg-0">
                    <h3 class="h5 mb-1-6 mb-lg-1-9">Information</h3>
                    <ul class="footer-list-style2">
                        <li><a href="about.jsp">About Us</a></li>
                        <li><a href="blog.jsp">Blog</a></li>
                        <li><a href="process.jsp">Our Process</a></li>
                        <li><a href="pricing.jsp">Our Pricing</a></li>
                        <li><a href="contact.jsp">Contact Us</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-sm-6 col-lg-2 mt-2-6">
                <h3 class="h5 mb-1-6 mb-lg-1-9">Candidates</h3>
                <ul class="footer-list-style2">
                    <li><a href="applied-jobs.jsp">Applied Jobs</a></li>
                    <li><a href="cv-manager.jsp">CV Manager</a></li>
                    <li><a href="shortlisted-jobs.jsp">Shortlisted Jobs</a></li>
                    <li><a href="job-alerts.jsp">Job Alerts</a></li>
                    <li><a href="dashboard.jsp">Dashboard</a></li>
                </ul>
            </div>
            <div class="col-sm-6 col-lg-2 mt-2-6">
                <div class="ps-sm-1-6 ps-lg-0">
                    <h3 class="h5 mb-1-6 mb-lg-1-9">Employers</h3>
                    <ul class="footer-list-style2">
                        <li><a href="job-packages.jsp">Job Packages</a></li>
                        <li><a href="company-profile.jsp">Company Profile</a></li>
                        <li><a href="manage-job.jsp">Manage Job</a></li>
                        <li><a href="resume-alerts.jsp">Resume Alerts</a></li>
                        <li><a href="post-job.jsp">Post a Job</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="footer-bar bg-white">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <p class="d-inline-block mb-0">&copy; <span class="current-year"></span> Developed by 
                        <a href="https://www.elioratechno.com/" target="_blank" class="text-primary secondary-hover">Eliora Technologies Pvt. Ltd.</a>
                    </p>
                </div>
            </div>
        </div>
    </div>
</footer>

<!-- BUY TEMPLATE -->
<div class="buy-theme alt-font d-none d-lg-inline-block">
    <a href="https://wrapbootstrap.com/theme/job-board-job-portal-html-template-WB0S2FC71" target="_blank">
        <i class="fas fa-cart-plus"></i><span>Buy Template</span>
    </a>
</div>

<div class="all-demo alt-font d-none d-lg-inline-block">
    <a href="https://www.chitrakootweb.com/contact.html" target="_blank">
        <i class="far fa-envelope"></i><span>Quick Question?</span>
    </a>
</div>
    <!-- start scroll to top -->
    <a href="#!" class="scroll-to-top"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
    <script src="javascript/jquery.min.js"></script>
    <script src="javascript/popper.min.js"></script>
    <script src="javascript/bootstrap.min.js"></script>
    <script src="javascript/core.min.js"></script>
    <script src="search/search.js"></script>
    <script src="quform/js/main.js"></script>
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
      <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" src="js/app.js"></script>
  
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
</body>
</html> 