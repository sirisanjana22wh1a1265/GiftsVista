<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Indoor Air Purifier Plants For Home With Pots</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        body {
            background: url('https://files.123freevectors.com/wp-content/original/110755-dark-color-blurred-background-vector.jpg') no-repeat center center fixed;
            background-size: cover;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        .container {
            display: flex;
            justify-content: space-around;
            align-items: flex-start;
            flex-wrap: wrap;
            padding: 20px;
        }
        .card {
            margin: 20px;
            background: grey;
            border-radius: 10px;
            color: white;
            overflow: hidden;
        }
        .card {
            position: relative;
            width: 500px;
            height: 500px;
        }
        .border {
            width: 100%;
            height: 100%;
            overflow: hidden;
            perspective: 1000px;
        }
        .image-container {
            width: 100%;
            height: 100%;
            overflow: hidden;
            position: relative;
        }
        .image-container img {
            width: 100%;
            height: 100%;
            object-fit: cover;
            transition: transform 0.5s ease;
            will-change: transform;
        }
        .border:hover img {
            transform: scale(1.2);
        }
        .product-details {
            margin-left: 50px; /* Add some margin to move it to the right */
    		float: right; /* Make it float to the right */
    		width: 700px;
            background: #f9f9f9;
            color: #333;
            padding: 20px;
            border-radius: 10px;
        }
        .product-title {
            font-size: 24px;
            font-weight: bold;
        }
        .rating, .price, .upload-photo, .check-delivery, .add-to-cart, .note {
            margin-top: 10px;
        }
        .check-delivery input[type="text"],
        .check-delivery button {
            margin-top: 10px;
        }
        .check-delivery input[type="text"] {
            width: 70%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .check-delivery button {
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            background-color: pink;
            color: white;
        }
        .add-to-cart button {
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            background-color: #4CAF50;
            color: white;
        }
        
        .note {
            font-style: italic;
            color: #777;
        }
      
        .cart-image {
            max-width: 50px;
            max-height: 50px;
        }
        .cart-items {
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card">
        <div class="border">
            <div class="image-container">
                <img id="productImage" src="https://assets.winni.in/product/primary/2022/6/61488.jpeg?dpr=1&w=500" alt="Indoor Air Purifier Plants For Home With Pots">
            </div>
            <h2>Indoor Air Purifier Plants For Home With Pots</h2>
           
        </div>
    </div>
    <div class="product-details">
        <div class="product-title">Indoor Air Purifier Plants For Home With Pots</div>
        <div class="rating"></div>
        <div class="price">&#8377;1799 <span class="original-price"></span> <span class="discount"></span></div>
        <div class="check-delivery">
            <input type="text" id="pincode" placeholder="Enter pincode to check delivery">
            <button id="checkPincode">Check</button>
        </div>
        <div class="add-to-cart">
            <button id="addToCart">Add to Cart</button>
        </div>
        <div class="offers">
            <p>Available offers</p>
            <p>Get upto &#8377;750 Cashback on paying via Mobikwik</p>
            <p>Use Coupon Code: TRYW1NN1 to get 20% off</p>
            <p>Use Coupon Code: WIN50 to get &#8377;50 off</p>
        </div>
        <p><strong>Common Names:</strong> Jade Plant, Money Plant, Golden Money Plant, Syngonium Plant, Areca Palm</p>
        <p><strong>Type of Plant:</strong> Air Purifying Plant</p>
        <p><strong>Plant Placement:</strong> Indoor</p>
        <p><strong>Type of Planters:</strong> 4 Inch Plastic Pot</p>
        <p><strong>Colors of Planters:</strong> Blue/ Black/ Red/ Yellow</p>
        <p><strong>Maximum Reachable Height:</strong></p>
        <ul>
            <li>Jade Plant: up to 36 inches</li>
            <li>Money Plant: up to 780 inches</li>
            <li>Golden Money Plant: up to 780 inches</li>
            <li>Syngonium Plant: up to 70 inches</li>
            <li>Areca Palm: up to 120 inches</li>
        </ul>
        <p><strong>Difficulty Level to Grow:</strong> Easy to grow</p>
        <p><strong>Light Care Instruction:</strong> Natural indirect / artificial bright light</p>
        <p><strong>Soil Type:</strong> Well drained, well aerated, and porous potting mix</p>
        <p><strong>Watering:</strong> Medium</p>
        <p><strong>Application of Fertilizer:</strong> Organic fertilizer once a month</p>
        <p><strong>Flower:</strong> Rarely bloom</p>
        <p><strong>Repotting:</strong> Re-pot with fresh potting soil and some fertilizer</p>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const pincodeInput = document.getElementById('pincode');
        const checkPincodeButton = document.getElementById('checkPincode');
        const addToCartButton = document.getElementById('addToCart');
        const cartItems = document.getElementById('cartItems');

        // Event listener for pincode check button
        checkPincodeButton.addEventListener('click', function () {
            const pincode = pincodeInput.value.trim();
            if (pincode.length === 6 && !isNaN(pincode)) {
                alert(Delivery available to pincode: ${pincode});
            } else {
                alert(Please enter a valid 6-digit pincode.);
            }
        });

        // Event listener for add to cart button
        addToCartButton.addEventListener('click', function () {
            const productTitle = document.querySelector('.product-title').textContent.trim();
            const productPrice = document.querySelector('.price').textContent.trim();

            const cartItem = document.createElement('div');
            cartItem.innerHTML = `
                <p>Product: ${productTitle}</p>
                <p>Price: ${productPrice}</p>
               
            `;
            cartItems.appendChild(cartItem);

            // Example alert to confirm addition to cart
            alert(`Added to Cart:
                Product: ${productTitle}
                Price: ${productPrice}
               
            `);
        });
    });
</script>

</body>
</html>