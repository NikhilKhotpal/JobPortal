<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>OTP Verification</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href='https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css' rel='stylesheet'>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    
    <!-- Disable caching of this page -->
    <meta http-equiv="Cache-Control" content="no-store, no-cache, must-revalidate">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    
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
            padding: 15px 50px 15px 45px;
            font-size: 16px;
            border-radius: 8px;
            border: 2px solid #ddd;
            background-image: url('https://cdn-icons-png.flaticon.com/512/3064/3064197.png');
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
            font-size: 20px;
        }

        .hidden {
            display: none;
        }

        .resend-btn {
            background-color: #ff6347;
            color: white;
            padding: 15px 20px;
            font-size: 16px;
            border: none;
            border-radius: 25px;
            cursor: pointer;
            width: 100%;
            margin-top: 20px;
        }

        .resend-btn:hover {
            background-color: red;
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
        <img src="https://cdn-icons-png.flaticon.com/512/3064/3064197.png" alt="Lock Icon">
        <h2>Enter the OTP</h2>
        <form id="otpForm" action="verifyOtp1" method="post">
            <label for="otp">OTP:</label>
            <input type="text" name="otp" placeholder="Enter OTP" required>
            <button type="submit" id="submitBtn">Verify OTP</button>
        </form>
        <p id="timer" style="margin-top: 20px; color: red;"></p>
        <!-- Resend OTP button (initially hidden) -->
        <button class="resend-btn hidden" id="resendBtn">Resend OTP</button>
    </div>

    <script>
        // Timer countdown logic
        let timer = 60; // Set initial timer to 60 seconds
        const timerElement = document.getElementById('timer');
        const submitBtn = document.getElementById('submitBtn');
        const resendBtn = document.getElementById('resendBtn');

        const countdown = setInterval(() => {
            if (timer > 0) {
                timer--;
                timerElement.textContent = `You Get a Time Of: ${60} seconds`;
            } else {
                clearInterval(countdown);
                timerElement.textContent = "OTP expired!";
                submitBtn.disabled = true;
                resendBtn.classList.remove('hidden'); // Show the resend button
            }
        }, 1000); // Reduce timer by 1 second every 1000 milliseconds (1 second)

        // Handle resend button click to redirect to login page
        resendBtn.addEventListener('click', function () {
            window.location.href = 'Register.jsp'; // Change to your login page URL
        });

        // Check if OTP was sent and show success message
        <%
            HttpSession session1 = request.getSession(false); // false to avoid creating a new session if it doesn't exist
            Boolean otpSent = (Boolean) session1.getAttribute("otpSent");
            if (otpSent != null && otpSent) {
                session1.removeAttribute("otpSent"); // Remove after displaying the message to stop showing on refresh
        %>
            Swal.fire({
                icon: 'success',
                title: 'OTP Sent',
                text: 'An OTP has been sent to your email. Please enter it below.',
                confirmButtonText: 'OK'
            });
        <%
            }
        %>
    </script>

    <%
        // Retrieve session attributes for error handling
        String icon = (String) session1.getAttribute("icon");
        String message = (String) session1.getAttribute("message");
        session1.removeAttribute("icon");
        session1.removeAttribute("message");
    %>

    <script>
        var icon = "<%= icon %>";
        var message = "<%= message %>";

        // Display SweetAlert for invalid OTP or error
        if (icon === "error" && message) {
            Swal.fire({
                icon: icon,
                title: message,
                confirmButtonText: 'OK'
            });
        }
    </script>
</body>
</html>
