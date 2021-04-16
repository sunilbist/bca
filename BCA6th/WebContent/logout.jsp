
<%
	if (session.getAttribute("username") != "" || session.getAttribute("username")!=null) {
		session.setAttribute("userId", 0);
		session.setAttribute("username", null);
	session.setAttribute("fullName", "");
	
	response.sendRedirect("login.jsp");
}
%>
