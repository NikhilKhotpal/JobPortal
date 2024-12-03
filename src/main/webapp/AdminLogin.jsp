<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<style type="text/css">
body {
    font-family: Arial, sans-serif;
    background: url('https://images.unsplash.com/photo-1612670940073-8aed2145ebc3?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fHdoaXRlfGVufDB8fDB8fHww') no-repeat center center fixed;
    background-size: cover;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    text-align: center;
}

.container {
    background-image: url('https://images.unsplash.com/photo-1505635552518-3448ff116af3?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGRhcmt8ZW58MHx8MHx8fDA%3D');
    padding: 20px;
    border-radius: 14px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    width: 400px;
    max-width: 100%;
}

.tabs {
    display: flex;
    justify-content: space-around;
    margin-bottom: 20px;
}

.tab-button {
    background: none;
    border: none;
    font-size: 16px;
    cursor: pointer;
    padding: 10px;
    transition: color 0.3s;
    color: #FFFFFF;
}

.tab-button.active {
    color: #FFFFFF;
    border-bottom: 2px solid #FFFFFF;
}

.tab-content {
    display: none;
}

.tab-content.active {
    display: flex; 
    flex-direction: column;
}

form {
    display: flex;
    flex-direction: column;
}

.form-group {
    display: flex;
    flex-direction: column;
}

form h2 {
    margin-bottom: 20px;
    color: #FFFFFF;
    border-bottom: 1px solid white;
}

form input {
    margin-bottom: 25px;
    padding: 10px;
    border: none;
    border-radius: 14px;
    background-color: rgba(255, 255, 255, 0.8); /* Set background color */
}

form input:focus {
    outline: none; 
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2); 
}

form button {
    padding: 10px;
    border: none;
    border-radius: 14px;
    background-color: #FFFFFF;
    color: #000000;
    cursor: pointer;
    transition: background-color 0.3s, color 0.3s;
    font-weight: bold;
    font-size: 110%;
}

form button:hover {
    background-color: #000000; 
    color: #fff;
    text-shadow: 0 0 10px rgba(255, 255, 255, 0.8), 
                 0 0 20px rgba(255, 255, 255, 0.6), 
                 0 0 30px rgba(255, 255, 255, 0.4);
    box-shadow: 0 0 10px rgba(255, 255, 255, 0.8), 
                0 0 20px rgba(255, 255, 255, 0.6), 
                0 0 30px rgba(255, 255, 255, 0.4);
}

</style>
</head>
<body>

<div class="container">
    <div class="tabs">
        <button class="tab-button active" onclick="openTab('login')">Login</button>
        <button class="tab-button" onclick="openTab('register')">Register</button>
    </div>
    <div id="login" class="tab-content active">
        <form action="AdminAuth" method="post">
            <input type="hidden" name="action" value="login">
            <h2>Login</h2>
            <div class="form-group">
                <input type="email" id="login-email" name="cemail" required placeholder="Email">
            </div>
            <div class="form-group">
                <input type="password" id="login-password" name="password" required placeholder="Password">
            </div>
            <div class="form-group">
                <button type="submit">Login</button>
            </div>
        </form>
    </div>
    <div id="register" class="tab-content">
        <form action="AdminAuth" method="post">
            <input type="hidden" name="action" value="register">
            <h2>Register</h2>
            <div class="form-group">
              <input type="text" id="company-name" name="company" required placeholder="Company Name">
            </div>
            <div class="form-group">
                <input type="email" id="register-email" name="cemail" required placeholder="Email">
            </div>
            <div class="form-group">
                <input type="password" id="register-password" name="password" required placeholder="Password">
            </div>
            <div class="form-group">
                <button type="submit">Register</button>
            </div>
        </form>
    </div>
    
</div>
<script>
function openTab(tabName) {
    const tabContents = document.querySelectorAll('.tab-content');
    const tabButtons = document.querySelectorAll('.tab-button');

    tabContents.forEach(tabContent => {
        tabContent.classList.remove('active');
    });

    tabButtons.forEach(tabButton => {
        tabButton.classList.remove('active');
    });

    document.getElementById(tabName).classList.add('active');
    document.querySelector(`.tab-button[onclick="openTab('${tabName}')"]`).classList.add('active');
}
</script>
</body>
</html>
