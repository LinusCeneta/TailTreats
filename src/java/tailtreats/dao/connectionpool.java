/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tailtreats.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author Eliseio
 */
public class connectionpool {
    
    static Connection conn;

    public static Connection getConnection() throws SQLException {
        try {

            String driver = "com.mysql.cj.jdbc.Driver";
            Class.forName(driver);

            String url = "jdbc:mysql://localhost:3306/tailtreatsregistration?serverTimezone=Asia/Manila";
            conn = (Connection) DriverManager.getConnection(url, "root", "Alleria123");

        } catch (SQLException | ClassNotFoundException e) {
            System.out.println("SQLException: " + e);
        }

        return conn;
    }
}


