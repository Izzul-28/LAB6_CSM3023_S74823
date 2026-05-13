<%-- 
    Document   : errorStudent
    Created on : 13 May 2026, 12:04:32 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page isErrorPage="true" contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Error</title>
</head>
<body>
    <h2 style="color:red;">An Error Occurred During Registration</h2>
    
    <p><strong>Error Details:</strong> <%= exception.getMessage() %></p>
    
    <p>Please ensure your Student ID starts with a Capital Letter.</p>
    
    <br>
    <a href="insertStudent.jsp">Return to Registration Form</a>
</body>
</html>
