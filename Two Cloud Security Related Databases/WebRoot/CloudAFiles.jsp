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
<%


String type=request.getParameter("cloud");
System.out.println("tyoe--------"+type);
 %>
		<br>
		<br><jsp:include page="successhr.jsp"></jsp:include>
		<%if(type.equals("1"))
		{
	%>
	
	<center><a href="C:/Users/Abhinay/Desktop/data.csv">Click here To view File</a></center>
	
	<%
	}
	else
	{	
		 %>
		 <%
		String status=request.getParameter("status");
		if(status!=null){
	out.print("<center><h1>"+status+"</h1></center>");	
	}	 %>
		<form action="./Decrypt">
			<div style="color: red; text-align: center; background-color: cyan">
				<table align="center" width="500">
					
					<tr align="center">
					<th>SNo</th><th>FileName</th><th>Key</th><th>C<input type="hidden" value="<%=type %>" name="type"/></th>
					</tr>
					
					<tr align="center">
					<td>1</td>
						
					<td>data1.csv</td><td><input type="text" name="key" required/></td><td><input  type="submit" value="Decrypt"></td>
					
					</tr>
				<table>
			</div>
		</form>
		
		<%
		if(request.getParameter("decc")!=null)
		{
		String pa=(String)request.getParameter("decc");
		System.out.println("pa------"+pa);
		
		%>
		
		<center><a href="<%=pa %>">Click here To view File</a></center>
		<%
		}
		}
		 %>
		
		<br>

	</body>
<br/>
<br/>


</html>






