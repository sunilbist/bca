<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Calculate</title>
</head>
<body>
	<form method="post">
		<input type="number" required name="txt_first_number" placeholder="Enter First Number"/>
		<input type="number" required name="txt_second_number" placeholder="Enter Second Number" />
		<button type="submit" name="btn_calculate">Calculate</button>
		
	</form>
	
	<%
	if (request.getParameter("btn_calculate") != null) {
	String n1 = request.getParameter("txt_first_number");
	String n2 = request.getParameter("txt_second_number");
	out.print("<h2>" + (n1 + n2) + " </h2>");
}
%>
	
</body>
</html>