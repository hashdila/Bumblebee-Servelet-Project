package com.example.din.seller;

import com.example.din.DBConnction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Base64;

@WebServlet("/login")

public class sellerlogin extends HttpServlet {
        private static final long serialVersionUID = 1L;

        public void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException {

            // Retrieve the user login data from the form
            String username = request.getParameter("username");
            String password = request.getParameter("password");

            // Validate the form data
            if (username == null || username.trim().isEmpty() ||
                    password == null || password.trim().isEmpty()) {
                // Display an error message to the user
                response.getWriter().println("Please enter your username and password.");
                return;
            }

            // Retrieve the user's information from the database
            try {
                // Register JDBC driver


                // Open a connection
                Connection conn = DBConnction.getConn();

                // Create a prepared statement for the SELECT query
                String sql = "SELECT * FROM customers WHERE email = ?";
                PreparedStatement pstmt = conn.prepareStatement(sql);
                pstmt.setString(1, username);
                ResultSet rs = pstmt.executeQuery();

                // Check if a user with the given username exists in the database
                if (!rs.next()) {
                    // Display an error message to the user
                    response.getWriter().println("Invalid username or password.");
                    return;
                }

                // Retrieve the hashed password from the database
                String hashedPassword = rs.getString("password");
                String userName = rs.getString("username");

                // Hash the user's password using SHA-256
                String hashedInputPassword = hashPassword(password);

                // Compare the hashed password from the database with the hashed input password
                if (!hashedPassword.equals(hashedInputPassword)) {
                    // Display an error message to the user
                    response.getWriter().println("Invalid username or password.");
                    return;
                }

                // Store the user's information in a session
                HttpSession session = request.getSession();
                session.setAttribute("username", userName);
                session.setAttribute("email", username);

                // Close the database connection
                rs.close();
                pstmt.close();
                conn.close();

                // Redirect the user to the home page
//                response.getWriter().println("login sucseefull");
                response.sendRedirect(request.getContextPath() + "/cart-view");
            } catch (Exception ex) {
                // Display an error message to the user
                response.getWriter().println("Login failed. Please try again later.");
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

