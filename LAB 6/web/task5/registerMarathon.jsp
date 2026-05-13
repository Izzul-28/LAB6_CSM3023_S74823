<%-- 
    Document   : registerMarathon
    Created on : 13 May 2026, 5:49:35 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Marathon Registration</title>
</head>
<body>
    <h2>Register for the Marathon Event</h2>
    <form action="processMarathon.jsp" method="POST">
        <table>
            <tr>
                <td>IC Number:</td>
                <td><input type="text" name="icno" required></td>
            </tr>
            <tr>
                <td>Full Name:</td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <td>Category:</td>
                <td>
                    <select name="category">
                        <option value="5KM Fun Run">5KM Fun Run</option>
                        <option value="10KM Sprint">10KM Sprint</option>
                        <option value="21KM Half Marathon">21KM Half Marathon</option>
                        <option value="42KM Full Marathon">42KM Full Marathon</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="Register Now">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>