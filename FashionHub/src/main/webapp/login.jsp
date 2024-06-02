<%-- 
    Document   : login
    Created on : 23-May-2024, 8:25:01 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <body>
        <h1>Login</h1>
        <form action="loginAction.jsp" method="POST">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username"><br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password"><br>
            <button type="submit">Login</button>
        </form>
    </body>
</html>

