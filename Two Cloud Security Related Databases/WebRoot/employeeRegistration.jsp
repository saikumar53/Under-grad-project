<%@ page language="java" isELIgnored="false" import="java.util.*"
	pageEncoding="ISO-8859-1"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<script type="text/javascript" src="scripts/image.js">
</script>

		<base href="<%=basePath%>">

		<title>HR Page & Employee medical Form</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<script type="text/javascript">

function validateForm() {
	var uname = myform.ename.value;
	
	var add = myform.add.value;
	var age = myform.employeeage.value;
	var mobile = myform.tmobile.value;
	var email = myform.email.value;
	var blood = myform.blood.value;
	var qua = myform.qua.value;
	var pexp = myform.pexp.value;
	var cexp = myform.cexp.value;
	var sal = myform.sal.value;
	var role = myform.role.value;
	var fia = myform.ifa.value;
	
	if (uname == "") {
		alert("Employee Name must be fill");
		return false;
	}
	

	if (add == "") {
		window.alert("Address must be fill");
		return false;

	}
	if (age == "") {
		window.alert("Enter  age must be fill");
		return false;
	} else {
		if (isNaN(age)) {
			window.alert("Enter  numeric's must be fill");
			return false;

		}

	}

	if (!/^\d{10}$/.test(mobile)) {
		window.alert("Enter  mobile must be fill");
		return false;

	} 
	if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email)) {
		window.alert("Enter  emailid must be fill");
		return false;

	}
	if (blood == "") {
		window.alert("Enter  blood-group must be fill");
		return false;
	}
	if (qua == "") {
		window.alert("Enter  Qualification must be fill");
		return false;
	}if (cexp == "") {
		window.alert("Enter  experience must be fill");
		return false;
	} else {
		if (isNaN(cexp)) {
			window.alert("Enter  numeric's must be fill");
			return false;

		}
	}
	if (pexp == "") {
		window.alert("Enter  experience must be fill");
		return false;
	} else {
		if (isNaN(pexp)) {
			window.alert("Enter  numeric's must be fill");
			return false;

		}
	}
	if (sal == "") {
		window.alert("Enter  Salary must be fill");
		return false;
	}
	if (role == "") {
		window.alert("Enter  role must be fill");
		return false;
	} if (fia == "") {
		window.alert("Enter  fia must be fill");
		return false;
	} 
	
}
</script>
		<style>
form label {
	display: inline-block;
	width: 100px;
	font-weight: bold;
}
</style>
	</head><jsp:include page="HRheadermenu.jsp"></jsp:include>
	<body bgcolor="silver">
		<!--<h3 style="text-align: center; color: blue; background-color: skyblue">
			HR Successfully Logining
		</h3>

		-->
		<h1 style="color: blue; text-align: center; background: cyan">
			**** Employee Registration Form ***
		</h1>
		<h3 style="text-align: center; color: blue; background-color: skyblue">
			${result}
		</h3>
		<h2 style="color: blue; text-align: center;">
			<form action="erfcurl" method="post" name="myform"
				onsubmit="return validateForm()">
				<table align="center" bgcolor="skyblue" border="2">
					<tr>
						<td align="left">


							<a href="successhr.jsp"> Back</a>





						</td>
					</tr>



					<tr>
						<td>
							<label for="ename">
								Employee Name:
							</label>

							<input type="text" name="ename" required />

						</td>

					</tr>
					<tr>
						<td>

							<label for="add">
								Address:
							</label>


							<textarea rows="2" cols="20" value="" id="add" name="add">
 
</textarea>
						</td>

					</tr>

					<tr>
						<td>

							<label for="gender">
								Gender:
							</label>


							<input type="radio" value="male" name="m" checked />
							Male &nbsp;&nbsp;&nbsp;
							<input type="radio" value="female" name="m" />
							FeMale
						</td>

					</tr>

					<tr>
						<td>

							<label for="employeeage">
								Age :
							</label>


							<input type="text" name="employeeage" required />
						</td>

					</tr>
					<tr>
						<td>

							<label for="tmobile">
								Mobile No:
							</label>


							<input type="text" id="tmobile" name="tmobile" required />
						</td>

					</tr>
					<tr>
						<td>

							<label for="email">
								Email-Id:
							</label>



							<input type="email" id="email" name="email" required />
						</td>

					</tr>
					<tr>
						<td>
							<label for="blood">
								Blood Group:
							</label>

							<input type="text" name="blood" required />
						</td>

					</tr>

					<tr>
						<td>
							<label for="qua">
								Education Qualification:
							</label>

							<input type="text" name="qua" required />
						</td>

					</tr>

					<tr>
						<td>
							<label for="pexp">
								Previous Experience:
							</label>

							<input type="text" name="pexp" />
						</td>

					</tr>
					<tr>
						<td>
							<label for="cexp">
								Current Experience:
							</label>

							<input type="text" name="cexp" required />
						</td>

					</tr>
					<tr>
						<td>
							<label for="sal">
								Salary:
							</label>

							<input type="text" name="sal" required />
						</td>

					</tr>
					<tr>
						<td>
							<label for="role">
								Role:
							</label>

							<input type="text" name="role" required />
						</td>

					</tr>
					<tr>
						<td>
							<label for="ifa">
								Industry Functional Area:
							</label>

							<input type="text" name="ifa" required />
						</td>

					</tr>

					<tr>
						<td>
							<label for="fresume">
								EResume:
							</label>

							<input type="file" name="fresume" />
						</td>

					</tr>



					<tr>

						<td>
							<label for="fphoto">
								Employee Photo:
							</label>
							<input type="file" name="fphoto" class="textfield"
								accept="image/gif,image/png" onChange="preview(this)" />
							<img alt="See Photo Here" id="previewField" src="images/flag.gif"
								height="150" width="120"></img>
						</td>
					</tr>
					<tr>
						<td align="center">

							<input type="submit" value="Submit" />
							<input type="reset" value="Cancel" />



						</td>
					</tr>


				</table>

			</form>

		</h2>



		<br>
	</body>
	<jsp:include page="footer.jsp"></jsp:include>
</html>
