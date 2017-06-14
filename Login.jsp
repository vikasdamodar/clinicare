<%-- 
    Document   : Login
    Created on : Mar 22, 2017, 10:02:56 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<title>Login</title>

	
	<link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700|Lato:400,100,300,700,900' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="bootstrap/css/animate.css">
	
	<link rel="stylesheet" href="bootstrap/css/style.css">
	<script src="js/jquery.min.js"></script>
</head>

<body style="background-image:url('images/reg1.jpg');">
   
	<div class="container">
             
		<div class="top">
                    <a href="adminlogin.jsp" style="color:blue;float:right;"><b>Admin Login</b></a>
			<h1 id="title" class="hidden"><span id="logo">clini<span>Care</span></span></h1>
		</div>
		<div class="login-box animated fadeIn">
			<div class="box-header">
				<h2>Doctor's LogIn</h2>
			</div>
			<br/>
                        <form action="dlog.jsp" method="POST"> 
                        <input type="text" name="dusername" placeholder="Username" required>
			<br/>
			<br/>
			<input type="password" name="dpassword" placeholder="Password" required>
			<br/>
			<button type="submit">Sign In</button>
			<br/>
			<a href="#"><p class="small">Forgot your password?</p></a>
                        </form>
		</div>
	</div>
</body>

<!--<script>
	$(document).ready(function () {
    	$('#logo').addClass('animated fadeInDown');
    	$("input:text:visible:first").focus();
	});
	$('#username').focus(function() {
		$('label[for="username"]').addClass('selected');
	});
	$('#username').blur(function() {
		$('label[for="username"]').removeClass('selected');
	});
	$('#password').focus(function() {
		$('label[for="password"]').addClass('selected');
	});
	$('#password').blur(function() {
		$('label[for="password"]').removeClass('selected');
	});
</script>-->

</html>
