<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
/* Set background color and font */

/* Navbar styles */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.navbar {
    background: linear-gradient(to right, #fff, #ff9900 20%, #fff 90%);
    color: #fff;
    position: relative;
}
.nav-links a {
    position: relative;
    display: inline-block;
    padding: 5px;
    color: #ff9900;
    text-decoration: none;
    transition: transform 0.3s;
}

/* Triangle shapes on hover */
.nav-links a::before {
    content: '';
    position: absolute;
    top: 100%;
    left: 50%;
    transform: translateX(-50%);
    width: 0;
    height: 0;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-bottom: 5px solid #333; /* Orange color */
    opacity: 0;
    transition: opacity 0.3s, transform 0.3s;
}

/* Triangle animation on hover */
.nav-links a:hover::before {
    opacity: 1;
    top: calc(100% + 5px);
    transform: translateX(-50%) translateY(-5px);
    transition: opacity 0.3s, transform 0.3s;
}
.logo {
    display: flex;
    align-items: center; /* Center the logo and text vertically */
}

.logo img {
    max-height :100px; /* Adjust the height of the logo as needed */
    margin-right: 20px; /* Add some spacing between the logo and text */
    padding-left: 1.7rem;
}
.logo h1 {
    font-size: 1.5rem;
}

.logo span {
    color: #333;
}

.nav-links {
    list-style-type: none;
    display: flex;
}

.nav-links li {
    margin: 0 1rem;
}

.nav-links a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
    transition: color 0.3s;
}

.nav-links a:hover {
    color: #ff9900;
}
</style>
<body>
<header>
        <nav class="navbar">
            <div class="logo">
				<img src="images/flogo.png" alt="Logo">
                <h1>Auto<span>Fleet</span></h1>
            </div>
            <ul class="nav-links">
                <li><a href="/">Home</a></li>
                
            		
                	<li><a href="userlogin">Login</a></li>
            
                	
          
            </ul>
        </nav>
    </header>
</body>
</html>