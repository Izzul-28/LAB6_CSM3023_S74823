<%-- 
    Document   : login
    Created on : 13 May 2026, 6:41:56 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>User Login</title>
</head>
<body>
    <h2>System Login</h2>
    
    <%-- Display error message if redirected from doLogin.jsp upon failure --%>
    <%
        String errorMsg = request.getParameter("error");
        if (errorMsg != null && errorMsg.equals("1")) {
            out.println("<p style='color:red;'><b>Invalid username or password..!</b></p>");
        }
    %>

    <form action="doLogin.jsp" method="POST">
        <table>
            <tr>
                <td>Username:</td>
                <td><input type="text" name="username" required></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type="password" name="password" required></td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Login">
                </td>
            </tr>
        </table>
    </form>
    <br>
    <a href="insertUser.html">Register a new account</a>
</body>
</html>
