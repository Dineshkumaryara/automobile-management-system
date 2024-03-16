<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create New Vehicle</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-image: url('images/caruu.jpg');
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
            margin-left: 40px;
        }
        form {
            width: 80%;
            margin: 0 auto;
            border-radius: 10px;
            padding: 20px;
        }
        label {
        	font-weight: bold;
    		display: block; /* Display labels as block elements (one below the other) */
    		text-align: left; /* Align text to the left */
    		margin-left: 400px;
    		margin-bottom: 5px; /* Add some space between label and input */
    		 /* Set label text color */
		}
        input[type="text"],
        input[type="number"],
        input[type="file"] {
            width: 40%;
  			padding: 10px;
  			border: 1px solid #ccc;
  			border-radius: 5px;
  			margin: 5px 0;
        }
        .submit-button {
            background-color: #ff9900;
            color: #333;
            padding: 10px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .submit-button:hover {
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
        <h1>Create New Vehicle</h1>
        <form action="newvehicle" method="post" enctype="multipart/form-data">
            <label for="make">Name:</label>
            <input type="text" id="name" name="name" required><br>
            
            <label for="model">Model:</label>
            <input type="text" id="model" name="model" required><br>
            
            <label for="year">Year:</label>
            <input type="number" id="year" name="year" required><br>
            
            <label for="image">Image:</label>
            <input type="file" name="vehicleImage" id="vehicleImage" accept="image/*" max-size="2MB"><br>
            
            <button type="button" class="btn btn-secondary" onclick="goBack()" style="margin-right: 15px;">Back</button>
            <input type="submit" value="Create Vehicle" class="submit-button">
        </form>
    </div>
    <script>
			function goBack() {
    			// Use the browser's back functionality to navigate back one step
    			window.history.back();
			}
</script>
</body>
</html>
