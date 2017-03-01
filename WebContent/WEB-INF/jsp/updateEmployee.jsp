<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
</head>
<body>
<form:form method="post" modelAttribute="employee" action="/Assessment_8_Retake/addEmployee">
<h2>Edit Employee</h2>
<table>
		
		<tr>
		<form:hidden path="id" />
          <td><form:label path="name" value="${employee.name}">Employee Name:</form:label></td>
          <td><form:input path="name" size="30" maxlength="30"></form:input></td>
        </tr>
		<tr>
	      <td><form:label path="salary" value="${employee.salary}">Salary:</form:label></td>
          <td><form:input path="salary" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
	      <td><form:label path="designation" value="${employee.designation}">Designation:</form:label></td>
          <td><form:input path="designation" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="save"/></td>
		</tr>
	</table> 
</form:form>
</body>
</html>