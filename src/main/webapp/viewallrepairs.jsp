<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Checkup Vehicles</title>
</head>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f0f0f0;
        margin: 0;
        padding: 0;
    }

        .navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
}
.navbar {
    background: linear-gradient(to right, #fff, #ff9900 20%, #fff 90%);
    color: #fff;
    position: relative;
}
.logo {
    display: flex;
    align-items: center; /* Center the logo and text vertically */
}

.logo img {
    max-height :100px; /* Adjust the height of the logo as needed */
    margin-right: 20px; /* Add some spacing between the logo and text */
    padding-left: 1.7rem;
}
.logo h1 {
    font-size: 1.5rem;
}

.logo span {
    color: #333;
}
.nav-links a {
    position: relative;
    display: inline-block;
    padding: 5px;
    color: #ff9900;
    text-decoration: none;
    transition: transform 0.3s;
}

/* Triangle shapes on hover */
.nav-links a::before {
    content: '';
    position: absolute;
    top: 100%;
    left: 50%;
    transform: translateX(-50%);
    width: 0;
    height: 0;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-bottom: 5px solid #333; /* Orange color */
    opacity: 0;
    transition: opacity 0.3s, transform 0.3s;
}

/* Triangle animation on hover */
.nav-links a:hover::before {
    opacity: 1;
    top: calc(100% + 5px);
    transform: translateX(-50%) translateY(-5px);
    transition: opacity 0.3s, transform 0.3s;
}
.nav-links {
    list-style-type: none;
    display: flex;
}

.nav-links li {
    margin: 0 70rem;
}

.nav-links a {
    text-decoration: none;
    color: #333;
    font-weight: bold;
    transition: color 0.3s;
}

.nav-links a:hover {
    color: #ff9900;
}
    h3 {
        text-align: center;
        margin-top: 20px;
        color: #333;
    }

    table {
        margin: 0 auto;
        border-collapse: collapse;
        width: 80%;
    }

    table, th, td {
        border: 2px solid #ff9900;
    }

    th, td {
        padding: 10px;
        text-align: center;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    tr:nth-child(odd) {
        background-color: #ffffff;
    }

    th {
        background-color: #ff9900 ;
        color: white;
    }

    a {
        text-decoration: none;
        color: #0077cc;
    }

    a:hover {
        text-decoration: underline;
    }
</style>

<body>
<header>
        <nav class="navbar">
            <div class="logo">
				<img src="images/flogo.png" alt="Logo">
                <h1>Auto<span>Fleet</span></h1>
                 <ul class="nav-links">
                <li><a href="adminlogin">Logout</a></li>
            </ul>
            </div>
        </nav>
    </header>
<br> 
 
<h3 align="center"><u>Vehicles for Repairs</u></h3> 
 <table>
        <tr>
        	<th>User</th>
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
        <c:forEach items="${repairs}" var="us">
            <tr>
            <td>${us.user.username}</td>
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
 

<div style="text-align: center; margin-top: 20px;">
        <a href="analytics">Back to Previous Page</a>
    </div>
</body>
</html>