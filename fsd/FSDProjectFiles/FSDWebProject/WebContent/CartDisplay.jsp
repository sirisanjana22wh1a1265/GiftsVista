<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        /* Add your CSS styles here */
        header {
	            width: 100%;
	            display: flex;
	            justify-content: space-between;
	            align-items: center;
	            background: #2c2c2c;
	            padding: 10px 20px;
	            position: fixed;
	            top: 0;
	            z-index: 1000;
	        }
	
	        header .logo {
	            font-size: 1.5rem;
	            color: white;
	            margin-left:30px;
	        }
	
	        header nav {
	            display: flex;
	            gap: 20px;
	            padding: 10px 40px;
	        }
	
	        header nav a {
	            color: white;
	            text-decoration: none;
	            font-size: 1.5rem;
	        }
	        .dropdown a {
	            display: inline-block;
	        }
	        .menu-bar {
			    position: fixed;
			    top: 20px;
			    left: 20px;
			    z-index: 1000;
			}
			
			.dropdown {
			    position: relative;
			    display: inline-block;
			}
			
			.dropdown-menu {
			    display: none;
			    position: absolute;
			    background-color: #333;
			    min-width: 160px;
			    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
			    z-index: 1;
			    padding: 10px;
			}
			
			.dropdown-menu a {
			    color: white;
			    padding: 10px;
			    text-decoration: none;
			    display: block;
			    transition: background-color 0.3s;
			}
			
			.dropdown-menu a:hover {
			    background-color: #555;
			}
			
			.dropdown:hover .dropdown-menu {
			    display: block;
			}
        .product {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 10px;
            text-align: center;
            width: 300px;
            transition: transform 0.3s;
        }

        .product:hover {
            transform: scale(1.05);
        }

        .product-image {
            max-width: 100%;
            height: auto;
            border-radius: 5px;
        }

        .product-title {
            font-size: 1.2rem;
            margin: 10px 0;
            font-weight: lighter;
            color: gray;
        }

        .product-price {
            font-size: 1.1rem;
            color: #333;
        }

        .wishlist, .Remove-button {
            background-color: hotpink;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            font-size: 1rem;
            margin-top: 10px;
            padding: 10px;
            width: calc(50% + 20px);
        }

        .wishlist:hover {
            background-color: rgb(255, 128, 192);
            color: white;
        }

        .product a {
            text-decoration: none;
        }
        #wishlist{
			display: flex;
			flex-wrap: wrap;
			justofy-content: center;
			gap: 20px;
			padding-top: 60px;	
        }
        .product{
        	flex: 0 0 300px;
        }
    </style>
</head>
<body>
    <header>
	        <div class="logo">Gifts Vista</div>
		        <nav>
		            <a href="Animation1.jsp"><i class="fas fa-home"></i></a>
		            <div class = "dropdown">
		            	<a href=# id="dropdownIcon"><i class="fas fa-user"></i></a>
		            	<div class="dropdown-menu">
		            		<a href="1stpage.jsp">Logout</a>" 
		            	</div>
		            </div>
		            <a href="#"><i class="fas fa-heart"></i></a>
		            <a href="#"><i class="fas fa-shopping-cart"></i></a>
		        </nav>
	    </header>
	    <div class="menu-bar">
	        <div class="dropdown">
	            <a href="#" id="dropdownIcon"><i class="fas fa-bars"></i></a>
	            <div class="dropdown-menu">
	                <a href="cakes.jsp">Cakes</a>
	                <a href="first.jsp">Flowers</a>
	                <a href="acessories1.jsp">Accessories</a>
	                <a href="plants.jsp">Plants</a>
	                <a href="decorations1.jsp">Decorations</a>
	                <a href="him.jsp">Him</a>
	                <a href="her.jsp">Her</a>
	                <a href="husband.jsp">Husband</a>
                <a href="wife.jsp">Wife</a>
                <a href="kids.jsp">Kids</a>
	                <!-- Add more items as needed -->
	            </div>
	        </div>
	    </div>

    <div id="wishlist">
        <h2 class="center">My WishList</h2>
    </div>

    <script>
        function displayWishlist() {
            const wishlist = JSON.parse(localStorage.getItem('wishlist')) || [];
            const wishlistContainer = document.getElementById('wishlist');
            wishlistContainer.innerHTML = '';

            wishlist.forEach(item => {
                const wishDiv = document.createElement("div");
                wishDiv.setAttribute("id", "wish" + item.id);
                wishDiv.setAttribute("class", "product");
                wishDiv.innerHTML = item.html;
                
                const wishlistBtn = wishDiv.querySelector('.wishlist');
                if (wishlistBtn) {
                    wishlistBtn.remove();
                }

                const removeBtn = document.createElement("input");
                removeBtn.setAttribute("type", "button");
                removeBtn.setAttribute("value", "Remove");
                removeBtn.setAttribute("class", "Remove-button");
                removeBtn.onclick = function () { removeItem(item.id) };
                wishDiv.appendChild(removeBtn);

                wishlistContainer.appendChild(wishDiv);
            });
        }

        function removeItem(productId) {
            let wishlist = JSON.parse(localStorage.getItem('wishlist')) || [];
            wishlist = wishlist.filter(item => item.id !== productId);
            localStorage.setItem('wishlist', JSON.stringify(wishlist));
            displayWishlist();
        }

        window.addEventListener("load", displayWishlist);
    </script>
</body>
</html>
