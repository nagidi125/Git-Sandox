<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%-- <jsp:include page="/view/loginCheck.jsp" /> --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body bgcolor="wheat">
	<br>
	<h2>
		Hello !! <font color=blue><s:property value="user.username" />
		</font>
	</h2>
	<h2>
		<font color=red>Welcome To Employee Registration page</font>
	</h2>
	<br />

	<%-- <s:property value="#session.context" />
	<br/>
	< <a
		href="<%=request.getContextPath()%>/com/nagidi/controller/loginAction">Logout</a> 
	<br/>
	<p><a href="<s:url action='login'/>">Logout</a></p> --%>

	<s:url id="aLink" action="logout" >
		<s:param name="user.username" value="%{user.username}" />
	</s:url>
	<s:a href="%{aLink}">
		<s:property value="If not %{user.username}" /><br><br>Logout</s:a>
</body>
</html>