<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@  taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    
       <h1> Student Regestrion form </h1>
       <font color='green'>${msg}</font>
       
	<form:form action="save" modelAttribute="student" method="POST">
		<label for="name">Name:</label>
		<form:input path="name" type="text" id="name"/>
		<br>
		<label for="email">Email:</label>
		<form:input path="email" type="email" id="email"/>
		<br>
		<label for="gender">Gender:</label>
		<form:radiobutton path="gender" id="gender" value="female"/>Fe-Male
		<form:radiobutton path="gender" id="gender" Value="male"/>Male
		<br>
		<label for="course">Courses</label>
		<form:select path="course">
		<form:option value="-Select-"></form:option>
		<form:options items="${course}"/>
		</form:select>
		<br>
		<label for="timing"> Timing </label>
		<form:checkboxes items="${timings}" path="timings"/>
		<br>
		<button type="submit"> Submit </button>
		
	</form:form>

  <a href="viewStudents">View Students</a>
</body>
</html>
