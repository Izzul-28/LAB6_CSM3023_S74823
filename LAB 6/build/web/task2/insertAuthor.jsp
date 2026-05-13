<%-- 
    Document   : insertAuthor
    Created on : 12 May 2026, 11:36:17 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Author</title>
</head>
<body>
    <h2>Author Registration Form</h2>
    <form action="processAuthor.jsp" method="POST">
        <table>
            <tr>
                <td>Author No:</td>
                <td><input type="text" name="authno" required></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="name" required></td>
            </tr>
            <tr>
                <td>Address:</td>
                <td><input type="text" name="address" required></td>
            </tr>
            <tr>
                <td>City:</td>
                <td><input type="text" name="city" required></td>
            </tr>
            <tr>
                <td>State:</td>
                <td><input type="text" name="state" required></td>
            </tr>
            <tr>
                <td>Zip:</td>
                <td>
                    <select name="zip">
                        <option value="20000">20000</option>
                        <option value="21030">21030</option>
                        <option value="21300">21300</option>
                        <option value="50000">50000</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Submit">
                    <input type="reset" value="Cancel">
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
