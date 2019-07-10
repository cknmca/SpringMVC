<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List of Cars Details Page</title>
</head>
<body>
<h1 align="center">List of Cars</h1>
<hr />
<center>
<p align ="right">
<button onclick="window.location.href = 'addCar'; return false;">Add Cars</button>
</p>
<table border="1">
<tr>
<th>Car Code</th>
<th>Car Dealer Name</th>
<th>Car Name</th>
<th>Model Name </th>
<th>Model Year</th>
<th>Type</th>
<th>Quantity</th>
<th>Price</th>
<th>Action</th>
</tr>
<c:forEach items="${theCars}" var="c">
<c:url var="updateLink" value="showUpdateForm">
					<c:param name="carId" value="${c.carID}" />
				</c:url>
				
				<c:url var="deleteLink" value="displayDeleteForm">
					<c:param name="carId" value="${c.carID}" />
				</c:url>
<tr>
<td>"${c.code}"</td>
<td>"${c.cname}"</td>
<td>"${c.make}"</td>
<td>"${c.model}"</td>
<td>"${c.myear}"</td>
<td>"${c.ctype}"</td>
<td>"${c.qty}"</td>
<td>"${c.price}"</td>
<td>
<a href="${updateLink}">Update</a> | <a onclick ="if(!(confirm('Are you Sure want to detelet the Car records?'))) return false" href="${deleteLink}"> Delete</a></td>
</tr>
</c:forEach>
</table>
<hr/>
</center>
</body>
</html>