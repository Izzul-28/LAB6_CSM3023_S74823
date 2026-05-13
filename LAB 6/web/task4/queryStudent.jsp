<%-- 
    Document   : queryStudent
    Created on : 13 May 2026, 2:16:35 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Lab 6 Task 4</title>
    
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        table {
            width: 70%;
            border-collapse: collapse;
            margin-top: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.1);
        }
        th, td {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 12px;
        }
        th {
            background-color: #4CAF50;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
    </style>
</head>
<body>
    <h1>Lab 6 Task 4: Retrieving record via JSP Page</h1>

    <table>
        <tr>
            <th>Student ID</th>
            <th>Name</th>
            <th>Program</th>
        </tr>
        
        <%
            // Database credentials
            String url = "jdbc:mysql://localhost:3306/CSM3203";
            String dbUser = "root";
            String dbPassword = "";

            Connection conn = null;
            Statement stmt = null;
            ResultSet rs = null;

            try {
                //Load the database driver and connect to the database
                Class.forName("com.mysql.cj.jdbc.Driver");
                conn = DriverManager.getConnection(url, dbUser, dbPassword);

                //Create Statement for the query
                stmt = conn.createStatement();
                
                //Perform query to retrieve records from the Student's table
                String sql = "SELECT * FROM student";
                rs = stmt.executeQuery(sql);

                //Fetch the record into HTML table
                while (rs.next()) {
                    out.println("<tr>");
                    out.println("<td>" + rs.getString("stuid") + "</td>");
                    out.println("<td>" + rs.getString("stuname") + "</td>");
                    out.println("<td>" + rs.getString("stuprogram") + "</td>");
                    out.println("</tr>");
                }
            } catch (Exception e) {
                out.println("<tr><td colspan='3' style='color:red;'>Error retrieving records: " + e.getMessage() + "</td></tr>");
                e.printStackTrace();
            } finally {
                //Close the database connection
                if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
                if (stmt != null) try { stmt.close(); } catch (SQLException ignore) {}
                if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
            }
        %>
    </table>
</body>
</html>
