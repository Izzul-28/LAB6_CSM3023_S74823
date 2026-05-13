/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

/**
 *
 * @author IZZUL MUAZZAM
 * DATE: 13 May 2026
 */
import java.sql.*;

public class Database {
    // Method to get connection
    public static Connection getConnection() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/CSM3203";
        String user = "root";
        String password = ""; 
        return DriverManager.getConnection(url, user, password);
    }

    // Method to close connection
    public static void closeConnection(Connection conn) {
        if (conn != null) {
            try { 
                conn.close(); 
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
