	<%@ page import="java.sql.*"%>
	<html>
	<body>
		<%

			String uname=request.getParameter("txt_uname").trim();  // login.jsp page madhun username kadhla
			String upwd=request.getParameter("txt_pwd");			// same password pan kadhla.

			String sql="select full_name, upassword from users where username=?";  // paramterized query

			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "super");						


			PreparedStatement ps=con.prepareStatement(sql);
			ps.setString(1,uname);         //  no 1 as paramater uname pass kel je user ni takla
			ResultSet rs=ps.executeQuery();   // result set ni query execute keli
			String fn="",upass="";    // Two variables ghetle fullname and upassword sathi

			if(rs.next())   			// next method he database mde  pointer next line var ja sathi aste
			{
				fn=rs.getString("full_name");
				upass=rs.getString("upassword");
				rs.close();
				ps.close();
				con.close();

				if(upwd.equals(upass))  //databaase ana user ni put kelela password compare kela
				{
					session.setAttribute("full_name",fn);
					session.setAttribute("username",uname);
					response.sendRedirect("usershome.jsp"); //login zalyavar ya page var yenar and name will display
				}
				else 
				{
					out.println("<center><font face='calibari'size='10pt'color='red'>");
					out.println("Incorrect Password <br/></font></center>");  // otherwise incorrect pass will show
				}
			}
			else 
			{
		%>
				<br/><br/><br/>
				<center>
				<font face='arial'size='10pt' color='red'>
					User Not Registerd..			<!-- show karnar ki user registred cha nahi ahe-->
				</font>
				</center>
		<%
			rs.close();
			ps.close();
			con.close();
		}
		%>
		<center>
		<hr style="width: 100%;height: 10pt;background: crimson">
	<a href="start.jsp" alt="Home">

	</a>
</body>
</html>



	

	