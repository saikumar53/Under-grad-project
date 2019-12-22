<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
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

		<title>Cloud DataStore Project</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
		<link type="text/css" href="./menu/menu.css" rel="stylesheet" />
		<script type="text/javascript" src="./menu/jquery.js">
</script>
		<script type="text/javascript" src="./menu/menu.js">
</script>
	</head>
	<%
		String user = (String) session.getAttribute("auser");
		//System.out.println(user);
	%>


	<body>
		<div>
			<h1 style="color: #8E44AD; text-align: center; background: cyan">
				Two Cloud Secure DataStore For Numeric Related Sql Range Queries
				with Privacy Preserving.


			</h1>




		</div>
		<br>
		<div id="menu">
			<ul class="menu">

				<li>
					<a href="index.jsp" class="parent"><span><font color="white">Home</font></span> </a>
				</li>
				<li>
					<a href="employeeRegistration.jsp"><font color="white">Registration</font>
					</a>
				<li>
				</li>
				<li>
					<a href="employeemedical.jsp"><font color="white">Medical</font></a>
				</li>

				<li>
					<a href="query.jsp"><font color="white">Query</font></a>
				</li>

				</li>
				<li>
					<a href="transaction.jsp"><font color="white">Transaction</font></a>


				
				</li>
				
				<li>
					<a href="cloud.jsp"><font color="white">Cloud Data</font></a>


				
				</li>
				
				<li>
					<a href="HrLogin.jsp"><font color="white">Logout</font></a>
					
					
				</li>










			</ul>
		</div>

	</body>
</html>
