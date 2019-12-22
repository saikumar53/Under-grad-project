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

		<title>Cloud B</title>

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
	width: 150px;
	font-weight: bold;
}
</style>
	</head>
	<script type="text/javascript">
	
function ValidateForm() {
	var uname = frm.uname.value;
	var psw = frm.psw.value;
	if (uname == "") {
		alert(" Name is Required");
		return false;
	}
	if (psw == "") {
		alert("Password is Required");
		return false;
	}

	else {
	if(psw.eval(${pass})){
		return true;
	}
	else
		return false;
	}

}
</script>
	<body bgcolor="silver">
		<jsp:include page="successhr.jsp" />

		<h1 style="background: #5DADE2; text-align: center">
			**** Cloud B Authentication ****
		</h1>
		<div align="left">
			<!--<a href="successhr.jsp"> Back</a>
		--></div>
		<div align="center" style="color: red">
			<p>
				${result}

			</p>
		</div>
		<br>
		<div align="center" style="color: red">
			<!--<p>* indicates Manditory  Fields:Please Fill</p></div><br/>
		-->
			<form action="queryForcloudb.jsp" name="frm" method="post"
				onsubmit="return ValidateForm()">
				<table align="center" bgcolor="lightgray" border="2">
					<tr>
						<td align="center">
							Cloud B Authentication
						</td>
					</tr>
					<tr>
						<td>
							<label for="uname">
								UserName *:
							</label>

							<input type="text" name="uname" placeholder="Enter Valid Email id"/>
						</td>
					</tr>
					<tr>
						<td>
							<label for="psw">
								Key Value:
							</label>

							<input  id="demo" type="text" name="key" value="${pass}" readonly="readonly"/>
							
						</td>
					</tr>
					<tr>
						<td>
							<label for="psw">
							Enter Key Value *:
							</label>

							<input  id="demo" type="password" name="psw" />
							
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
			
	</body>
	<jsp:include page="footer.jsp"></jsp:include>
</html>
