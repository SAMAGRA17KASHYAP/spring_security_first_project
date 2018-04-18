<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<style>
	.errorBlock{
		color : #ff0000;
		background-color:#ffeeee;
		border:3px solid #ff0000;
		padding:8px;
		margin:16px;
	}
</style>
</head>
<body onload="document.f.j_username.focus();">
	<h3> Fitness Tracker Custom Login</h3>
	<c:if test="${not empty error}">
		<div class="errorBlock">
			Your Login was unsuccessfull<br/>
			caused:${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
		</div>
	</c:if>
	<form action ="j_spring_security_check" method="post" name="f">
		username<input name="j_username" type="text"/>
		<br/>
		password<input name="j_password" type="text"/>
		<br/>
		<input type="submit" value="Login"/>
	</form>
</body>
</html>