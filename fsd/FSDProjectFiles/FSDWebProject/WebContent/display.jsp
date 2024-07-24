<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>

<style>
.product-card {
    border: 1px solid #ccc;
    padding: 16px;
    margin: 16px;
    text-align: center;
}

.product-card a {
    text-decoration: none;
    color: black;
}

.product-image {
    max-width: 100%;
    height: auto;
}

.product-title {
    font-size: 18px;
    margin: 10px 0;
}

.product-price {
    color: #e74c3c;
    font-size: 16px;
}

.wishlist {
    background-color: #3498db;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
}

.wishlist:hover {
    background-color: #2980b9;
}

</style>
<body>
<form action="ShowData" method="post">
    <div class="products-container">
        <c:forEach var="product" items="${products}">
            <div class="product-card">
                <a href="display.jsp?id=${product.id}">
                    <img src="${product.image}" alt="${product.name}" class="product-image">
                    <h2 class="product-title">${product.name}</h2>
                    <p class="product-price">&#8377; ${product.price}</p>
                    <button class="wishlist">Wishlist</button>
                </a>
            </div>
        </c:forEach>
        <c:if test="${empty products}">
   		 	<p>No products found.</p>
		</c:if>
    </div>
    </form>
</body>
</html>
