<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login with Google</title>
</head>
<body>
    <h1>Login Page</h1>
    <a href="https://accounts.google.com/o/oauth2/v2/auth?client_id=YOUR_CLIENT_ID&redirect_uri=http://localhost:8080/auth/google-callback&response_type=code&scope=email profile">
        <button>Login with Google</button>
    </a>
</body>
</html>