<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Book Vehicle Repair</title>
    <style>
        /* Add your CSS styles here */
    </style>
</head>
<body>
    <header>Book Vehicle Repair</header>

    <div class="container">
        <form action="repair1" method="post">
            <label for="name">Name:</label>
            <input type="text" name="name" id="name" required>

            <label for="email">Email:</label>
            <input type="email" name="email" id="email" required>

            <label for="phone">Phone:</label>
            <input type="tel" name="phone" id="phone" required>

            <label for="vehicle_type">Vehicle Type:</label>
            <select name="type" id="vehicle_type" required>
                <option value="Car">Car</option>
                <option value="Truck">Truck</option>
                <option value="Motorcycle">Motorcycle</option>
                <!-- Add more vehicle types as needed -->
            </select>

            <label for="repair_type">Repair Type:</label>
            <select name="rtype" id="repair_type" required>
                <option value="Engine Repair">Engine Repair</option>
                <option value="Brake Service">Brake Service</option>
                <option value="Transmission Repair">Transmission Repair</option>
                <option value="Electrical System Repair">Electrical System Repair</option>
                <option value="Suspension Repair">Suspension Repair</option>
                <option value="Oil Change">Oil Change</option>
                <option value="Tire Replacement">Tire Replacement</option>
                <option value="Paint and Bodywork">Paint and Bodywork</option>
                <option value="Exhaust System Repair">Exhaust System Repair</option>
                <option value="Wheel Alignment">Wheel Alignment</option>
                <!-- Add more repair types as needed -->
            </select>

            <label for="preferred_date">Preferred Date:</label>
            <input type="date" name="date" id="preferred_date" required>

            <label for="preferred_time">Preferred Time:</label>
            <input type="time" name="time" id="preferred_time" required>

            <label for="additional_info">Additional Information:</label>
            <textarea name="message" id="additional_info" rows="4"></textarea>

            <label for="urgency">Urgency:</label>
            <input type="radio" name="urgency" value="High">High
            <input type="radio" name="urgency" value="Medium">Medium
            <input type="radio" name="urgency" value="Low">Low

            <label for="service_location">Service Location:</label>
            <input type="text" name="location" id="service_location" required>

            <button type="submit">Book Repair</button>
        </form>
    </div>
</body>
</html>
