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
            text-align: center; 
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
        /*.image-container img {
            width: 550px; 
            height: 550px;
            margin-left: -230px;
            margin-top: -550px;
            opacity: 1;
        }*/

        .thumbnail-images {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: -3px;
            width: 100%;
            margin-left: -35px;
        }

        .thumbnail {
            width: 100px; 
            height: auto; 
            margin: 0 5px;
            cursor: pointer; 
            border: 2px solid transparent; 
        }

        .thumbnail:hover {
            border-color: red; 
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
                <img id="mainImage" src="https://assets.winni.in/product/primary/2023/5/85067.jpeg?dpr=1&w=500" alt="The Royal Jaipur Yummy Mithai Box">
            </div>
            <h2>The Royal Jaipur Yummy Mithai Box</h2>
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
        <div class="product-title">The Royal Jaipur Yummy Mithai Box</div>
        <div class="rating">Rating: 4.5 &#x2605; (4 Reviews)</div>
        <div class="price">Rs. 2049</div>
    
        <div class="check-delivery">
            <input type="text" id="pincode" placeholder="Enter pincode to check delivery">
            <button id="checkPincode">Check</button>
        </div>
        <div class="add-to-cart">
            <button id="addToCart">Add to Cart</button>
        </div>
        <div class="product-images">
            <span>Images</span>
            <div class="thumbnails">
                <div class="thumbnails">
                    <div class="thumbnail-images">
                        <img src="https://assets.winni.in/product/primary/2023/5/85067.jpeg?dpr=1&w=500 " class="thumbnail" alt="Thumbnail 1">
                        <img src="https://assets.winni.in/product/primary/2023/5/85068.jpeg?dpr=1&w=500" class="thumbnail" alt="Thumbnail 2">
                        <img src="https://assets.winni.in/product/primary/2023/5/85071.jpeg?dpr=1&w=500" class="thumbnail" alt="Thumbnail 3">
                    </div>
                </div>
            </div>
        </div>
        <div class="offers">
            <p>Available offers</p>
            <p>Get upto &#8377;750 Cashback on paying via Mobikwik</p>
            <p>Use Coupon Code: TRYW1NN1 to get 20% off</p>
            <p>Use Coupon Code: WIN50 to get &#8377;50 off</p>
        </div>
        <div class="product-description">
            <h3>Product Description</h3>
            <p>Rose Katli</p>
            <p>Anjeer Dryfruit Laddoo</p>
            <p>Finger Baklava</p>
            <p>Balushahi  </p>
            <p>Includes: Birthday wishe note </p>
            <p>Weight: 750 gm </p>
        </div>
        
    </div>
</div>

<script>
    document.addEventListener('DOMContentLoaded', function() {
    const thumbnails = document.querySelectorAll('.thumbnail');
    const mainImage = document.getElementById('mainImage');
    const weightButtons = document.querySelectorAll('.weight-options button');
    const egglessCheckbox = document.getElementById('eggless');
    const pincodeInput = document.getElementById('pincode');
    const checkPincodeButton = document.getElementById('checkPincode');
    const addToCartButton = document.getElementById('addToCart');

    // Function to update price based on selected weight and eggless option
    function updatePrice() {
        const selectedButton = document.querySelector('.weight-options button.selected');
        const price = selectedButton.getAttribute('data-price');
        const weight = selectedButton.getAttribute('data-weight');
        const isEggless = egglessCheckbox.checked;

        // Adjust price based on weight and eggless option
        if (weight === "1" && isEggless) {
            // 1 kg and eggless
            return 1149; // Example price for 1kg eggless
        } else if (weight === "2") {
            // 2 kg
            return 2049; // Example price for 2kg
        } else {
            // Default price from button attribute
            return price;
        }
    }

    // Event listener for thumbnail images
    thumbnails.forEach(thumbnail => {
        thumbnail.addEventListener('click', function() {
            const imageUrl = this.src;
            mainImage.src = imageUrl;
        });
    });

    // Event listener for weight buttons
    weightButtons.forEach(button => {
        button.addEventListener('click', function() {
            weightButtons.forEach(btn => btn.classList.remove('selected'));
            this.classList.add('selected');
            const price = updatePrice();
            document.querySelector('.price').textContent = &#8377; ${price};
        });
    });

    // Event listener for eggless checkbox
    egglessCheckbox.addEventListener('change', function() {
        const price = updatePrice();
        document.querySelector('.price').textContent = &#8377; ${price};
    });

    // Event listener for pincode check button
    checkPincodeButton.addEventListener('click', function() {
        const pincode = pincodeInput.value.trim();
        if (pincode.length === 6 && !isNaN(pincode)) {
            alert(Delivery available to pincode: ${pincode});
        } else {
            alert('Please enter a valid 6-digit pincode.');
        }
    });

    // Event listener for add to cart button
    addToCartButton.addEventListener('click', function() {
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

</body>
</html>