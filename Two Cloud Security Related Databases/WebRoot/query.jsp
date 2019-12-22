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
		<form action="./queryurl" method="post">
			<div style="color: red; text-align: center; background-color: cyan">
				<table align="center">
					<tr>
						<td>
						
							<lable for="query">
							SELECT QUERY:
							</lable></td>
							<td>
							<select name="query">

								<option value="SELECT">
									SELECT
								</option>
								<option value="PARTICULAR">
									PARTICULAR
								</option>
								<option value="BETWEEN">
									BETWEEN
								</option>
								<option value="LIMIT">
									LIMIT
								</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							<lable for="table">
							SELECT TABLE NAME:
							</lable></td>
<td>
							<select name="table">

								<option value="EMPLOYEEREG">
									EMPLOYEE
								</option>
								<option value="MEDICAL">
									MEDICAL
								</option>
								<option value="TRANSACTION">
									TRANSACTION
								</option>
							</select>
						</td>
					</tr>
					
					<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;
						
							<input type="submit" value="Search">
						</td>
					</tr>
				</table>
			</div>
		</form>
		<br>

	</body>


</html>






