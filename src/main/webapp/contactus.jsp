<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
<style>
/* Add this to your styles.css */
body, h1, h2, p, ul, li {
    margin: 1px;
    padding: 2px;
}
body {
     display: flex;
    flex-direction: column;
    justify-content: space-between;
    min-height: 100vh;
    background-image: url('images/caruu.jpg');
    background-size: cover;
    background-position: center;
    background-attachment: fixed;
    font-family: Arial, sans-serif;
    text-align: center;
    padding: 20px;
    margin: 5px; /* Remove margin to prevent gaps */
}

.content-container {
    display: flex;
    justify-content: flex-end;
    align-items: center;
    height: 100vh;
}

.contact-form {
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    width: 40%;
}

.contact-info {
    background-color: rgba(255, 255, 255, 0.9);
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    width: 40%;
}

/* Add other CSS styles for labels, inputs, and buttons as needed */


h1.contactus {
    text-align: center;
    background-color: #ff9900;
    color: #fff;
    padding: 10px 20px;
    border: 1px solid #ff9900; /* Add a 1px border with the same color as the background */
    border-radius: 5px;
}


form {
    text-align: left;
}

label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
}

input[type="text"],
input[type="email"],
textarea {
    width: 97%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    margin: 5px 0;
}

button {
    background-color: #ff9900;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #e58300;
}

.error {
    color: #e74c3c;
    font-size: 14px;
}


.contact-info h2 {
    font-size: 1.5em;
    color: #333;
}

.contact-info ul {
    list-style: none;
}

.contact-info li {
    margin-bottom: 10px;
}
footer {
    text-align: center;
    padding: 1rem 0;
    background-color: #333;
    color: #fff;
}
</style>
</head>
<body>
   
   <h1 class="contactus">Contact Us</h1>

    <div class="contact-form">
        <form action="submit_contact_form" method="post">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="6" required></textarea>

            <button type="submit">Submit</button>
        </form>
    </div>

    <div class="contact-info">
        <h2>Contact Information</h2>
        <p>If you have any questions or need assistance, please feel free to contact us using the form above. You can also reach us through the following contact information:</p>
        <ul>
            <li><strong>Address:</strong> 123 Automobile Street, City, Country</li>
            <li><strong>Email:</strong>autofleet85@gmail.com</li>
            <li><strong>Phone:</strong> +91 8121474161</li>
        </ul>
    </div>

    <footer>
        &copy; 2023 Automobile Management System
    </footer>
</body>
</html>
    