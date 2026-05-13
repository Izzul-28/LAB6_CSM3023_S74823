/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package lab6.com;

/**
 *
 * @author IZZUL MUAZZAM
 * 13 May 2026
 */
public class Book {
    private String stuid;
    private String stuname;
    private String stuprogram;

    // Getter and Setter for stuid with Regular Expression validation
    public String getStuid() {
        return stuid;
    }

    public void setStuid(String stuid) throws Exception {
        // Regular expression: Starts with A-Z, followed by any characters
        if (stuid != null && !stuid.matches("^[A-Z].*")) {
            throw new Exception("Validation Error: Student ID must start with a capital letter.");
        }
        this.stuid = stuid;
    }

    // Getter and Setter for stuname
    public String getStuname() {
        return stuname;
    }

    public void setStuname(String stuname) {
        this.stuname = stuname;
    }

    // Getter and Setter for stuprogram
    public String getStuprogram() {
        return stuprogram;
    }

    public void setStuprogram(String stuprogram) {
        this.stuprogram = stuprogram;
    }
}
