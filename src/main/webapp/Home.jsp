<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>

   button{
            background-color: indianred;
            color:white;
         }
         
         button:hover{
         background-color: orange;
         }
         
   </style>
</head>
<body>

  <h1 style="color:orange">${msg}</h1>
  <h1 style="color:green"> Employee CRUD Operation</h1>
	<a href="loademployee"><button>Insert Data</button></a>
	<br>
	<br>
	<a href="fetchall"><button>Fetch Data</button></a><br><br>
	<a href="fetch.jsp"><button>Fetch Data By Id</button></a>

</body>
</html>