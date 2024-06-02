<%-- 
    Document   : addProductAction
    Created on : 23-May-2024, 8:22:12 pm
    Author     : Shakib Khatri
--%>

<%@page import="com.mycompany.fashionhub.AddProduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="com.mycompany.fashionhub.AddProduct" %>
<%@ page import="com.mycompany.fashionhub.Utility" %>
<body>    
   
<%
     response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache"); // HTTP 1.0.
    response.setDateHeader("Expires", 0); // Proxies.
    // Extract User object from request parameters
    AddProduct addProduct = (AddProduct)com.mycompany.fashionhub.Utility.extractObjectFromRequest(AddProduct.class, request);
%>

<p>Name : <%= addProduct.getName()%></p>
<p>Description : <%= addProduct.getDescription()%></p>
<p>Price : <%= addProduct.getPrice()%></p>
<p>Category : <%= addProduct.getCategory()%></p>

</body>