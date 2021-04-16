
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.MySqlConnector"%>
<%@page import="java.sql.Connection"%>
<%
	if (session.getAttribute("username") == null) {
	response.sendRedirect("login.jsp");
}
%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Blog</title>
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
	<%
		Integer id = Integer.parseInt(request.getParameter("id"));
	Connection conn = MySqlConnector.connect();
	String sql = "SELECT * FROM tbl_blogs WHERE id=? AND user_id=?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setInt(1, id);
	stmt.setInt(2, Integer.parseInt(session.getAttribute("userId").toString()));
	ResultSet rs = stmt.executeQuery();
	while (rs.next()) {
	%>
	<div class="container">
		<div class="col-md-6">
			<h2>Edit Blog Post</h2>
			<hr />
			<form method="POST" action="edit-blog-post.jsp">
				<input type="hidden" name="txt_id"
					value="<%=request.getParameter("id")%>" /> <label>Blog
					Title (*)</label> <input type="text" placeholder="Blog Title" required
					class="form-control" max="100" name="txt_blog_title"
					value="<%=rs.getString("blog_title")%>" /> <label>Blog
					Content (*)</label>
				<textarea rows="10" placeholder="Blog Content" required
					name="txt_blog_contents" class="form-control">
					<%=rs.getString("blog_content")%>
		</textarea>
				<br />
				<button type="submit" name="btn_blog_post" class="btn btn-primary">Update
					Post</button>
				&nbsp; <a href="index.jsp" class="btn btn-danger">Cancel</a>
			</form>
		</div>
	</div>
	<%
		}
	%>
</body>
</html>