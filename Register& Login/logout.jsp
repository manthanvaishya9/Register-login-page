<html>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",0);


		if(session.getAttribute("fullname")!=null && session.getAttribute("username")!=null)
		{
			session.removeAttribute("fullname");
			session.removeAttribute("username");
			session.invalidate();
			response.sendRedirect("start.jsp");
		}
		else
			response.sendRedirect("pagenotfound.jsp");
		
	%>
</body>
</html>