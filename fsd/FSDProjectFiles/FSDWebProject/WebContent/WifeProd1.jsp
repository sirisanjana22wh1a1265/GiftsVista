<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
        
    </head>

    <style>
        
        /*Basic - Start*/
        .navbar {
            display: flex;
            justify-content: center;
            background-color: rgba(247,247,247,255);
            position: sticky;
            top: 0;
            padding: 10px 20px;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 8px 16px;
        }
        .headingcontent{
            width: 80%;
        }
        .dropdown {
            position: relative;
            display: inline-block;
        }
        .Bday-dropdown{
            position: relative;
            display: inline-block;
        }
        .Bday-dropdown .birthday-content{
            display: none;
            width: 1100px;
            left: -740px;
        }
        .Bday-dropdown .row{
            display: flex;
            justify-content: space-between;
        }
        .Bday-dropdown .column{
            flex: 1;
            padding: 20px;
            size: 200px;
        }
        .birthday-content {
            display: none;
            position: absolute;
            background-color: white;
            min-width: 150px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            width: 100%;
            overflow: auto;
        }
        .birthday-content a {
            color: black;
            padding: 8px 10px;
            text-decoration: none;
            display: block;
            white-space: nowrap;
        }
        .birthday-content a:hover {
            color: hotpink;
        }
        .dropdown:hover .birthday-content {
            display: block;
        }
        .btn {
            color: black;
            border: none;
            cursor: pointer;
            padding: 5px 10px;
            font-size: 13px;
            background-color: transparent;
            font-family: sans-serif;
            font-weight: lighter;
        }
        .btn:hover{
            color: hotpink;
            border-bottom: solid hotpink;
        }
        .dropdown-content h4 {
            margin: 0;
            padding: 10px 16px;
            background-color: #f9f9f9;
            border-bottom: 1px solid #ddd;
            padding-top: 5px;
        }
        .headercontent{
            height: 100px;
            background-color: hotpink;
        }
        .Bday-dropdown:hover .birthday-content{
            display: block;
            color: black;
            border-bottom: solid hotpink;
        }
        #image{
            width: 200px;
            height: auto;
            display: block;
            margin: 0 auto;
        }
        #image:hover{
            background-color: transparent;
        }
        #searchbar{
            width: 300px;
            height: 30px;
            border-radius: 5px;
            border-color: #ddd;
            margin-left: 550px;
            margin-top: 50px;
            outline: none;
            padding: 0 15px;
            font-size: 0.95rem;
            border: 1px solid rgba(191,166,208,255);   
        }
        #exp{
            color:hotpink;
        }
        .headerdetails{
            position:absolute;
            top: 10px; 
            right: 10px;
            padding: 5px 10px; 
            border-radius: 5px; 
            font-size: 14px; 
            font-weight: bold;
            text-decoration: transparent;
        }
        .headerdetails a{
            text-decoration: none;
        }
        .logo{
            margin-top: -65px;
            margin-left: 15px;
        }
        .icons{
            position: absolute;
            top: 50px; 
            right: 10px;
            padding: 5px 10px;   
        }
        /*Basic - End*/

        html, body {
            height: 100%;
            width: 100%;
            margin: 0;
            font-family: 'Roboto', sans-serif;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 15px;
            display: flex;
            margin-top: -35px;
        }
        .right-column {
            width: 35%;
            margin-top: 60px;
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
            color: #43484D;
            letter-spacing: -2px;
            margin-top: 5px;
            margin-left: -40px;
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
        
    </style>

    <body>

        <header>
            <div class="headercontent">
                <input type="text" id="searchbar" placeholder="Search">
                <div class="logo">
                    <img src="http://assets.winni.in/img/newlogo/logo-test-36-CL-1.png">
                </div>
                <div class="headerdetails">
                    <a href="#"><font id="details">Help |</font></a>
                    <a href="#"><font id="details">Currency |</font></a>
                    <a href="#"><font id="details">Corporate Gifts |</font></a>
                    <a href="#"><font id="details">Partner With Us |</font></a>
                    <a href="#"><font id="details">Track Order</font></a>
                </div>
                <div class="customerdetails">
                    <a href="#" class="heart-icon">&#10084</a>
                    <a href="#" class="profile-icon">&#128100;</a>
                </div>
            </div>
        </header>

        <nav class="navbar">
            <div class="headingcontent">

                <div class="dropdown">
                    <button class="btn"><font id="exp"><b>EXPRESS</b></font></button>
                </div>
                <div class="dropdown">
                    <button class="btn">CAKES</button>
                </div>
                <div class="dropdown">
                    <button class="btn">FLOWERS</button>
                </div>
                <div class="dropdown">
                    <button class="btn">PLANTS</button>
                </div>
                <div class="dropdown">
                    <button class="btn">GIFTS</button>
                </div>
                <div class="dropdown">
                    <button class="btn">PERSONALIZED GIFTS</button>
                </div>
                <div class="dropdown">
                    <button class="btn">CHOCOLATES</button>
                </div>
                <div class="dropdown">
                    <button class="btn">COMBOS</button>
                </div>

                <div class="Bday-dropdown">
                    <button class="btn">BIRTHDAY</button>
                    <div class="birthday-content">
                        <div class="row">
                            <div class="column">
                                <h4><b>Gift by Type</b></h4>
                                <a href="#">All Birthday Gifts</a>
                                <a href="#">Birthday Best Seller</a>
                                <a href="#">Birthday Photo Cakes</a>
                                <a href="#">Same Day Delivery</a>
                                <a href="#">First Birthday Cakes</a>
                                <a href="#">Balloon Decoration</a>
                                <a href="#">Gift Cards</a>
                                <a href="#">Birthday New Arrival</a>
                            </div>
                            <div class="column">
                                <h4><b>Gift by Collection</b></h4>
                                <a href="#">Birthday Cakes</a>
                                <a href="#">Birthday Flowers</a>
                                <a href="#">Birthday Combos</a>
                                <a href="#">Personalized Birthday Gifts</a>
                                <a href="#">Birthday Chocolates</a>
                                <a href="#">Birthday Plants</a>
                            </div>
                            <div class="column">
                                <h4><b>By Recipient</b></h4>
                                <a href="Wife.jsp">Wife</a>
                                <a href="Husband.jsp">Husband</a>
                                <a href="Kids.jsp">Kids</a>
                                <a href="Her.jsp">Her</a>
                                <a href="Him.jsp">Him</a>
                            </div>
                            <div class="column">
                                <a href="#">
                                    <img src="https://assets.winni.in/groot/2023/11/20/birthday/birthday-new-arrival.jpg" id="image">
                                </a>
                            </div>
                            <div class="column">
                                <a href="#">
                                    <img src="https://assets.winni.in/groot/2023/11/20/birthday/all-birthday-cakes.jpg" id="image">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="dropdown">
                    <button class="btn">ANNIVERSARY</button>
                </div>
                <div class="dropdown">
                    <button class="btn">OCCASIONS</button>
                </div>
            </div>
        </nav>
        <div class="path">
            <a href="Sample.jsp"><font color=" #918d8d">Home</font></a> > <a href="Wife.jsp"><font color="#918d8d">Birthday Gifts for Wife</font></a> > <a href="WifeProd1.jsp"><font color="black">Chocolate Truffle Cake</font></a>
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
                    <h3>₹ 749</h3>
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
                            <img src="	https://assets.winni.in/product/primary/2024/1/93320.jpeg?dpr=1&w=600" class="thumbnail" alt="Thumbnail 3">
                        </div>
                    </div>

                    <div class="cable-config">
                        <span>Weight</span>
                        <div class="cable-choose">
                            <button>500 gms</button>
                            <button>1 KG</button>
                            <button>1.5 KG</button>
                            <button>2 KG</button>
                            <button>3 KG</button>
                            <button>4 KG</button>
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