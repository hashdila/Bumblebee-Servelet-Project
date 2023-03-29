package com.example.din.seller;





import com.example.din.DBConnction;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/AddProductServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class productadd extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // get form data
        String name = request.getParameter("name");
        String description = request.getParameter("description");
        String category = request.getParameter("category");
        BigDecimal price = new BigDecimal(request.getParameter("price"));
        String dimensions = request.getParameter("dimensions");
        String weight = request.getParameter("weight");
        String color = request.getParameter("color");
        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("image");
        if (filePart != null) {
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

        // insert product data into database
        String sql = "INSERT INTO products (name, description, category, price, image, dimensions, weight, color) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DBConnction.getConn();
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1, name);
            statement.setString(2, description);
            statement.setString(3, category);
            statement.setBigDecimal(4, price);

            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(5, inputStream);
            }

            statement.setString(6, dimensions);
            statement.setString(7, weight);
            statement.setString(8, color);

            statement.executeUpdate();
            statement.close();
            conn.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }

        // display success message in alert box
        response.setContentType("text/html;charset=UTF-8");
        response.getWriter().write("<script>alert('Product added successfully!')</script>");



        // redirect to product list page
        response.sendRedirect("admin_home.jsp");

    }
}