<%@ page language="java" import="java.util.*,java.sql.*"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.io.*"%>
<%@page import="com.wc.core.AbstractDataAccessObject"%>
<%@page import="javax.mail.Session,com.nt.controller.*"%>
<%@page import="com.nit.encry.Encryption"%>
<%@page import="com.nt.encrypt_decrypt.*"%>
<%@page import="au.com.bytecode.opencsv.CSVWriter"%>
<%@page import="com.nt.cloud.*"%>
<%@page import="com.nt.mailer.*"%>



<jsp:include page="query.jsp"></jsp:include>


<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<%
	String query = (String) session.getAttribute("query");
	if (query.equalsIgnoreCase("SELECT * FROM EMPLOYEEREG")) {
		/*java.awt.EventQueue.invokeLater(new Runnable() {
			public void run() {
				new LineChart().setVisible(true);
			}
		});*/
		//Class.forName("oracle.jdbc.driver.OracleDriver");
		System.out.println("Exceegg");
		Connection con = AbstractDataAccessObject.getConnection();
		/*DriverManager.getConnection(
			"jdbc:oracle:thin:@localhost:1521:xe", "oracle", "oracle");*/
		ResultSet rs = null;
		ResultSetMetaData rsmd = null;
		String encryption=Encryption.encryptText(query);
		PreparedStatement ps = con.prepareStatement(query);
		System.out.println("Exceegg--------->fhjk--->" + encryption);
		rs = ps.executeQuery();
		rsmd = rs.getMetaData();
		int count = rsmd.getColumnCount();
		
		
		FileWriter fo=new FileWriter("C:/Users/Abhinay/Desktop/data.csv");
		
		File f=new File("C:/Users/Abhinay/Desktop/data.csv");
		
		CSVWriter writer = new CSVWriter(fo);
Boolean includeHeaders = true;

Boolean s=true;
writer.writeAll(rs,includeHeaders);

	writer.close();
	fo.close();
		
		long first14 = (long) (Math.random() * 100000000000000L);
    	long number = 5200000000000000L + first14;
    	System.out.println(number);
    	
    	String key=Long.toString(number);
    	
		 File encryptedFile = new File("C:/Users/Abhinay/Desktop/encrypt.csv");
		 CryptoUtils.encrypt(key, f, encryptedFile);
		
		Ftpcon ftp=new Ftpcon();
		
		Boolean check=ftp.upload(encryptedFile);
		Boolean b=ftp.upload1(encryptedFile);
		System.out.println("successflly uploaded into drive----"+b);
		
		String email=(String)session.getAttribute("email");
		String sub="Private Key for Access Second cloud";
		
		System.out.println("email------"+email);
		
		int ch=Mailer.sendEmail(email,sub,key);
		
		System.out.println("ch-----------"+ch);
		
%>
<body bgcolor="silver">
	<table align="center" border="2">
<center ><h3>Data SuccessFully Uploaded To The Cloud</h3></center>
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
				System.out.println("Exceegg");
				Connection con = AbstractDataAccessObject.getConnection();
				/*DriverManager.getConnection(
					"jdbc:oracle:thin:@localhost:1521:xe", "oracle", "oracle");*/
				ResultSet rs = null;
				ResultSetMetaData rsmd = null;
				String encryption=Encryption.encryptText(query);
				PreparedStatement ps = con.prepareStatement(query);
				System.out.println("Exceegg--------->fhjk--->" + encryption);
				rs = ps.executeQuery();
				rsmd = rs.getMetaData();
				int count = rsmd.getColumnCount();
				
					FileWriter fo=new FileWriter("C:/Users/Abhinay/Desktop/data.csv");
		
		File f=new File("C:/Users/Abhinay/Desktop/data.csv");
		
		CSVWriter writer = new CSVWriter(fo);
Boolean includeHeaders = true;

Boolean s=true;
writer.writeAll(rs,includeHeaders);

	writer.close();
	fo.close();
		
		long first14 = (long) (Math.random() * 100000000000000L);
    	long number = 5200000000000000L + first14;
    	System.out.println(number);
    	
    	String key=Long.toString(number);
    	
		 File encryptedFile = new File("C:/Users/Abhinay/Desktop/encrypt.csv");
		 CryptoUtils.encrypt(key, f, encryptedFile);
		
		Ftpcon ftp=new Ftpcon();
		
		Boolean check=ftp.upload(encryptedFile);
		Boolean b=ftp.upload1(encryptedFile);
		System.out.println("successflly uploaded into drive----"+b);
		
		String email=(String)session.getAttribute("email");
		String sub="Private Key for Access Second cloud";
		
		System.out.println("email------"+email);
		
		int ch=Mailer.sendEmail(email,sub,key);
		
		System.out.println("ch-----------"+ch);
		
				
				
				
		%>
		<body bgcolor="silver">
			<table align="center" border="2">
			<center ><h3>Data SuccessFully Uploaded To The Cloud</h3></center>	
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

					}
				%>
				
			
		</body>
	</table>
	<h2 align="center">
		<a href="query.jsp">Home</a>
	</h2>