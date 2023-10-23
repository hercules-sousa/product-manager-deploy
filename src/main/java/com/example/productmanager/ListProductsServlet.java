package com.example.productmanager;

import com.example.productmanager.data.Database;
import com.example.productmanager.data.Product;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListProductsServlet", value = "/ListProductsServlet")
public class ListProductsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> products = Database.getProducts();
        request.setAttribute("products", products);
        request.getRequestDispatcher("listProducts.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
