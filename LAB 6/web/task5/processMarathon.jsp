<%-- 
    Document   : processMarathon
    Created on : 13 May 2026, 5:57:24 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page import="lab6.com.MarathonDAO" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<jsp:useBean id="marathonBean" class="lab6.com.Marathon" scope="request" />
<jsp:setProperty name="marathonBean" property="*" />

<!DOCTYPE html>
<html>
<head>
    <title>Registration Result</title>
</head>
<body>
    <h2>Marathon Registration Status</h2>
    
    <%
        //Create the DAO and execute the registration
        MarathonDAO dao = new MarathonDAO();
        int result = dao.registerParticipant(marathonBean);
        
        //Display output based on the result
        if (result > 0) {
            out.println("<h3 style='color:green;'>Registration Successful!</h3>");
            out.println("<p><strong>Name:</strong> " + marathonBean.getName() + "</p>");
            out.println("<p><strong>Category:</strong> " + marathonBean.getCategory() + "</p>");
        } else {
            out.println("<h3 style='color:red;'>Registration Failed. Please check your details or try again.</h3>");
        }
    %>
    
    <br>
    <a href="registerMarathon.jsp">Back to Registration</a>
</body>
</html>
