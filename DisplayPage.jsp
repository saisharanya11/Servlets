<%@page import="dto.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	List<User> list = (List) request.getAttribute("p");
	%>
	<table border="2px solid balck">

		<tr>
			<td>ID</td>
			<td>NAME</td>
			<td>AGE</td>
			<td>ADDRESS</td>
			<td>EMAIL</td>
			<td>PASSWORD</td>
			<td>DELETE</td>
			<td>UPDATE</td>
			
		</tr>

		<%
		for(User user : list) {
		%>
		<tr>
			<td><%=user.getId()%></td>
			<td><%=user.getName()%></td>
			<td><%=user.getAge()%></td>
			<td><%=user.getAddress()%></td>
			<td><%=user.getEmail()%></td>
			<td><%=user.getPassword()%></td>
   <td><a href="delete?id=<%=user.getId()%>"><button>DELETE</button></a></td>
    <td><a href="update?id=<%=user.getId()%>"><button>UPDATE</button></a></td>
   
		</tr>




		<%
		}
		%>
	</table>

</body>
</html>
