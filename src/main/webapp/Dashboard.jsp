<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <!-- metas -->
    <meta charset="utf-8">
    <meta name="author" content="Chitrakoot Web" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta name="keywords" content="Job Portal HTML Template" />
    <meta name="description" content="Job Board - Job Portal HTML Template" />

    <!-- title  -->
    <title>Job Board</title>

    <!-- favicon --
    <link rel="shortcut icon" href="img/logos/favicon.png" />
    <link rel="apple-touch-icon" href="img/logos/apple-touch-icon-57x57.png" />
    <link rel="apple-touch-icon" sizes="72x72" href="img/logos/apple-touch-icon-72x72.png" />
    <link rel="apple-touch-icon" sizes="114x114" href="img/logos/apple-touch-icon-114x114.png" />

    <!-- plugins -->
    <link rel="stylesheet" href="css/plugins.css" />

    <!-- search css -->
    <link rel="stylesheet" href="search/search.css" />

    <!-- quform css -->
    <link rel="stylesheet" href="quform/css/base.css">

    <!-- core style css -->
    <link href="css/styles.css" rel="stylesheet" />

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
                <div class="top-search bg-secondary">
                    <div class="container-fluid px-lg-1-6 px-xl-2-5 px-xxl-2-9">
                        <form class="search-form" action="search.html" method="GET" accept-charset="utf-8">
                            <div class="input-group">
                                <span class="input-group-addon cursor-pointer">
                                    <button class="search-form_submit fas fa-search text-white" type="submit"></button>
                                </span>
                                <input type="text" class="search-form_input form-control" name="s" autocomplete="off" placeholder="Type & hit enter...">
                                <span class="input-group-addon close-search mt-1"><i class="fas fa-times"></i></span>
                            </div>
                        </form>
                    </div>
                </div>
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
                                                <li><a href="faq.html">FAQ</a></li>
                                                <li><a href="contact-us.html">Contact Us</a></li>
                                                <li><a href="#!">User Pages</a>
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
                                        <li class="has-sub"><a href="#!">Job Listing</a>
                                            <ul class="row megamenu">
                                                <li class="col-lg-4 col-xl-3"><span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-700">Job Listing</span>
                                                    <ul class="sub-menu">
                                                        <li><a href="job-listing.html">Job Listing 1 - Without Sidebar</a></li>
                                                        <li><a href="job-listing-left-sidebar.html">Job Listing 1 - Left Sidebar</a></li>
                                                        <li><a href="job-listing-right-sidebar.html">Job Listing 1 - Right Sidebar</a></li>
                                                        <li><a href="job-listing-2.html">Job Listing 2 - Without Sidebar</a></li>
                                                        <li><a href="job-listing-2-left-sidebar.html">Job Listing 2 - Left Sidebar</a></li>
                                                        <li><a href="job-listing-2-right-sidebar.html">Job Listing 2 - Right Sidebar</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-4 col-xl-3"><span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-700">Job Grid</span>
                                                    <ul class="sub-menu">
                                                        <li><a href="job-grid.html">Job Grid 1 - Without Sidebar</a></li>
                                                        <li><a href="job-grid-left-sidebar.html">Job Grid 1 - Left Sidebar</a></li>
                                                        <li><a href="job-grid-right-sidebar.html">Job Grid 1 - Right Sidebar</a></li>
                                                        <li><a href="job-grid-2.html">Job Grid 2 - Without Sidebar</a></li>
                                                        <li><a href="job-grid-2-left-sidebar.html">Job Grid 2 - Left Sidebar</a></li>
                                                        <li><a href="job-grid-2-right-sidebar.html">Job Grid 2 - Right Sidebar</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-4 col-xl-3"><span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-700">Job Details</span>
                                                    <ul class="sub-menu">
                                                        <li><a href="job-details.html">Job Details 1</a></li>
                                                        <li><a href="job-details-2.html">Job Details 2</a></li>
                                                        <li><a href="job-details-3.html">Job Details 3</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-3 d-none d-xl-block">
                                                    <div class="menu-slider owl-carousel owl-theme">

                                                        <img src="img/content/menu-slider1.jpg" alt="...">
                                                        <img src="img/content/menu-slider2.jpg" alt="...">
                                                        <img src="img/content/menu-slider3.jpg" alt="...">

                                                    </div>
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
                                        <li><a href="#!">Elements</a>
                                            <ul class="row megamenu">
                                                <li class="col-lg-3">
                                                    <span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-800 display-30">Elements 01</span>
                                                    <ul>
                                                        <li><a href="accordions.html"><i class="fas fa-sliders-h me-2"></i>Accordions</a></li>
                                                        <li><a href="alerts.html"><i class="far fa-bell me-2"></i>Alerts</a></li>
                                                        <li><a href="blockquote.html"><i class="fas fa-vector-square me-2"></i>Blockquote</a></li>
                                                        <li><a href="buttons.html"><i class="fas fa-link me-2"></i>Buttons</a></li>
                                                        <li><a href="call-to-action.html"><i class="far fa-square me-2"></i>Call to Action</a></li>
                                                        <li><a href="carousel-slider.html"><i class="far fa-images me-2"></i>Carousel Slider</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-3">
                                                    <span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-800 display-30">Elements 02</span>
                                                    <ul>
                                                        <li><a href="count-down.html"><i class="far fa-flag me-2"></i>Count Down</a></li>
                                                        <li><a href="counters.html"><i class="fa-solid fa-bolt me-2"></i>Counters</a></li>
                                                        <li><a href="dropcaps.html"><i class="far fa-closed-captioning me-2"></i>Dropcaps</a></li>
                                                        <li><a href="form-elements.html"><i class="fas fa-cubes me-2"></i>Form Elements</a></li>
                                                        <li><a href="font-icons.html"><i class="far fa-check-square me-2"></i>Font Icons</a></li>
                                                        <li><a href="highlights.html"><i class="fas fa-highlighter me-2"></i>Highlights</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-3">
                                                    <span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-800 display-30">Elements 03</span>
                                                    <ul>
                                                        <li><a href="header-style-01.html"><i class="fas fa-compress me-2"></i>Header Style 01</a></li>
                                                        <li><a href="header-style-02.html"><i class="fas fa-compress-arrows-alt me-2"></i>Header Style 02</a></li>
                                                        <li><a href="icon-with-text.html"><i class="fab fa-fonticons-fi me-2"></i>Icon With Text</a></li>
                                                        <li><a href="list-styles.html"><i class="fas fa-list-ul me-2"></i>List Styles</a></li>
                                                        <li><a href="media-object.html"><i class="fas fa-photo-video me-2"></i>Media Object</a></li>
                                                        <li><a href="modal.html"><i class="fas fa-expand me-2"></i>Modal</a></li>
                                                    </ul>
                                                </li>
                                                <li class="col-lg-3">
                                                    <span class="mb-0 mb-lg-3 d-block py-2 p-lg-0 px-4 px-lg-0 text-uppercase sub-title font-weight-800 display-30">Elements 04</span>
                                                    <ul>
                                                        <li><a href="pagination.html"><i class="far fa-caret-square-right me-2"></i>Pagination</a></li>
                                                        <li><a href="progress-bars.html"><i class="fas fa-tasks me-2"></i>Progress Bars</a></li>
                                                        <li><a href="tables.html"><i class="fas fa-table me-2"></i>Tables</a></li>
                                                        <li><a href="tabs.html"><i class="fa-solid fa-clone me-2"></i>Tabs</a></li>
                                                        <li><a href="typography.html"><i class="fas fa-text-height me-2"></i>Typography</a></li>
                                                        <li><a href="videos.html"><i class="fas fa-video me-2"></i>Videos</a></li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                        <li><a href="#!">Blog</a>
                                            <ul>
                                                <li><a href="blog-grid.html">Blog Grid</a></li>
                                                <li><a href="blog-list.html">Blog List</a></li>
                                                <li><a href="blog-details.html">Blog Details</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                    <!-- end menu area -->

                                    <!-- start attribute navigation -->
                                    <div class="attr-nav align-items-lg-center ms-lg-auto">
                                        <ul>
                                            <li class="search"><a href="#!"><i class="fas fa-search"></i></a></li>
                                             <li class="d-none d-xl-inline-block"><a href="Register.jsp" class="butn secondary text-white">LogIn</a></li>
                                            
                                            <li class="d-none d-xl-inline-block"><a href="AdminLogin.jsp" class="butn secondary text-white">Post a Job</a></li>
                                        </ul>
                                    </div>
                                    <!-- end attribute navigation -->

                                </nav>
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
                                <form action="GetJobs" method="get"  onclick="">
                                    <div class="quform-elements">
                                        <div class="row mt-n3">
                                            <!-- Begin Text input element -->
                                            <div class="col-md-5 mt-3">
                                                <div class="quform-element">
                                                    <div class="quform-input">
                                                        <input id="job-search" class="form-control" type="text" name="jobTitle" placeholder="Job title, keywords, or company" />
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- End Text input element -->
                                            <!-- Begin Text input element -->
                                            <div class="col-md-4 mt-3">
                                                <div class="quform-element">
                                                    <div class="quform-input">
                                                        <input id="email" class="form-control" type="text" name="location" placeholder="City or postcode" />
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
                                </form>
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
                    <div class="image-column col-lg-5">
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
                            <div class="banner-image-text d-none d-sm-block">
                                <div class="d-flex align-items-center">
                                    <div class="flex-shrink-0">
                                        <i class="ti-export display-25 text-primary"></i>
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h4 class="h6 mb-0">Upload Your CV</h4>
                                        <small>It only takes a few seconds</small>
                                    </div>
                                </div>
                            </div>
                            <div class="banner-image-text bottom-text text-center d-none d-sm-block">
                                <h6 class="mb-3">10k+ Candidates</h6>
                                <ul class="list-unstyled users-list m-0">
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

       
        <div class="grid-container">
            <div class="job-card">
                <img src="img/IT.jpg" alt="IT" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Information Technology</h2>
                    <a href="JobCards.jsp" class="job-count">24458 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="img/IT.jpg" alt="Manufacturing" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Manufacturing / Engineering</h2>
                    <a href="alljobs.html" class="job-count">6938 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=BNK" alt="Banking" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Banking & Finance</h2>
                    <a href="alljobs.html" class="job-count">3158 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=SCM" alt="SCM" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">SCM & Operations/BPO</h2>
                    <a href="alljobs.html" class="job-count">3340 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=SALES" alt="Sales" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">Sales & Marketing Jobs</h2>
                    <a href="alljobs.html" class="job-count">7241 Jobs</a>
                </div>
            </div>
            <div class="job-card">
                <img src="https://via.placeholder.com/50?text=ALL" alt="All Jobs" class="job-icon">
                <div class="job-content">
                    <h2 class="job-title">All Jobs</h2>
                    <a href="alljobs.html" class="job-count">76838 Jobs</a>
                </div>
            </div>
        </div>












        <!-- JOB CATEGORIES
        ================================================== -->
        <section>
            <div class="container border-bottom border-color-extra-light-gray mb-6 pb-6">
                <div class="section-heading2">
                    
                    <h2><strong>Top trending</strong> categories</h2>
                </div>
                <div class="job-categories owl-carousel owl-theme">
                    <div class="card card-style5">
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
                    <div class="card card-style5">
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
                    <div class="card card-style5">
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
                    <div class="card card-style5">
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
                    <div class="card card-style5">
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
                    <div class="card card-style5">
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
                                <img src="img/icons/icon-09.png" alt="...">
                            </div>
                            <div class="flex-grow-1 border-sm-start border-color-extra-light-gray ps-sm-3 ps-xl-4 ms-sm-3 ms-xl-4">
                                <h3 class="countup h1 text-secondary mb-1">1327</h3>
                                <span class="text-muted">Jobs Posted</span>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-3 mt-1-9 text-center text-sm-start">
                        <div class="d-sm-flex align-items-center">
                            <div class="flex-shrink-0 mb-3 mb-sm-0">
                                <img src="img/icons/icon-10.png" alt="...">
                            </div>
                            <div class="flex-grow-1 border-sm-start border-color-extra-light-gray ps-sm-3 ps-xl-4 ms-sm-3 ms-xl-4">
                                <h3 class="countup h1 text-secondary mb-1">150</h3>
                                <span class="font-weight-500 text-muted">Jobs Filled</span>
                            </div>
                        </div>
                    </div>
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
                                <h3 class="countup h1 text-secondary mb-1">2250</h3>
                                <span class="font-weight-500 text-muted">Candidates</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- RECENT JOBS
        ================================================== -->
        <section class="bg-light recent-job-style1">
            <div class="container">
                <div class="section-heading2">
                    
                    <h2><strong>Latest job</strong> postings</h2>
                </div>
                <div class="row mt-n1-9">
                    <div class="col-md-6 col-lg-4 mt-1-9">
                        <div class="card border-color-extra-light-gray h-100 border-radius-5">
                            <div class="card-body p-1-6 p-xl-1-9">
                                <h4 class="h5 mb-4"><a href="job-details.html">Application Developer</a></h4>
                                <div class="d-flex mb-3">
                                    <div class="flex-shrink-0">
                                        <img src="img/avatar/avatar-01.jpg" class="border-radius-50 w-40px" alt="...">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Michelle Herz</h6>
                                        <span class="text-muted display-31">Nov 18, 2021</span>
                                    </div>
                                </div>
                                <h5 class="text-primary mb-3">5500$ <span class="text-muted display-31">/ Month</span> </h5>
                                <div class="mb-4">
                                    <span class="display-30 me-2"><i class="fas fa-map-marker-alt pe-2"></i>Canada, USA</span>
                                    <span class="display-30"><i class="far fa-clock pe-2"></i>Full Time</span>
                                </div>
                                <a href="Register.jsp" class="butn butn-md radius">Apply Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mt-1-9">
                        <div class="card border-color-extra-light-gray h-100 border-radius-5">
                            <div class="card-body p-1-6 p-xl-1-9">
                                <h4 class="h5 mb-4"><a href="job-details.html">Marketing Manager</a></h4>
                                <div class="d-flex mb-3">
                                    <div class="flex-shrink-0">
                                        <img src="img/avatar/avatar-02.jpg" class="border-radius-50 w-40px" alt="...">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Kurak Torath</h6>
                                        <span class="text-muted display-31">Nov 15, 2021</span>
                                    </div>
                                </div>
                                <h5 class="text-primary mb-3">6200$ <span class="text-muted display-31">/ Month</span> </h5>
                                <div class="mb-4">
                                    <span class="display-30 me-2"><i class="fas fa-map-marker-alt pe-2"></i>London, Uk</span>
                                    <span class="display-30"><i class="far fa-clock pe-2"></i>Full Time</span>
                                </div>
                                <a href="Register.jsp" class="butn butn-md radius">Apply Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mt-1-9">
                        <div class="card border-color-extra-light-gray h-100 border-radius-5">
                            <div class="card-body p-1-6 p-xl-1-9">
                                <h4 class="h5 mb-4"><a href="job-details.html">Graphics Design Expert</a></h4>
                                <div class="d-flex mb-3">
                                    <div class="flex-shrink-0">
                                        <img src="img/avatar/avatar-03.jpg" class="border-radius-50 w-40px" alt="...">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Lea Dreher</h6>
                                        <span class="text-muted display-31">Nov 13, 2021</span>
                                    </div>
                                </div>
                                <h5 class="text-primary mb-3">3200$ <span class="text-muted display-31">/ Month</span> </h5>
                                <div class="mb-4">
                                    <span class="display-30 me-2"><i class="fas fa-map-marker-alt pe-2"></i>Montreal, US</span>
                                    <span class="display-30"><i class="far fa-clock pe-2"></i>Part Time</span>
                                </div>
                                <a href="Register.jsp" class="butn butn-md radius">Apply Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mt-1-9">
                        <div class="card border-color-extra-light-gray h-100 border-radius-5">
                            <div class="card-body p-1-6 p-xl-1-9">
                                <h4 class="h5 mb-4"><a href="job-details.html">Senior Software Engineer</a></h4>
                                <div class="d-flex mb-3">
                                    <div class="flex-shrink-0">
                                        <img src="img/avatar/avatar-04.jpg" class="border-radius-50 w-40px" alt="...">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Clovis Devoe</h6>
                                        <span class="text-muted display-31">Nov 12, 2021</span>
                                    </div>
                                </div>
                                <h5 class="text-primary mb-3">4500$ <span class="text-muted display-31">/ Month</span> </h5>
                                <div class="mb-4">
                                    <span class="display-30 me-2"><i class="fas fa-map-marker-alt pe-2"></i>Delhi, India</span>
                                    <span class="display-30"><i class="far fa-clock pe-2"></i>Full Time</span>
                                </div>
                                <a href="Register.jsp" class="butn butn-md radius">Apply Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mt-1-9">
                        <div class="card border-color-extra-light-gray h-100 border-radius-5">
                            <div class="card-body p-1-6 p-xl-1-9">
                                <h4 class="h5 mb-4"><a href="job-details.html">Health Advisor</a></h4>
                                <div class="d-flex mb-3">
                                    <div class="flex-shrink-0">
                                        <img src="img/avatar/avatar-05.jpg" class="border-radius-50 w-40px" alt="...">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Aatifa Gabriel</h6>
                                        <span class="text-muted display-31">Nov 10, 2021</span>
                                    </div>
                                </div>
                                <h5 class="text-primary mb-3">2300$ <span class="text-muted display-31">/ Month</span> </h5>
                                <div class="mb-4">
                                    <span class="display-30 me-2"><i class="fas fa-map-marker-alt pe-2"></i>Paris, France</span>
                                    <span class="display-30"><i class="far fa-clock pe-2"></i>Part Time</span>
                                </div>
                                <a href="Register.jsp" class="butn butn-md radius">Apply Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 mt-1-9">
                        <div class="card border-color-extra-light-gray h-100 border-radius-5">
                            <div class="card-body p-1-6 p-xl-1-9">
                                <h4 class="h5 mb-4"><a href="job-details.html">Project Team Leader</a></h4>
                                <div class="d-flex mb-3">
                                    <div class="flex-shrink-0">
                                        <img src="img/avatar/avatar-06.jpg" class="border-radius-50 w-40px" alt="...">
                                    </div>
                                    <div class="flex-grow-1 ms-3">
                                        <h6 class="mb-0">Juhana Hasu</h6>
                                        <span class="text-muted display-31">Nov 07, 2021</span>
                                    </div>
                                </div>
                                <h5 class="text-primary mb-3">2500$ <span class="text-muted display-31">/ Month</span> </h5>
                                <div class="mb-4">
                                    <span class="display-30 me-2"><i class="fas fa-map-marker-alt pe-2"></i>Dhaka, BD</span>
                                    <span class="display-30"><i class="far fa-clock pe-2"></i>Full Time</span>
                                </div>
                                <a href="Register.jsp" class="butn butn-md radius">Apply Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- TOP COMPANY
        ================================================== -->
        <section>
            <div class="container">
                <div class="section-heading2">
                    
                    <h2><strong>Top rated</strong> companies</h2>
                </div>
                <div class="row mt-n1-9">
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-1-9">
                        <div class="card card-style6">
                            <div class="card-body">
                                <div class="company-info-top">
                                    <img src="img/content/company-01.jpg" alt="..." class="mb-4">
                                    <h4 class="h5"><a href="employer-details.html">Conzio construction</a></h4>
                                    <p class="text-muted mb-0 font-weight-500">(08 Vacancies)</p>
                                </div>
                                <div class="company-info-bottom">
                                    <h4 class="display-28">Marketing</h4>
                                    <p class="mb-0 display-30"><i class="ti-location-pin pe-2 text-secondary"></i>Boston, USA</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-1-9">
                        <div class="card card-style6">
                            <div class="card-body">
                                <span class="company-featured"> <i class="far fa-star"></i> </span>
                                <div class="company-info-top">
                                    <img src="img/content/company-02.jpg" alt="..." class="mb-4">
                                    <h4 class="h5"><a href="employer-details.html">Midway Overline</a></h4>
                                    <p class="text-muted mb-0 font-weight-500">(05 Vacancies)</p>
                                </div>
                                <div class="company-info-bottom">
                                    <h4 class="display-28">PHP Developer</h4>
                                    <p class="mb-0 display-30"><i class="ti-location-pin pe-2 text-secondary"></i>Toronto, Canada</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-1-9">
                        <div class="card card-style6">
                            <div class="card-body">
                                <span class="company-featured"> <i class="far fa-star"></i> </span>
                                <div class="company-info-top">
                                    <img src="img/content/company-03.jpg" alt="..." class="mb-4">
                                    <h4 class="h5"><a href="employer-details.html">Ktone Software</a></h4>
                                    <p class="text-muted mb-0 font-weight-500">(02 Vacancies)</p>
                                </div>
                                <div class="company-info-bottom">
                                    <h4 class="display-28">Accounting</h4>
                                    <p class="mb-0 display-30"><i class="ti-location-pin pe-2 text-secondary"></i>London, UK</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-1-9">
                        <div class="card card-style6">
                            <div class="card-body">
                                <div class="company-info-top">
                                    <img src="img/content/company-04.jpg" alt="..." class="mb-4">
                                    <h4 class="h5"><a href="employer-details.html">Alpha Kem</a></h4>
                                    <p class="text-muted mb-0 font-weight-500">(03 Vacancies)</p>
                                </div>
                                <div class="company-info-bottom">
                                    <h4 class="display-28">Content Writer</h4>
                                    <p class="mb-0 display-30"><i class="ti-location-pin pe-2 text-secondary"></i>Nizhny, Russia</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-1-9">
                        <div class="card card-style6">
                            <div class="card-body">
                                <span class="company-featured"> <i class="far fa-star"></i> </span>
                                <div class="company-info-top">
                                    <img src="img/content/company-05.jpg" alt="..." class="mb-4">
                                    <h4 class="h5"><a href="employer-details.html">Waft Technologies</a></h4>
                                    <p class="text-muted mb-0 font-weight-500">(02 Vacancies)</p>
                                </div>
                                <div class="company-info-bottom">
                                    <h4 class="display-28">Software Engineer</h4>
                                    <p class="mb-0 display-30"><i class="ti-location-pin pe-2 text-secondary"></i>Utrecht, Netherlands</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-1-9">
                        <div class="card card-style6">
                            <div class="card-body">
                                <div class="company-info-top">
                                    <img src="img/content/company-06.jpg" alt="..." class="mb-4">
                                    <h4 class="h5"><a href="employer-details.html">Sai Web Infotech</a></h4>
                                    <p class="text-muted mb-0 font-weight-500">(03 Vacancies)</p>
                                </div>
                                <div class="company-info-bottom">
                                    <h4 class="display-28">Full-Stack Developer</h4>
                                    <p class="mb-0 display-30"><i class="ti-location-pin pe-2 text-secondary"></i>Vienna, Australia</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-1-9">
                        <div class="card card-style6">
                            <div class="card-body">
                                <span class="company-featured"> <i class="far fa-star"></i> </span>
                                <div class="company-info-top">
                                    <img src="img/content/company-07.jpg" alt="..." class="mb-4">
                                    <h4 class="h5"><a href="employer-details.html">Themezhub Infotech</a></h4>
                                    <p class="text-muted mb-0 font-weight-500">(10 Vacancies)</p>
                                </div>
                                <div class="company-info-bottom">
                                    <h4 class="display-28">Networking</h4>
                                    <p class="mb-0 display-30"><i class="ti-location-pin pe-2 text-secondary"></i>Los Angeles, Califonia</p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3 mt-1-9">
                        <div class="card card-style6">
                            <div class="card-body">
                                <div class="company-info-top">
                                    <img src="img/content/company-08.jpg" alt="..." class="mb-4">
                                    <h4 class="h5"><a href="employer-details.html">Solit IT Solution</a></h4>
                                    <p class="text-muted mb-0 font-weight-500">(25 Vacancies)</p>
                                </div>
                                <div class="company-info-bottom">
                                    <h4 class="display-28">Assistant Editor</h4>
                                    <p class="mb-0 display-30"><i class="ti-location-pin pe-2 text-secondary"></i>Tokyo, Japan</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

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
        </section>

        <!-- FEATURED CANDIDATES
        ================================================== --
        <section>
            <div class="container">
                <div class="section-heading2">
                    <span># Candidates</span>
                    <h2><strong>Our featured</strong> candidates</h2>
                </div>
                <div class="featured-candidate owl-carousel owl-theme">
                    <div class="card card-style7">
                        <div class="card-body">
                            <a class="candidate-favourite" href="#!"><i class="far fa-heart"></i></a>
                            <img src="img/candidate/candidate-01.jpg" class="border-radius-50 mb-3" alt="...">
                            <div class="candidate-info">
                                <h4 class="h5"><a href="candidate-details.html">Olle Nurmi</a></h4>
                                <span class="display-30 text-muted d-block mb-2 font-weight-500">Sr. Java Developer</span>
                                <div class="display-30 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <span class="px-2 py-1 bg-primary text-white ms-2 display-31">5.0</span>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <span><i class="ti-location-pin text-secondary me-2 display-31 display-sm-30"></i><strong>UK</strong></span>
                                <span><i class="far fa-money-bill-alt text-secondary me-2 display-31 display-sm-30"></i><strong>$45 / hr</strong></span>
                                <span><i class="ti-briefcase text-secondary me-2 display-31 display-sm-30"></i><strong>85%</strong></span>
                            </div>
                            <a href="candidate-details.html" class="butn w-100 radius">View Profile</a>
                        </div>
                    </div>
                    <div class="card card-style7">
                        <div class="card-body">
                            <a class="candidate-favourite" href="#!"><i class="far fa-heart"></i></a>
                            <img src="img/candidate/candidate-02.jpg" class="border-radius-50 mb-3" alt="...">
                            <div class="candidate-info">
                                <h4 class="h5"><a href="candidate-details.html">Selma Kolkkala</a></h4>
                                <span class="display-30 text-muted d-block mb-2 font-weight-500">UI/UX Specialist</span>
                                <div class="display-30 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <span class="px-2 py-1 bg-primary text-white ms-2 display-31">4.0</span>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <span><i class="ti-location-pin text-secondary me-2 display-31 display-sm-30"></i><strong>Australia</strong></span>
                                <span><i class="far fa-money-bill-alt text-secondary me-2 display-31 display-sm-30"></i><strong>$60 / hr</strong></span>
                                <span><i class="ti-briefcase text-secondary me-2 display-31 display-sm-30"></i><strong>98%</strong></span>
                            </div>
                            <a href="candidate-details.html" class="butn w-100 radius">View Profile</a>
                        </div>
                    </div>
                    <div class="card card-style7">
                        <div class="card-body">
                            <a class="candidate-favourite" href="#!"><i class="far fa-heart"></i></a>
                            <img src="img/candidate/candidate-03.jpg" class="border-radius-50 mb-3" alt="...">
                            <div class="candidate-info">
                                <h4 class="h5"><a href="candidate-details.html">Rens Westen</a></h4>
                                <span class="display-30 text-muted d-block mb-2 font-weight-500">Research Assistant</span>
                                <div class="display-30 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <span class="px-2 py-1 bg-primary text-white ms-2 display-31">4.0</span>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <span><i class="ti-location-pin text-secondary me-2 display-31 display-sm-30"></i><strong>USA</strong></span>
                                <span><i class="far fa-money-bill-alt text-secondary me-2 display-31 display-sm-30"></i><strong>$35 / hr</strong></span>
                                <span><i class="ti-briefcase text-secondary me-2 display-31 display-sm-30"></i><strong>80%</strong></span>
                            </div>
                            <a href="candidate-details.html" class="butn w-100 radius">View Profile</a>
                        </div>
                    </div>
                    <div class="card card-style7">
                        <div class="card-body">
                            <a class="candidate-favourite" href="#!"><i class="far fa-heart"></i></a>
                            <img src="img/candidate/candidate-04.jpg" class="border-radius-50 mb-3" alt="...">
                            <div class="candidate-info">
                                <h4 class="h5"><a href="candidate-details.html">France Maheu</a></h4>
                                <span class="display-30 text-muted d-block mb-2 font-weight-500">Digital Marketer</span>
                                <div class="display-30 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <span class="px-2 py-1 bg-primary text-white ms-2 display-31">5.0</span>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <span><i class="ti-location-pin text-secondary me-2 display-31 display-sm-30"></i><strong>UK</strong></span>
                                <span><i class="far fa-money-bill-alt text-secondary me-2 display-31 display-sm-30"></i><strong>$50 / hr</strong></span>
                                <span><i class="ti-briefcase text-secondary me-2 display-31 display-sm-30"></i><strong>90%</strong></span>
                            </div>
                            <a href="candidate-details.html" class="butn w-100 radius">View Profile</a>
                        </div>
                    </div>
                    <div class="card card-style7">
                        <div class="card-body">
                            <a class="candidate-favourite" href="#!"><i class="far fa-heart"></i></a>
                            <img src="img/candidate/candidate-05.jpg" class="border-radius-50 mb-3" alt="...">
                            <div class="candidate-info">
                                <h4 class="h5"><a href="candidate-details.html">Richard Bureau</a></h4>
                                <span class="display-30 text-muted d-block mb-2 font-weight-500">Charted Accountant</span>
                                <div class="display-30 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <span class="px-2 py-1 bg-primary text-white ms-2 display-31">4.0</span>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <span><i class="ti-location-pin text-secondary me-2 display-31 display-sm-30"></i><strong>Canada</strong></span>
                                <span><i class="far fa-money-bill-alt text-secondary me-2 display-31 display-sm-30"></i><strong>$60 / hr</strong></span>
                                <span><i class="ti-briefcase text-secondary me-2 display-31 display-sm-30"></i><strong>95%</strong></span>
                            </div>
                            <a href="candidate-details.html" class="butn w-100 radius">View Profile</a>
                        </div>
                    </div>
                    <div class="card card-style7">
                        <div class="card-body">
                            <a class="candidate-favourite" href="#!"><i class="far fa-heart"></i></a>
                            <img src="img/candidate/candidate-06.jpg" class="border-radius-50 mb-3" alt="...">
                            <div class="candidate-info">
                                <h4 class="h5"><a href="candidate-details.html">Uta Fuerst</a></h4>
                                <span class="display-30 text-muted d-block mb-2 font-weight-500">Marketing Advisor</span>
                                <div class="display-30 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <span class="px-2 py-1 bg-primary text-white ms-2 display-31">5.0</span>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between mb-3">
                                <span><i class="ti-location-pin text-secondary me-2 display-31 display-sm-30"></i><strong>London</strong></span>
                                <span><i class="far fa-money-bill-alt text-secondary me-2 display-31 display-sm-30"></i><strong>$35 / hr</strong></span>
                                <span><i class="ti-briefcase text-secondary me-2 display-31 display-sm-30"></i><strong>75%</strong></span>
                            </div>
                            <a href="candidate-details.html" class="butn w-100 radius">View Profile</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- TESTIMONIAL
        ================================================== --
        <section class="bg-light">
            <div class="container">
                <div class="section-heading2">
                    <span># Testimonial</span>
                    <h2><strong>Our satisfied</strong> clients</h2>
                </div>
                <div class="testimonial2-carousel owl-carousel owl-theme">
                    <div class="testimonial-wrapper">
                        <div class="testimonial-icon">
                            <i class="ti-quote-left"></i>
                        </div>
                        <p class="mb-4">Wow what great service, I love it! You guys rock! I am completely blown away. Jobboard is exactly what our business has been lacking. Thank you.</p>
                        <div class="testimonial-box">
                            <div class="d-sm-flex justify-content-between align-items-center">
                                <div class="mb-2 mb-sm-0">
                                    <h4 class="h5">Eva Kleist</h4>
                                    <span class="designation">Senior Manager</span>
                                </div>
                                <div class="display-31 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-wrapper">
                        <div class="testimonial-icon">
                            <i class="ti-quote-left"></i>
                        </div>
                        <p class="mb-4">I would gladly pay over 600 dollars for jobboard. Jobboard is worth much more than I paid. The best on the net! I wish I would have thought of it first.</p>
                        <div class="testimonial-box">
                            <div class="d-sm-flex justify-content-between align-items-center">
                                <div class="mb-2 mb-sm-0">
                                    <h4 class="h5">Marko Konig</h4>
                                    <span class="designation">Web Designer</span>
                                </div>
                                <div class="display-31 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-wrapper">
                        <div class="testimonial-icon">
                            <i class="ti-quote-left"></i>
                        </div>
                        <p class="mb-4">I have gotten at least 50 times the value from jobboard. I didn't even need training. Thanks to jobboard, we have just launched our 5th website!</p>
                        <div class="testimonial-box">
                            <div class="d-sm-flex justify-content-between align-items-center">
                                <div class="mb-2 mb-sm-0">
                                    <h4 class="h5">Rosa Olsen</h4>
                                    <span class="designation">Apps Developer</span>
                                </div>
                                <div class="display-31 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-wrapper">
                        <div class="testimonial-icon">
                            <i class="ti-quote-left"></i>
                        </div>
                        <p class="mb-4">Since I invested in jobboard I made over 100,000 dollars profits. No matter where you go, jobboard is the coolest, most happening thing around!</p>
                        <div class="testimonial-box">
                            <div class="d-sm-flex justify-content-between align-items-center">
                                <div class="mb-2 mb-sm-0">
                                    <h4 class="h5">Eshan Marshall</h4>
                                    <span class="designation">Business Manager</span>
                                </div>
                                <div class="display-31 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-wrapper">
                        <div class="testimonial-icon">
                            <i class="ti-quote-left"></i>
                        </div>
                        <p class="mb-4">I like jobboard more and more each day because it makes my life a lot easier. Thank you for making it painless, pleasant and most of all hassle free!</p>
                        <div class="testimonial-box">
                            <div class="d-sm-flex justify-content-between align-items-center">
                                <div class="mb-2 mb-sm-0">
                                    <h4 class="h5">Jessika Brandt</h4>
                                    <span class="designation">IT Specialist</span>
                                </div>
                                <div class="display-31 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="testimonial-wrapper">
                        <div class="testimonial-icon">
                            <i class="ti-quote-left"></i>
                        </div>
                        <p class="mb-4">Thanks for the great service. I strongly recommend jobboard to everyone interested in running a successful online business! It's all good.</p>
                        <div class="testimonial-box">
                            <div class="d-sm-flex justify-content-between align-items-center">
                                <div class="mb-2 mb-sm-0">
                                    <h4 class="h5">Iwo Maciejewski</h4>
                                    <span class="designation">Digital Marketer</span>
                                </div>
                                <div class="display-31 text-warning">
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                    <i class="fas fa-star"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <!-- BLOG
        ================================================== --
        <section>
            <div class="container">
                <div class="section-heading2">
                    <span># Our Blogs</span>
                    <h2><strong>Our latest</strong> news & blog</h2>
                </div>
                <div class="row mt-n1-9">
                    <div class="col-md-6 col-lg-4 mt-1-9">
                        <article class="card border border-color-extra-light-gray border-radius-5 text-center">
                            <div class="card-body p-1-6">
                                <ul class="list-style2">
                                    <li><a href="#!">Apr 18, 2022</a></li>
                                    <li><a href="#!">Comment</a>(12)</li>
                                </ul>
                                <h4 class="mb-3 h5"><a href="blog-details.html">How To Make A Perfect Cv That Attracts The Attention...</a></h4>
                                <p class="mb-3">A job ravenously at the same time as Far plenty that one rank beheld after outside.</p>
                                <a href="blog-details.html" class="font-weight-500">Read More<i class="fas fa-long-arrow-alt-right align-middle ms-2 display-30"></i></a>
                            </div>
                        </article>
                    </div>
                    <div class="col-md-6 col-lg-4 mt-1-9">
                        <article class="card border border-color-extra-light-gray border-radius-5 text-center">
                            <div class="card-body p-1-6">
                                <ul class="list-style2">
                                    <li><a href="#!">Apr 15, 2022</a></li>
                                    <li><a href="#!">Comment</a>(08)</li>
                                </ul>
                                <h4 class="mb-3 h5"><a href="blog-details.html">Points To Be Considered Before Accept Job Offer!...</a></h4>
                                <p class="mb-3">A job ravenously at the same time as Far plenty that one rank beheld after outside.</p>
                                <a href="blog-details.html" class="font-weight-500">Read More<i class="fas fa-long-arrow-alt-right align-middle ms-2 display-30"></i></a>
                            </div>
                        </article>
                    </div>
                    <div class="col-md-6 col-lg-4 mt-1-9">
                        <article class="card border border-color-extra-light-gray border-radius-5 text-center">
                            <div class="card-body p-1-6">
                                <ul class="list-style2">
                                    <li><a href="#!">Apr 14, 2022</a></li>
                                    <li><a href="#!">Comment</a>(10)</li>
                                </ul>
                                <h4 class="mb-3 h5"><a href="blog-details.html">Most Powerful Thing You Have Self Coaching Scholars...</a></h4>
                                <p class="mb-3">A job ravenously at the same time as Far plenty that one rank beheld after outside.</p>
                                <a href="blog-details.html" class="font-weight-500">Read More<i class="fas fa-long-arrow-alt-right align-middle ms-2 display-30"></i></a>
                            </div>
                        </article>
                    </div>
                </div>
            </div>
        </section>

        <!-- NEWSLETTER
        ================================================== --
        <section class="bg-primary md">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-7 mb-1-9 mb-lg-0 text-center text-lg-start">
                        <h3 class="text-white">Subscribe to our Newsletter!</h3>
                        <p class="text-white mb-0 opacity9">Sign up for our newsletter and study us on social media.</p>
                    </div>
                    <div class="col-lg-5">
                        <form class="quform newsletter-form" action="quform/newsletter-two.php" method="post" enctype="multipart/form-data" onclick="">
                            <div class="quform-elements">
                                <div class="row">
                                    <!-- Begin Text input element --
                                    <div class="col-md-12">
                                        <div class="quform-element">
                                            <div class="quform-input">
                                                <input class="form-control border-radius-5" id="email_address" type="text" name="email_address" placeholder="Subscribe with us" />
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Text input element --

                                    <!-- Begin Submit button --
                                    <div class="col-md-12">
                                        <div class="quform-submit-inner">
                                            <button class="btn btn-white text-primary m-0" type="submit"><i class="fas fa-paper-plane"></i></button>
                                        </div>
                                        <div class="quform-loading-wrap"><span class="quform-loading"></span></div>
                                    </div>
                                    <!-- End Submit button --
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>-->

        <!-- FOOTER
        ================================================== -->
        <footer class="bg-light">
            <div class="container">
                <div class="row mt-n2-6">
                    <div class="col-sm-6 col-lg-5 mt-2-6">
                        <a href="#!" class="footer-logo"><img src="" class="mb-1-6" alt="..."></a>
                        <p>Advertise your jobs to hundreds of thousands of monthly customers and seek 15.8 million CV in our database.</p>
                        <ul class="contact-list black">
                            <li class="d-flex"><span class="fa fa-home pe-3"></span><a href="#!">66 Guild Street 512B, Great North Town.</a></li>
                            <li class="d-flex"><span class="fa fa-phone-alt pe-3"></span><a href="#!">(+44) 123 456 789</a></li>
                            <li class="d-flex"><span class="fa fa-envelope pe-3"></span><a href="#!">info@example.com</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-lg-2 offset-lg-1 mt-2-6">
                        <div class="ps-sm-1-6 ps-lg-0">
                            <h3 class="h5 mb-1-6 mb-lg-1-9">Information</h3>
                            <ul class="footer-list-style2">
                                <li><a href="aboutus.html">About us</a></li>
                                <li><a href="blog-grid.html">Blog</a></li>
                                <li><a href="how-it-works.html">Our Process</a></li>
                                <li><a href="pricing-plans.html">Our Pricing</a></li>
                                <li><a href="contact-us.html">Contact Us</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 col-lg-2 mt-2-6">
                        <h3 class="h5 mb-1-6 mb-lg-1-9">Candidates</h3>
                        <ul class="footer-list-style2">
                            <li><a href="candidate-applied-job.html">Applied Job</a></li>
                            <li><a href="candidate-cv-manager.html">CV Manager</a></li>
                            <li><a href="candidate-shortlisted-jobs.html">Shortlisted Jobs</a></li>
                            <li><a href="candidate-job-alerts.html">Job Alerts</a></li>
                            <li><a href="candidate-dashboard.html">Dashboard</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-6 col-lg-2 mt-2-6">
                        <div class="ps-sm-1-6 ps-lg-0">
                            <h3 class="h5 mb-1-6 mb-lg-1-9">Employers</h3>
                            <ul class="footer-list-style2">
                                <li><a href="employer-packages.html">Job Packages</a></li>
                                <li><a href="employer-company-profile.html">Company Profile</a></li>
                                <li><a href="employer-manage-job.html">Manage Job</a></li>
                                <li><a href="employer-resume-alerts.html">Resume Alerts</a></li>
                                <li><a href="employer-post-job.html">Post a Job</a></li>
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
    <!-- end scroll to top -->

    <!-- all js include start -->

    <!-- jQuery -->
    <script src="javascript/jquery.min.js"></script>

    <!-- popper js -->
    <script src="javascript/popper.min.js"></script>

    <!-- bootstrap -->
    <script src="javascript/bootstrap.min.js"></script>

    <!-- core.min.js -->
    <script src="javascript/core.min.js"></script>

    <!-- search -->
    <script src="javascript/search.js"></script>

    <!-- custom scripts -->
    <script src="javascript/main.js"></script>

    <!-- form plugins js -->
    <script src="javascript/plugins.js"></script>

    <!-- form scripts js -->
    <script src="javascript/scripts.js"></script>

    <!-- all js include end -->

</body>

</html>