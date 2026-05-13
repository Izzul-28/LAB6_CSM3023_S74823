<%-- 
    Document   : processAuthor
    Created on : 12 May 2026, 11:37:13 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>

<jsp:useBean id="author" class="lab6.com.Author" scope="request" />
<jsp:setProperty name="author" property="*" />

<!DOCTYPE html>
<html>
<head>
    <title>Process Author</title>
</head>
<body>
    <h2>Processing Author Registration...</h2>

    <%
        String url = "jdbc:mysql://localhost:3306/CSM3203";
        String dbUser = "root";
        String dbPassword = "";

        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            //Load the database driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            //Create a connection to the database
            conn = DriverManager.getConnection(url, dbUser, dbPassword);

            //Create a PreparedStatement object
            String sql = "INSERT INTO author (authno, name, address, city, state, zip) VALUES (?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);

            //Populate the prepared statement using getter methods from the JavaBean
            pstmt.setString(1, author.getAuthno());
            pstmt.setString(2, author.getName());
            pstmt.setString(3, author.getAddress());
            pstmt.setString(4, author.getCity());
            pstmt.setString(5, author.getState());
            pstmt.setString(6, author.getZip());

            //Execute the query
            int rows = pstmt.executeUpdate();

            //Display the result
            if (rows > 0) {
                out.println("<h3 style='color:green;'>Record successfully inserted!</h3>");
                out.println("<p><strong>Author No:</strong> " + author.getAuthno() + "</p>");
                out.println("<p><strong>Name:</strong> " + author.getName() + "</p>");
            }

        } catch (Exception e) {
            out.println("<h3 style='color:red;'>Error saving record: " + e.getMessage() + "</h3>");
            e.printStackTrace();
        } finally {
            //Close database connection
            if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
            if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
        }
    %>
    <br>
    <a href="insertAuthor.jsp">Register Another Author</a>
</body>
</html>
