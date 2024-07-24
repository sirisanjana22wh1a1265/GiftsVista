<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cart</title>
</head>
<body>
    <h1>Your Cart</h1>
    <a href="index.jsp">Back to Home</a>
    <c:forEach var="item" items="${cartItems}">
        <div>
            <img src="${item.image_url}" alt="${item.name}" width="200" height="200">
            <h3>${item.name}</h3>
            <p>Price: ${item.price}</p>
            <p>Quantity: ${item.quantity}</p>
            <a href="CartServlet?action=remove&id=${item.id}">Remove</a>
            <a href="CartServlet?action=update&id=${item.id}&quantity=${item.quantity + 1}">Increase Quantity</a>
            <a href="CartServlet?action=update&id=${item.id}&quantity=${item.quantity - 1}">Decrease Quantity</a>
        </div>
    </c:forEach>
</body>
</html>