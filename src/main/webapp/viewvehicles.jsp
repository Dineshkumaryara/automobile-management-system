<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 

<!DOCTYPE html>
<html>
<head>
    <title>List of Vehicles</title>
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
    <h1>List of Vehicles</h1>
    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Model</th>
            <th>Year</th>
            <th>Image</th>
        </tr>
        <c:forEach items="${vehicles}" var="us">
            <tr>
                <td>${us.id}</td>
                <td>${us.name}</td>
                <td>${us.model}</td>
                <td>${us.year}</td>
                <%-- <td>${us.user.firstname}</td> --%>
                
                <td>
                   <img src='displayVehicleImage?id=${us.id}' width="60%" height="60%">
                </td>
            </tr>
        </c:forEach>
    </table>
    
    <!-- Add a link to create a new vehicle -->
    <a href="userhome"class="add-vehicle-button">Back</a>
    <a href="myvehicles"class="add-vehicle-button">Add New Vehicle</a>
    </div>
</body>
</html>
