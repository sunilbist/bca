<%@page import="java.sql.PreparedStatement"%>
<%@page import="db.MySqlConnector"%>
<%@page import="java.sql.Connection"%>
<%
if(request.getParameter("btn_blog_post")!=null){
	String title= request.getParameter("txt_blog_title");
	String content= request.getParameter("txt_blog_contents");
	
	Connection conn = MySqlConnector.connect();
	String sql="UPDATE tbl_blogs SET blog_title=?, blog_content=? WHERE id=? AND user_id=?";
	PreparedStatement stmt = conn.prepareStatement(sql);
	stmt.setString(1, title);
	stmt.setString(2, content);
	stmt.setInt(3, Integer.parseInt(request.getParameter("txt_id")));
	stmt.setInt(4, Integer.parseInt(session.getAttribute("userId").toString()));	
	Integer result= stmt.executeUpdate();
	if(result>0){
		response.sendRedirect("index.jsp?msg=success");
	}else{
		response.sendRedirect("index.jsp?err=Your are not authorised to update this record");
	}
	
}

%>