<%@page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPEhtmlPUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN""http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<s:head />
	<meta charset="utf-8">
	<title>SimpleAdmin - Login to My WebApp</title>
	
	<!-- Stylesheets -->
	<link href='http://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet'>
	<link rel="stylesheet" href="css/style.css">

	<!-- Optimize for mobile devices -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0"/>  
</head>
<body>

	<!-- TOP BAR -->
	<div id="top-bar">
		
		<div class="page-full-width">
		
			<a href="#" class="round button dark ic-left-arrow image-left ">Return to website</a>

		</div> <!-- end full-width -->	
	
	</div> <!-- end top-bar -->
	
	
	
	<!-- HEADER -->
	<div id="header">
		
		<div class="page-full-width cf">
	
			<div id="login-intro" class="fl">
			
				<h1>Login to My WebApp</h1>
				<h5>Enter your credentials below</h5>
			
			</div> <!-- login-intro -->
			
			<!-- Change this image to your own company's logo -->
			<!-- The logo will automatically be resized to 39px height. -->
			<a href="#" id="company-branding" class="fr"><img src="images/company-logo.png" alt="Blue Hosting" /></a>
			
		</div> <!-- end full-width -->	

	</div> <!-- end header -->
	
	
	
	<!-- MAIN CONTENT -->
	<div id="content">
	
		<s:form action="login" theme="simple" method="post" id="login-form">
		
			<fieldset>

				<p>
					<s:textfield label="Username" name="user.username" cssClass="round full-width-input" onfocus/>
				</p>

				<p>
					<s:password  label="Password" name="user.userpass"  cssClass="round full-width-input" />
				</p>
				
				<p>I've <a href="#">forgotten my password</a>.</p>
				
				<!-- <a href="dashboard.html" class="button round blue image-right ic-right-arrow">LOG IN</a> -->
				<s:submit cssClass="button round blue image-right ic-right-arrow" >LOG IN</s:submit>

			</fieldset>

			<br/><div class="information-box round">Just click on the "LOG IN" button to continue, no login information required.</div>

		</s:form>
		
	</div> <!-- end content -->
	
	
	
	<!-- FOOTER -->
	<div id="footer">

		<p>&copy; Copyright 2014 <a href="#">Varma IT solutions Pvt Ltd</a>. All rights reserved.</p>
		<p><strong>SimpleAdmin</strong> theme by <a href="http://www.adipurdila.com">Adi Purdila</a></p>
	
	</div> <!-- end footer -->

</body>
</html>