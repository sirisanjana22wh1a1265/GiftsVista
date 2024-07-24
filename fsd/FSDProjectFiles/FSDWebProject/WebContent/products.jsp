<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        /* Include your CSS styles here */
    </style>
</head>
<body>
    <header>
        <div class="headercontent">
            <input type="text" id="searchbar" placeholder="Search">
            <div class="headerdetails">
                <a href="#"><font id="details">Help |</font></a>
                <a href="#"><font id="details">Currency |</font></a>
                <a href="#"><font id="details">Corporate Gifts |</font></a>
                <a href="#"><font id="details">Partner With Us |</font></a>
                <a href="#"><font id="details">Track Order</font></a>
            </div>
        </div>
    </header>

    <div class="wifecontent">
        <div class="filter">
            <div class="filter-bar">
                <div class="filter-group">
                    <label for="priceRange">Price</label>
                    <input type="range" id="priceRange" name="priceRange" min="100" max="5000" step="10">
                </div>
                
                <div class="filter-group">
                    <label for="popularity">Flavours :</label>
                    <select id="popularity" name="category">
                        <option value="artsCrafts">Chocolate</option>
                        <option value="stem">Butterscotch</option>
                        <option value="outdoorPlay">Vanilla</option>
                        <option value="puzzlesGames">Red Velvet</option>
                        <option value="puzzlesGames">Black Forest</option>
                        <option value="puzzlesGames">White Forest</option>
                        <option value="puzzlesGames">Hazel Nut</option>
                        <option value="pretendPlay">Pine Apple</option>
                        <option value="puzzlesGames">Mango</option>
                    </select>
                </div>
                
                <div class="filter-group">
                    <label for="popularity">Type :</label>
                    <select id="popularity" name="category">
                        <option value="artsCrafts">Cool Cake</option>
                        <option value="stem">Normal Cake</option>
                        <option value="outdoorPlay">Egg Less</option>
                        <option value="puzzlesGames">Fruit Cake</option>
                    </select>
                </div>

                <div class="filter-group">
                    <button id="filterbt" onclick="applyFilters()">Apply Filters</button>
                </div>
            </div>
        </div>

        <div class="product-grid">
            <c:forEach var="product" items="${productList}">
                <div class="product-card">
                    <a href="ProductDetailServlet?id=${product.id}">
                        <img src="${product.imageUrl}" alt="${product.name}" class="product-image">
                        <h2 class="product-title">${product.name}</h2>
                        <p class="product-price">&#8377; ${product.price}</p>
                        <button class="wishlist">Wishlist</button>
                    </a>
                </div>
            </c:forEach>
        </div>
    </div>

    <footer>
    </footer>

    <script>
        function toggleDropdown(dropdownId) {
            const dropdown = document.getElementById(dropdownId);
            const arrowBtn = dropdown.previousElementSibling;
            dropdown.style.display = dropdown.style.display === 'block' ? 'none' : 'block';
            arrowBtn.classList.toggle('active');
        }

        function selectOption(filterType, value) {
            console.log(`${filterType}: ${value}`);
            document.getElementById('priceDropdown').style.display = 'none';
            document.querySelector('.arrow-btn').classList.remove('active');
            // Add logic to filter content based on the selected filters
        }

        function applyFilters() {
            const category = document.querySelector('.arrow-btn').textContent.trim();
            const price = document.getElementById('price').value;
            const availability = document.getElementById('availability').checked;

            console.log(`Price: ${price}, Availability: ${availability}`);

            // Add logic to filter content based on the selected filters
        }
    </script>
</body>
</html>
