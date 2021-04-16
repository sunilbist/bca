<%@page import="db.MySqlConnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
	String email = request.getParameter("txt_username");
String pass = request.getParameter("txt_password");
try {
	
	Connection conn=MySqlConnector.connect();
	//prepare sql query
	String sql = "SELECT * FROM tbl_users WHERE email=? AND password=?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	
	//set parameters
	stmt.setString(1, email);
	stmt.setString(2, pass);

	//execute and test the authentication
	ResultSet rs = stmt.executeQuery();
	boolean isAuthenticated = false;
	String fullName="";
	Integer id=0;
	while (rs.next()) {
		id =rs.getInt("id");
		fullName=rs.getString("first_name") +" "+rs.getString("last_name");
		isAuthenticated = true;
	}

	//close the db connection and redirectconn.close();
	if (isAuthenticated) {
		session.setAttribute("userId", id);
		session.setAttribute("fullName", fullName);
		session.setAttribute("username", email);
		
		
		response.sendRedirect("index.jsp");
	} else {
		response.sendRedirect("login.jsp?err=invalid login details");
	}

} catch (Exception e) {
	out.println(e.getMessage());
}
%>