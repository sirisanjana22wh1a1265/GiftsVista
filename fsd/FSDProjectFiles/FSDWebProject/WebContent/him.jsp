<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        <style>
        /*Navbar CSS*/
        
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
			
			/*Product details*/            
            .product-grid {
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                padding: 20px;
                margin-top: -55px;
            }

            .product {
                background-color: #fff;
                border: 1px solid #ddd;
                border-radius: 5px;
                box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
                margin: 10px;
                padding: 10px;
                text-align: center;
                width: 250px;
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
                font-size: 1rem;
                margin: 10px 0;
                font-weight: lighter;
                color: gray;
            }

            .product-price {
                font-size: 0.9rem;
                color: #333;
            }

            .wishlist, .Remove-button {
                background-color: hotpink;
                border: none;
                border-radius: 5px;
                color: white;
                cursor: pointer;
                font-size: 0.9rem;
                margin-top: 10px;
                padding: 8px;
                width: 100%;
            }

            .wishlist:hover {
                background-color: rgb(255, 128, 192);
                color: white;
            }
            .product a{
                text-decoration: none;
            }
            
			/*Footer CSS*/
            .footer {
                background-color: #f9f9f9;
                padding: 20px 0;
            }

            .footer-top {
                display: flex;
                justify-content: space-around;
                border-bottom: 1px solid #ddd;
                padding-bottom: 20px;
            }

            .footer-top-item {
                text-align: center;
            }

            .footer-top-item img {
                width: 50px;
                height: 50px;
            }

            .footer-top-item span {
                display: block;
                font-weight: bold;
                margin-top: 10px;
            }

            .footer-main {
                display: flex;
                justify-content: space-around;
                padding: 20px 0;
            }

            .footer-column {
                width: 20%;
            }

            .footer-column h4 {
                font-size: 18px;
                margin-bottom: 10px;
            }

            .footer-column ul {
                list-style: none;
                padding: 0;
            }

            .footer-column ul li {
                margin-bottom: 5px;
            }

            .footer-column ul li a {
                color: #333;
                text-decoration: none;
            }

            .footer-column ul li a:hover {
                text-decoration: underline;
            }

            .footer-logo {
                width: 150px;
                height: auto;
            }

            .footer-bottom {
                text-align: center;
                padding: 10px 0;
                border-top: 1px solid #ddd;
            }

            .social-media a {
                margin: 0 5px;
            }

            .social-media img {
                width: 30px;
                height: 30px;
            }

            .footer-mobile-app {
                margin-top: 10px;
            }

            .footer-mobile-app .app-links a {
                margin: 0 10px;
            }

            .footer-mobile-app img {
                width: 120px;
                height: 40px;
            }
            .social-icons {
                display: flex;
                gap: 10px; /* Adjust spacing between icons */
                justify-content: center; /* Center icons horizontally */
                align-items: center; /* Center icons vertically */
                margin-top: 20px; /* Adjust top margin */
            }

            .social-icon {
                font-size: 25px; /* Adjust the size as needed */
                color: #4267B2; /* Default color, you can change */
                text-decoration: none; /* Remove underline */
                transition: color 0.3s; /* Smooth transition */
            }

            .social-icon:hover {
                color: #365899; /* Slightly darker on hover */
            }

            .social-icon .fa-instagram {
                color: #E4405F;
            }

            .social-icon .fa-twitter {
                color: #1DA1F2;
            }

            .social-icon .fa-youtube {
                color: #FF0000;
            }

            .social-icon .fa-linkedin-in {
                color: #0077B5;
            }

            .social-icon .fa-whatsapp {
                color: #25D366;
            }

            .social-icon .fa-google-play {
                color: #34A853;
            }

            .social-icon .fa-apple {
                color: #A3AAAE;
            }
            .facebook-icon {
                color: #1877F2;
            }    
#wishlist {
    width: 80px; /* Adjust width as needed */
    background-color: #f9f9f9;
    padding: 10px;
    border: 1px solid #ddd;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    z-index: 1000; /* Ensure it's above other content */
    top: 5px;
    right: 400px;
}

#wishlist h2 {
    font-size: 1.2rem; /* Slightly smaller font size */
    margin-bottom: 8px; /* Adjusted margin */
    color: #333;
    font-weight: bold;
}
#wishlist .product {
    background-color: #f9f9f9; /* Adjust background color */
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    margin: 10px 0;
    padding: 10px;
    text-align: center;
    width: 200px; /* Adjust width as needed */
    transition: transform 0.3s;
}

#wishlist .product:hover {
    transform: scale(1.05);
}

#wishlist .product-image {
    max-width: 100%;
    height: auto;
    border-radius: 5px;
}

#wishlist .product-title {
    font-size: 0.9rem; /* Adjust font size */
    margin: 10px 0;
    font-weight: lighter;
    color: gray;
}

#wishlist .product-price {
    font-size: 0.8rem; /* Adjust font size */
    color: #333;
}

#wishlist .remove-btn {
    background-color: #f44336; /* Adjust background color */
    border: none;
    border-radius: 5px;
    color: white;
    cursor: pointer;
    font-size: 0.8rem; /* Adjust font size */
    margin-top: 8px;
    padding: 6px; /* Adjust padding */
    width: 100%;
}

#wishlist .remove-btn:hover {
    background-color: #d32f2f; /* Adjust hover background color */
}

.product-grid {
    padding-top: 120px; /* Adjust top padding to clear space for fixed wishlist */
    margin-left: -130px; /* Move content to the right */
    margin-right: 0; /* Ensure no margin on the right side */
    width: 1400px;/*calc(100% - 5px); /* Adjust width based on your design needs */
    left: 5px;
}


#wishlist-container {
    position: absolute;  /* Fixed positioning */
    top: 80px; /* Adjust top positioning as needed */
    right: 5px; /* Move container to the right */
    width: 300px; /* Adjust width as needed */
    height: calc(100vh + 10px); /* Adjust height based on viewport height */
    overflow-y: auto; /* Enable scrolling */
    border: 1px solid #ddd; /* Optional: Add border for styling */
    padding: 10px; /* Optional: Add padding for spacing */
    background-color: #f9f9f9; /* Adjust background color */
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
		            <a href="WishlistDisplay.jsp"><i class="fas fa-heart"></i></a>
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
	                <a href="Husband.jsp">Husband</a>
                <a href="wife.jsp">Wife</a>
                <a href="kids.jsp">Kids</a>
	                <!-- Add more items as needed -->
	            </div>
	        </div>
	    </div>
	    
        <div class="husbandcontent">           
            <div class="product-grid">
                <div class="product">
                	<div id="product1">
                    <a href="him1.jsp">
                        <img src="https://assets.winni.in/product/primary/2022/9/74488.jpeg?dpr=1&w=500" alt="Product 1" class="product-image">
                        <h2 class="product-title">Personalized Handsome Dude Cushion</h2>
                        <p class="product-price">&#8377; 749</p>
                    </a>
                    </div>
                    <button class="wishlist" id="1">Wishlist</button>   
                </div>
                <div class="product">
                <div id="product2">
                    <a href="him2.jsp">
                        <img src="https://assets.winni.in/product/primary/2014/8/35891.jpeg?dpr=1&w=500" alt="Product 2" class="product-image">
                        <h2 class="product-title"><font size="3">Superman Boy</font></h2>
                        <p class="product-price">&#8377; 549</p>
                    </a>
                    </div>
                    <button class="wishlist" id="2">Wishlist</button>    
                
                </div>
                <div class="product">
                <div id="product3">
                    <a href="him3.jsp">
                        <img src="https://assets.winni.in/product/primary/2024/1/93497.jpeg?dpr=1&w=500" alt="Product 3" class="product-image">
                        <h2 class="product-title">Insertable Photo Frame</h2>
                        <p class="product-price">&#8377; 849</p>
                    </a>
                    </div>
                        <button class="wishlist" id="3">Wishlist</button>               
                
                </div>
                <div class="product">
                <div id="product4">
                    <a href="him4.jsp">
                        <img src="https://assets.winni.in/product/primary/2021/12/56293.jpeg?dpr=1&w=500" alt="Product 4" class="product-image">
                        <h2 class="product-title">Heavenly Vanilla Photo Cake</h2>
                        <p class="product-price">&#8377; 249</p>
                    </a>
                    </div>
                        <button class="wishlist" id="4">Wishlist</button>    

                </div>
                <div class="product">
                <div id="product5">
                    <a href="him5.jsp">
                        <img src="https://assets.winni.in/product/primary/2023/5/85067.jpeg?dpr=1&w=500" alt="Product 5" class="product-image">
                        <h2 class="product-title">Beer Motivational Mug</h2>
                        <p class="product-price">&#8377; 1,149</p>
                    </a>
                    </div>
                        <button class="wishlist" id="5">Wishlist</button>    
                    
                </div>
                <div class="product">
                <div id="product6">
                    <a href="him6.jsp">
                        <img src="https://assets.winni.in/product/primary/2022/6/61367.jpeg?dpr=1&w=500" alt="Product 6" class="product-image">
                        <h2 class="product-title">Isolated Rose</h2>
                        <p class="product-price">&#8377; 579</p>
                    </a>
                    </div>
                        <button class="wishlist" id="6">Wishlist</button>    
                   
                </div>
                <div class="product">
                <div id="product7">
                    <a href="him7.jsp">
                        <img src="https://assets.winni.in/product/primary/2023/1/82027.jpeg?dpr=1&w=500" alt="Product 7" class="product-image">
                        <h2 class="product-title">Exotic Red Roses Baske</h2>
                        <p class="product-price">&#8377; 589</p>
                    </a>
                    </div>
                        <button class="wishlist" id="7">Wishlist</button>
                   
                </div>
                <div class="product">
                <div id="product8">
                    <a href="him8.jsp">
                        <img src="https://assets.winni.in/product/primary/2024/5/95479.jpeg?dpr=1&w=500" alt="Product 8" class="product-image">
                        <h2 class="product-title">Loving Dad Personalized Cushion</h2>
                        <p class="product-price">&#8377; 499</p>
                    </a>
                    </div>
                        <button class="wishlist" id="8">Wishlist</button>
                  
                </div>
        <div id="wishlist-container">
			<div id="wishlist">
			        <h2>My Wishlist</h2>
			</div>
    	</div>
    </div>
   </div>
          
        <script>      	
        	
            let wishlist = JSON.parse(localStorage.getItem('wishlist')) || [];

            function setup() {
                console.log("Window Loaded");
                const products = document.querySelectorAll(".wishlist");
                for (let i = 0; i < products.length; i++) {
                    products[i].onclick = function (e) {
                        addItem(e);
                    }
                }
                
                displayWishlist(); // Call displayWishlist after setup to ensure initial display
            }

            function addItem(e) {
                const productId = e.target.getAttribute("id");
                console.log("Product: ", productId);
                const productDiv = document.getElementById("product" + productId);
                const productDetails = {
                    id: productId,
                    html: productDiv.innerHTML
                };

                wishlist.push(productDetails);
                localStorage.setItem('wishlist', JSON.stringify(wishlist));

                // Update the UI to reflect the added item in the current page's wishlist section
                displayWishlist();
            }

            function displayWishlist() {
                const wishlistContainer = document.getElementById('wishlist-container');
                if (!wishlistContainer) {
                    console.error("Wishlist container not found in DOM.");
                    return;
                }

                wishlistContainer.innerHTML = '<h2>My Wishlist</h2>';

                wishlist.forEach(item => {
                    const wishDiv = document.createElement("div");
                    wishDiv.setAttribute("id", "wish" + item.id);
                    wishDiv.setAttribute("class", "product");
                    wishDiv.innerHTML = item.html;

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
                wishlist = wishlist.filter(item => item.id !== productId);
                localStorage.setItem('wishlist', JSON.stringify(wishlist));
                displayWishlist();
            }

            window.addEventListener("load", setup);

        </script>

        
        
        
        <footer class="footer">
            <div class="footer-top">
                <div class="footer-top-item">
                    <span>&#9951; 700+ Cities</span>
                    <p>Happily Delivering</p>
                </div>
                <div class="footer-top-item">
                    <span>&#x2713; 100% Secure Payments</span>
                    <p>All Major Credit & Debit Cards Accepted</p>
                </div>
                <div class="footer-top-item">
                    <span>&#128100;&#128100;20,000,000</span>
                    <p>Customers Across The World</p>
                </div>
            </div>
            <div class="footer-main">
                <div class="footer-column">
                    
                </div>
                <div class="footer-column">
                    <h4>Our Company</h4>
                    <ul>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Careers</a></li>
                        <li><a href="#">Contact Us</a></li>
                        <li><a href="#">Affiliate Program</a></li>
                        <li><a href="#">In News</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h4>Quick Links</h4>
                    <ul>
                        <li><a href="#">Wishes</a></li>
                        <li><a href="#">Sitemap</a></li>
                        <li><a href="#">Customer Reviews</a></li>
                        <li><a href="#">Blog - Celebrate Relations</a></li>
                        <li><a href="#">Corporate Order</a></li>
                        <li><a href="#">Franchise Enquiry</a></li>
                    </ul>
                </div>
                <div class="footer-column">
                    <h4>Policy & Security</h4>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Refund Policy</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="#">Bug Bounty</a></li>
                        <li><a href="#">Data Security</a></li>
                        <li><a href="#">Cancellation Policy</a></li>
                        <li><a href="#">Terms And Conditions</a></li>
                        <li><a href="#">Payments And Security</a></li>
                    </ul>
                </div>
            </div>
            <div class="footer-bottom">
                <div class="social-media">
                    <a href="https://www.facebook.com" class="social-icon" target="_blank"><i class="fab fa-facebook-f"></i></a>
                    <a href="https://www.instagram.com" class="social-icon" target="_blank"><i class="fab fa-instagram"></i></a>
                    <a href="https://www.twitter.com" class="social-icon" target="_blank"><i class="fab fa-twitter"></i></a>
                    <a href="https://www.youtube.com" class="social-icon" target="_blank"><i class="fab fa-youtube"></i></a>
                    <a href="https://www.linkedin.com" class="social-icon" target="_blank"><i class="fab fa-linkedin-in"></i></a>
                    <a href="https://www.whatsapp.com" class="social-icon" target="_blank"><i class="fab fa-whatsapp"></i></a>
                </div>
                <div class="footer-mobile-app">
                    <span>Experience Winni on mobile</span>
                    <div class="app-links">
                        <a href="https://play.google.com/store" class="social-icon" target="_blank"><i class="fab fa-google-play"></i></a>
        <a href="https://www.apple.com/app-store/" class="social-icon" target="_blank"><i class="fab fa-apple"></i></a>
                    </div>
                </div>
                <p>&copy; 2013 - 2024 Winni.in. All Rights Reserved</p>
            </div>
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
