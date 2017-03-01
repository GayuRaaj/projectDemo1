<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
<style>           
.blue-button{
	background: #25A6E1;
	filter: progid: DXImageTransform.Microsoft.gradient( startColorstr='#25A6E1',endColorstr='#188BC0',GradientType=0);
	padding:3px 5px;
	color:#fff;
	font-family:'Helvetica Neue',sans-serif;
	font-size:12px;
	border-radius:2px;
	-moz-border-radius:2px;
	-webkit-border-radius:4px;
	border:1px solid #1A87B9
}     
table {
  font-family: "Helvetica Neue", Helvetica, sans-serif;
   width: 50%;
}
th {
  background: SteelBlue;
  color: white;
}
 td,th{
                border: 1px solid gray;
                width: 25%;
                text-align: left;
                padding: 5px 10px;
            }
</style>
</head>
<body>
<form:form method="post" modelAttribute="employee" action="addEmployee">
<h2>Add Employee</h2>
<table>
		
		<tr>
		
		
          <td><form:label path="name">Employee Name:</form:label></td>
          <td><form:input path="name" size="30" maxlength="30"></form:input></td>
        </tr>
		<tr>
	      <td><form:label path="date">Date:</form:label></td>
          <td><form:input path="date" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
	      <td><form:label path="projectName">projectName:</form:label></td>
          <td><form:input path="projectName" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
	      <td><form:label path="status">status:</form:label></td>
          <td><form:input path="status" size="30" maxlength="30"></form:input></td>
		</tr>
		<tr>
			<td colspan="2"><input type="submit" value="save"
			class="blue-button" /></td>
		</tr>
	</table> 
</form:form>
</body>
</html>