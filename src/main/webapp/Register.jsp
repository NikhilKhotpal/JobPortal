<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="css/Register.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<title>Login/Register user</title>
</head>
<body>
<br>
<div class="container" id="container">  
	
    <div class="form-container sign-up">
        <form action="auth" method="post">
            <h1>Create Account</h1>
            <div class="social-icons" style="text-align:center;">
                <a href=""
                    class="icon">
                    <i class="fa-brands fa-google"></i>
                </a>
             <p>Login With Google</p>
            </div>
            <span>or use your email for register</span>
            <input type="text" name="fullname" placeholder="Full Name" required>
            <input type="email" name="email" id="loginEmail" placeholder="Email" required>
            <input type="password" name="password" id="loginPassword" placeholder="Password" required>
            <input type="hidden" name="action" value="signup">
            <button>Sign Up</button>
        </form>
    </div>

    <div class="form-container sign-in">
        <form action="auth" method="post">
            <h1>Sign In</h1>
            <div class="social-icons" style="text-align:center;">
                <a href="" class="icon"><i class="fa-brands fa-google"></i></a>
      		<p>Login With Google</p>
            </div>
            <span>or use your email and password</span>
            <input type="email" name="email" id="loginEmail" placeholder="Email" required>
            <input type="password" name="password" id="loginPassword" placeholder="Password" required>
            <input type="hidden" name="action" value="login">
            <a href="forgotPassword.jsp" style="color:blue; font-size:15px; font-weight:bold;">Forgot Your Password?</a>
            <button>Sign In</button>
        </form>
    </div>

    <div class="toggle-container">
        <div class="toggle">
            <div class="toggle-panel toggle-left">
                <h1>Welcome!</h1>
                <p>Enter your personal details to use all of site features.</p>
                <button class="hidden" id="login">Sign In</button>
            </div>
            <div class="toggle-panel toggle-right">
                <h1>Hello, User!</h1>
                <p>Register with your personal details to use all of site features.</p>
                <button class="hidden" id="register">Sign Up</button>
            </div>
        </div>
    </div>
</div>

<script src="javascript/Register.js"></script>

<%
    // Only show the message if the session attributes are set
    String emailErrorIcon = (String) session.getAttribute("emailErrorIcon");
    String message1 = (String) session.getAttribute("message1");

    // Show SweetAlert if session message exists
    if (emailErrorIcon != null && message1 != null) {
%>
    <script>
        Swal.fire({
            icon: '<%= emailErrorIcon %>',
            title: '<%= message1 %>',
            confirmButtonText: 'OK'
        });
    </script>
    <%
        // Remove the message from the session after displaying it
        session.removeAttribute("emailErrorIcon");
        session.removeAttribute("message1");
    }
%>

        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <%
    // Only show the message if the session attributes are set
    String icon = (String) session.getAttribute("icon");
    String message = (String) session.getAttribute("message");

    // Show SweetAlert if session message exists
    if (icon != null && message != null) {
%>
    <script>
        Swal.fire({
            icon: '<%= icon %>',
            title: '<%= message %>',
            confirmButtonText: 'OK'
        });
    </script>
    <%
        // Remove the message from the session after displaying it
        session.removeAttribute("icon");
        session.removeAttribute("message");
    }
%>
        
    
</body>
</html>




