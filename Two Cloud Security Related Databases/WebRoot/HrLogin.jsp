<%@ page isELIgnored="false" language="java" import="java.util.*"
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

		<title>HRLogin Page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<style>
form label {
	display: inline-block;
	width: 100px;
	font-weight: bold;
}
</style>
	</head>
	<script type="text/javascript">
function ValidateForm() {
	var uname = frm.uname.value;
	var psw = frm.psw.value;
	if (uname == "") {
		alert("HR Name is Required");
		return false;
	}
	if (psw == "") {
		alert("HR Password is Required");
		return false;
	}

	else {
		return true;
	}

}
</script>
	<body bgcolor="silver">
		<jsp:include page="header.jsp" />

		<h1 style="background: #5DADE2; text-align: center">
			**** HR Login Form ****
		</h1>
		<!--<div align="left">
			<a href="index.jsp"> Back</a>
		</div>
		--><div align="center" style="color: red">
			<p>
				${result}

			</p>
		</div>
		<br>
		<div align="center" style="color: red">
			<!--<p>* indicates Manditory  Fields:Please Fill</p></div><br/>
		-->
			<form action="hrurl" name="frm" method="post"
				onsubmit="return ValidateForm()">
				<table align="center" bgcolor="cyan" border="2">
					<tr>
						<td align="center">
							HR Login
						</td>
					</tr>
					<tr>
						<td>
							<label for="uname">
								User Name *:
							</label>

							<input type="text" name="uname" />
						</td>
					</tr>
					<tr>
						<td>
							<label for="psw">
								PassWord *:
							</label>

							<input type="password" name="psw" />
							<input type="hidden" name="status" value="active" />
						</td>
					</tr>
					<tr>
						<td align="center">

							<input type="submit" value="Login" />
							<input type="reset" value="Cancel" />
						</td>
					</tr>

				</table>


			</form>
			<div align="center">
				<h3>
					<a href="Registraionpage.jsp">New Registration</a>
				</h3>
			</div>
	</body>
	<jsp:include page="footer.jsp"></jsp:include>
</html>
