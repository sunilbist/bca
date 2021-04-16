
<%
	if (request.getParameter("btn_calculate") != null) {
	String n1 = request.getParameter("txt_first_number");
	String n2 = request.getParameter("txt_second_number");
	out.print("<h2>" + (n1 + n2) + " </h2>");
}
%>
<a href="calculate.jsp">Do Again</a>