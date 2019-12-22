<%@ page language="java"
	import="java.util.*,com.wc.core.AbstractDataAccessObject"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
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

		<title>Query Page</title>

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

	<body bgcolor="silver">

		<br>
		<br><jsp:include page="successhr.jsp"></jsp:include>
		
		<%
		String status=request.getParameter("status");
		if(status!=null){
	out.print("<center><h1>"+status+"</h1></center>");	
	}	 %>
		
		
		<form action="./CloudAFiles.jsp" method="post">
			<div style="color: red; text-align: center; background-color: cyan">
				<table align="center">
					<tr>
						<td>
						
							<lable for="query">
							SELECT CLOUD:
							</lable>
							<select name="cloud">

								<option value="1">Cloud A
								</option>
								<option value="2">Cloud B
								</option>
								
							</select>
						</td>
					</tr>
					<tr>
					</tr>
					
					<tr>
					</tr>
					
					<tr>
					</tr>
					<tr>
						<td>
							<input type="submit" value="Search">
						</td>
					</tr>
				</table>
			</div>
		</form>
		<br>

	</body>
<br/>
<br/>


</html>






