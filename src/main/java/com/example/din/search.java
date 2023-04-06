package com.example.din;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.math.BigDecimal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "search", value = "/search")
public class search extends HttpServlet {
    private static final long serialVersionUID = 1L;


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String searchKeyword = request.getParameter("keyword");

        try {
            List<Product> products = searchProducts(searchKeyword);
            request.setAttribute("products", products);
            request.getRequestDispatcher("/search.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Unable to search for products", e);
        }
    }

    private List<Product> searchProducts(String searchKeyword) throws SQLException {
        List<Product> products = new ArrayList<>();

        String sql = "SELECT * FROM products WHERE name LIKE ? OR description LIKE ? OR category LIKE ?";
        try (Connection conn = DBConnction.getConn();
             PreparedStatement statement = conn.prepareStatement(sql)) {
            statement.setString(1, "%" + searchKeyword + "%");
            statement.setString(2, "%" + searchKeyword + "%");
            statement.setString(3, "%" + searchKeyword + "%");

            try (ResultSet result = statement.executeQuery()) {
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
            }
        }

        return products;
    }

}
