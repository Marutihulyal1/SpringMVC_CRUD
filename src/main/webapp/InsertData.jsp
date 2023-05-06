<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

 <style>
         .abc{
            background-color: red;
            font-size: 15px;
            color: white;
        }
        .abc:hover{
            background-color: blue;
        }
    </style>
    
</head>
<body>
<h1 style="color: green;">Enter Employee Details</h1>

<%--${employee} --%>


<spring:form action="saveemployee" method="post" modelAttribute="employee">

<table border="2px">

<tr>
    <th>
        <label for="m">Name</label>
    </th>
    <td>
        <input type="text" name="name" id="m">
    </td>
</tr>


<tr>
    <th>
        <label for="n">Mobile No</label>
    </th>
    <td>
        <input type="text" name="mobile" id="n">
    </td>
</tr>


<tr>
    <th>
        <label for="o">Salary</label>
    </th>
    <td>
        <input type="text" name="salary" id="o">
    </td>
</tr>


<tr>
    <th>
        <label for="p">Date of Join</label>
    </th>
    <td>
        <input type="date" name="date" id="p">
    </td>
</tr>

 <tr>
 <td>
            <button type="reset" class="abc">Reset</button>
             <button class="abc">Save</button>
             </td>
 </tr>

</table>



</spring:form>





</body>
</html>