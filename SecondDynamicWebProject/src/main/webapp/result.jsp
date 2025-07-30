<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 3. Directives -> Metadata -->
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Signup Confirmation</title>
<style>
body {
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	background: linear-gradient(to right, #e0eafc, #cfdef3);
	color: #333;
	text-align: center;
	padding-top: 100px;
}

h1 {
	color: #2e86de;
	font-size: 2.5em;
	margin-bottom: 20px;
	white-space: nowrap;
}

h2 {
	color: #e74c3c;
	font-weight: normal;
	font-size: 1.2em;
}

.box {
	background-color: #ffffffcc;
	padding: 30px;
	margin: auto;
	width: 100%; /* or 90% if you want padding from screen edge */
	max-width: 700px; /* increase from 500px to 700px */
	border-radius: 12px;
	box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
}
</style>
</head>
<body>
	<%-- 1. Scriptlet -> write Java code inside --%>
	<%
    String name = (String) request.getAttribute("name");
    String password = (String) request.getAttribute("password");
%>

	<div class="box">
		<h1>
			Hi
			<%= name %>, you have Signed Up!
		</h1>
		<%-- 2. Expression -> prints output --%>
		<!--  <h2>Don't expose your password: <%= password %></h2>-->
		<h2>
			<b>Thank you for registering!!!😊
		</h2>
	</div>

</body>
</html>
