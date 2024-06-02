<%-- 
    Document   : loginAction
    Created on : 30-May-2024, 8:25:12 pm
    Author     : Shakib Khatri
--%>

<%@ page import="com.mycompany.fashionhub.User" %>
<%@ page import="com.mycompany.fashionhub.Utility" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<body>    
   
<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
    
    try {
        User user = (User)Utility.extractObjectFromRequest(User.class, request);
        if (user != null) {
            //String id = request.getParameter("userId");
            //String passwd = request.getParameter("password");
            String id = user.getUsername();
            String passwd = user.getPassword();
            if ((id != null) && (passwd != null)) {
                if ((id.equals("admin")) && (passwd.equals("123456"))) {
                    session.setAttribute("User", id);
                    response.sendRedirect("adminDashBoard.jsp");
                    return;
                }
                else if((id.equals("shakib")) && (passwd.equals("123456"))){
                    session.setAttribute("User", id);
                    response.sendRedirect("customerDashBoard.jsp");
                    return;
                }
            }
            session.removeAttribute("User");
            response.sendRedirect("login.jsp");
            return;
        } else {
            out.println("Object extraction failed.");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    }
%>

