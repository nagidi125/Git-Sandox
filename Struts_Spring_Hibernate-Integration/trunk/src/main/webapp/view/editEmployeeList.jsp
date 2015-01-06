<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<s:head theme="ajax" />
<title>Employee Registration</title>
<!-- Stylesheets -->
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
	rel='stylesheet'>
<link rel="stylesheet" href="css/style.css">
<%-- 
<style>
table.list {
	border-collapse: collapse;
	width: 40%;
}

table.list,table.list td,table.list th {
	border: 1px solid gray;
	padding: 5px;
}
</style> --%>
</head>
<body>
	<!-- HEADER -->
	<s:div id="header">
		<h1>Employee Registration Form</h1>
	</s:div>
	<s:div id="content">
		<s:form method="post" action="add">
			<s:textfield key="label.firstname" name="employee.firstname" />
			<s:textfield key="label.lastname" name="employee.lastname" />
			<s:textfield key="label.email" name="employee.email" />
			<s:textfield key="label.telephone" />
			<sx:datetimepicker name="date2" label="Format (dd-MMM-yyyy)"
				displayFormat="dd-MMM-yyyy" value="%{'2010-01-01'}" />
			<s:submit key="label.add" theme="simple"
				cssClass="button round blue image-right ic-right-arrow"></s:submit>
		</s:form>
	</s:div>
	<s:div cssClass="table">
		<h1>Employees</h1>
		<c:if test="${!empty employees}">
			<table class="list">
				<tr>
					<th align="left">Name</th>
					<th align="left">Email</th>
					<th align="left">Telephone</th>
					<th align="left">Actions</th>
				</tr>
				<c:forEach items="${employees}" var="emp">
					<tr>
						<td>${emp.lastname}</td>
						<td>${emp.email}</td>
						<td>${emp.telephone}</td>
						<td><a href="delete/${emp.id}">delete</a></td>
					</tr>
				</c:forEach>
			</table>
		</c:if>
	</s:div>
</body>
</html>