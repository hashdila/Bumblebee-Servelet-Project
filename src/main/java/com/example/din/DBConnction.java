package com.example.din;


import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnction {

    private static Connection conn;

    public static Connection getConn() {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/bumblebee", "root", "");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
}



