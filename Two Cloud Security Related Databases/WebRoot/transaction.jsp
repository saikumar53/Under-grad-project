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

	var bname = myform.bname.value;
	var acno = myform.acno.value;
	var tdate = myform.tdate.value;
	var ttype = myform.ttype.value;
	var amount = myform.amount.value;
	var cname = myform.cname.value;
	if (uname == "") {
		alert("Employee Name must be fill");
		return false;
	}

	if (bname == "") {
		window.alert("Bank Name must be fill");
		return false;

	}
	if (acno == "") {
		window.alert("Enter  acno must be fill");
		return false;
	} else {
		if (isNaN(acno)) {
			window.alert("Enter acnumber only numeric's ");
			return false;

		}

	}
	if (tdate == "") {
		window.alert("Transaction Date must be fill");
		return false;

	}

	if (ttype == "") {
		window.alert("Enter  Transaction Type must be fill");
		return false;

	}
	if (amount == "") {
		window.alert("Enter  amount must be fill");
		return false;

	} else {
		if (isNaN(amount)) {
			window.alert("Enter  amount only Numbers must be fill");
			return false;

		}
	}
	if (cname == "") {
		window.alert("Enter  Company Name must be fill");
		return false;
	} else {
		return true;
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
	</head>
	<jsp:include page="successhr.jsp" />


	<body bgcolor="silver">


		<h1 style="color: blue; text-align: center; background: cyan">
			**** Employee Transaction Details ***
		</h1>
		<h2 style="color: blue; text-align: center;">
			<form action="trurl" method="post" name="myform"
				onsubmit="return validateForm()">
				<h3
					style="text-align: center; color: blue; background-color: skyblue">
					${result}
				</h3>
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
							<label for="bname">
								Bank Name:
							</label>

							<input type="text" name="bname" required />
						</td>

					</tr>
					<tr>
						<td>
							<label for="acno">
								Account Number:
							</label>

							<input type="text" name="acno" required />
						</td>

					</tr>
					<tr>
						<td>
							<label for="tdate">
								Transaction Date:
							</label>

							<input type="date" name="tdate" required />
							(mm/dd/yyyy)
						</td>

					</tr>
					<tr>
						<td>
							<label for="ttype">
								Transaction Type:
							</label>


							<select name="ttype">
								<option>
									Select Any One
								</option>
								<option value="savings">
									Savings
								</option>
								<option value="current">
									Current
								</option>

							</select>
						</td>

					</tr>

					<tr>
						<td>
							<label for="amount">
								Amount:
							</label>

							<input type="text" name="amount" />
						</td>

					</tr>
					<tr>
						<td>
							<label for="cname">
								Company Name:
							</label>

							<input type="text" name="cname" required />
						</td>

					</tr>
					<td align="center">

						<input type="submit" value="Submit" />
						<input type="reset" value="Cancel" />



					</td>
					</tr>
					<!--
					<input type="hidden" name="ctoken" value="${stoken}" />


				-->
				</table>






			</form>
			<!--



			<div align="center">
				<a href="index.jsp">Logout</a>
			</div>
			

		-->
		</h2>



		<br>
	</body>
	<jsp:include page="footer.jsp"></jsp:include>
</html>
