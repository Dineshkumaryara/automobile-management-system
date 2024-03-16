<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>User home</title>

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
    padding: 7px;
    color: #ff9900;
    text-decoration: none;
    transition: transform 0.3s;
}
.nav-links li {
    margin: 0 1rem; /* This is the original margin */
}

.nav-links li.dropdown {
    margin: 0 1rem; /* Adjust this margin value to move it slightly to the left */
}
/* If you want to move "Home" to the right, add this style */
.nav-links li:first-child {
    margin-left: auto;
}
/* Triangle shapes on hover */
/* .nav-links a::before {
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
}*/
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
    justify-content: space-between; /* Add this line */
    width: 100%; /* Add this line to take full width */
}

.nav-links li {
    margin: 0 1rem;
    margin-top: 40px;
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
/* Style for dropdown */
.dropdown {
    position: relative;
    display: inline-block;
    
}
.dropdown a{
   margin-top: 40px;
}
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #fff;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: #333;
    padding: 8px 10px;
    text-decoration: none;
    display: block;
    margin-top: 10px;
}

.dropdown-content a:hover {
    background-color: #f9f9f9;
}

/* Show the dropdown when hovering over the dropdown link */
.dropdown:hover .dropdown-content {
    display: block;
}
/* Add your custom styles here */

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
}

header {
    background-color: #333;
    color: #fff;
    padding: 20px;
    text-align: center;
    border-radius: 5px 5px 0 0;
}

h1 {
    font-size: 24px;
    margin: 0;
}

section {
    margin-top: 20px;
}

/* Style for task cards */
.task-card, .service-card, .offer-card, .maintenance-tip {
    background-color: #fff;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    border-radius: 5px;
    padding: 15px;
    margin-bottom: 10px;
}

.task-card h3, .service-card h3, .offer-card h3, .maintenance-tip h3 {
    color: #333;
    font-size: 18px;
    margin: 0;
}

.task-card p, .service-card p, .offer-card p, .maintenance-tip p {
    color: #777;
}

/* Add more specific styles for each card type if needed */
.user-info {
    display: flex;
    align-items: center; /* Vertically center align the elements */
}

.circular-image {
    width: 70px; /* Adjust the size as needed */
    height: 70px; /* Adjust the size as needed */
    border-radius: 50%;
    overflow: hidden;
    margin-right: 10px; /* Add some spacing between the image and username */

}

.circular-image img {
    width: 100%;
    height: 100%;
    object-fit: cover;
}


</style>
<script>
    // Get the user dropdown element
    var userDropdown = document.getElementById("user-dropdown");

    // Add a click event listener to toggle the dropdown
    userDropdown.addEventListener("click", function() {
        var dropdownContent = userDropdown.nextElementSibling;
        if (dropdownContent.style.display === "block") {
            dropdownContent.style.display = "none";
        } else {
            dropdownContent.style.display = "block";
        }
    });
</script>
</head>
<body>

       <nav class="navbar">
           <div class="logo">
				<img src="images/flogo.png" alt="Logo">
                <h1>Auto<span>Fleet</span></h1>
            </div>
            <ul class="nav-links">
                <li><a href="/">Home</a></li>
        		<li><a href="viewvehicles">Your Vehicles</a></li>
        		<li><a href="services.jsp">Services</a></li>
        		
        		
        		<li class="dropdown">
            		<a id="user-dropdown">Your Bookings<i class="fa fa-caret-down"></i></a>
            		<div class="dropdown-content">
                		<a href="viewbooking">Checkup Vehicles</a>
               			<a href="viewrepair">Repair Booking</a>
                		<a href="#">Carwash</a>
            		</div>
        		</li>
        		
        		
            	<li><a href="products">Our Products</a></li>
            	<li class="dropdown">
            		<a id="user-dropdown"><c:out value="${eusername}" /> <i class="fa fa-caret-down"></i></a>
            		<div class="dropdown-content">
                		<a href="updateprofile">Update Profile</a>
               			<a href="changepas">Change Password</a>
                		<a href="logout">Logout</a>
            		</div>
        		</li>
        		<li>
        			<div class="circular-image">
            			<img src='displayprofilepic?id=${eid}' alt="Profile Picture">
        			</div>
        		</li>
            </ul>
        </nav>
<header>
        <div class="header-content">
            <div class="user-info">
        <h1>Welcome, <c:out value="${eusername}" /></h1>
    </div>
        </div>
    </header>

    <div class="container">
        <section id="section-recent-tasks">
            <h2>Recent Tasks</h2>
            <div class="task-card">
                <h3>Task 1</h3>
                <p>Description of Task 1</p>
            </div>
            <div class="task-card">
                <h3>Task 2</h3>
                <p>Description of Task 2</p>
            </div>
            <!-- Add more task cards as needed -->
        </section>

        <section id="section-services">
            <h2>Our Services</h2>
            <div class="service-card">
                <h3>Service 1</h3>
                <p>Description of Service 1</p>
            </div>
            <div class="service-card">
                <h3>Service 2</h3>
                <p>Description of Service 2</p>
            </div>
            <!-- Add more service cards as needed -->
        </section>

        <section id="section-offers">
            <h2>Special Offers</h2>
            <div class="offer-card">
                <h3>Offer 1</h3>
                <p>Description of Offer 1</p>
            </div>
            <div class="offer-card">
                <h3>Offer 2</h3>
                <p>Description of Offer 2</p>
            </div>
            <!-- Add more offer cards as needed -->
        </section>

        <section id="section-maintenance-tips">
            <h2>Vehicle Maintenance Tips</h2>
            <div class="maintenance-tip">
                <h3>Maintenance Tip 1</h3>
                <p>Tip description 1</p>
            </div>
            <div class="maintenance-tip">
                <h3>Maintenance Tip 2</h3>
                <p>Tip description 2</p>
            </div>
            <!-- Add more maintenance tips as needed -->
        </section>

        <!-- Add more sections and content as needed -->

    </div>
</body>
</html>