
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
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
            
            background: #f9f9f9;
            color: #333;
            padding: 20px;
            border-radius: 10px;
            margin-left: 50px; /* Add some margin to move it to the right */
    		float: right; /* Make it float to the right */
    		width: 700px;
        }
        .product-title {
            font-size: 24px;
            font-weight: bold;
        }
        .rating, .price, .weight-options, .eggless-option, .message-on-cake, .check-delivery, .add-to-cart, .offers, .product-description, .note {
            margin-top: 10px;
        }
        .weight-options button,
        .check-delivery button,
        .message-on-cake button,
        .add-to-cart button {
            padding: 10px;
            border: none;
            cursor: pointer;
        }
        .weight-options button.selected,
        .add-to-cart button {
            background-color: green;
            color: white;
        }
        .weight-options button {
            background-color: #ddd;
        }
        .check-delivery input[type="text"],
        .message-on-cake input[type="text"],
        .check-delivery button,
        .message-on-cake button,
        .add-to-cart button {
            margin-top: 10px;
        }
        .check-delivery input[type="text"],
        .message-on-cake input[type="text"] {
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
        .offers {
            margin-top: 20px;
        }
        .offers p {
            margin-bottom: 10px;
        }
        .product-description {
            margin-top: 20px;
        }
        .product-description h3 {
            margin-top: 0;
        }
        .product-description p {
            margin-bottom: 5px;
        }
        .note {
            font-style: italic;
            color: #777;
        }
        .icons {
            margin-top: 10px;
        }
        .icons i {
            margin: 0 5px;
            font-size: 20px;
            transition: color 0.3s;
        }
        .icons i:hover {
            color: #ff4081;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="card">
        <div class="border">
            <div class="image-container">
                <img src="https://assets.winni.in/product/primary/2024/1/93319.jpeg?dpr=1&w=500" alt="Wife Special Chocolate Truffle Cake">
            </div>
            <h2>Wife Special Chocolate Truffle Cake</h2>
            <div class="icons">
                <i class="fa fa-codepen" aria-hidden="true"></i>
                <i class="fa fa-instagram" aria-hidden="true"></i>
                <i class="fa fa-dribbble" aria-hidden="true"></i>
                <i class="fa fa-twitter" aria-hidden="true"></i>
                <i class="fa fa-facebook" aria-hidden="true"></i>
            </div>
        </div>
    </div>
    <div class="product-details">
        <div class="product-title">Wife Special Chocolate Truffle Cake</div>
        <div class="rating">Rating: 4.5 &#x2605; (4 Reviews)</div>
        <div class="price">Rs. 749</div>
        <div class="weight-options">
            <button class="selected" data-price="749" data-weight="500">500 gm</button>
            <button data-price="1049" data-weight="1">1 kg</button>
            <button data-price="1549" data-weight="1.5">1.5 kg</button>
            <button data-price="2049" data-weight="2">2 kg</button>
            <button data-price="3049" data-weight="3">3 kg</button>
            <button data-price="4049" data-weight="4">4 kg</button>
        </div>
        <div class="eggless-option">
            <input type="checkbox" id="eggless">
            <label for="eggless">Eggless</label>
        </div>
        <div class="message-on-cake">
            <input type="text" placeholder="Message on cake">
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
            <p>Get upto &#x20B9;750 Cashback on paying via Mobikwik</p>
            <p>Use Coupon Code: TRYW1NN1 to get 20% off</p>
            <p>Use Coupon Code: WIN50 to get â‚¹50 off</p>
        </div>
        <div class="product-description">
            <h3>Product Description</h3>
            <p>Cake Flavour: Chocolate Truffle</p>
            <p>Shape: Round</p>
            <p>Type of Cake: Cream</p>
            <p>Type of Sponge: Chocolate</p>
        </div>
        <div class="note">NOTE: Design and icing of cake may vary from the image shown here since each chef has his/her own way of baking and designing a cake.</div>
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const weightButtons = document.querySelectorAll('.weight-options button');
        const egglessCheckbox = document.getElementById('eggless');
        const pincodeInput = document.getElementById('pincode');
        const checkPincodeButton = document.getElementById('checkPincode');
        const addToCartButton = document.getElementById('addToCart');
        
        // Function to update price based on selected weight and eggless option
        function updatePrice() {
            const selectedButton = document.querySelector('.weight-options button.selected');
            let price = parseFloat(selectedButton.getAttribute('data-price'));
            const isEggless = egglessCheckbox.checked;
            
            // Adjust price based on eggless option
            if (isEggless) {
                price += 100; // Example price increment for eggless option
            }
            
            return price;
        }
        
        // Event listener for weight buttons
        weightButtons.forEach(button => {
            button.addEventListener('click', function () {
                weightButtons.forEach(btn => btn.classList.remove('selected'));
                this.classList.add('selected');
                const price = updatePrice();
                document.querySelector('.price').textContent = `Rs. `;
            });
        });
        
        // Event listener for eggless checkbox
        egglessCheckbox.addEventListener('change', function () {
            const price = updatePrice();
            document.querySelector('.price').textContent = `Rs. `;
        });
        
        // Event listener for pincode check button
        checkPincodeButton.addEventListener('click', function () {
            const pincode = pincodeInput.value.trim();
            if (pincode.length === 6 && !isNaN(pincode)) {
                alert(`Delivery available to pincode: `);
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
                Weight: 
                Price: 
                Eggless: No
                Message on Cake: 
            `);
            
            // Example alert to confirm addition to cart
            alert(`Added to Cart:
                Cake: Wife Special Chocolate Truffle Cake
                Weight: 
                Price: 
                Eggless: No
                Message on Cake: 
            `);
        });
    });
</script>

</body>
</html>
