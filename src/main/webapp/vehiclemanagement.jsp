<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Management</title>
    <style>
    /* Style for the header */
    body {
            font-family: Arial, sans-serif;
            background-image: url('images/back4.jpg');
            background-size: cover;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-position: center;
        }
header {
    width: 100%;
    text-align: center;
    font-size: 24px;
    color: #333;
    background-color: #ff9900; /* Header background color */
    padding: 10px 0;
}

/* Style for the container */
.container {
    max-width: 400px;
    margin: 0 auto;
    padding: 20px;
    border-radius: 5px;
}

/* Style for labels */
label {
    display: block;
    margin-top: 10px;
    font-weight: bold;
    color: #333;
}

/* Style for select and input fields */
select, input, textarea {
    width: 100%;
    padding: 10px;
    margin-top: 5px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
}

/* Style for the submit button */
button[type="submit"] {
  background-color: #ff9900;
  color: #333;
  padding: 10px 20px;
  border: none;
  border-radius: 8px;
  cursor: pointer;
  transition: background-color 0.3s;
}

button[type="submit"]:hover {
  background-color: #e58300;
}

/* Additional styling for the textarea */
textarea {
    resize: vertical;
    min-height: 100px;
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
/* You can add more styles as needed */

    </style>
</head>
<body>
    <header>Vehicle Checkup Booking</header>

    <div class="container">
        <form action="newbooking" method="post">
            <label for="type">Vehicle Type:</label>
            <select name="type" id="vehicle_type" required>
                <option value="Car">Car</option>
                <option value="Truck">Truck</option>
                <option value="Motorcycle">Motorcycle</option>
                <!-- Add more vehicle types as needed -->
            </select>

            <label for="booking_date">Preferred Date:</label>
            <input type="date" name="date" id="booking_date" required>

            <label for="booking_time">Preferred Time:</label>
            <input type="time" name="time" id="booking_time" required>

            <label for="additional_info">Additional Information:</label>
            <textarea name="message" id="additional_info" rows="4"></textarea>
            
			<button type="button" class="btn btn-secondary" onclick="goBack()" style="margin-right: 15px;">Back</button>
            <button type="submit">Submit Booking</button>
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
    