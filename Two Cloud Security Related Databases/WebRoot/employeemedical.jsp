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

		<title>HR Page</title>

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
	var blood = myform.blood.value;
	var age = myform.tage.value;
	var hcname = myform.hcname.value;

	var bp = myform.bp.value;
	var tdetails = myform.tdetails.value;
	var tdoctor = myform.tdoctor.value;

	if (uname == "") {
	
		window.alert("Employee Name must be fill");
		return false;
	}

	if (blood == "") {
		window.alert("Blood-Group must be fill");
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

	if (hcname == "") {
		window.alert("Enter  Health-case Details must be fill");

		return false;

	}
	if (bp == "") {
		window.alert("Enter  Bp-details must be fill");
		return false;

	}
	if (tdetails == "") {
		window.alert("Enter  Treatment-details must be fill");
		return false;
	}
	if (tdoctor == "") {
		window.alert("Enter  Treated Doctor Name must be fill");
		return false;
	} else {
		return true;
	}
}
</script>

		<script language="JavaScript" type="text/javascript"
			src="scripts/ts_picker.js">
</script>
		<script language="JavaScript" src="images/javascripts.js">
</script>
		<script language="JavaScript" src="images/pop-closeup.js">
</script>
		<script language="JavaScript" src="images/javascripts.js">
</script>
		<style>
form label {
	display: inline-block;
	width: 100px;
	font-weight: bold;
}
</style>
	</head>
	<jsp:include page="successhr.jsp" />


	<body bgcolor="silver">
		<!--<h3 style="text-align: center; color: blue; background-color: skyblue">
			HR Successfully Logining
		</h3>

		-->
		<h1 style="color: blue; text-align: center; background: cyan">
			**** Employee Medical Registration Form ***
		</h1>
		<h3 style="text-align: center; color: blue; background-color: skyblue">
			${result}
		</h3>
		<h2 style="color: blue; text-align: center;">

			<form action="medicalurl" name="myform" method="post"
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
							<input type="text" name="ename"  id="ename" required />

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
							<label for="age">
								Age:
							</label>

							<input type="text" name="tage" required />
						</td>

					</tr>
					<tr>
						<td>
							<label for="gender">
								Gender :
							</label>

							<input type="radio" value="male" name="m" checked />
							Male &nbsp;&nbsp;&nbsp;
							<input type="radio" value="female" name="m" />
							FeMale
						</td>

					</tr>



					<tr>
						<td>
							<label for="healthcarecentername">
								Health Care Center Name:
							</label>

							<input type="text" name="hcname" required />
						</td>

					</tr>

					<tr>
						<td>
							<label for="bp">
								BP Details:
							</label>

							<input type="text" name="bp" />
						</td>

					</tr>
					<tr>
						<td>
							<label for="date">
								Treatement Date:
							</label>
							<input type="date" name="tdetails"  
								 />(MM/dd/yyyy)<!--
							<a
								href="javascript:show_calendar('document.register.dob', document.register.dob.value);">
								<img src="images/cal.gif" alt="a" width="18" height="18"
									border="0" /> </a> (mm/dd/yyyy)

						--></td>

					</tr>
					<tr>
						<td>
							<label for="tdoctor">
								Treated Doctor Name:
							</label>

							<input type="text" name="tdoctor" required />
						</td>

					</tr>

					<td align="center">

						<input type="submit" value="Submit" />
						<input type="reset" value="Cancel" />



					</td>
					</tr>



				</table>




				<!--<input type="hidden" name="ctoken" value="${stoken}" />


			
			-->
			</form>
		</h2>



		<br>
	</body>
	<jsp:include page="footer.jsp"></jsp:include>
</html>
