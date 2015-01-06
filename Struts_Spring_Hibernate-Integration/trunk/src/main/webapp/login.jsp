<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="/struts-tags" prefix="s"%>
<html>
<head>
<meta charset="utf-8">
<title>SimpleAdmin-Login</title>

<!-- Stylesheets -->
<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700'
	rel='stylesheet'>
<link rel="stylesheet" href="css/style.css">
<!-- 
 Optimize for mobile devices
<meta name="viewport" content="width=device-width, initial-scale=1.0" /> -->
</head>
<body>

	<!-- TOP BAR -->
	<s:div id="top-bar">

		<s:div cssClass="page-full-width">

			<s:a href="#" cssClass="round button dark ic-left-arrow image-left ">Return
				to website</s:a>

		</s:div>
		<!-- end full-width -->

	</s:div>
	<!-- end top-bar -->

	<!-- HEADER -->
	<s:div id="header">

		<s:div cssClass="page-full-width cf">

			<s:div id="login-intro" cssClass="fl">

				<h1>Login to HTC</h1>
				<h5>Enter your credentials below</h5>

			</s:div>
			<!-- login-intro -->

			<!-- Change this image to your own company's logo -->
			<!-- The logo will automatically be resized to 39px height. -->
			<s:a href="#" id="company-branding" cssClass="fr">
				<img src="images/company-logo.png" alt="Blue Hosting" />
			</s:a>

		</s:div>
		<!-- end full-width -->

	</s:div>
	<!-- end header -->

	<!-- MAIN CONTENT -->
	<s:div id="content" requiredPosition="center">

		<s:form action="login" method="post" >
			
				<p>
					<s:textfield key="user.username" cssStyle="round full-width-input"
						 />
				</p>
				<p>
					<s:password key="user.userpass" cssStyle="round full-width-input" />
				</p>
				<p>
					<s:submit key="user.login" theme="simple"
						cssClass="button round blue image-right ic-right-arrow" />
				</p>
				<br />
				<s:div cssClass="information-box round">Just click on the "LOG IN" button to continue, no login information required.</s:div>
			
		</s:form>
	</s:div>
	<!-- end content -->

	<!-- FOOTER -->
	<div id="footer">

		<p>
			&copy; Copyright 2014 <a href="#">HTC Global Services Pvt Ltd,
				Hyderabad</a>. All rights reserved.
		</p>
		<p>
			<strong>Admin</strong> theme created by
			<s:a href="http://www.adipurdila.com">Krishna Nagidi</s:a>
		</p>

	</div>
	<!-- end footer -->

</body>
</html>