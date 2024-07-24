package com.demo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/WishlistServlet")
public class WishlistServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int itemId = Integer.parseInt(request.getParameter("id"));

        // Database connection
        String jdbcURL = "jdbc:mysql://localhost:3306/shop_db";
        String jdbcUsername = "root";
        String jdbcPassword = "password";

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)) {
            if ("add".equals(action)) {
                String sql = "INSERT INTO wishlist_items (item_id) VALUES (?) ON DUPLICATE KEY UPDATE item_id = item_id";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setInt(1, itemId);
                    statement.executeUpdate();
                }
            } else if ("remove".equals(action)) {
                String sql = "DELETE FROM wishlist_items WHERE item_id = ?";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setInt(1, itemId);
                    statement.executeUpdate();
                }
            } else if ("view".equals(action)) {
                String sql = "SELECT wi.*, i.name, i.price, i.image_url FROM wishlist_items wi JOIN items i ON wi.item_id = i.id";
                List<WishlistItem> wishlistItems = new ArrayList<>();
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    ResultSet resultSet = statement.executeQuery();
                    while (resultSet.next()) {
                        WishlistItem item = new WishlistItem();
                        item.setId(resultSet.getInt("id"));
                        item.setName(resultSet.getString("name"));
                        item.setPrice(resultSet.getBigDecimal("price"));
                        item.setImageUrl(resultSet.getString("image_url"));
                        wishlistItems.add(item);
                    }
                }
                request.setAttribute("wishlistItems", wishlistItems);
                request.getRequestDispatcher("wishlist.jsp").forward(request, response);
                return;
            }

            response.sendRedirect("index.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}