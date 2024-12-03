<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>OTP Verification</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
<link href='' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            font-family: "Rubik", sans-serif;
            margin: 0;
        }

        .otp-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        .otp-container img {
            width: 80px;
            height: 80px;
            margin-bottom: 20px;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
            font-size: 24px;
            font-weight: bold;
        }

        input[type="text"] {
            width: 70%;
            padding: 15px 50px 15px 45px; /* Adjust padding to make space for the icon */
            font-size: 16px;
            border-radius: 8px;
            border: 2px solid #ddd;
            background-image: url('https://cdn-icons-png.flaticon.com/512/3064/3064197.png'); /* Small lock icon inside input */
            background-size: 24px;
            background-position: 15px center;
            background-repeat: no-repeat;
            transition: border-color 0.3s ease;
            margin-bottom: 20px;
        }

        input[type="text"]:focus {
            border-color: #6a11cb;
            outline: none;
            box-shadow: 0 4px 8px rgba(106, 17, 203, 0.2);
        }

        button[type="submit"] {
            background-color: #2575fc;
            color: white;
            padding: 15px 20px;
            font-size: 16px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            width: 100%;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: skyblue;
            font-size:20px;
        }

        @media (max-width: 600px) {
            .otp-container {
                padding: 30px;
            }

            h2 {
                font-size: 20px;
            }

            input[type="text"], button[type="submit"] {
                font-size: 14px;
                padding: 12px;
            }

            .otp-container img {
                width: 60px;
                height: 60px;
            }
        }
    </style>
</head>
<body>
    <div class="otp-container">
        <!-- Large lock icon above heading -->
        <img src="https://cdn-icons-png.flaticon.com/512/3064/3064197.png" alt="Lock Icon">
        <% 
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) { 
        %>
            <div class="alert alert-danger" role="alert"><%= errorMessage %></div>
        <% 
            } 
        %>
        <h2>Enter Your OTP</h2>
        <form action="ValidateOtp" method="post">
            <input type="text" name="otp" placeholder="Enter OTP" required>
            <button type="submit">Verify</button>
        </form>
    </div>
    
</body>
</html>
