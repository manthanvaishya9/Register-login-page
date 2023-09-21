<html>
<head>
	<style>
		p{ background-image: url('images/login.jpg');

		}
	</style>
	<link rel="stylesheet"type="text/css"href="pro_style.css">
	<script type="text/javascript">
		function validate()
		{
			var err_msg="";		// variable ghetala 
			if(document.frmlogin.txt_uname.value.trim().length== 0)   // document means current page 
				err_msg=err_msg+"username is required\n";			// username nhi takla tr he print hoiel

			if(document.frmlogin.txt_pwd.value.trim().length==0)
				err_msg=err_msg+"password is required\n";

			if(err_msg!="")				//jar err_msg not equal to null asel tr err_msg print kara
			{
				alert(err_msg);
				return;
			}
			else 
			document.frmlogin.submit();   // err_msg equl to null asel tr submit kara
	
		}

</script>
</head>
	<body>
		
		<form action="logincheck.jsp", method="Post", name="frmlogin">
		<center>

		<font face="calibari"size="10px"color="crimson">
			LOGIN HERE
			<br/>
			<hr style="width:100%;height: 10px;background: blue;background-clip: border-box;">
		</font><br/>

			<table style="font font-family: arial;font-size: 30px;">
				<tr>
					<td> Username</td>
					<td><input type="text"name="txt_uname"autocomplete="off"/> <!--autocomplete means you cant chng-->
					</td>
				</tr>
				<tr>
					<td>Password</td>
					<td><input type="text"name="txt_pwd"autocomplete="off"/>
					</td>
				</tr>
				<tr>
					<td></td>
					<td> <input type="button"value="Login"name="btn_login"
					onclick="validate()"/></td>
				</tr>
			</table>
		</center>
		</form>
		<center>
<hr style="width:100%; height: 8px;background: green;">
	<a href="start.jsp"alt="Home" >
	<img src="images/homelogo.jpg"width="80px" height="80px">
</a>
</center>
</body>
</html>
