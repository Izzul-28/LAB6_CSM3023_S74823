<%-- 
    Document   : doLogin
    Created on : 13 May 2026, 6:44:34 pm
    Author     : IZZUL MUAZZAM
--%>

<%@ page import="java.sql.*" %>
<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%
    String user = request.getParameter("username");
    String pass = request.getParameter("password");

    String dbUrl = "jdbc:mysql://localhost:3306/CSM3203";
    String dbUser = "root";
    String dbPassword = "";

    Connection conn = null;
    PreparedStatement pstmt = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);

        // Check if username and password match a record
        String sql = "SELECT * FROM userprofile WHERE username = ? AND password = ?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, user);
        pstmt.setString(2, pass);

        rs = pstmt.executeQuery();

        if (rs.next()) {
            //if validation succes, save user details in the Session
            session.setAttribute("loggedUser", rs.getString("username"));
            session.setAttribute("fName", rs.getString("firstname"));
            session.setAttribute("lName", rs.getString("lastname"));
            
            // Redirect to main page
            response.sendRedirect("main.jsp");
        } else {
            //if validation fails, redirect back to login with error parameter
            response.sendRedirect("login.jsp?error=1");
        }
    } catch (Exception e) {
        out.println("Error: " + e.getMessage());
    } finally {
        if (rs != null) try { rs.close(); } catch (SQLException ignore) {}
        if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
        if (conn != null) try { conn.close(); } catch (SQLException ignore) {}
    }
%>
