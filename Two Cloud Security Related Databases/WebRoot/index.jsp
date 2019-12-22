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
<jsp:include page="header.jsp"></jsp:include>
	


	
	<!--<h2 style="background: skyblue  ">
				<a href="index.jsp">Home</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="adminLogin.jsp">Admin Login</a>&nbsp;&nbsp;&nbsp;&nbsp;
				<a href="HrLogin.jsp">HR Login</a> &nbsp;&nbsp;&nbsp;&nbsp;


				<a href="AboutUs.jsp">AboutUs</a> &nbsp;&nbsp;&nbsp;&nbsp;

				<a href="contact.jsp">ContactUs</a> &nbsp;&nbsp;&nbsp;&nbsp;


			</h2>
	--><body bgcolor="silver">



		<img alt="cloud" height="950" width="1150" src="image/cloud.png">


		<br>


		<jsp:include page="footer.jsp"></jsp:include>

	</body>
</html>
