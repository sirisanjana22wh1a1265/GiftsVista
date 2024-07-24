<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<style>
    body {
        font-family: Arial, sans-serif;
        background-image: url('https://wallpapercave.com/wp/wp7213365.jpg');
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    .signup-container {
        display: flex;
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        overflow: hidden;
        max-width: 800px;
        width: 100%;
    }
    .signup-image {
        width: 50%;
        background: url('https://assets.winni.in/product/primary/2023/1/81989.jpeg?dpr=1&w=1000') no-repeat center center;
        background-size: cover;
    }
    .signup-form {
        padding: 40px;
        width: 50%;
    }
    .signup-form h2 {
        margin-bottom: 20px;
        color: #333;
    }
    .form-group {
        margin-bottom: 20px;
    }
    .form-control {
        border-radius: 4px;
        padding: 10px;
        font-size: 16px;
    }
    .btn-signup {
        background-color: #ED217C;
        color: white;
        border: none;
        padding: 10px 20px;
        border-radius: 4px;
        font-size: 16px;
        cursor: pointer;
        width: 100%;
    }
    .btn-signup:hover {
        background-color: #d81b67;
    }
    .extra-links {
        text-align: center;
        margin-top: 20px;
    }
    .extra-links a {
        color: #ED217C;
        text-decoration: none;
    }
</style>
</head>
<body>
<div class="signup-container">
    <div class="signup-image"></div>
    <div class="signup-form">
        <h2>Signup</h2>
        <form action="SignupServlet" method="post">
            <div class="form-group">
                <input type="email" name="email" class="form-control" placeholder="Email" required>
            </div>
            <div class="form-group">
                <input type="text" name="username" class="form-control" placeholder="Username" required>
            </div>
            <div class="form-group">
                <input type="password" name="password" class="form-control" placeholder="Password" required>
            </div>
            <div class="form-group">
                <input type="password" name="confirmPassword" class="form-control" placeholder="Confirm Password" required>
            </div>
            <button type="submit" class="btn-signup">Signup</button>
        </form>
        <div class="extra-links">
            <p>By continuing, you agree to our <a href="#">Terms of Use</a> and <a href="#">Privacy Policy</a>.</p>
            <p>Already have an account? <a href="Login.jsp">Login</a></p>
        </div>
         </div>
         <form action="Animation1.jsp" method="post">
            
        </form>
    </div>

</body>
</html>


