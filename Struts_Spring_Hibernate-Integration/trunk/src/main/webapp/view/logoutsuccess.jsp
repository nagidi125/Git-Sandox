<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java"  contentType="text/html" import="java.util.*"%>
<html>
<head>
<title>Successful Logout</title>
</head>
<body>
<br>
<hr/>You are successfully logged out!
 <b>Session Time: </b><%= new Date(session.getLastAccessedTime())%>
  <br/>
   <br/>
  <a href="<%= request.getContextPath() %>/com/nagidi/controller/loginAction">Logout</a>
      <br/>
 </body>