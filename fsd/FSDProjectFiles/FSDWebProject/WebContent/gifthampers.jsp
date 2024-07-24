<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gift Hampers - Birthday Website</title>
    <style>
        body {
            font-family: sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f5f5f5;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 10px 0;
            text-align: center;
        }

        h1 {
            margin: 0;
        }

        main {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px;
        }

        .product {
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 15px;
            text-align: center;
            width: 300px;
        }

        .product img {
            width: 100%;
            border-radius: 5px;
            cursor: pointer;
        }

        .product .price {
            font-size: 20px;
            font-weight: bold;
            margin-top: 10px;
        }

        .product .description {
            margin-top: 10px;
        }

        .product .button {
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
        }

        .modal {
            display: none;
            position: fixed;
            z-index: 1;
            padding-top: 100px;
            left: 0;
            top: 0;
            width: 100%;
            height: 100%;
            overflow: auto;
            background-color: rgba(0,0,0,0.9);
        }

        .modal-content {
            margin: auto;
            display: block;
            width: 80%;
            max-width: 700px;
            transition: transform 0.2s ease-in-out;
            transform-origin: center center;
        }
         .dropdown {
             position: relative;
             display: inline-block;
             z-index: 9999;
         }
          
        
        .Bday-dropdown {
            position: relative;
            display: inline-block;
        }
        .Bday-dropdown .birthday-content {
            display: none;
            width: 1100px;
            left: -740px;
            z-index: 9999;
        }
        .Bday-dropdown .row {
            display: flex;
            justify-content: space-between;
            z-index: 9999;
        }
        .Bday-dropdown .column {
            flex: 1;
            padding: 20px;
            size: 200px;
            z-index: 9999;
        }
        .birthday-content {
            display: none;
            position: absolute;
            background-color: white;
            min-width: 150px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 9999;
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
            z-index: 9999;
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
        .btn:hover {
            color: hotpink;
            border-bottom: solid hotpink;
        }
        .dropdown-content h4 {
            margin: 0;
            padding: 10px 20px;
            background-color: #f9f9f9;
            border-bottom: 1px solid #ddd;
            padding-top: 5px;
        }
        
        .Bday-dropdown:hover .birthday-content {
            display: block;
            color: black;
            border-bottom: solid hotpink;
            z-index: 9999;
        }
        

        .close {
            position: absolute;
            top: 15px;
            right: 35px;
            color: #fff;
            font-size: 40px;
            font-weight: bold;
            transition: 0.3s;
            cursor: pointer;
        }

        .close:hover,
        .close:focus {
            color: #bbb;
            text-decoration: none;
        }

        .modal-controls {
            position: absolute;
            top: 10px;
            right: 10px;
            z-index: 2;
        }

        .modal-controls button {
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 50%;
            width: 30px;
            height: 30px;
            font-size: 20px;
            cursor: pointer;
            margin-left: 5px;
        }

        @media only screen and (max-width: 700px){
            .modal-content {
                width: 100%;
            }
        }
    </style>
</head>
<body>
   <header>
        <div class="icons">
            <img src="https://tse4.mm.bing.net/th?id=OIP.omjwFXTTBR5bKqMR-sFXmQAAAA&pid=Api&P=0&h=180" align="left" width="200px" height="100px">
        </div>
        <div class="headerdetails" align="right">
            <a href="#"><font id="details">Help |</font></a>
            <a href="#"><font id="details">Currency |</font></a>
            <a href="#"><font id="details">Corporate Gifts |</font></a>
            <a href="#"><font id="details">Partner With Us |</font></a>
            <a href="#"><font id="details">Track Order</font></a>
        </div>
        <br>
        <div class="headercontent" align="center">
            <input type="text" id="searchbar" placeholder="Search">
        </div>
        <div class="left" align="right">
            <img class="profileImage" src="https://assets.winni.in/groot/2023/11/20/user-icon-grey.png" style="margin-top: 15px;width: 23px;" onmouseover="hoverImage(this)" onmouseout="unhoverImage(this)">
            <a class="adbHeaderLink pr-0" href="#" style="padding-left: 0;margin-top: 5px">
            </a>
        </div>
    </header>
</body>
</html>

        
        <nav class="navbar">
            <div class="headingcontent">

                <div class="dropdown">
                    <button class="btn"><font color="Pink"><b>EXPRESS</b></font></button>
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
                                <a href="Accessories.jsp">Birthday Accessories</a>
                                <a href="gifthampers.jsp">Gift Hampers</a>
                                <a href="#">Balloon Decoration</a>
                                <a href="#">Gift Cards</a>
                                <a href="#">Birthday New Arrival</a>
                            </div>
                            <div class="column">
                                <h4><b>Gift by Collection</b></h4>
                                 <a href="cakes.jsp">Birthday Cakes</a>
                                <a href="first.jsp">Birthday Flowers</a>
                                <a href="#">Birthday Combos</a>
                                <a href="#">Personalized Birthday Gifts</a>
                                <a href="#">Birthday Chocolates</a>
                                 <a href="plants.jsp">Birthday Plants</a>
                            </div>
                            <div class="column">
                                <h4><b>By Recipient</b></h4>
                                <a href="#">Wife</a>
                                <a href="#">Husband</a>
                                <a href="#">Kids</a>
                                <a href="herjsp.jsp">Her</a>
                                <a href="him.jsp">Him</a>
                            </div>
                            <div class="column">
                                <a href="#">
                                    <img style="display: block;-webkit-user-select: none;margin: auto;background-color: hsl(0, 0%, 90%);transition: background-color 300ms;" src="https://assets.winni.in/groot/2023/11/20/birthday/birthday-new-arrival.jpg" id="image">
                                </a>
                            </div>
                            <div class="column">
                                <a href="#">
                                    <img style="display: block;-webkit-user-select: none;margin: auto;background-color: hsl(0, 0%, 90%);transition: background-color 300ms;" src="https://assets.winni.in/groot/2023/11/20/birthday/all-birthday-cakes.jpg" id="image">
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
                <header>
        <h1>Gift Hampers</h1>
    </header>
    <main>
        <div class="product">
            <img src="https://assets.winni.in/product/primary/2023/8/88093.jpeg?dpr=1&w=400" alt="yardley-black-and-gold-kit-for-men" onclick="openModal(this)">
            <p class="description">Yardley Black And Gold Kit</p>
            <p class="price">₹2,599</p>
            <button class="button" onclick="addToCart('Yardley Black And Gold Kit', 2599,'C:\\Users\\jhari\\Downloads\\yardley-black-and-gold-kit-for-men.jpeg')">Add to Cart</button>
        </div>
        <div class="product">
            <img src="https://assets.winni.in/product/primary/2022/9/75054.jpeg?dpr=1&w=400" alt="yardley-london-english-lavender-hamper-for-women" onclick="openModal(this)">
            <p class="description">Yardley London English La...</p>
            <p class="price">₹1,749</p>
            <button class="button" onclick="addToCart('Yardley London English La...', 1749, 'C:\\Users\\jhari\\Downloads\\yardley-london-english-lavender-hamper-for-women.jpeg')">Add to Cart</button>
        </div>
        <div class="product">
            <img src="https://assets.winni.in/product/primary/2024/5/95448.jpeg?dpr=1&w=400" alt="inpersonalized-blossom-female" onclick="openModal(this)">
            <p class="description">Imported Treat Surprise H...</p>
            <p class="price">₹5,099</p>
            <button class="button" onclick="addToCart('Imported Treat Surprise H...', 5099, 'C:\\Users\\jhari\\Downloads\\inpersonalized-blossom-female.jpeg')">Add to Cart</button>
        </div>
        <div class="product">
            <img src="https://assets.winni.in/product/primary/2024/2/94044.jpeg?dpr=1&w=400" alt="divine-chocolates-gift-basket" onclick="openModal(this)">
            <p class="description">Chocolate Lovers Treasure</p>
            <p class="price">₹5,349</p>
            <button class="button" onclick="addToCart('Chocolate Lovers Treasure', 5349, 'C:\\Users\\jhari\\Downloads\\indivine-chocolates-gift-basket.jpeg')">Add to Cart</button>
        </div>
        <div class="product">
            <img src="https://assets.winni.in/product/primary/2023/2/82794.jpeg?dpr=1&w=400" alt="beauty forever" onclick="openModal(this)">
            <p class="description">Basket full of 5 Biotique Products </p>
            <p class="price">₹1,999</p>
            <button class="button" onclick="addToCart('Basket full of 5 Biotique Products', 1999, 'C:\\Users\\jhari\\Downloads\\beauty forever.jpeg')">Add to Cart</button>
        </div>
        <div class="product">
            <img src="https://assets.winni.in/product/primary/2024/5/95469.jpeg?dpr=1&w=400" alt="park-avenue-luxury-hamper" onclick="openModal(this)">
            <p class="description">Park Avenue Luxury Hamper </p>
            <p class="price">₹2,549</p>
            <button class="button" onclick="addToCart('Park Avenue Luxury Hamper', 2549,'C:\\Users\\jhari\\Downloads\\park-avenue-luxury-hamper.jpeg')">Add to Cart</button>
        </div>
    </main>

    <!-- The Modal -->
    <div id="myModal" class="modal">
        <span class="close" onclick="closeModal()">&times;</span>
        <div class="modal-controls">
            <button onclick="zoomImage('+')">+</button>
            <button onclick="zoomImage('-')">-</button>
        </div>
        <img class="modal-content" id="img01">
    </div>

    <script>
        let cart = JSON.parse(localStorage.getItem('cart1')) || [];
        let zoomLevel = 1;
        let currentImage;

        function addToCart(productName, price, imageUrl) {
            cart.push({ name: productName, price: price, image: imageUrl });
            localStorage.setItem('cart1', JSON.stringify(cart));
            window.location.href = 'cart1.jsp';
        }

        function openModal(imgElement) {
            const modal = document.getElementById("myModal");
            const modalImg = document.getElementById("img01");
            modal.style.display = "block";
            modalImg.src = imgElement.src;
            modalImg.alt = imgElement.alt;
            currentImage = imgElement;
            zoomLevel = 1;
            updateZoom();
        }

        function zoomImage(type) {
            if (type === '+') {
                zoomLevel += 0.1;
            } else if (type === '-') {
                zoomLevel -= 0.1;
                if (zoomLevel < 0.1) zoomLevel = 0.1;
            }
            updateZoom();
        }

        function updateZoom() {
            const modalImg = document.getElementById("img01");
            modalImg.style.transform = scale(${zoomLevel});
        }

        function closeModal() {
            const modal = document.getElementById("myModal");
            modal.style.display = "none";
            zoomLevel = 1;
            updateZoom();
        }

        window.onclick = function(event) {
            const modal = document.getElementById("myModal");
            if (event.target == modal) {
                closeModal();
            }
        };
    </script>
</body>
</html>