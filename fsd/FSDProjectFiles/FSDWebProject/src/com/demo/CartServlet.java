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

@WebServlet("/CartServlet")
public class CartServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        int itemId = Integer.parseInt(request.getParameter("id"));
        int quantity = request.getParameter("quantity") != null ? Integer.parseInt(request.getParameter("quantity")) : 1;

        // Database connection
        String jdbcURL = "jdbc:mysql://localhost:3306/shop_db";
        String jdbcUsername = "root";
        String jdbcPassword = "password";

        try (Connection connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword)) {
            if ("add".equals(action)) {
                String sql = "INSERT INTO cart_items (item_id, quantity) VALUES (?, ?) ON DUPLICATE KEY UPDATE quantity = quantity + ?";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setInt(1, itemId);
                    statement.setInt(2, quantity);
                    statement.setInt(3, quantity);
                    statement.executeUpdate();
                }
            } else if ("remove".equals(action)) {
                String sql = "DELETE FROM cart_items WHERE item_id = ?";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setInt(1, itemId);
                    statement.executeUpdate();
                }
            } else if ("update".equals(action)) {
                String sql = "UPDATE cart_items SET quantity = ? WHERE item_id = ?";
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    statement.setInt(1, quantity);
                    statement.setInt(2, itemId);
                    statement.executeUpdate();
                }
            } else if ("view".equals(action)) {
                String sql = "SELECT ci.*, i.name, i.price, i.image_url FROM cart_items ci JOIN items i ON ci.item_id = i.id";
                List<CartItem> cartItems = new ArrayList<>();
                try (PreparedStatement statement = connection.prepareStatement(sql)) {
                    ResultSet resultSet = statement.executeQuery();
                    while (resultSet.next()) {
                        CartItem item = new CartItem();
                        item.setId(resultSet.getInt("id"));
                        item.setName(resultSet.getString("name"));
                        item.setPrice(resultSet.getBigDecimal("price"));
                        item.setImageUrl(resultSet.getString("image_url"));
                        item.setQuantity(resultSet.getInt("quantity"));
                        cartItems.add(item);
                    }
                }
                request.setAttribute("cartItems", cartItems);
                request.getRequestDispatcher("cart.jsp").forward(request, response);
                return;
            }

            response.sendRedirect("index.jsp");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}