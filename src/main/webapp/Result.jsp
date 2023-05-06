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

<style>
        .abc{
            background-color: pink;
            color: blue;
        }
        
         .abcd{
            background-color: gray;
            font-size: 15px;
            color: white;
            border-radius: 6px;
        }
        .abcd:hover{
            background-color: pink;
        }
    </style>

<h1>${msg}</h1>
	<%--${list}--%>
	<h1 style="color: orange;">Employee Details are</h1>

	<table border="2px">

		<tr class="abc">
			<th>Id</th>
			<th>Name</th>
			<th>Mobile</th>
			<th>Salary</th>
			<th>Date of Joining</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>

		<c:forEach var="emp" items="${list}">

			<tr>

				<th>${emp.getId()}</th>
				<th>${emp.getName()}</th>
				<th>${emp.getMobile()}</th>
				<th>${emp.getSalary()}</th>
				<th>${emp.getDoj()}</th>
				<th><a href="edit?id=${emp.getId()}"><button style="color:green">Edit</button></a></th>
				<th><a href="delete?id=${emp.getId()}"><button style="color:red">Delete</button></a></th>

			</tr>
		</c:forEach>

	</table>
	
	<a href="Home.jsp"><button class="abcd">Back</button></a>

</body>
</html>