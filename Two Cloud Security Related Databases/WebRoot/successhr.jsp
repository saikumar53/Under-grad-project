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

		<title>successhr page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--

		<!--<link rel="stylesheet" type="text/css" href="circle.css">



	-->
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	</head>
	<jsp:include page="HRheadermenu.jsp" />
	<body bgcolor="silver">
		<h3 style="text-align: center; color: blue; background-color: skyblue">
			HR Successfully Logining
			
			
			
		</h3>
		
		

		
		<!--<h2 style="background: #F5B041">

			<a href="employeeRegistration.jsp">Registration</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="employeemedical.jsp">Medical</a> &nbsp;&nbsp;&nbsp;&nbsp;


			<a href="transaction.jsp">Transaction</a> &nbsp;&nbsp;&nbsp;&nbsp;
			<a href="query.jsp">Query</a> &nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
			<right>
			
			<a href="HrLogin.jsp">Logout</a>
			</right>

		</h2>
		--><div class="w3-container" align="center">
			<h2>
				
			</h2>
			
			<img src="image/hr.JPG" class="w3-circle" alt="Norway"
				style="width: 50%">
		</div>


		<br>



	</body>


</html>
