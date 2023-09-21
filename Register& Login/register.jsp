<html>
<head>
	<link rel="stylesheet" type="text/css" href="reg_style.css"/>
	<script type="text/javascript">
		function validate()
		{

			// this three lines are readymade standard code to check the validations of name, mobno, eamil.

			const re_name = new RegExp('^[A-Za-z.\\s]+$');			
			const re_mobno = new RegExp('^[+][0-9]{2,2}[0-9]{10}');
			const re_email = new RegExp('[a-z0-9]+@[a-z]+\.[a-z]{2,3}');


			var err_msg="";  // take variable as err_msg.


			// Validations for name

			if(document.frm_reg.txt_name.value.trim().length==0)
				err_msg = err_msg +"full name is required\n";

			else
			{
				name= document.frm_reg.txt_name.value.trim().toUpperCase();

				if(re_name.test(name)== false)
					err_msg =err_msg+"name must contain alphabet\n";
			}

			// Validations for emailid

			if(document.frm_reg.txt_emailid.value.trim().length==0)
				err_msg=err_msg+"email id is required\n";
			else
			{
				emailid=document.frm_reg.txt_emailid.value.trim().toLowerCase();

				if(re_email.test(emailid)==false)
					err_msg=err_msg+"invalid email id\n";
			}

			// Validations for mobile no

			if(document.frm_reg.txt_mobile_no.value.trim().length==0)
				err_msg=err_msg+"mobile no is required\n";
			else
			{
				mobno=document.frm_reg.txt_mobile_no.value.trim().toLowerCase();

				if(re_mobno.test(mobno)==false)
					err_msg=err_msg+"invalid mobie no\n"
				else
					if(mobno.length!=13)
						err_msg =err_msg+"Invalid mobile no length\n";
			}

			// validations for gender

			if(document.frm_reg.ddl_gender.value=="-1")
				err_msg=err_msg+"genderr is requered\n";

			// validations for username
			
			if(document.frm_reg.txt_uname.value.trim().length==0)
				err_msg=err_msg+"username is required\n";

			// validations for password
			
			if(document.frm_reg.txt_pwd.value.trim().length==0)
				err_msg=err_msg+"password is required\n";
			else
				if(document.frm_reg.txt_pwd.value.length<8)
					err_msg=err_msg+"password must contain 8 char\n";

				// validations for confirm password

			if(document.frm_reg.txt_cpwd.value.length==0)
				err_msg=err_msg+"confirm password is required\n";
			else
				if(document.frm_reg.txt_pwd.value!=document.frm_reg.txt_cpwd.value)
					err_msg=err_msg+"password must b same as password\n";
			if(err_msg!="")
			{
				alert(err_msg);
			}
			else
				document.frm_reg.submit();
		}
	</script>
</head>
	<body>
		<center>
			<font face="gabriola"size="10px"color="crimson">
			REGISTRATION FORM
		</font>
		<hr style="height: 10px;width: 100%;background: crimson;">
	</center>


		<form action="regprocess.jsp"method="Post" name="frm_reg">
			<center>
				<table style="font-family: arial;""font-size: 30px; color: blue;">
					<tr>
						<td>Full Name:</td>
						<td><input type="text"name="txt_name" autocomplete="off"/></td>
					</tr>
					<tr>
						<td>EmailID</td>
						<td><input type="text"name="txt_emailid"autocomplete="off"/></td>
					</tr>
					<tr>
						<td>Mobile NO</td>
						<td><input type="text"name="txt_mobile_no"autocomplete="off"/></td>
					</tr>
					<tr>
						<td>GENDER</td>
						<td><select name="ddl_gender">
							<option>select gender</option>
							<option> Male</option>
							<option>Female</option>
						</select>
						</td>
					</tr>
					<tr>
						<td>USERNAME</td>
						<td><input type="text"name="txt_uname"autocomplete="off"/></td>
					</tr>
					<tr>
						<td>PASSWORD</td>
						<td><input type="text"name="txt_pwd"autocomplete="off"/></td>
					</tr>
					<tr>
						<td>CONFIRM PASSWORD</td>
						<td><input type="text"name="txt_cpwd"autocomplete="off"/></td>
					</tr>
					<tr>
						<td></td>
						<td><input type="button"value="Register"name="btn_register"onclick="validate()"></td>
					</tr>
				</table>
			</center>
		</form>
		<hr style="height:20px;width:100%;background:crimson">
		<center>
			<font >
		<a href="start.jsp"> HOME</a>    <!-- we take hyperlink to go on home page repeatedly.
	</center>

	</body>