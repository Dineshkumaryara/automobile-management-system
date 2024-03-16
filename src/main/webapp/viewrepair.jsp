<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
    <title>Your Bookings</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/back1.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
        }
        .container {
            text-align: center;
        }
        h1 {
            text-align: center;
            color: #333;
            margin-left: 170px;
        }
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
             margin-bottom: 20px;
        }
        table, th, td {
            border: 1px solid #333;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #ff9900;
            color: white;
        }
        td img {
            max-width: 100px;
            max-height: 100px;
        }
        a {
            text-decoration: none;
            color: #007bff;
        }
        .add-vehicle-button {
            background-color: #ff9900;
            color: #333;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
            margin-top: 40px;
        }
        .add-vehicle-button:hover {
            background-color: #e58300;
        }
        button[type="button"] {
  background-color: #ff9900;
  color: #333;
  padding: 10px 20px;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  transition: background-color 0.3s;
}

button[type="button"]:hover {
  background-color: #e58300;
}
    </style>
</head>
<body>
<div class="container">
    <h1>Repair Services Bookings</h1>
    <table>
        <tr>
          <th>Name</th>
          <th>Phone</th>
          <th>Email</th>
            <th>Vehicle Type</th>
            <th>Repair Type</th>
            <th>Date</th>
            <th>Time</th>
            <th>Urgency</th>
            <th>Location</th>
            <th>Massege</th>
        </tr>
        <c:forEach items="${repair}" var="us">
            <tr>
            <td>${us.name}</td> 
            <td>${us.phonenumber}</td> 
            <td>${us.email}</td> 
            <td>${us.vehicleType}</td> 
            <td>${us.repairType}</td>
            <td>${us.bookingDate}</td>
            <td>${us.bookingTime}</td>
            <td>${us.urgency}</td>
            <td>${us.location}</td>
            <td>${us.additionalInfo}</td> 
                <%-- <td>${us.user.firstname}</td> --%>
                
            </tr>
        </c:forEach>
    </table>
    
    
    
    <!-- Add a link to create a new vehicle -->
    <a href="userhome"class="add-vehicle-button">Back</a>
    </div>
</body>
</html>
