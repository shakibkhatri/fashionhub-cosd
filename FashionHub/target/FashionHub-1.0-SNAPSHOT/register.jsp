<%-- 
    Document   : register
    Created on : 23-May-2024, 8:26:28 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h1>Create Account</h1>
    <form action="registrationAction.jsp" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username"><br>
        <label for="email">Email:</label>
        <input type="email" id="email" name="email"><br>
        <label for="password">Password:</label>
        <input type="text" id="password" name="password"><br>
        <button type="submit">Register</button>
    </form>
</body>
</html>
