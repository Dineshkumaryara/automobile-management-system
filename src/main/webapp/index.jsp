<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Automobile Management System</title>
    <link rel="stylesheet" type="text/css" href="/index.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <!--Start of Tawk.to Script-->
<script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/6491355094cf5d49dc5eb953/1h3bjggr7';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script>
<!--End of Tawk.to Script-->
</head>
<style>
/* Reset default margin and padding */
body, h1, h2, p, ul, li {
    margin: 0;
    padding: 0;
}

/* Set background color and font */
body {
    background-color: #f0f0f0;
    font-family: Arial, sans-serif;
}

/* Header styles */
header {
    background-color: #333;
    color: #fff;
}

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
/* Main content styles */
main {
    padding: 0rem;
}

.hero {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 0;
    position: relative;
    overflow: hidden;
    background-color: #f0f0f0;
}

.hero-content {
    flex: 1;
    padding-left: 0rem;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-image: url('images/car3.gif');
    background-size: cover;
    background-position: center;
}

.hero-content h2,
.hero-content p {
    position: absolute;
    text-align: center;
    color: #f0f0f0;
    font-family: "Helvetica Neue", sans-serif;
}

.hero-content h2 {
    font-size: 3rem;
    top: 50%; /* Vertically center the heading */
    transform: translateY(-50%); /* Adjust for vertical alignment */
    margin: -12rem; /* Reset the margin */
    padding-right: 55rem;
}

.hero-content p {
    font-size: 1.3rem;
    top: 50%; /* Vertically center the paragraph */
    transform: translateY(50%); /* Adjust for vertical alignment */
    margin: -11rem; /* Reset the margin */
    padding-right: 57.6rem;
}

.hero-content span {
    color: #b6b6b6;
}
.key-features{
    background: linear-gradient(to right, #fff, #ffba4f 50%, #fff 90%);
}
.features {
    margin-bottom: 2rem;
}

.features h3 {
    font-size: 1.5rem;
    margin-bottom: 1rem;
}
/* Additional styles for the features section */
.features {
    margin-bottom: 2rem;
    text-align: center;
}

.features h3 {
    font-size: 1.5rem;
    margin-bottom: 1rem;
    color: #333;
}

.features ul {
    list-style: none;
    padding-left: 0;
}

.features li {
    margin-bottom: 0.5rem;
    color: #666;
}

/* Additional styles for the services section */
.services {
    background: linear-gradient(to right, #fff, #ffba4f 50%, #fff 90%);
    display: flex;
    flex-direction: column;
    align-items: center;
    margin-bottom: 0rem;
    text-align: center;
}

.service {
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-bottom: 2rem;
    max-width: 1000px;
    padding: 1.5rem;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.service img {
    max-width: 45%;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.service-content {
    max-width: 45%;
    text-align: left;
}
html {
    scroll-behavior: smooth; /* Enable smooth scrolling behavior */
}

.key-features {
    background-color: #f7f7f7;
    padding: 3rem 0;
}

.key-features h3 {
    font-size: 1.5rem;
    margin-bottom: 1.5rem;
    color: #333;
    text-align: center;
}

.feature-list {
    display: flex;
    justify-content: center;
    flex-wrap: wrap;
    max-width: 1200px;
    margin: 0 auto;
}

.feature {
    background-color: #f0f0f0;
    border: 1px solid #ddd;
    border-radius: 5px;
    padding: 1.5rem;
    margin: 1rem;
    flex-basis: calc(33.33% - 2rem);
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: transform 0.3s, color 0.3s, background-color 0.3s, box-shadow 0.3s;
}

.feature:hover {
    transform: translateY(-5px);
    color: #f0f0f0; /* Text color change */
    background-color: #ff9900; /* Background color change */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Box shadow change */
}

.feature h4 {
    font-size: 1.2rem;
    margin-bottom: 1rem;
    color: #444;
}

.feature p {
    color: #333;
}
/* Additional styles for the CTA section */
.cta {
    background: linear-gradient(to right, #fff, #ffba4f 50%, #fff 90%);
    text-align: center;
    padding: 3rem 0;
}

.cta h3 {
    font-size: 1.5rem;
    margin-bottom: 1rem;
    color: #333;
}

.cta p {
    margin-bottom: 1.5rem;
    color: #666;
}

.cta .btn {
    display: inline-block;
    padding: 0.8rem 1.5rem;
    background-color: #ff9900;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    font-weight: bold;
    transition: background-color 0.3s;
}

.cta .btn:hover {
    background-color: #e58300;
}

/* Footer styles */
footer {
    text-align: center;
    padding: 1rem 0;
    background-color: #333;
    color: #fff;
}
/* FAQ Section Styles */
.faq {
    background: linear-gradient(to right, #fff, #ffba4f 50%, #fff 90%);
    background-color: #fff;
    padding: 3rem 0;
    overflow-x: auto; /* Enable horizontal scrolling */
    white-space: nowrap; /* Prevent line breaks for items */
}

.faq h3 {
    font-size: 1.5rem;
    margin-bottom: 1.5rem;
    color: #333;
    text-align: center;
}

.faq-item {
    display: inline-block; /* Display FAQ items side by side */
    vertical-align: top; /* Align items at the top */
    border-right: 1px solid #ddd; /* Add a right border between items */
    padding: 1.5rem;
    min-width: 300px; /* Set a minimum width for columns */
    box-sizing: border-box; /* Include padding in the width */
}

.faq-item:last-child {
    border-right: none; /* Remove the right border from the last FAQ item */
}

.faq-item h4 {
    font-size: 1rem;
    margin-bottom: 0.5rem; /* Reduce the margin for the title */
    color: #444;
}

.faq-part {
    font-size: 0.9rem; /* Adjust the font size for the text parts */
    margin-top: 0.5rem; /* Add space between parts */
    color: #666;
}
.hover-message {
            position: fixed;
            bottom: 20px;
            right: 20px;
            background-color: #ff9900;
            color: #fff;
            padding: 10px;
            border-radius: 5px;
            display: none; /* Initially hidden */
            z-index: 9999; /* Ensure it's above other content */
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
                <li><a href="brands">Vehicles</a></li>
                <li><a href="#services">Services</a></li>
                <li><a href="aboutus">About</a></li>
                <li><a href="#cta">Contact</a></li>
                <li><a href="userlogin">Login</a></li>
            </ul>
        </nav>
    </header>
    <!-- Rest of your content -->
    <main>
        <section class="hero">
            <div class="hero-content">
                <h2>Welcome to <span>Auto</span>Fleet</h2>
                <p>Your Complete Automobile Management Solution</p>
            </div>
        </section>
        <section class="key-features">
            <h3>Key Features</h3>
            <div class="feature-list">
                <div class="feature">
					<i class="fas fa-car"></i>
                    <h4>Manage Vehicle Inventory</h4>
                    <p>Efficiently manage your vehicle inventory and information.</p>
                </div>
                <div class="feature">
					<i class="fa-regular fa-calendar"></i>
                    <h4>Schedule Maintenance Services</h4>
                    <p>Schedule and track maintenance services to ensure optimal performance.</p>
                </div>
                <div class="feature">
					<i class="fa-solid fa-user"></i>
                    <h4>Client Portal</h4>
                    <p>Provide clients with a portal for browsing and requesting information.</p>
                </div>
                <div class="feature">
					<i class="fa-solid fa-user-group"></i>
                    <h4>Administrative Tasks</h4>
                    <p>Streamline administrative tasks for effective automobile management.</p>
                </div>
            </div>
        </section>
        <section class="services" id="services">
    		<h3>Our Services</h3>
    			<div class="service">
        			<div class="service-content">
						<i class="fa-solid fa-car-side fa-2xl"></i>
            			<h4>Used cars</h4>
            			<p>Get used cars in affortable prices</p>
        			</div>
        			<img src="images/usedcars2.jpg" alt="Service 1">
    			</div>
    			<div class="service">
        			<div class="service-content">
						<i class="fa-solid fa-gear fa-2xl" style="color: #030303;"></i>
            			<h4>Spare Parts</h4>
            			<p>Get best quality of spare parts of all cars.</p>
        			</div>
        			<img src="images/spareparts2.jpg" alt="Service 2">
    			</div>
    			<div class="service">
        			<div class="service-content">
						<i class="fa-solid fa-bars-progress fa-2xl"></i>
           				<h4>Vehicle Maintenance</h4>
            			<p>Regular maintenance ensures optimal performance and longevity of your vehicles.</p>
        			</div>
        			<img src="images/carmaintenance.jpg" alt="Service 3">
    			</div>
    			<div class="service">
        			<div class="service-content">
						<i class="fa-solid fa-screwdriver-wrench fa-2xl"></i>
            			<h4>Repair Services</h4>
            			<p>Our skilled technicians can handle various repairs to keep your fleet on the road.</p>
        			</div>
        			<img src="images/repair.jpg" alt="Service 4">
    			</div>
    			<!-- Add more service divs as needed -->
		</section>
        <section class="cta" id="cta">
            <h3>Ready to Get Started?</h3>
            <p>Experience efficient automobile management with AutoFleet.</p>
            <a href="contactus" class="btn">Contact Us</a>
        </section>
        <section class="faq">
    		<h3>Frequently Asked Questions</h3>
        	<div class="faq-item">
            	<h4>How can I add a new vehicle to my fleet?</h4>
            	<div class="faq-part">
                	<p>Adding a new vehicle is simple. </p>	
                	<p>	Just log in to your account and navigate to the "Vehicles" section...</p>
            	</div>
        	</div>
    		<div class="faq-item">
            	<h4>How can I add a new vehicle to my fleet?</h4>
            	<div class="faq-part">
                	<p>Adding a new vehicle is simple. </p>	
                	<p>	Just log in to your account and navigate to the "Vehicles" section...</p>
            	</div>
        	</div>
        	<div class="faq-item">
            	<h4>How can I add a new vehicle to my fleet?</h4>
            	<div class="faq-part">
                	<p>Adding a new vehicle is simple. </p>	
                	<p>	Just log in to your account and navigate to the "Vehicles" section...</p>
            	</div>
        	</div>
    		<!-- Add more FAQ items as needed -->
		</section>
    </main>
     <div id="hoverMessage" class="hover-message">Form submitted successfully!</div>

    <!-- Add JavaScript to show the message -->
    <script>
        // Function to show the hover message
        function showHoverMessage() {
            const message = document.getElementById("hoverMessage");
            message.style.display = "block";
            setTimeout(function () {
                message.style.display = "none";
            }, 3000); // Hide the message after 3 seconds
        }
    </script>
    <footer>
        <p>&copy; 2023 AutoFleet. All rights reserved.</p>
    </footer>
</body>
</html>