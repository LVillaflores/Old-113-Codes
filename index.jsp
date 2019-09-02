<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Room Reservation</title>
</head>
<body>
<%@include file = "/header.html" %>
	

<form action = "compute.jsp" method = "post">
	<p>Name: <input type = "text" name = "name">
	<p>Address: <input type = "text" name = "add">
	<p>Contact No.: <input type = "text" name = "cont">
	
	<p>Type of Room:
	<select name = room size = "1" > 
		<option value = "Single" selected>Single</option>
		<option value = "Double">Double</option>
		<option value = "Twin">Twin</option>
		<option value = "Triple">Triple</option>
	</select>
	
	<p>Number of Guests: <input type = "text" name = "guest">
	<p><input type = "submit" name = "Compute">
</form>

<%@include file = "/footer.html" %>
	

</body>
</html>