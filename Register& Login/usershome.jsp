<html>
<body>
	<%
		response.setHeader("Cache-Control","no-cache,no-store,must relevant");
		response.setHeader("Pragma","no-cache");
		response.setDateHeader("Expires",0);


		String fn="",un="";

		if(session.getAttribute("full_name")!= null && session.getAttribute("username")!=null)
		{
			fn=session.getAttribute("full_name").toString();
			un=session.getAttribute("username").toString();
		}
		else 
			response.sendRedirect("pagenotfound.jsp");
	%>
	<div style="background-color: deepskyblue;height: 90%;width: 100%;position: absolute;">
		<table style="width: 100%;text-align:center;">
			<tr>
				<td>
					<font face="arial" size="10px" color="white">
					<u>WELCOME <%=fn%></u>
					</font>
				</td>
			</tr>
			<tr>
				<td>
					<font face="arial"size="8px"color="blue">
						username <%=un%>
					</font>
				</td>
			</tr>
			<tr>
				<td>
				<a href="logout.jsp" style="font-family: calibari;font-size: 20px;color:white;">Logout</a>
			</td>
			</tr>
		</table>
	</div>
	</body>
</html>