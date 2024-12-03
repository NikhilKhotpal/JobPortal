<!doctype html>
<html>

<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <title>Reset Password</title>
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
<link href='' rel='stylesheet'>
    <link href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css' rel='stylesheet'>
    <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
    <style>
        body {
            background-color: #f8f9fa;
            display: block;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: 'Arial', sans-serif;
        }

        .placeicon {
            font-family: FontAwesome, 'Arial', sans-serif;
        }

        .custom-control-label::before {
            background-color: #dee2e6;
            border: #dee2e6;
        }

        .container {
            max-width: 100%;
        }

        .rounded {
            border-radius: 15px !important;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.15);
        }

        h1 {
            font-size: 32px;
            font-weight: 700;
            color: #333;
        }

        .form-control {
            padding: 15px 20px;
            font-size: 16px;
            border: 2px solid #dee2e6;
            border-radius: 8px;
            box-shadow: none;
            transition: border-color 0.3s, box-shadow 0.3s;
        }

        .form-control:focus {
            border-color: #2575fc;
            box-shadow: 0 4px 8px rgba(37, 117, 252, 0.2);
        }

        .btn-info {
            background-color: #2575fc;
            font-size: 18px;
            padding: 10px 20px;
            border-radius: 25px;
            transition: background-color 0.3s, box-shadow 0.3s;
        }

        .btn-info:hover {
            background-color: skyblue;
            box-shadow: 0 6px 12px rgba(37, 117, 252, 0.2);
        }

        .bg-light {
            background-color: #f8f9fa !important;
        }

        h5 {
            font-size: 18px;
            font-weight: 400;
        }

        h5 a {
            font-weight: 700;
        }

        hr {
            border-top: 2px solid #dee2e6;
        }

        /* Media Queries for smaller devices */
        @media (max-width: 768px) {
            h1 {
                font-size: 26px;
            }

            .form-control {
                font-size: 14px;
                padding: 12px 15px;
            }

            .btn-info {
                font-size: 16px;
                padding: 8px 16px;
            }
        }
    </style>
</head>

<body oncontextmenu='return false'>
    <!-- Main Container -->
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-12 col-md-9 col-lg-7 col-xl-6 mt-5">
                <!-- White Box Container -->
                <div class="container bg-white rounded mt-2 mb-2 px-0">
                    <!-- Reset Password Heading -->
                    <div class="row justify-content-center align-items-center pt-4">
                        <h1><strong>Reset Your Password</strong></h1>
                    </div>
                    <% 
                        String errorMessage = (String) request.getAttribute("errorMessage");
                        if (errorMessage != null) { 
                    %>
                        <div class="alert alert-danger" role="alert"><%= errorMessage %></div>
                    <% 
                        } 
                    %>
                    <div class="pt-4 pb-3">
                        <!-- Reset Password Form -->
                        <form class="form-horizontal" action="newPassword" method="POST">
                            <!-- New Password Input -->
                            <div class="form-group row justify-content-center px-3">
                                <div class="col-9 px-0">
                                    <input type="password" name="password" placeholder="&#xf023; New Password" class="form-control border-info placeicon" required>
                                </div>
                            </div>
                            <!-- Confirm New Password Input -->
                            <div class="form-group row justify-content-center px-3">
                                <div class="col-9 px-0">
                                    <input type="password" name="confPassword" placeholder="&#xf023; Confirm New Password" class="form-control border-info placeicon" required>
                                </div>
                            </div>
                            <!-- Reset Button -->
                            <div class="form-group row justify-content-center">
                                <div class="col-4 px-3 mt-3">
                                    <input type="submit" value="Reset" class="btn btn-block btn-info">
                                </div>
                            </div>
                        </form>
                    </div>
                    <!-- Alternative Login Option -->
                    <div class="mx-0 px-0 bg-light">
                        <!-- Horizontal Line -->
                        <div class="px-4 pt-5">
                            <hr>
                        </div>
                        <!-- Register Now Option -->
                        <div class="pt-2">
                            <div class="row justify-content-center">
                                <h5> If you don't have an Account then <span><a href="Register.jsp" class="text-danger">Register Now!</a></span></h5>
                            </div>
                            <div class="row justify-content-center align-items-center pt-4 pb-5">
                                <div class="col-4">
                                    <!-- Optional additional content can go here -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End of White Box Container -->
            </div>
        </div>
    </div>

    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
</body>

</html>
