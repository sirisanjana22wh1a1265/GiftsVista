package com.demo;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SignupServlet")
public class SignInServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirmPassword");

        if (password.equals(confirmPassword)) {
            Connection con = null;
            PreparedStatement pst = null;
            try {
                // Load the MySQL JDBC driver
                Class.forName("com.mysql.cj.jdbc.Driver");

                // Establish the connection
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shopping_db", "root", "220604");

                pst = con.prepareStatement("INSERT INTO users (email, username, password) VALUES (?, ?, ?)");
                pst.setString(1, email);
                pst.setString(2, username);
                pst.setString(3, password);

                int result = pst.executeUpdate();

                if (result > 0) {
                    response.sendRedirect("Signup.jsp");
                } else {
                    response.getWriter().println("Signup failed: Could not insert user.");
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
                response.getWriter().println("Signup failed: Driver not found.");
            } catch (SQLException e) {
                e.printStackTrace();
                response.getWriter().println("Signup failed: " + e.getMessage());
            } finally {
                try {
                    if (pst != null) {
                        pst.close();
                    }
                    if (con != null) {
                        con.close();
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        } else {
            response.getWriter().println("Passwords do not match. Signup failed.");
        }
    }
}
