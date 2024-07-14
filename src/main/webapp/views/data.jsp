<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>View Students</h1>

	<a href="/">Add new Student</a>
	<table border="1">
		<thead>
			<tr>
				<th>S.NO:</th>
				<th>Name:</th>
				<th>Email:</th>
				<th>Gender:</th>
				<th>course:</th>
				<th>Timings:</th>
			</tr>
		</thead>
		<tbody>

			<c:form items="${students}" var="student" varStatus="index">
				<tr>
					<td>${index.count}</td>
					<td>${student.name}</td>
					<td>${student.email}</td>
					<td>${student.gender}</td>
					<td>${student.course}</td>
					<td>${student.timings}</td>
				</tr>
			</c:form>

		</tbody>
	</table>

</body>

</html>