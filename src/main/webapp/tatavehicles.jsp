<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Tata</title>
</head>
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
<body>
<jsp:include page="navbar.jsp" />

    <!-- Content specific to the vehicles page -->
    <section class="vehicles">
        <h1>Vehicles List</h1>
        <div class="vehicle">
            <img src="vehicles/punch.jpg" alt="Vehicle 1">
            <h2>Tata Punch</h2>
            <p>Price: Rs. 6.00 Lakh</p>
            <p>Avg. Ex-Showroom price</p>
        </div>
        <div class="vehicle">
            <img src="vehicles/nexon-ev.jpg" alt="Vehicle 2">
            <h2>Tata Nexon EV</h2>
            <p>Price: Rs. 14.74 Lakh</p>
            <p>Avg. Ex-Showroom price</p>
        </div>
        <div class="vehicle">
            <img src="vehicles/nexon1.jpg" alt="Vehicle 3">
            <h2>Tata Nexon</h2>
            <p>Price: Rs. 8.10 Lakh</p>
            <p>Avg. Ex-Showroom price</p>
        </div>
        <div class="vehicle">
            <img src="vehicles/tiago.jpg" alt="Vehicle 3">
            <h2>Tata Tiago EV</h2>
            <p>Price: Rs. 8.69 Lakh</p>
            <p>Avg. Ex-Showroom price</p>
        </div>
        <!-- Add more vehicle entries as needed -->
    </section>
</body>
</html>