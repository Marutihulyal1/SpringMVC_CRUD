<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
      <%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
         .abcd{
            background-color: pink;
            font-size: 15px;
            color: white;
        }
        .abcd:hover{
            background-color: blue;
        }
    </style>
    
</head>
<body>

<h1 style="color: green;">Update your Details</h1>

<c:form action="updateEmployee" method="post" modelAttribute="emp">
    <table border="2px">
        <tr>
            <td>
                <label for="a">Id:</label>
            </td>
            <td>
                <c:input type="text" path="id" readonly="readonly" id="a"/><br>
            </td>
        </tr>



        <tr>
            <td>
                <label for="b">Name:</label>
            </td>
            <td>
                <c:input type="text" path="name" id="b"/>
            </td>
        </tr>


        <tr>
            <td>
                <label for="c">Mobile No:</label>
            </td>
            <td>
                 <c:input type="text" path="mobile" id="c"/>
            </td>
        </tr>


        <tr>
            <td>
                <label for="d">Salary:</label>
            </td>
            <td>
                <c:input type="text" path="salary" id="d"/>
            </td>
        </tr>


        <tr>
            <td>
                <label for="e">Date of Join:</label>
            </td>
            <td>
                <input type="date" name="date" value="${emp.getDoj()}" id="e">
            </td>
        </tr>

        <tr>
            <td>
                <button type="reset" class="abcd">Reset</button>
                <button class="abcd">update</button>
            </td>
        </tr>
    </table>
</c:form>

</body>
</html>