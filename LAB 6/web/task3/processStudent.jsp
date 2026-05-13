<%-- 
    Document   : processStudent
    Created on : 13 May 2026, 12:03:35 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page import="java.sql.*" %>
<%@ page errorPage="errorStudent.jsp" %> 
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<jsp:useBean id="studentBean" class="lab6.com.Book" scope="request" />
<jsp:setProperty name="studentBean" property="*" />

<!DOCTYPE html>
<html>
<head>
    <title>Processing Student</title>
</head>
<body>
    <h2>Processing Registration...</h2>

    <%
        String url = "jdbc:mysql://localhost:3306/CSM3203";
        String dbUser = "root";
        String dbPassword = "";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Load Driver and Connect
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(url, dbUser, dbPassword);

            // Execute Query
            String sql = "INSERT INTO student (stuid, stuname, stuprogram) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, studentBean.getStuid());
            pstmt.setString(2, studentBean.getStuname());
            pstmt.setString(3, studentBean.getStuprogram());

            int rows = pstmt.executeUpdate();

            if (rows > 0) {
                out.println("<h3 style='color:green;'>Student record successfully inserted!</h3>");
                out.println("<p><strong>Student ID:</strong> " + studentBean.getStuid() + "</p>");
                out.println("<p><strong>Name:</strong> " + studentBean.getStuname() + "</p>");
                out.println("<p><strong>Program:</strong> " + studentBean.getStuprogram() + "</p>");
            }
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    %>
    <br>
    <a href="insertStudent.jsp">Register Another Student</a>
</body>
</html>
