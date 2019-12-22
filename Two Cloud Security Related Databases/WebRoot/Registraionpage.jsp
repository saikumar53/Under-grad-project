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

		<base href="<%=basePath%>">

		<title>HR Registraction Page</title>
		<style>
form label {
	display: inline-block;
	width: 100px;
	font-weight: bold;
}
</style>
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
	var uname = myform.uname.value;
	var hname = myform.hname.value;
	var add = myform.add.value;
	var age = myform.tage.value;
	var mobile = myform.tmobile.value;
	var email = myform.email.value;
	var blood = myform.blood.value;
	var qua = myform.qua.value;
	var psw = myform.psw.value;
	var cpsw = myform.cpsw.value;
	var exp = myform.exp.value;
	var sal = myform.sal.value;
	if (uname == "") {
		alert("User Name must be fill");
		return false;
	}
	if (hname == "") {
		window.alert("HR Name must be fill");
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
	}
	if (sal == "") {
		window.alert("Enter  Salary must be fill");
		return false;
	}
	if (exp == "") {
		window.alert("Enter  experience must be fill");
		return false;
	} else {
		if (isNaN(exp)) {
			window.alert("Enter  numeric's must be fill");
			return false;

		}
	}
	if (psw == "") {
		window.alert("Enter  Password must be fill");
		return false;
	}
	if (psw != cpsw) {
		alert("Passwords do not match.");
		return false;
	}

	else {
		return true;
	}
}
</script>



	</head>
	<jsp:include page="header.jsp" />


	<body bgcolor="silver">
		<h1 style="text-align: center; color: green">
			${result}
		</h1>
		<h1 style="color: blue; text-align: center; background: cyan">
			**** HR Registration Form ***
		</h1>
		<h2 style="color: blue; text-align: center;">
			<!--<div align="left">
				<a href="index.jsp"> Back</a>
			</div>
			--><form action="regurl" method="post" name="myform"
				onsubmit="return validateForm()">
				<table align="center" bgcolor="skyblue" border="2">
					<tr>
						<td>
							<label for="uname">

								User Name:
							</label>
							<input type="text" id="uname" name="uname" required />
						</td>
					</tr>


					<tr>
						<td>
							<label for="hname">

								HR Name:
							</label>


							<input type="text" id="hname" name="hname">

						</td>

					</tr>
					<tr>
						<td>
							<label for="add">

								Address:
							</label>



							<textarea rows="2" cols="20" id="add" name="add">
 
</textarea>
						</td>

					</tr>

					<tr>
						<td>
							<label for="m">

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
							<label for="tage">

								Age:
							</label>

							<input type="text" name="tage" required />
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


							<input type="text" id="email" name="email" required />
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
							<label for="sal">

								Salary:
							</label>


							<input type="text" name="sal" required />
						</td>

					</tr>
					<tr>
						<td>
							<label for="exp">

								Experience:
							</label>

							<input type="text" name="exp" />
						</td>

					</tr>
					<tr>
						<td>
							<label for="psw">

								Password:
							</label>


							<input type="password" name="psw" required />
						</td>

					</tr>
					<tr>
						<td>
							<label for="cpsw">

								Conform Password:
							</label>


							<input type="password" name="cpsw" required />
						</td>

					</tr>


					<tr>
						<td align="center">

							<input type="submit" value="Submit" />
							<input type="reset" value="Cancel" />


							<input type="hidden" name="hidden" value="pending" />
						</td>
					</tr>



				</table>






			</form>





		</h2>



		<br>
	</body>
	<jsp:include page="footer.jsp"></jsp:include>
</html>
