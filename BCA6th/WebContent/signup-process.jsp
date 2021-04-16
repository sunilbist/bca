
<%@page import="db.MySqlConnector"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
	String firstName = request.getParameter("txt_first_name");
String lastName = request.getParameter("txt_last_name");
String gender = request.getParameter("rdo_gender");
String dob = request.getParameter("txt_dob");
String email = request.getParameter("txt_email_address");
String pass = request.getParameter("txt_password");
String confirm = request.getParameter("txt_confirm_password");
if (!pass.equals(confirm)) {
	response.sendRedirect("signup.jsp?err=Password and Confirm password not matched");
} else {

	try {
		Connection conn=MySqlConnector.connect();
		
		// prepare sql statement
		String sql = "INSERT INTO tbl_users(first_name,last_name,gender,date_of_birth,email,password,status) VALUES(?,?,?,?,?,?,?)";
		PreparedStatement stmt = conn.prepareStatement(sql);
		//set parameters
		stmt.setString(1, firstName);
		stmt.setString(2, lastName);
		stmt.setString(3, gender);
		stmt.setString(4, dob);
		stmt.setString(5, email);
		stmt.setString(6, pass);
		stmt.setInt(7, 1);

		//execute sql
		int id = stmt.executeUpdate();
		//close the connection and redirect to required page
		conn.close();
		if (id > 0) {
	response.sendRedirect("login.jsp?success");
		} else {
	response.sendRedirect("signup.jsp?err");
		}

	} catch (Exception e) {
	}
}
%>