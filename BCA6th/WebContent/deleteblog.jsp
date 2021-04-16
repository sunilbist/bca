
<%
	if (request.getParameter("id") == null) {
	response.sendRedirect("index.jsp");
}
%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.MySqlConnector"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Blog</title>
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
		<h2>Delete Blog Post</h2>
		<hr />
		<form method="post">
			<h2>Are you sure you want to delete this record?</h2>
			<input type="hidden" name="txt_id"
				value="<%=request.getParameter("id")%>" />
			<button type="submit" class="btn btn-success" name="btn_delete">Yes</button>
			<a href="index.jsp" class="btn btn-danger">No</a>
		</form>
	</div>
	<%
		if (request.getParameter("btn_delete") != null) {
		Integer id = Integer.parseInt(request.getParameter("txt_id"));
		Connection conn = MySqlConnector.connect();
		String sql = "UPDATE tbl_blogs SET status ='0' WHERE id=? AND user_id=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		stmt.setInt(1, id);
		stmt.setInt(2, Integer.parseInt(session.getAttribute("userId").toString()));
		Integer res = stmt.executeUpdate();
		if (res > 0) {
			response.sendRedirect("index.jsp");
		} else {
			response.sendRedirect("deleteblog.jsp?err=You are not authorized to delete this post");
		}
	}
	%>
</body>
</html>