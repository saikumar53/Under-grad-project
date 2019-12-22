<%@ page isELIgnored="false" language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
   
    <title>adminLogin page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript">
function ValidateForm() {
	var uname = frm.uname.value;
	var psw = frm.psw.value;
	if (uname == "") {
		alert("Admin Name is Required");
		return false;
	}
	if (psw == "") {
		alert("Admin Password is Required");
		return false;
	}

	else {
		return true;
	}

}
</script>
  
  <body bgcolor="silver">
   	<jsp:include page="header.jsp" /><!--
   	 <div align="left"><a href="index.jsp"> Back</a></div>
		--><h1 style="background: #5DADE2; text-align: center">
		
			**** Admin Login Form ****
		</h1><br/><h4 style="color:red;text-align:center" >${result}</h4>
		
		<br>
		<form action="adminurl"  name="frm" method="post" onsubmit="return ValidateForm()">
			<table align="center" bgcolor="cyan" border="2">
				<tr>
					<td align="center">
						Admin Login
					</td>
				</tr>
				<tr>
					<td>
						User Name:
						<input type="text" name="uname" required>
					</td>
				</tr>
				<tr>
					<td>
						PassWord:
						<input type="password" name="psw" required/>
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
<br>
  </body>
  <jsp:include page="footer.jsp"></jsp:include>
</html>
