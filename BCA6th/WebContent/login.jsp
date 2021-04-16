<%
if(session.getAttribute("username")!=null){
	response.sendRedirect("index.jsp");
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="col-md-6">
			<h3>Application Login</h3>
			<form method="post" action="authenticate.jsp">
				<label>Username</label> <input type="email" required name="txt_username"
					class="form-control" />
					<label>Password</label>
					<input type="password" name="txt_password" required class="form-control"/>
					<br/>
					<a href="signup.jsp" class="btn btn-success">Don't have an account? Signup</a>
					&nbsp;<button type="submit" class="btn btn-primary">Login</button>
			</form>
		</div>
	</div>
</body>
</html>