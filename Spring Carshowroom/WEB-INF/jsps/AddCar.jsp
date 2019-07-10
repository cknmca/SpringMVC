<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Car Details Page</title>
</head>
<body>
<center>
<h1> Provide Car Details</h1>
<hr />

<form:form modelAttribute="car" action="saveProcess">
		<table border="1">
			<form:hidden path="carID" />
			<tr>
				<td><b>Enter Code of the Car:</b></td>
				<td><form:input path="code" /></td>
			</tr>
			<tr>
				<td><b>Enter Car Dealer Code Name:</b></td>
				<td><form:input path="cname" /></td>
			</tr>
			<tr>
				<td><b>Enter Car Name:</b></td>
				<td><form:input path="make" /></td>
			</tr>
			<tr>
				<td><b>Enter Model Name:</b></td>
				<td><form:input path="model" /></td>
			</tr>
			
			<tr>
				<td><b>Enter Year of Making :</b></td>
				<td><form:input path="myear" /></td>
			</tr>
			
			
			<tr>
				<td><b>Car Type :</b></td>
				<td><form:radiobutton path="ctype" value="Petrol" />Petrol&nbsp;&nbsp;
				<form:radiobutton path="ctype" value="Diesel" />Diesel</td>
			</tr>
			
			<tr>
				<td><b>No of Cars Received from Maker:</b></td>
				<td><form:input path="qty" /></td>
			</tr>
			<tr>
				<td><b>Price of the Total Cars(in Lakhs) :</b></td>
				<td><form:input path="price" /></td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Save" /> <input type="reset"
					value="Reset" /></td>
			</tr>
		</table>
	</form:form>

	<hr />

	<a href="listCars">Click Here to go for List of Cars</a>
	</center>
</body>
</html>