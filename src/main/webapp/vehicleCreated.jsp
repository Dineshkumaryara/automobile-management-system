<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>New Vehicle Added</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
         body {
            font-family: Arial, sans-serif;
            background-image: url('images/back3.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
        }
        .container {
            margin-top: 100px;
        }
        .jumbotron {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="jumbotron text-center">
            <h1>New Vehicle Added!</h1>
            <p>Your new vehicle has been successfully added to the system.</p>
            <a href="viewvehicles" class="btn btn-primary">See All Vehicles</a>
        </div>
    </div>
</body>
</html>
