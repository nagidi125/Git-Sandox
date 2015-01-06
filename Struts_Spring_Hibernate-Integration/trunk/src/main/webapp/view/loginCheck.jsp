<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page language="java" contentType="text/html" import="java.util.*"%>
<html>
    <head>
        <title>Check validate!</title>
  </head>
    <body>
      <s:if test="#session.login != 'Krishna'">
      <jsp:forward page="login.jsp" />
      </s:if>
    </body>
</html> 