package com.example.din.seller;

import com.example.din.product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;


@WebServlet(name = "ViewProducts", value = "/cart-view")
public class cartwiver extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final productDAO productDAO = new productDAO();

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<product> products = productDAO.getAllProducts();
            request.setAttribute("products", products);
            request.getRequestDispatcher("include/cart_viewer.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the error case
        }
    }
}

