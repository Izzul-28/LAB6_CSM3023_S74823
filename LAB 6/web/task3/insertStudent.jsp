<%-- 
    Document   : insertStudent
    Created on : 13 May 2026, 12:01:45 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Register Student</title>
</head>
<body>
    <h2>Student Registration Form</h2>
    <form action="processStudent.jsp" method="POST">
        <table>
            <tr>
                <td>Student ID (Must start with a Capital Letter):</td>
                <td><input type="text" name="stuid" required></td>
            </tr>
            <tr>
                <td>Name:</td>
                <td><input type="text" name="stuname" required></td>
            </tr>
            <tr>
                <td>Program:</td>
                <td>
                    <select name="stuprogram">
                        <option value="BSc Computer Science">BSc Computer Science</option>
                        <option value="BSc Software Engineering">BSc Software Engineering</option>
                        <option value="BSc Information Systems">BSc Information Systems</option>
                        <option value="BSc with IM">BSc with IM</option>
                        <option value="BSc Soft. Eng.">BSc Soft. Eng.</option>
                        <option value="BSc in Robotics">BSc in Robotics</option>
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
