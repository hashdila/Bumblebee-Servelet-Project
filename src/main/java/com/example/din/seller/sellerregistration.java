package com.example.din.seller;

import com.example.din.DBConnction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Base64;

@WebServlet("/register")
//@WebServlet(name = "sellerRegister", value = "/seller-register")
public class sellerregistration extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve the user registration data from the form
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validate the form data
        if (username == null || username.trim().isEmpty() ||
                email == null || email.trim().isEmpty() ||
                password == null || password.trim().isEmpty()) {
            // Display an error message to the user
            response.getWriter().println("Please fill out all required fields.");
            return;
        }

        // Validate the email address using a regular expression
        String emailRegex = "^[a-zA-Z0-9_+&*-]+(?:\\."+
                "[a-zA-Z0-9_+&*-]+)*@" +
                "(?:[a-zA-Z0-9-]+\\.)+[a-z" +
                "A-Z]{2,7}$";
        if (!email.matches(emailRegex)) {
            // Display an error message to the user
            response.getWriter().println("Please enter a valid email address.");
            return;
        }

        // Hash the user's password using SHA-256
        String hashedPassword = hashPassword(password);

        // Insert the user's information into the database
        try {
            // Register JDBC driver


            // Open a connection
            Connection conn = DBConnction.getConn();

            // Create a prepared statement for the INSERT query
            String sql = "INSERT INTO customers (username, password, email) VALUES (?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, username);
            pstmt.setString(2, hashedPassword);
            pstmt.setString(3, email);
            pstmt.executeUpdate();

            // Close the database connection
            pstmt.close();
            conn.close();

            // Display a message to the user indicating that the registration was successful
            response.getWriter().println("Registration successful!");

            response.setContentType("text/html;charset=UTF-8");
            PrintWriter out = response.getWriter();
            out.println("<script>alert('Register successfully!')</script>");
            out.println("<meta http-equiv='refresh' content='0; URL=./seller/login.jsp'>");

//            response.sendRedirect("./seller/login.jsp");
        } catch (Exception ex) {
            // Display an error message to the user
            response.getWriter().println("Registration failed. Please try again later.");
        }
    }

    // Hash the password using SHA-256
    private String hashPassword(String password) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(password.getBytes(StandardCharsets.UTF_8));
            String hashedPassword = Base64.getEncoder().encodeToString(hash);
            return hashedPassword;
        } catch (NoSuchAlgorithmException ex) {
            // Handle the exception by logging an error or displaying an error message
            System.err.println("Error hashing password: " + ex.getMessage());
            return null;
        }


}

}