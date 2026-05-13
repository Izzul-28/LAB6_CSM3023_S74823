<%-- 
    Document   : processUser
    Created on : 13 May 2026, 6:40:44 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Status</title>
</head>
<body>
    <%
        String user = request.getParameter("username");
        String pass = request.getParameter("password");
        String fName = request.getParameter("firstname");
        String lName = request.getParameter("lastname");

        String dbUrl = "jdbc:mysql://localhost:3306/CSM3203";
        String dbUser = "root";
        String dbPassword = "";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

            String sql = "INSERT INTO userprofile (username, password, firstname, lastname) VALUES (?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, user);
            pstmt.setString(2, pass);
            pstmt.setString(3, fName);
            pstmt.setString(4, lName);

            int rows = pstmt.executeUpdate();

            if (rows > 0) {
                out.println("<h3 style='color:green;'>Registration Successful!</h3>");
                out.println("<p>You can now <a href='login.jsp'>login here</a>.</p>");
            }
        } catch (Exception e) {
            out.println("<h3 style='color:red;'>Registration Failed!</h3>");
            out.println("<p>Error: " + e.getMessage() + "</p>");
            out.println("<a href='insertUser.html'>Try Again</a>");
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    %>
</body>
</html>
