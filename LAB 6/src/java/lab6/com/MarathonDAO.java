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
public class MarathonDAO {
    
    // Method to insert the marathon record into the database
    public int registerParticipant(Marathon marathon) {
        int rowsAffected = 0;
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            // Use the Database utility class
            conn = Database.getConnection();
            
            String sql = "INSERT INTO marathon (icno, name, category) VALUES (?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            
            // Get data from the JavaBean
            pstmt.setString(1, marathon.getIcno());
            pstmt.setString(2, marathon.getName());
            pstmt.setString(3, marathon.getCategory());
            
            rowsAffected = pstmt.executeUpdate();
            
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (pstmt != null) try { pstmt.close(); } catch (SQLException ignore) {}
            // Use the Database utility class to close
            Database.closeConnection(conn);
        }
        
        return rowsAffected;
    }
}
