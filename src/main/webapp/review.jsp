<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Review Form</title>
</head>
<body>
<form action="addreview" method="post">
    <input type="text" name="id" value="${management.id}">
    <input type="text" name="review" value="${management.review}">
    <input type="Submit" value="submit">
</form>
</body>
</html>