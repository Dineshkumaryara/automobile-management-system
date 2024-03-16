<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
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
        .admin-dashboard {
            margin: 20px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .admin-dashboard h1 {
            font-size: 24px;
            color: #333;
        }

        .admin-dashboard p {
            font-size: 16px;
            color: #666;
        }

        .admin-features {
            margin-top: 20px;
        }

        .admin-features h2 {
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
        }

        .admin-features ul {
            list-style-type: none;
            padding: 0;
        }

        .admin-features li {
            margin-bottom: 5px;
        }

        .admin-features a {
            text-decoration: none;
            color: #0077cc;
        }

        .admin-features a:hover {
            text-decoration: underline;
        }
    </style>
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
    <div class="admin-dashboard">
        <h1>Services</h1>
        
        <div class="admin-features">
             <ul>
                <li><a href="adminhome">Home</a></li>
  				<li><a href="viewallvehiclemanagement">Vehicles For Check Up</a></li>
  				<li><a href="viewallrepairs">Vehicles For Repair</a></li>
  				<li><a href="#">Vehicles For Wash</a></li>
  				<!-- <li><a href="adminhome">Back</a></li> -->
                <!-- Add more links to other admin features or tools -->
            </ul>
        </div>
    </div>
</body>
</html>