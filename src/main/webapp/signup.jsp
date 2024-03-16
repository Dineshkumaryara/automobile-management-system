<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>
<style>
	/* Global styles */
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-image: url('images/car6.gif');
    background-size: cover;
    background-position: center;
}

/* Signup page specific styles */
.signup-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.signup-box {
    text-align: center;
    background-color: rgba(255, 255, 255, 0.9);
    padding: 2rem;
    border-radius: 10px;
    box-shadow: 0px 0px 20px rgba(0, 0, 0, 0.3);
    max-width: 400px;
}

.logo img {
    max-width: 100px;
    margin-bottom: 0rem;
}

.signup-box h2 {
    color: #333;
    margin-bottom: 1rem;
}

.signup-box form input {
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border: none;
    border-radius: 5px;
}

.signup-box form button {
    background-color: #ff9900;
    color: #fff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.signup-box form button:hover {
    background-color: #e58300;
}

.signup-box p {
    color: #666;
    margin-top: 1rem;
}

.signup-box a {
    color: #ff9900;
    text-decoration: none;
}

.signup-box a:hover {
    text-decoration: underline;
}
/* Add this to your existing CSS code */
/* Style for form elements */
.form-group {
    margin-bottom: 20px;
}

label {
    font-weight: bold;
    color: #333;
    font-size: 16px;
    margin-bottom: 8px;
    display: block;
}

select.form-control {
    width: 100%;
    padding: 12px;
    border-radius: 5px;
    border: 1px solid #ccc;
    outline: none;
    font-size: 16px;
    color: #555;
    transition: border-color 0.3s, box-shadow 0.3s;
}

select.form-control:focus {
    border-color: #ff9900;
    box-shadow: 0 0 10px rgba(255, 153, 0, 0.4);
}

/* Style for the Sign Up button */
.btn-primary {
    background-color: #ff9900;
    border: none;
    color: #fff;
    padding: 12px 20px;
    font-size: 18px;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

.btn-primary:hover {
    background-color: #e58300;
}
.input-container {
    position: relative;
}

.input-container .field-icon {
    position: absolute;
    right: 0px;
    top: 20px;
    cursor: pointer;
    transition: transform 0.3s, color 0.3s;
}
.input-container .field-icon:hover {
    color: #ff9900; /* Change color on hover for animation effect */
    transform: scale(1.2);
}
.input-container input {
    padding-right: 28px; /* Ensure there's space for the icon */
}
/* Add this to your existing CSS code or in a separate CSS file */
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
.location-suggestions {
    position: absolute;
    max-height: 150px;
    overflow-y: auto;
    border: 1px solid #ccc;
    background-color: #fff;
    display: none;
    z-index: 1; /* Adjust the z-index value to ensure it appears above other elements */
}

.location-suggestions div {
    padding: 5px;
    cursor: pointer;
}

.location-suggestions div:hover {
    background-color: #f2f2f2;
}
/* Add this CSS to your existing styles */
.name-inputs {
    display: flex;
    justify-content: space-between;
}

.name-inputs .input-container {
    flex: 1;
    margin-right: 14px;
}
/* Add margin to the last name input */
.name-inputs .input-container:last-child {
    margin-left: 14px;
}

/* Add this CSS to style the Profile Pic element */
.input-box {
    display: flex;
    align-items: center;
    margin-top: 10px;
}

.input-box .details {
    flex: 1;
    font-weight: bold;
    color: #333;
    font-size: 16px;
}

.input-box input[type="file"] {
    flex: 2;
    border: 1px solid #ccc;
    padding: 5px;
    border-radius: 5px;
    font-size: 16px;
    color: #555;
}

.error-message {
        color: #ff0000;
        font-size: 14px;


    }
</style>
<script>
    function validateForm() {
        // Get form inputs
        var username = document.getElementById("username").value;
        var email = document.getElementById("email").value;
        var password = document.getElementById("password").value;
        var retypePassword = document.getElementById("retypePassword").value;
        var firstName = document.getElementById("firstName").value;
        var lastName = document.getElementById("lastName").value;

        // Define regular expressions for validation
        var emailRegex = /^[a-zA-Z0-9._-]+@gmail\.com$/;
        var passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{5,}$/;
        var usernameRegex = /^[a-z]+$/;

        // Clear existing error messages
        document.getElementById("username-error").textContent = "";
        document.getElementById("email-error").textContent = "";
        document.getElementById("password-error").textContent = "";
        document.getElementById("retypePassword-error").textContent = "";
        document.getElementById("firstName-error").textContent = "";
        document.getElementById("lastName-error").textContent = "";

        var isValid = true;

        // Validate username
        if (!usernameRegex.test(username) || username.includes(" ")) {
            document.getElementById("username-error").textContent = "Invalid username. Use only lowercase letters and no spaces.";
            isValid = false;
        }

        // Validate email
        if (!emailRegex.test(email)) {
            document.getElementById("email-error").textContent = "Invalid email. Please use a valid Gmail address.";
            isValid = false;
        }

        // Validate password
        if (!passwordRegex.test(password)) {
            document.getElementById("password-error").textContent = "Invalid password. It must contain at least 5 characters, one special character, and one digit.";
            isValid = false;
        }

        // Check if Retype Password matches Password
        if (password !== retypePassword) {
            document.getElementById("retypePassword-error").textContent = "Passwords do not match.";
            isValid = false;
        }

        // Validate First Name
        if (firstName.trim() === "") {
            document.getElementById("firstName-error").textContent = "First name is required.";
            isValid = false;
        } else if (!/^[A-Za-z\- ]{2,50}$/.test(firstName)) {
            document.getElementById("firstName-error").textContent = "Invalid first name. Use only alphabetic characters, spaces, or hyphens.";
            isValid = false;
        }

        // Validate Last Name
        if (lastName.trim() === "") {
            document.getElementById("lastName-error").textContent = "Last name is required.";
            isValid = false;
        } else if (!/^[A-Za-z\- ]{2,50}$/.test(lastName)) {
            document.getElementById("lastName-error").textContent = "Invalid last name. Use only alphabetic characters, spaces, or hyphens.";
            isValid = false;
        }
        
     // Check profile pic file size
        var profilePicInput = document.getElementById("profilepic");
        var maxFileSize = 2 * 1024 * 1024; // 2 MB in bytes

        if (profilePicInput.files.length > 0) {
            var fileSize = profilePicInput.files[0].size;

            if (fileSize > maxFileSize) {
                document.getElementById("profilepic-error").textContent = "Profile pic size exceeds 2 MB. Please choose a smaller file.";
                isValid = false;
            }
        }

        return isValid;
    }
</script>

<body>
	<div class="signup-container">
        <div class="signup-box">
            <div class="logo">
                <img src="images/flogo.png" alt="Logo">
            </div>
            <h2>Create an Account</h2>
            <form method="post" action="newuser" onsubmit="return validateForm()" enctype="multipart/form-data">
            
            	<div class="name-inputs">
            		<div class="input-container">
            			<input type="text" name="firstname" id="firstName" placeholder="First Name">
            				<span class="error-message" id="firstName-error"></span>
            		</div>
            		<div class="input-container">
            			<input type="text" name="lastname" id="lastName" placeholder="Last Name">
            				<span class="error-message" id= "lastName-error"></span>
            		</div>
            	</div>
            	
               	<input type="text" name="username" id="username" placeholder="Username">
                	<span class="error-message" id="username-error"></span>
                	
               	<div class="name-inputs">
            		<div class="input-container"> 	
                		<input type="email" name="email" id="email" placeholder="Email">
                			<span class="error-message" id="email-error"></span>
                	</div>
            		<div class="input-container">
                		<div class="input-container">
    						<input type="text" name="phone" id="phone" placeholder="+91 Phone Number" onfocus="handlePhoneFocus()" onblur="handlePhoneBlur()">
						</div>  
					</div>
            	</div> 
				     
                <input type="date" name="dateOfBirth" id="dateOfBirth" placeholder="Date of Birth"required/>
            		<span class="error-message" id="dateOfBirth-error"></span>
            		
            	<label for="location"></label>
				<input type="text" id="location" name="location" placeholder="Enter your location" required/>
				<div class="location-suggestions" id="location-suggestions"></div>

                    	
            	<input type="text" name="companyname" id="companyname" placeholder="Company Name (if applicable)">
            	
                <div class="input-container">
                	<input type="password" name="password" id="password" placeholder="Password">
                		<span class="fa fa-eye field-icon" id="password-toggle"></span>
                </div>
                	<span class="error-message" id="password-error"></span>
                	
                <div class="input-container">
                	<input type="password" name="retypePassword" id="retypePassword" placeholder="Retype Password">
                		<span class="fa fa-eye field-icon" id="retypePassword-toggle"></span>
                </div>
                	<span class="error-message" id="retypePassword-error"></span>
                	
                <div class="input-box">
            		<span class="details">Profile Pic</span>  
            		<input type="file" name="profilepic" id="profilepic" accept="image/*" max-size="2MB">
          		</div>
          			<span class="error-message" id="profilepic-error"></span>
                	
                <button type="submit" class="btn btn-primary">Sign Up</button>
            </form>
            <p>Already have an account? <a href="userlogin">Login</a></p>
        </div>
    </div>
     <script>
        
        
        function handlePhoneFocus() {
            var phoneInput = document.getElementById("phone");
            if (phoneInput.value === "") {
                phoneInput.value = "+91 ";
            }
        }

        function handlePhoneBlur() {
            var phoneInput = document.getElementById("phone");
            if (phoneInput.value === "+91 ") {
                phoneInput.value = "";
            }
        }
        
        
        var locationInput = document.getElementById("location");
        var locationSuggestions = document.getElementById("location-suggestions");

        // List of Indian cities for autocomplete (you can expand this list)
        var indianCities = [
            "Mumbai", "Delhi", "Bangalore", "Hyderabad", "Chennai", "Kolkata", "Pune", "Ahmedabad", "Jaipur", "Lucknow",
            "Kanpur", "Nagpur", "Indore", "Bhopal", "Patna", "Vadodara", "Varanasi", "Agra", "Allahabad", "Mysore", "Goa"
        ];

        locationInput.addEventListener("input", function() {
            var inputValue = locationInput.value.toLowerCase();
            var suggestions = [];

            // Filter Indian cities based on user input
            indianCities.forEach(function(city) {
                if (city.toLowerCase().includes(inputValue)) {
                    suggestions.push(city);
                }
            });

            // Display the suggestions
            displaySuggestions(suggestions);
        });

        function displaySuggestions(suggestions) {
            locationSuggestions.innerHTML = "";

            if (suggestions.length > 0) {
                locationSuggestions.style.display = "block";
                suggestions.forEach(function(suggestion) {
                    var suggestionElement = document.createElement("div");
                    suggestionElement.textContent = suggestion;
                    suggestionElement.addEventListener("click", function() {
                        locationInput.value = suggestion;
                        locationSuggestions.style.display = "none";
                    });
                    locationSuggestions.appendChild(suggestionElement);
                });
            } else {
                locationSuggestions.style.display = "none";
            }
        }

        // Close the suggestions when the user clicks outside
        document.addEventListener("click", function(event) {
            if (event.target !== locationInput && event.target !== locationSuggestions) {
                locationSuggestions.style.display = "none";
            }
        });
        
 
        var phoneNumber = document.getElementById("phoneNumber").value;
 
    </script>
    <script>
    // Get the password input and the password toggle element
    var passwordInput = document.getElementById("password");
    var passwordToggle = document.getElementById("password-toggle");

    // Add a click event listener to the password toggle
    passwordToggle.addEventListener("click", function () {
        if (passwordInput.type === "password") {
            passwordInput.type = "text"; // Show the password
            passwordToggle.style.color = "#ff9900"; // Change eye icon color
        } else {
            passwordInput.type = "password"; // Hide the password
            passwordToggle.style.color = "#333"; // Change eye icon color back to default
        }
    });

    // Similarly, do the same for the retype password
    var retypePasswordInput = document.getElementById("retypePassword");
    var retypePasswordToggle = document.getElementById("retypePassword-toggle");

    retypePasswordToggle.addEventListener("click", function () {
        if (retypePasswordInput.type === "password") {
            retypePasswordInput.type = "text"; // Show the retype password
            retypePasswordToggle.style.color = "#ff9900"; // Change eye icon color
        } else {
            retypePasswordInput.type = "password"; // Hide the retype password
            retypePasswordToggle.style.color = "#333"; // Change eye icon color back to default
        }
    });
</script>
    
</body>
</html>