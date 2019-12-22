<%@ page language="java"
	import="java.util.*,com.wc.core.AbstractDataAccessObject"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="com.nit.encry.Encryption"%>
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
							</lable>
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
							</lable>

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
							<lable for="cloud">
							SELECT CLOUD:
							</lable>

							<select name="cloud">


								<option value="CLOUD B">
									CLOUD B
								</option>

							</select>
						</td>
					</tr>
					<tr>
						<td>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="text" name="t1" />
							<input type="submit" value="Search">
						</td>
					</tr>
				</table>
			</div>
		</form>
		<br>

	</body>

	<%
		int key = (Integer) session.getAttribute("pass");
		int privatekey = Integer.parseInt(request.getParameter("psw"));
	try{
		if (key == privatekey) {

			String query = (String) session.getAttribute("query");
			//Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("Encryption Before query");
			Connection con = AbstractDataAccessObject.getConnection();
			/*DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe", "oracle", "oracle");*/
			ResultSet rs = null;
			ResultSetMetaData rsmd = null;
			String encryption=Encryption.encryptText(query);
			PreparedStatement ps = con.prepareStatement(query);
			System.out.println("Encryptional Data--->" + encryption);
			rs = ps.executeQuery();
			rsmd = rs.getMetaData();
			int count = rsmd.getColumnCount();
	%>
	<table align="center" border="2">
		
		<%
			while (rs.next()) {
		%>
		<tr>
			<%
				for (int i = 1; i <= count; i++) {
							if (i == 14) {
								/*	InputStream is = rs.getBinaryStream(i);
									byte[] buff = new byte[1024];
									int cnt = 0;
									FileOutputStream fos = new FileOutputStream("D:/abc/"+new Random().nextInt(10)+".JPG");
									while ((cnt = (int) is.read()) != -1) {
										fos.write(buff, 0, cnt);

									}
									is.close();
									fos.flush();
									fos.close();*/

							} else {
			%>


			<td><%=rs.getString(i)%></td>

			<%
				}
						}
			%>
		</tr>
		<%
			}
			} else {
		%>
		<a href="CloudBLogin.jsp">Try Again Wrong Key</a>
		<%
			}}
			catch(Exception e)
			{
			System.out.println("Internal Server Problem");
			}
		%>


	</table>
</html>






