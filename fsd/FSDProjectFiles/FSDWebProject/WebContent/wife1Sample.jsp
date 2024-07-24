<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        
    </head>

    <style>
        
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
			

        html, body {
            height: 100%;
            width: 100%;
            margin: 0;
            font-family: 'Roboto', sans-serif;
            background: url('https://files.123freevectors.com/wp-content/original/110755-dark-color-blurred-background-vector.jpg') no-repeat center center fixed;
          	background-size: cover;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 15px;
            display: flex;
            margin-top: 40px;
        }
        .right-column {
            width: 35%;
            margin-top: 70px;
            
        }
        .product-description {
            border-bottom: 1px solid #E1E8EE;
            margin-bottom: 20px;
            margin-left: -150px;
        }
        .product-description span {
            font-size: 18px;
            color: #358ED7;
            letter-spacing: 1px;
            text-transform: uppercase;
            text-decoration: none;
            margin-left: -40px;
        }
        .product-description h1 {
            font-weight: 300;
            font-size: 52px;
            letter-spacing: 1px;
            margin-top: 5px;
            margin-left: -40px;
            color: white;
            font-weight: bolder;
        }
        .product-description p {
            font-size: 16px;
            font-weight: 300;
            color: #86939E;
            line-height: 24px;
            margin-top: -30px;
        }
        .product-images span, .cable-config span {
            font-size: 14px;
            font-weight: 400;
            color: #86939E;
            margin-bottom: 20px;
            display: inline-block;
            margin-left: -150px;
        }
         .product-images {
            margin-bottom: 30px;
        }

        .image-choose, .cable-choose{
            margin-left: -150px;
        }

        .image-choose div {
            display: inline-block;
        }


        .cable-choose {
            margin-bottom: 20px;
        }

        .cable-choose button {
            border: 2px solid #E1E8EE;
            border-radius: 6px;
            padding: 13px 20px;
            font-size: 14px;
            color: #5E6977;
            background-color: #fff;
            cursor: pointer;
            transition: all .5s;
        }

        .cable-choose button:hover, .cable-choose button:active, .cable-choose button:focus {
            border: 2px solid hotpink;
            outline: none;
        }

        .cable-config {
            border-bottom: 1px solid #E1E8EE;
            margin-bottom: 50px;
            margin-left: -6px;
        }

        .cable-config a {
            color: #358ED7;
            text-decoration: none;
            font-size: 12px;
            position: relative;
            margin: 10px 0;
            display: inline-block;
            margin-left: -150px;
        }
        .cable-config a:before {
            content: "?";
            height: 15px;
            width: 15px;
            border-radius: 50%;
            border: 2px solid rgba(53, 142, 215, 0.5);
            display: inline-block;
            text-align: center;
            line-height: 16px;
            opacity: 0.5;
            margin-right: 5px;
        }
        .product-price {
            display: flex;
            align-items: center;
            margin-left: -150px;
        }

         .product-price span {
            font-size: 26px;
            font-weight: 300;
            color: #43474D;
            margin-right: 20px;
            margin-top: -50px;
            font-weight: bold;
        }

        .btns{
            margin-left:-150px;
            margin-top: 20px;
        }
        .cart-btn, .wish-btn, .rvw-btn, .dbt-btn {
            display: inline-block;
            background-color: hotpink;
            border-radius: 6px;
            font-size: 16px;
            color: #FFFFFF;
            text-decoration: none;
            padding: 12px 30px;
            transition: all .5s;
            margin-right: 10px;
        }
        .cart-btn:hover, .wish-btn:hover, .rvw-btn:hover, .dbt-btn:hover {
            background-color: #712387;
        }
        .rvw-btn{
            margin-left: 90px;
            margin-top: 10px;
        }
        .dbt-btn{
            margin-left: 230px;
            margin-top: 10px;
        }
        .write-review{
            margin-left: 180px;
            background-color: rgba(247,247,247,255);
            width: 55%;
            height: 60px;
            border-radius: 10px;
            margin-bottom: 30px;
        }
        .write-review span{
            margin-top: 50px;
            margin-left: 30px;
            font-weight: bold;
        }

        #img{
                width: 70px;
                height: 70px;
        }
        /* Responsive */
         @media (max-width: 940px) {
            .container {
                flex-direction: column;
                margin-top: 60px;
            }

            .left-column,
            .right-column {
                width: 100%;
            }

            .left-column img {
                width: 300px;
                right: 0;
                top: -65px;
                left: initial;
            }
        }


        @media (max-width: 535px) {
            .left-column img {
                width: 220px;
                top: -85px;
            }
        }
        
        .left-column {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
            width: 100%;
            max-width: 600px; 
            margin: 0 auto; 
            margin-top: 180px;
        }

        .main-image {
            text-align: center; 
        }

        .main-image img {
            width: 550px; 
            height: 550px;
            margin-left: -230px;
            margin-top: -550px;
            opacity: 1;
        }

        .thumbnail-images {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: -5px;
            width: 100%;
            margin-left: -200px;
        }

        .thumbnail {
            width: 100px; 
            height: auto; 
            margin: 0 5px;
            cursor: pointer; 
            border: 2px solid transparent; 
        }

        .thumbnail:hover {
            border-color: hotpink; 
        }
        .message{
            margin-left: -150px;
        }
        .message input{
            width: 200px;
            height: 30px;
            outline: none;
            padding: 0 15px;
            font-size: 0.95rem;
            border-radius: 15px;
            border: 1px solid rgba(191,166,208,255);
            margin-top: -120px;
        }
        .delivery-instructions, .care-instructions{
            margin-left: -150px;
            margin-top: 20px;
            font-weight: lighter;
            color:#86939E;
        }
        .delivery-instructions span, .care-instructions span{
            font-weight: bold;
        }
        .product-description h3{
            margin-top: -20px;
            margin-bottom: 50px;
            margin-left: -30px;
            font-size: 30px;
        }
        .path {
            font-family: Arial;
            font-size: smaller;
            margin-top: 10px;
        }
        .path a {
            text-decoration: none;
        }
        .review-rating{
            margin-left: 75px;
            margin-top: -45px;
            margin-bottom: 30px;;
        }
        .review-rating .star {
            color: #ffd700;
            font-size: 1.2em;
            margin-right: 2px;
        }
        .offers {
            display: flex;
            align-items: center;
            font-size: 1em;
            color: #333;
            margin-top: 20px;
            margin-left: -150px;
        }
        .offers span{
            font-size: 20px;
            font-weight: bold;
        }
        .offers .icon {
            color: #d64acb;
            font-size: 1.5em;
            margin-right: 8px;
        }        
        .available-offers{
            margin-left: -150px;
        }
        .review-rating a{
            text-decoration: none;
        }
        .review-rating label a{
            margin-left: 70px;
            color: #86939E;
        }
        
        #review-container {
            max-width: 800px;
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            margin-bottom: 20px;
            color: white;
        }

        .review {
            border-bottom: 1px solid #e0e0e0;
            padding: 20px 0;
        }

        .review:last-child {
            border-bottom: none;
        }

        .review-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 10px;
        }

        .review-author {
            font-weight: bold;
            color: #333;
        }
        .product-reviews{
            margin-left: -145px;
            margin-top: 15px;
        }
        .product-reviews span{
            font-size: 20px;
            font-weight: bold;
        }
        #review-container{
            margin-left: -115px;
            width: 400px;
            margin-right: 130px;
        }
        .outside{
            margin-left: 180px;
        }
        .heart-icon, .profile-icon {
                font-size: 25px; /* Adjust the size as needed */
                position: absolute; /* Position it absolutely within the main-image div */
                color: #712387;
                margin-top: -35px;
                margin-left: 1300px;
                text-decoration: none; /* Remove underline */
                z-index: 10; /* Ensure it stays on top of other elements */
                display: flex;
                align-items: center;
                justify-content: center;
                width: 50px; 
                height: 50px; 
                border-radius: 50%; 
                transition: background-color 0.3s; 
            }
            .profile-icon{
                margin-left: 1345px;
            }
            .heart-icon:hover, .profile-icon:hover{
                background-color: rgba(255, 255, 255, 0.7);
                color: hotpink;
            }
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
            #eggless{
            	margin-top: 5px;
            }
        
    </style>

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
	                <a href="accessories1.jsp">Accessories</a>
	                <a href="plants.jsp">Plants</a>
	                <a href="decorations1.jsp">Decorations</a>
	                <a href="him.jsp">Him</a>
	                <a href="her1.jsp">Her</a>
	                <!-- Add more items as needed -->
	            </div>
	        </div>
	    </div>

        

        <main class="container">
            <div class="left-column">
                <div class="main-image">
                    <img src="https://assets.winni.in/product/primary/2024/1/93319.jpeg?dpr=1&w=500" id="main-img" alt="Main Product Image">
                </div>
            </div>

            <div class="right-column">

                <div class="product-description">
                    <span>Cake</span>
                    <h1>Chocolate Truffle</h1>
                    <div class="review-rating">
                        <a href="#">
                            <span class="star">&star;</span>
                            <span class="star">&starf;</span>
                            <span class="star">&starf;</span>
                            <span class="star">&starf;</span>
                            <span class="star">&starf;</span>
                        </a>
                        <label><a href="#review-container">Reviews</a></label>
                    </div>
                    <div class="price">
                    	<h3 data-price="749">Rs. 749</h3>
                    </div>
                    
                    <p>Cake Flavour: Truffle<br>
                        Shape: Round<br>
                        Type of Cake: Cream<br>
                        Type of Sponge: Chocolate<br>
                        Type of Cream: Truffle<br>
                        Filling in Layers: Truffle<br>
                        Toppings: Chocolate Garnish<br>
                        Net Quantity: 1 cake
                    </p>
                </div>

                <div class="product-configuration">

                    <div class="product-images">
                        <span>Images</span>
                        <div class="thumbnail-images">
                            <img src="https://assets.winni.in/product/primary/2024/1/93319.jpeg?dpr=1&w=500" class="thumbnail" alt="Thumbnail 1">
                            <img src="https://assets.winni.in/product/primary/2024/1/93321.jpeg?dpr=1&w=600" class="thumbnail" alt="Thumbnail 2">
                            <img src="https://assets.winni.in/product/primary/2024/1/93320.jpeg?dpr=1&w=600" class="thumbnail" alt="Thumbnail 3">
                        </div>
                    </div>

                    <div class="cable-config">
                        <span>Weight</span>
                        <div class="cable-choose">
                            <button class="selected" data-price="749" data-weight="500">500 gm</button>
				            <button data-price="1049" data-weight="1">1 kg</button>
				            <button data-price="1549" data-weight="1.5">1.5 kg</button>
				            <button data-price="2049" data-weight="2">2 kg</button>
				            <button data-price="3049" data-weight="3">3 kg</button>
				            <button data-price="4049" data-weight="4">4 kg</button>
                        </div>
                        <div class="message">
                            <input type="text" placeholder="Message on Cake">
                            
                        </div>
                        <a href="#">Weight Serving Info</a>
                    </div>                    
                </div>

                <div class="btns">
                    <a href="#" class="wish-btn">Wishlist</a>
                    <a href="AddtoCart.jsp" class="cart-btn">Add to Cart</a>
                </div>
                <div class="offers">
                    <i class="fas fa-percent icon"></i>
                    <span>Available Offers</span>
                </div>
                <div class="available-offers">
                    <ul>
                        <li>
                            Get upto ₹750 Cashback on paying via Mobikwik <a href=#>*T&C</a>
                        </li>
                        <li>
                            Use Coupon Code: TRYWINNI to get 20% off
                        </li>
                        <li>
                            Use Coupon Code: WIN50 to get ₹50 off
                        </li>
                    </ul>
                </div>
            </div>
        </main>

        <div class="outside">
            <div class="delivery-instructions">
                <span>Delivery Instructions</span>
                <ul>
                    <li>
                        Our delivery boy hand-delivers the delicious cake in a good quality cardboard box. Candles and knives are complementary but they will deliver as per the availability.
                    </li>
                    <li>
                        Every cake we offer is handcrafted, and since each chef has his/her way of baking and designing a cake, there might be slight variation in the product in terms of design and shape.
                    </li>
                    <li>
                        This product is perishable therefore delivery will be attempted only once, the delivery cannot redirect to any other address.
                    </li>
                    <li>
                        We promise express delivery to provide superior customer services the delivery cannot redirect to any other address.
                    </li>
                    <li>
                        This product is hand delivered and will not deliver along with courier products.
                    </li>
                    <li>
                        Occasionally, substitutions of flavours/designs are necessary due to temporary and regional unavailability issues.
                    </li>
                </ul>
            </div>
            <div class="care-instructions">
                <span>Care Instructions</span>
                <ul>
                    <li>
                        Store cream cakes in a refrigerator.
                    </li>
                    <li>
                        Fondant cakes should store in an air-conditioned environment.
                    </li>
                    <li>
                        The cake should be consumed within 24 hours.
                    </li>
                    <li>
                        Slice and serve the cake at room temperature and make sure it is not exposed to heat.
                    </li>
                    <li>
                        Sculptural elements and figurines may contain wire supports or toothpicks or wooden skewers for support.
                    </li>
                    <li>
                        Please check the placement of these items before serving them to small children.
                    </li>
                </ul>
            </div>
            <div class="product-reviews">
                <span>&check; Product Reviews</span>
            </div>
            <table>
                <tr>
                    <td>
                        <div id="review-container">
                            <div class="review">
                                <div class="review-header">
                                    <span class="review-author">John Doe</span>
                                    <div class="review-rating">
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&star;</span>
                                    </div>
                                </div>
                                <p class="review-text">This is an amazing product! Highly recommended.</p>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div id="review-container">
                            <div class="review">
                                <div class="review-header">
                                    <span class="review-author">John Doe</span>
                                    <div class="review-rating">
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&star;</span>
                                    </div>
                                </div>
                                <p class="review-text">This is an amazing product! Highly recommended.</p>
                            </div>
                        </div>
                    </td>
                    <td>
                        <div id="review-container">
                            <div class="review">
                                <div class="review-header">
                                    <span class="review-author">John Doe</span>
                                    <div class="review-rating">
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&star;</span>
                                    </div>
                                </div>
                                <p class="review-text">This is an amazing product! Highly recommended.</p>
                            </div>
                        </div>
                    </td>
                </tr>    
                <tr>
                    <td>
                        <div id="review-container">
                            <div class="review">
                                <div class="review-header">
                                    <span class="review-author">John Doe</span>
                                    <div class="review-rating">
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&starf;</span>
                                        <span class="star">&star;</span>
                                    </div>
                                </div>
                                <p class="review-text">This is an amazing product! Highly recommended.</p>
                            </div>
                        </div>
                    </td>
                </tr>            
            </table>
            <div class="write-review">
                <span>Feeling on top of the world with the latest order ?</span>
                <a href="#" class="rvw-btn">Write a Review</a>
            </div>
            <div class="write-review">
                <span>Have doubts about this product ?</span>
                <a href="#" class="dbt-btn">Ask Us</a>
            </div>
        </div>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.1/jquery.min.js" charset="utf-8"></script>
        <script>
            // JavaScript for image switching
            document.addEventListener('DOMContentLoaded', function() {
                const thumbnails = document.querySelectorAll('.thumbnail');
                const mainImage = document.getElementById('main-img');
    
                thumbnails.forEach(thumbnail => {
                    thumbnail.addEventListener('click', function() {
                        const imageUrl = this.src;
                        mainImage.src = imageUrl;
                    });
                });
            });
        </script> 
        <script>
        document.addEventListener('DOMContentLoaded', function () {
            const weightButtons = document.querySelectorAll('.cable-choose button');
            //const egglessCheckbox = document.getElementById('eggless');
            //const pincodeInput = document.getElementById('pincode');
            //const checkPincodeButton = document.getElementById('checkPincode');
            //const addToCartButton = document.getElementById('addToCart');
            
            // Function to update price based on selected weight and eggless option
            function updatePrice() {
                const selectedButton = document.querySelector('.cable-choose button.selected');
                let price = parseFloat(selectedButton.getAttribute('data-price'));
                //let price = 0;
                console.log(`Selected price: ${price}`);
                console.log(`Calculated price: ${price}`);
                //const isEggless = egglessCheckbox.checked;
                
                // Adjust price based on eggless option
                //if (isEggless) {
                  //  price += 100; // Example price increment for eggless option
                //}
                
                return price;
            }
            const priceElement = document.querySelector('.price h3');
            // Event listener for weight buttons
            weightButtons.forEach(button => {
                button.addEventListener('click', function () {
                    weightButtons.forEach(btn => btn.classList.remove('selected'));
                    this.classList.add('selected');
                    const price = updatePrice();
                    console.log(`Selected price: ${price}`);
                    document.querySelector('.price h3').textContent = `Rs. ${price}`;
                    priceElement.textContent = `Rs. ${price}`;
                    priceElement.dataset.price = price;
                });
            });
            
            // Event listener for eggless checkbox
            /*egglessCheckbox.addEventListener('change', function () {
                const price = updatePrice();
                document.querySelector('.price').textContent = `₹ ${price}`;
            });*/
            
            // Event listener for pincode check button
            checkPincodeButton.addEventListener('click', function () {
                const pincode = pincodeInput.value.trim();
                if (pincode.length === 6 && !isNaN(pincode)) {
                    alert(`Delivery available to pincode: ${pincode}`);
                } else {
                    alert('Please enter a valid 6-digit pincode.');
                }
            });
            
            // Event listener for add to cart button
            addToCartButton.addEventListener('click', function () {
                const selectedButton = document.querySelector('.weight-options button.selected');
                const cakeWeight = selectedButton.textContent.trim();
                const cakePrice = document.querySelector('.price').textContent.trim();
                const isEggless = egglessCheckbox.checked;
                const messageOnCake = document.querySelector('.message-on-cake input').value.trim();
                
                // Example functionality to add to cart (you would implement your own logic here)
                console.log(`Added to Cart:
                    Cake: Wife Special Chocolate Truffle Cake
                    Weight: ${cakeWeight}
                    Price: ${cakePrice}
                    Eggless: ${isEggless ? 'Yes' : 'No'}
                    Message on Cake: ${messageOnCake}
                `);
                
                // Example alert to confirm addition to cart
                alert(`Added to Cart:
                    Cake: Wife Special Chocolate Truffle Cake
                    Weight: ${cakeWeight}
                    Price: ${cakePrice}
                    Eggless: ${isEggless ? 'Yes' : 'No'}
                    Message on Cake: ${messageOnCake}
                `);
            });
        });
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
            <img src="Logo.png" alt="Winni Logo" class="footer-logo">
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

    </body>
</html>