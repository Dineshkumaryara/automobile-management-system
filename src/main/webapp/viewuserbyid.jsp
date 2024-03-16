<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c1" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View by ID</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            text-align: center;
        }
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
    color: #fff;
}

.logo span {
    color: #333;
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
.nav-links {
    list-style-type: none;
    display: flex;
}

.nav-links li {
    margin: 0 70rem;
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

        h1 {
            color: #333;
        }

        p {
            font-size: 18px;
            color: #333;
        }

        .user-info {
            margin: 20px;
            padding: 20px;
            background-color: #ff9900;
            border: 4px solid #333;
            border-radius: 5px;
            display: inline-block;
        }
    </style>
</head>
<body>
<header>
        <nav class="navbar">
            <div class="logo">
				<img src="images/flogo.png" alt="Logo">
                <h1>Auto<span>Fleet</span></h1>
                 <ul class="nav-links">
                <li><a href="adminlogin">Logout</a></li>
                
            </ul>
            </div>
        </nav>
    </header>
<h1>View User Information</h1>
    <div class="user-info">
        <p>ID: ${us.id}</p>
        <p>First Name: ${us.firstname}</p>
        <p>Last Name: ${us.lastname}</p>
        <p>Name: ${us.username}</p>
        <p>Email: ${us.email}</p>
        <p>Phone Number: ${us.phonenumber}</p>
        <p>Date of Birth: ${us.dob}</p>
        <p>Location: ${us.location}</p>
        <p>Company Name: ${us.companyname}</p>
        <p>Password: ${us.password}</p>
    </div>
    <div style="text-align: center; margin-top: 20px;">
        <a href="viewallusers">Back to Previous Page</a>
    </div>
</body>
</html>