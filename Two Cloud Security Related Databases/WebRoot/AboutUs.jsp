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
	
		<title>AboutUs page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>
	<jsp:include page="header.jsp"></jsp:include>
	<!--<div align="center"><a href="index.jsp"> Back</a></div>
	--><body bgcolor="silver">
		<div>
			<h2 style="color:blue;text-align:center">
				<marquee>
					About Of This Web Page
				</marquee>
			</h2>
		</div>
		<h1 style="text-align: center;color:gray">
			Welcome To WebSite
		</h1>
		<br>
		<p>
			

				In
order to provide sufficient functionality for SQL queries, many
secure database schemes have been proposed. However, such
schemes are vulnerable to privacy leakage to cloud server. The
main reason is that database is hosted and processed in cloud
server, which is beyond the control of data owners. For the
numerical range query, those schemes cannot
provide sufficient privacy protection against practical challenges,
e.g., privacy leakage of statistical properties, access pattern.
Furthermore, increased number of queries will inevitably leak
more information to the cloud server. In this paper, we propose
a two-cloud architecture for secure database, with a series
of intersection protocols that provide privacy preservation to
various numeric-related range queries. Security analysis shows
that privacy of numerical information is strongly protected
against cloud providers in our proposed scheme.


			



		</p>
	</body>
	<div>
	
	
	
	
	
	
	
	
	</div>

	<jsp:include page="footer.jsp"/>
</html>
