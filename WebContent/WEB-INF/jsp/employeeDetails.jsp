<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>EmployeeList</title>
</head>
<body>
<h2>Employee List</h2>
<c:if test="${!empty empList}">
	<table border="2px">
	<tr>
		<th width="80">Id</th>
		<th width="120">Employee Name</th>
		<th width="120">Salary</th>
		<th width="120">Designation</th>
		<th width="60">Update</th>
		<th width="60">Delete</th>
	</tr>
	<c:forEach items="${empList}" var="elist">
		<tr>
			<td>${elist.id}</td>
			<td>${elist.name}</td>
			<td>${elist.salary}</td>
			<td>${elist.designation}</td>
			<td><a href="<c:url value='updateEmployee/${elist.id}' />" >Edit</a></td>
			<td><a href="<c:url value='/deleteEmployee/${elist.id}' />" >Remove</a></td>
		</tr>
	</c:forEach>
	<tr>
	<td></td>
	</tr>
	<tr>
	<td><a href="registerEmployee">Add new Employee</a></td>
	</tr>
	</table>
</c:if>
</body>
</html>