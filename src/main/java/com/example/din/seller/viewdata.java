package com.example.din.seller;


import com.example.din.DBConnction;
import com.example.din.Product;


import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.math.BigDecimal;
import java.sql.*;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "viewdata", value = "/view-products")
public class viewdata extends HttpServlet {
    private static final long serialVersionUID = 1L;



    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // handle POST requests here
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Product> products = new ArrayList<Product>();

        // retrieve all products from database
        String sql = "SELECT * FROM products";
        try {
            Connection conn = DBConnction.getConn();
            Statement statement = conn.createStatement();
            ResultSet result = statement.executeQuery(sql);

            while (result.next()) {
                int id = result.getInt("id");
                String name = result.getString("name");
                String description = result.getString("description");
                String category = result.getString("category");
                BigDecimal price = result.getBigDecimal("price");
                byte[] image = result.getBytes("image");
                String dimensions = result.getString("dimensions");
                String weight = result.getString("weight");
                String color = result.getString("color");

                Product product = new Product(id, name, description, category, price, image, dimensions, weight, color);
                products.add(product);
            }

            statement.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }


        // check if a product ID is specified for deletion
        String deleteProductId = request.getParameter("deleteProductId");
        if (deleteProductId != null) {
            int productId = Integer.parseInt(deleteProductId);
            deleteProduct(productId);
            // redirect to the same page to refresh the list of products
            response.sendRedirect(request.getContextPath() + "/view-products");
            return;
        }
        request.setAttribute("products", products);
        request.getRequestDispatcher("admin/viewproduct.jsp").forward(request, response);


    }

    private void deleteProduct(int productId) {
        try {
            Connection conn = DBConnction.getConn();
            PreparedStatement statement = conn.prepareStatement("DELETE FROM products WHERE id = ?");
            statement.setInt(1, productId);
            statement.executeUpdate();
            statement.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
