package com.example.din.seller;

import com.example.din.DBConnction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "/register", value = "/seller-register")
public class sellerregistration extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        com.example.din.seller.Seller seller = new Seller();
        seller.setUsername(request.getParameter("username"));
        seller.setPassword(request.getParameter("password"));
        seller.setEmail(request.getParameter("email"));

//        // Hash the password using SHA-256
//        String hashedPassword = hashPassword(seller.getPassword());
//        seller.setPassword(hashedPassword);

        try {
            Connection conn = DBConnction.getConn();
            String sql = "INSERT INTO sellers (username, password, email) VALUES (?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, seller.getUsername());
            stmt.setString(2, seller.getPassword());
            stmt.setString(3, seller.getEmail());
            stmt.executeUpdate();
            response.sendRedirect("./seller/success.jsp");
        } catch (SQLException ex) {
            ex.printStackTrace();
            response.sendRedirect("./seller/error.jsp");
        }
    }

//    private String hashPassword(String password) {
//        try {
//            MessageDigest md = MessageDigest.getInstance("SHA-256");
//            byte[] hashedPasswordBytes = md.digest(password.getBytes());
//            StringBuilder sb = new StringBuilder();
//            for (byte b : hashedPasswordBytes) {
//                sb.append(String.format("%02x", b));
//            }
//            return sb.toString();
//        } catch (NoSuchAlgorithmException ex) {
//            ex.printStackTrace();
//            return null;
//        }
//    }
}
