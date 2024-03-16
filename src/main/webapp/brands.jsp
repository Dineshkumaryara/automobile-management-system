<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Vehicle Brands</title>
    <style>
        /* Styles for the Brands page */
        body {
            font-family: Arial, sans-serif;
            background-color: #fff;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #fff;
            color: #fff;
            text-align: center;
            padding: 1rem;
        }

        h1 {
            font-size: 1.5rem;
            margin: 0;
        }

        .brands {
            text-align: center;
            padding: 1rem;
        }

        .brand-card {
            display: inline-block;
            margin: 3rem;
            padding: 1rem;
            border: 1px solid #ddd;
            border-radius: 5px;
            background-color: #fff;
            max-width: 200px;
            text-align: center;
        }

        .brand-card img {
            width: 100%; /* Set a fixed width for the image */
            height: auto;
        }

        .brand-card h2 {
            margin: 1rem 0;
            color: #444;
        }
        .brand-card a {
        display: inline-block;
        padding: 8px 16px;
        background-color: #ff9900;
        color: #fff;
        text-decoration: none;
        border-radius: 5px;
        font-weight: bold;
        transition: background-color 0.3s;
    }

    .brand-card a:hover {
        background-color: #e58300;
    }
    </style>
</head>
<body>
<jsp:include page="navbar.jsp" />
    <header>
        <h1>Vehicle Brands</h1>
    </header>

    <div class="brands">
        <div class="brand-card">
            <img src="brands/maruti.jpg" alt="Brand 1">
            <h2>Maruthi Suzuki</h2>
            <a href="maruthivehicles">View Vehicles</a>
        </div>

        <div class="brand-card">
            <img src="brands/tata.jpg" alt="Brand 2">
            <h2>Tata</h2>
            <a href="tatavehicles">View Vehicles</a>
        </div>
        
        <div class="brand-card">
            <img src="brands/hyundai.jpg" alt="Brand 3">
            <h2>Hyundai</h2>
            <a href="hyundaivehicles">View Vehicles</a>
        </div>
         
        <div class="brand-card">
            <img src="brands/toyota.jpg" alt="Brand 4">
            <h2>Toyota</h2>
            <a href="toyotavehicles">View Vehicles</a>
        </div>
        
        <div class="brand-card">
            <img src="brands/benz.jpg" alt="Brand 5">
            <h2>Mercedes-Benz</h2>
            <a href="benzvehicles">View Vehicles</a>
        </div>
        
        <div class="brand-card">
            <img src="brands/audi.jpg" alt="Brand 6">
            <h2>Audi</h2>
            <a href="audivehicles">View Vehicles</a>
        </div>
        
        <div class="brand-card">
            <img src="brands/bmw.jpg" alt="Brand 7">
            <h2>BMW</h2>
            <a href="bmwvehicles">View Vehicles</a>
        </div>
        
        <div class="brand-card">
            <img src="brands/landrover.jpg" alt="Brand 8">
            <h2>Land Rover</h2>
            <a href="landrovervehicles">View Vehicles</a>
        </div>

        <!-- Add more brand cards as needed -->
    </div>
</body>
</html>
