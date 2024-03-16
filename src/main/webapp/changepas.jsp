<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Change Password</title>
<style>
  body {
  background-color: #f5f5f5;
  font-family: Arial, sans-serif;
  text-align: center;
  padding: 20px;
  background-image: url('images/update1.jpg');
  background-size: cover;
  background-position: center;
}
 .update-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}
  .update-box {
    text-align: center;
    background-color: rgba(255, 255, 255, 0.9);
    padding: 2rem;
    border-radius: 10px;
    box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.3);
    max-width: 400px;
    width: 130%;
    
}
.update-box h2 {
    color: #333;
    margin-bottom: 1rem;
}
  input[type="password"] {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    outline: none;
  }
  input[type="password"]:focus {
    border-color: #ff9900;
  }
  .error-message {
    color: #e74c3c;
    font-size: 14px;
  }
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
<div class="update-container">
<div class="update-box">
<h2>Update Password</h2>
 <form method="post" action="change" onsubmit="return validateForm()">
    <input type="password" name="password" id="password" placeholder="New Password" 
       pattern="^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{5,}$"
       title="Password must contain at least 5 characters, one special character, and one digit" required>
    <input type="password" name="confirmPassword" id="confirmPassword" placeholder="Confirm New Password">
    <span class="error-message" id="password-error"></span>
    <button type="button" class="btn btn-secondary" onclick="goBack()" style="margin-right: 15px;">Back</button>
    <button type="submit" class="btn btn-primary">Update</button>
   </form>
   </div>
   </div>
   <script>
		function goBack() {
			// Use the browser's back functionality to navigate back one step
    		window.history.back();
		}
   </script>
</body>
</html>