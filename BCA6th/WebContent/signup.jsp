<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Signup Page</title>
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
		<h2>Signup Page</h2>
		<%
			if(request.getParameter("err")!=null){
				%><label class="alert alert-danger"><%
				out.println(request.getParameter("err"));
				%></label><%
			}
				
		%>
			<form method="post" action="signup-process.jsp">
				<label>First Name</label> <input type="text" name="txt_first_name"
					required class="form-control" /> <label>Last Name</label> <input
					type="text" name="txt_last_name" required class="form-control" />
					<br/>
					 <label>Gender</label>
					 <br/>
				<input type="radio" name="rdo_gender" value="M" required  />Male
				<input type="radio" name="rdo_gender" required value="F"  />Female
				<br/>
				<label>Date of Birth</label> <input type="date" name="txt_dob"
					required class="form-control" /> <label>Email Address</label> <input
					type="email" name="txt_email_address" required class="form-control" />
				<label>Password</label> <input type="password" name="txt_password"
					required class="form-control" /> <label>Confirm Password</label> <input
					type="password" name="txt_confirm_password" required
					class="form-control" /> <label></label> <br /> <a href="login.jsp"
					class="btn btn-primary">Already have an account? Login</a> <input
					type="submit" name="btn_signup" value="Signup"
					class="btn btn-success" />
			</form>
		</div>
	</div>
</body>
</html>