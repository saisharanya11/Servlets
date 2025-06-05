<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<% String message=(String) request.getAttribute("key");
if(message!=null){
%>
<%=message %>
<%} %>

<form action="Login">
Email : <input type="email" placeholder="Enter u r email" name="c">
<br>
<br>
Password : <input type="password" placeholder="Enter u r password" name="password">
<br>
<br>
<a href="Sucess.html"><button>LOGIN</button></a>
  </form>
</body>
</html>
