<%-- 
    Document   : SampleInsertionRecord
    Created on : 12 May 2026, 10:45:05 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Task 1 - Sample Insertion</title>
</head>
<body>
    <h1>Lab 6 - Task 1 - Sample Insertion records into MySQL through JSP's page</h1>
    
    <%
        //Define database connection parameters
        String url = "jdbc:mysql://localhost:3306/CSM3203";
        String username = "root";
        String password = "";  // Use your MySQL root password if you set one
        
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            //Load the MySQL JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");
            out.println("<p>Step 1: Database driver loaded successfully.</p>");
            
            //Establish connection to database
            conn = DriverManager.getConnection(url, username, password);
            out.println("<p>Step 2: Database connection established.</p>");
            
            //Create SQL insert statement
            String sql = "INSERT INTO FirstTable (firstColumn) VALUES (?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "Welcome to access MySQL database with JSP...!");
            out.println("<p>Step 3: SQL statement prepared.</p>");
            
            //Execute the insert
            int rowsAffected = pstmt.executeUpdate();
            out.println("<p>Step 4: Query executed. Rows affected: " + rowsAffected + "</p>");
            
            //Display success message
            out.println("<h2 style='color:green;'>Record inserted successfully!</h2>");
            
        } catch (ClassNotFoundException e) {
            out.println("<p style='color:red;'>Error: JDBC Driver not found - " + e.getMessage() + "</p>");
        } catch (SQLException e) {
            out.println("<p style='color:red;'>Database Error: " + e.getMessage() + "</p>");
        } finally {
            //Close resources
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
                out.println("<p>Step 5: Database connection closed.</p>");
            } catch (SQLException e) {
                out.println("<p style='color:red;'>Error closing connection: " + e.getMessage() + "</p>");
            }
        }
    %>
    
</body>
</html>