<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
            text-align: center;
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
    color: #fff;
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
            border: 2px solid #333;
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
            background-color: #0077cc;
            color: white;
        }

        a {
            text-decoration: none;
            color: #ff9900;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
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
 
<h3 align="center"><u>Delete User</u></h3> 
 
<table align=center  border=2>  
<tr style="color:black; font-weight: bold;"> 
<td>Id</td> 
<td>Username</td>
<td>Email Id</td> 
</tr> 
 
<c:forEach items="${usdata}"  var="us"> 
<tr> 
<td><c:out value="${us.id}" /></td> 
<td><c:out value="${us.username}" /></td>
<td><c:out value="${us.email}" /></td> 
<td>
<a href='<c:url value="delete/${us.id}"></c:url>'>Delete</a>
</td>
 
</tr> 
</c:forEach> 
 
</table>
<div style="text-align: center; margin-top: 20px;">
        <a href="manageusers">Back to Previous Page</a>
    </div> 
</body>
</html>