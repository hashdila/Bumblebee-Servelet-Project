package com.example.din.seller;


import com.example.din.DBConnction;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet(name = "DeleteProduct", value = "/delete-product")
public class deleteservelet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int productId = Integer.parseInt(request.getParameter("id"));

        try {
            Connection conn = DBConnction.getConn();
            PreparedStatement statement = conn.prepareStatement("DELETE FROM products WHERE id=?");
            statement.setInt(1, productId);
            statement.executeUpdate();

            statement.close();
            conn.close();

            response.sendRedirect(request.getContextPath() + "/view-products");
        } catch (SQLException e) {
            e.printStackTrace();
            response.getWriter().append("Error occurred while deleting the product");
        }
    }

}
