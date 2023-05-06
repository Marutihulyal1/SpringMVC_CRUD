<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="c" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

   <style>
        input[type=text]
        {
            color: black;
            font-size: 15px;
            padding: 5px;
        }
    </style>
</head>
<body>

<h1>${msg}</h1>

 <h1 style="color: green;">Employee Detail</h1>
    <form action="fetchById">

        <table style="border: solid pink 5px;">
            <tr>
                <td>
                    <label for="id">Id:</label>
                    <input type="text" name="id" placeholder="Enter Id" required>
                </td>
            </tr>

            <tr>
                <td>
                    <button>View</button>
                </td>
            </tr>
            </tr>
        </table>
        
    </form>

</body>
</html>