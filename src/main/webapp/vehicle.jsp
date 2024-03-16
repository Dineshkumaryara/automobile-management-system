<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <!-- Include your head content (e.g., title, styles, scripts) here -->
<style type="text/css">
/* Styles for the Vehicles section */
.vehicles {
    padding: 2rem;
    text-align: center;
}

.vehicle {
    margin: 2rem;
    padding: 1rem;
    border: 1px solid #ddd;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    background-color: #fff;
    max-width: 300px;
    display: inline-block;
    text-align: left;
}

.vehicle img {
    width: 100%; /* Set a fixed width for all images */
    height: 100%; /* Set a fixed height for all images */
    max-height: 200px; /* Set a max-height to prevent very tall images */
}

.vehicle h2 {
    margin: 1rem 0;
    color: #333;
}

.vehicle p {
    margin: 0.5rem 0;
    color: #666;
}

</style>
</head>
<body>
    <jsp:include page="navbar.jsp" />

    <!-- Content specific to the vehicles page -->
    <section class="vehicles">
        <h1>Vehicles List</h1>
        <div class="vehicle">
            <img src="vehicles/fronx.jpg" alt="Vehicle 1">
            <h2>Maruthi Fronx</h2>
            <p>Price: Rs. 7.47 Lakh</p>
            <p>Avg. Ex-Showroom price</p>
        </div>
        <div class="vehicle">
            <img src="vehicles/swift.jpg" alt="Vehicle 2">
            <h2>Maruti Swift</h2>
            <p>Price: $XX,XXX</p>
            <p>Avg. Ex-Showroom price</p>
        </div>
        <div class="vehicle">
            <img src="images/vehicle1.jpg" alt="Vehicle 1">
            <h2>Vehicle 1</h2>
            <p>Price: $XX,XXX</p>
            <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
        <div class="vehicle">
            <img src="images/vehicle1.jpg" alt="Vehicle 1">
            <h2>Vehicle 1</h2>
            <p>Price: $XX,XXX</p>
            <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
        <div class="vehicle">
            <img src="images/vehicle1.jpg" alt="Vehicle 1">
            <h2>Vehicle 1</h2>
            <p>Price: $XX,XXX</p>
            <p>Description: Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
        </div>
        <!-- Add more vehicle entries as needed -->
    </section>

    <!-- Include your footer here, or use a separate JSP include for the footer -->
</body>
</html>
