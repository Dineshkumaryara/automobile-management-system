<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Profile</title>
<style>
/* Apply a basic reset to remove default styling */
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
}

/* Style the body for background and text color */
body {
  background-color: #f5f5f5;
  font-family: Arial, sans-serif;
  text-align: center;
  padding: 20px;
  background-image: url('images/update.jpg');
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

/* Style form input containers */
.input-container {
  margin-bottom: 10px;
}

/* Style text inputs */
input[type="text"],
input[type="email"],
input[type="date"] {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin: 5px 0;
}
label {
	font-weight: bold;
    display: block; /* Display labels as block elements (one below the other) */
    text-align: left; /* Align text to the left */
    margin-bottom: 5px; /* Add some space between label and input */
    color: #ff9900; /* Set label text color */
}
/* Style the error messages */
.error-message {
  color: #e74c3c;
  font-size: 14px;
}

/* Style the submit button */
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

/* Style the location input and suggestions */
#location {
  width: 100%;
  padding: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  margin: 5px 0;
}

#location-suggestions {
  background-color: #f9f9f9;
  border: 1px solid #ccc;
  border-radius: 5px;
  padding: 5px;
  max-height: 100px;
  overflow-y: auto;
}

/* Additional styles for specific elements as needed */
.location-suggestions {
    position: absolute;
    max-height: 150px;
    overflow-y: auto;
    border: 1px solid #ccc;
    background-color: #fff;
    display: none;
}

.location-suggestions div {
    padding: 5px;
    cursor: pointer;
}

.location-suggestions div:hover {
    background-color: #f2f2f2;
}
/* Add this to your existing CSS code or in a separate CSS file */


/* Style the button container */
.btn {
  text-align: center;
  margin-top: 10px;
  color: #fff;
  cursor: pointer;
  transition: background-color 0.3s;
}
.btn:hover {
    background-color: #e58300;
}

.error-message {
        color: #ff0000;
        font-size: 14px;
    }
</style>
</head>
<body>
<div class="update-container">
     <div class="update-box">
        <h2>Update Profile</h2>
            <form method="post" action="update" onsubmit="return validateForm()">
            
            	<div class="name-inputs">
            		<div class="input-container">
            			<label for="firstName">First Name:</label>
            			<input type="text" name="firstname" id="firstName" value="${us.firstname}"
            			pattern="^[A-Za-z\- ]{2,50}$"
        				title="Use only alphabetic characters, spaces, or hyphens. Length between 2 and 50 characters."required>
            				<span class="error-message" id="firstName-error"></span>
            		</div>
            		<div class="input-container">
            			<label for="lastName">Last Name:</label>
            			<input type="text" name="lastname" id="lastName" value="${us.lastname}"
            			pattern="^[A-Za-z\- ]{2,50}$"
        				title="Use only alphabetic characters, spaces, or hyphens. Length between 2 and 50 characters."required>
            				<span class="error-message" id= "lastName-error"></span>
            		</div>
            	</div>
            	<label for="username">Username:</label>
               	<input type="text" name="username" id="username" value="${us.username}"
               	 pattern="^[a-z]+$"
    			title="Use only lowercase letters and no spaces."required>
                	<span class="error-message" id="username-error"></span>
                	
               	<div class="name-inputs">
            		<div class="input-container"> 	
            			<label for="email">Email Id:</label>
                		<input type="email" name="email" id="email" value="${us.email}" readonly/>
                	</div>
            		<div class="input-container">
                		<div class="input-container">
                			<label for="phone">Phone Number:</label>
    						<input type="text" name="phone" id="phone" value="${us.phonenumber}">
						</div>  
					</div>
            	</div> 
				<label for="dateOfBirth">Date Of Birth:</label>  
                <input type="date" name="dateOfBirth" id="dateOfBirth" value="${us.dob}">
            		<span class="error-message" id="dateOfBirth-error"></span>
            		
            	<label for="location">Location:</label>
				<input type="text" id="location" name="location" value="${us.location}" >
				<div class="location-suggestions" id="location-suggestions"></div>

                <label for="companyname">Company Name:</label>	
            	<input type="text" name="companyname" id="companyname" value="${us.companyname}">
            	
              
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