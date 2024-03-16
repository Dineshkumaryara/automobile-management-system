<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<style>
	/* Global styles */
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
}

/* Login page specific styles */
.login-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-image: url('images/car4.gif');
    background-size: cover;
    background-position: center;
}

.login-box {
    text-align: center;
    background-color: rgba(255, 255, 255, 0.9);
    padding: 2rem;
    border-radius: 10px;
    box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.3);
    max-width: 400px;
}

.logo img {
    max-width: 150px;
    margin-bottom: 0rem;
}

.login-box h2 {
    color: #333;
    margin-bottom: 2rem;
}

.login-box form input {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
}

.login-box form button {
    background-color: #ff9900;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.login-box form button:hover {
    background-color: #e58300;
}

.login-box p {
    color: #666;
    margin-top: 1rem;
}

.login-box a {
    color: #ff9900;
    text-decoration: none;
}

.login-box a:hover {
    text-decoration: underline;
}

</style>
<body>
<div class="login-container">
        <div class="login-box">
            <div class="logo">
                <img src="images/flogo.png" alt="Logo">
            </div>
            <h2>Welcome Back!</h2>
            <form method="post" action="checkuserlogin">
                <input type="text" name="username" placeholder="Username" required/>
                <input type="password" name="password" placeholder="Password" required/>
                <button type="submit">Login</button>
            </form>
            <p>Don't have an account? <a href="signup">Sign Up</a></p>
        </div>
    </div>
    
</body>
</html>