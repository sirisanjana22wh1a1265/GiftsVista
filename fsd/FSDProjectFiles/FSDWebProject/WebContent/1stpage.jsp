<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Home Page</title>
  <style>
    body, html {
      margin: 0;
      padding: 0;
      height: 100%;
    }

    .background-image {
      background-image: url('https://images.pexels.com/photos/5485173/pexels-photo-5485173.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'); 
      background-size: cover;
      background-position: center;
      height: 100%;
      display: flex;
      justify-content: center;
      align-items: center;
    }

    .container {
      text-align: center;
    }

    .centered-button {
      padding: 15px 30px;
      font-size: 2.3em;
      background-color: #eeedf3;
      color:goldenrod;
      border: none;
      cursor: pointer;
      border-radius: 5px;
      transition: background-color 0.3s ease;
    }

    .centered-button:hover {
      background-color:lightyellow;
    }
  </style>
</head>
<body>
  <div class="background-image">
    <div class="container">
      <a href="Signup.jsp">
      <button class="centered-button">Gifts Vista</button>
      
    </div>
  </div>
</body>
</html>