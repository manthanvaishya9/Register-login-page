<html>
<body>
	<%@ page import ="java.sql.*"%>   <!--directive tag used keli ahe package import kara sathi.-->
	<%         						  // Scriplet tag used keli java cha code write kela.
	try 
	{
		String full_name=request.getParameter("txt_name").trim().toUpperCase();      // ya mdhe sarv values kadle 
		String emailid=request.getParameter("txt_emailid").trim().toLowerCase();      
		String mobno=request.getParameter("txt_mobile_no").trim().toLowerCase();
		String gender=request.getParameter("ddl_gender").trim();

		String uname=request.getParameter("txt_uname");
		String pwd=request.getParameter("txt_pwd");

	


		String sql="insert into users(full_name,emailid,mobno,gender,username,upassword)values(?,?,?,?,?,?)"; 

		// this all are the name of cloumns in database and paramaterized query.

		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "super");

		// prepared statment to execute the query

		PreparedStatement ps=con.prepareStatement(sql);
		ps.setString(1,full_name);  // here we put all the values of all ? by giveing serial wise
		ps.setString(2,emailid);
		ps.setString(3,mobno);
		ps.setString(4,gender);
		ps.setString(5,uname);
		ps.setString(6,pwd);

	
		int n=ps.executeUpdate();
		ps.close();
		con.close();
		if(n==1)
		response.sendRedirect("regsucess.jsp");  // if execute hogi means n=1 then go on regsucces.jsp pager .
		else	
		response.sendRedirect("regfailed.jsp");   // else go on regfailed.jsp page.
	}
	catch(Exception ex)
	{
		out.println(ex);
	}
	
%>
<br>
<a href="register.jsp">Register</a>
</body>
</html>