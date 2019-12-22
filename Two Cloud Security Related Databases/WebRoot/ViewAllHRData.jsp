<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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

		<title>Success Page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<% %>
	<jsp:include page="adminheadermenu.jsp" />
	<body bgcolor="silver">
		<h2>
			<div align="center">

				<h3
					style="text-align: center; color: blue; background-color: skyblue">
					Admin Successfully Logining
				</h3>
				<h4 style="text-align: center; color: blue">
					${result1}
				</h4>
				HR Details:

				<br>
				<table border="2px">
					<tr>
						<th>
							UserName
						</th>
						<th>
							Mobile No
						</th>
						<th>

							Address
						</th>
						<th>

							Gender
						</th>
						<th>

							Age
						</th>
						<th>

							Email
						</th>
						<th>
							Status
						</th>
						
					</tr>

					<c:forEach var="table" items="${list}">
						<tr>
							<td>
								<c:out value="${table.username}" />
							</td>
							<td>
								<c:out value="${table.mobile}" />
							</td>
							<td>
								<c:out value="${table.hradd}" />
							</td>
							<td>
								<c:out value="${table.gender}" />
							</td>
							<td>
								<c:out value="${table.age}" />
							</td>
							<td>
								<c:out value="${table.email}" />
							</td>
							<td>
							
										${table.status}
									

							</td>
							

						</tr>
					</c:forEach>

				</table>
				<%
				
			 %><!--
				<a href="adminLogin.jsp">Logout</a>
			--></div>
		</h2>
		<br />

	</body>
</html>
