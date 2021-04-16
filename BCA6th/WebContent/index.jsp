
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
<title>Home Page</title>
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
		<H1>
			Welcome to Home Mr.
			<%=session.getAttribute("fullName")%></H1>
		<a href="createblog.jsp">Create New Blog</a> <a href="logout.jsp"
			class="btn btn-danger">Logout</a>
		<hr />

		<div class="col-md-12">
			<%
				try {
				Connection conn = MySqlConnector.connect();
				String sql = "SELECT * FROM tbl_blogs WHERE status='1'";
				PreparedStatement stmt = conn.prepareStatement(sql);
				ResultSet rs = stmt.executeQuery();
				while (rs.next()) {
			%>
			<div class="col-md-6">
				<h3><%=rs.getString("blog_title")%></h3>
				<p><%=rs.getString("blog_content")%>
					<br /> <b><i>Published By: <%
 	String sql2 = "SELECT first_name, last_name FROM tbl_users WHERE id=?";
 PreparedStatement stmt2 = conn.prepareStatement(sql2);
 stmt2.setInt(1, rs.getInt("user_id"));
 ResultSet rs2 = stmt2.executeQuery();
 while (rs2.next()) {
 	out.print(rs2.getString("first_name") + " " + rs2.getString("last_name"));
 }
 %> at <%=rs.getString("created_date")%></i></b>
				</p>
				<%
					Integer sUserId = Integer.parseInt(session.getAttribute("userId").toString());
				if (rs.getInt("user_id") == sUserId) {
					out.print("<a href='editblog.jsp?id=" + rs.getInt("id") + "'>Edit</a>");
					out.print("&nbsp;<a href='deleteblog.jsp?id=" + rs.getInt("id") + "'>Delete</a>");
				}
				%>

			</div>
			<%
				}
				conn.close();
			} catch (Exception e) {
				out.println(e.getMessage());
			}
			%>

		</div>
	</div>

</body>
</html>