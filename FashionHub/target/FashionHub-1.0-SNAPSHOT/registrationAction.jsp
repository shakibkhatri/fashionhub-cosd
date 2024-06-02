<%-- 
    Document   : registrationAction
    Created on : 23-May-2024, 8:26:54 pm
    Author     : Shakib Khatri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ page import="com.mycompany.fashionhub.Register" %>
<%@ page import="com.mycompany.fashionhub.Utility" %>
<body>    
   
<%
    // Extract User object from request parameters
    Register register = (Register) Utility.extractObjectFromRequest(Register.class, request);
%>

<p>User Name : <%= register.getUsername()%></p>
<p>Email : <%= register.getEmail()%></p>
<p>Password : <%= register.getPassword()%></p>

</body>

