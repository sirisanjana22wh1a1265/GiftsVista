<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Lyrics Photo Frame</title>
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
            width: 300px;
            height: 379px;
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
            max-width: 400px;
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
        .upload-photo button {
            padding: 10px 20px;
            border: none;
            cursor: pointer;
            background-color: lightgray;
        }
        .note {
            font-style: italic;
            color: #777;
        }
        #uploadedImage {
            display: none;
            margin-top: 10px;
            max-width: 100px;
            max-height: 100px;
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
                <img id="productImage" src="https://assets.winni.in/product/primary/2014/10/53130.jpeg?dpr=1&w=500" alt="Golden Beads Personalized Photo Ear Rings">
            </div>
            <h2>Lyrics Photo Frame</h2>
           
        </div>
    </div>
    <div class="product-details">
        <div class="product-title">Lyrics Photo Frame</div>
        <div class="rating">Rating: 4.2 &#x2605; (13 Reviews)</div>
        <div class="price">&#8377; 1149 <span class="original-price"></span> <span class="discount">26% off</span></div>
        <div class="upload-photo">
            <button onclick="document.getElementById('fileInput').click()">Upload Photo</button>
            <input type="file" id="fileInput" accept="image/*" style="display: none;" onchange="previewImage(event)">
            <img id="uploadedImage" src="" alt="Uploaded Image">
        </div>

        <div class="Select-Song">
            <input type="text" id="song" placeholder="Song link on product">

        </div>
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
            <div class="product-details">
                <p><strong>Frame Material:</strong> Wood Frame</p>
                <p><strong>Color:</strong> Multicolour</p>
                <p><strong>Size:</strong> 6 x 9 inches</p>
                <p><strong>Primary Material:</strong> Fiber and Wooden</p>
                <p><strong>Glass Material:</strong> Acrylic Glass</p>
                <p><strong>Provide:</strong> The Song Spotify Link and One Image For Personalization</p>
                <p><strong>Email for Pictures:</strong> info@winni.in</p>
            </div>
        </div>
   
</div>
        </div>
       
        <div class="cart-items" id="cartItems"></div>
    </div>
</div>

<script>
    function previewImage(event) {
        const reader = new FileReader();
        reader.onload = function () {
            const output = document.getElementById('uploadedImage');
            output.src = reader.result;
            output.style.display = 'block';
        };
        reader.readAsDataURL(event.target.files[0]);
    }

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
            const uploadedImage = document.getElementById('uploadedImage').src;

            if (!uploadedImage) {
                alert('Please upload an image before adding to cart.');
                return;
            }

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