<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.MySqlConnector"%>
<%
	//reference all parameters
String title = request.getParameter("txt_blog_title");
String content = request.getParameter("txt_blog_contents");

try {
	Connection conn = MySqlConnector.connect();
	//prepare sql statemnet

	String sql = "INSERT INTO tbl_blogs(user_id,blog_title,blog_content,created_date,status) VALUES(?,?,?,?,?)";
	PreparedStatement stmt = conn.prepareStatement(sql);

	//set parameters
	stmt.setInt(1, Integer.parseInt(session.getAttribute("userId").toString()));
	stmt.setString(2, title);
	stmt.setString(3, content);
	stmt.setString(4, new Date().toString());
	stmt.setInt(5, 1);

	//execute sql
	Integer res = stmt.executeUpdate();
	
	//close the connection and redirect to page
	conn.close();
	if(res>0){
		response.sendRedirect("index.jsp");
	}else{
		response.sendRedirect("createblog.jsp?err=unable to save");
	}
	
} catch (Exception e) {

}
%>