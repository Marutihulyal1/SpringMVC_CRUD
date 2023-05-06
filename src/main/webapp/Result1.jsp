<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<table border="2px">

<h1>Employee Detail is</h1>
<h1>${msg}</h1>

		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Mobile</th>
			<th>Salary</th>
			<th>Date of Joining</th>
		</tr>
		
		<tr>
		<td>${emppp.getId()}</td>
		<td>${emppp.getName()}</td>
		<td>${emppp.getMobile()}</td>
		<td>${emppp.getSalary()}</td>
	    <td>${emppp.getDoj()}</td>
		
		</tr>

	</table>
	<a href="Home.jsp"><button>Back</button></a>


</body>
</html>