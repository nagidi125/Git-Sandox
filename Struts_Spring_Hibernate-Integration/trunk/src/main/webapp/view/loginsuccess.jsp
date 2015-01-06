<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java"  contentType="text/html" import="java.util.*"%>
<html>
<head>
<title>Successful Login</title>
</head>
<body bgcolor="wheat">
<br>
   <br/>Hello, <s:property value="user.username"/>
  
  <br /><br />
  
   <s:url id="aLink" action="logout">  
          <s:param name="user.username" value="%{user.username}" />  
       </s:url>  
       <s:a href="%{aLink}"><s:property value="%{user.username}"/></s:a>                        
         
 <!--  <a href="/loginAction.action">Logout</a> -->
  <br />
  <a href="editEmployeeList.jsp">Registration</a>|
</body>
</html>