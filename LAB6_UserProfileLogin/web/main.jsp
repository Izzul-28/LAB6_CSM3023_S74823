<%-- 
    Document   : main
    Created on : 13 May 2026, 6:45:41 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%
    // Security check: Ensure the user is actually logged in
    if (session.getAttribute("loggedUser") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Main Dashboard</title>
</head>
<body>
    <h2 style="color:blue;">Welcome to the Main System!</h2>
    
    <div style="border: 1px solid black; padding: 10px; width: 300px;">
        <h3>Your Profile Information</h3>
        <p><strong>Username:</strong> <%= session.getAttribute("loggedUser") %></p>
        <p><strong>First Name:</strong> <%= session.getAttribute("fName") %></p>
        <p><strong>Last Name:</strong> <%= session.getAttribute("lName") %></p>
    </div>
    
    <br>
    <a href="login.jsp">Logout (Return to Login)</a>
</body>
</html>