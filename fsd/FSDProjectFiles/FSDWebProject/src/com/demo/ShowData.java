package com.demo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

@WebServlet("/ShowData")
public class ShowData extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        processRequest(request, response);
    }

    private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Connection conn = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
        	System.out.println("Execution started.");
            Class.forName("com.mysql.cj.jdbc.Driver");
            System.out.println("Driver loaded successfully.");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/fsd", "root", "220604");
            System.out.println("Database connection successful.");
            ps = conn.prepareStatement("SELECT * FROM products");
            rs = ps.executeQuery();
            System.out.println("Query executed successfully.");

            List<Things> productList = new ArrayList<>();
            while (rs.next()) {
                Things product = new Things();
                product.setId(rs.getInt("id"));
                product.setType(rs.getString("type"));
                product.setName(rs.getString("name"));
                product.setPrice(rs.getString("price"));
                product.setImage(rs.getString("image"));
                productList.add(product);
            }
            System.out.println("Number of products retrieved: " + productList.size());
            for (Things product : productList) {
                System.out.println("Product: " + product.getName());
            }

            request.setAttribute("products", productList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
            dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Exception occurred: " + e.getMessage());
        } finally {
            try {
                if (rs != null) rs.close();
                if (ps != null) ps.close();
                if (conn != null) conn.close();
                System.out.println("Resources closed successfully.");
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
