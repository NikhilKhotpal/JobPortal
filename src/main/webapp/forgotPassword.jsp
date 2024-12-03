<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<title>Forgot Password</title>
<link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
<link href='' rel='stylesheet'>
<script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<style>
body {
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
    color: #fff;
    font-family: "Rubik", Helvetica, Arial, sans-serif;
    font-size: 14px;
    font-weight: normal;
    line-height: 1.5;
    border:solid blue 2px;
    margin-left:10%;
    margin-right:10%;
    margin-top:15px;
    border-radius:20px;
}

.container {
    max-width: 600px;
    margin-top: 100px;
}

.forgot {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 30px;
    border-radius: 15px;
    box-shadow: 0 8px 16px rgba(0, 0, 0, 0.1);
}

.forgot h2 {
    font-size: 28px;
    font-weight: 700;
    color: #333;
    text-align: center;
}

.forgot p {
    text-align: center;
    margin-bottom: 20px;
    color: #666;
}

.forgot ol {
    margin-left: 15px;
    color: #505050;
}

.list-unstyled .text-primary {
    font-weight: bold;
}

.form-group label {
    color: #505050;
    font-weight: bold;
}

.form-control {
    border-radius: 8px;
    padding: 12px;
    border: 2px solid #ddd;
    transition: border-color 0.3s ease-in-out;
}

.form-control:focus {
    border-color: #28a745;
    box-shadow: 0 4px 8px rgba(40, 167, 69, 0.2);
}

.card-footer {
    background-color: transparent;
    text-align: center;
    border-top: none;
}

.btn-success {
    background-color: #28a745;
    border-color: #28a745;
    padding: 12px 25px;
    border-radius: 25px;
    transition: background-color 0.3s ease;
}

.btn-success:hover {
    background-color: #218838;
}

.btn-danger {
    background-color: #dc3545;
    border-color: #dc3545;
    padding: 12px 25px;
    border-radius: 25px;
    transition: background-color 0.3s ease;
}

.btn-danger:hover {
    background-color: #c82333;
}

.card {
    border: none;
    background-color: transparent;
}

@media (max-width: 768px) {
    .container {
        padding: 20px;
    }
}

</style>
</head>
<body oncontextmenu='return false' class='snippet-body'>
    <div class="container padding-bottom-3x mb-2 mt-5">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <div class="forgot">
                    <h2>Change Your Password</h2>
                    <ol class="list-unstyled">
                        <li><span class="text-primary text-medium">1. </span>Enter your email address in below input field.</li>
                        <li><span class="text-primary text-medium">2. </span>You got OTP on your enter Email address make shower email is correct.</li>
                        <li><span class="text-primary text-medium">3. </span>Enter your OTP in next page.</li>
                    </ol>
                </div>
                <form class="card mt-4" action="forgotPassword" method="POST">
                    <div class="card-body">
                        <div class="form-group">
                            <label for="email-for-pass">Enter your email address</label> 
                            <input class="form-control" type="text" name="email" id="email-for-pass" required="">
                            <small class="form-text text-muted">Enter the registered email address. You get OTP on email address.</small>
                        </div>
                    </div>
                    <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
        <div class="alert alert-danger" role="alert">
            <%= errorMessage %>
        </div>
        <%
            }
        %>
                    <div class="card-footer">
                        <button class="btn btn-primary" type="submit">Get Your New Password</button>
                        <br>
                        <br>
                        <a href="Register.jsp" class="btn btn-secondary" type="submit">Back to Login</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <script type='text/javascript' src='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.bundle.min.js'></script>
  
</body>
</html>
