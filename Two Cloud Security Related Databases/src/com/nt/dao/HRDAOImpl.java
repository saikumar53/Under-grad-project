package com.nt.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.nt.bo.HRBO;
import com.wc.core.AbstractDataAccessObject;

public class HRDAOImpl extends AbstractDataAccessObject implements HRDAO {
	// database table Name is::HRREGISTOR
	private static final String INSERT_query = "INSERT INTO HRREGISTOR VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
	private PreparedStatement ps = null;
	private int cnt = 0;
	private Connection con = null;

	public HRDAOImpl() throws Exception {

		//System.out.println("DAOImpl Constructor");
		/*Class.forName("oracle.jdbc.driver.OracleDriver");
		con = DriverManager.getConnection(
				"jdbc:oracle:thin:@localhost:1521:xe", "oracle", "oracle");*/
	}

	public int registerHRFormData(HRBO bo) throws SQLException {
		try{
			con=getConnection();
		ps =con.prepareStatement(INSERT_query);
		ps.setString(1, bo.getHrname());
		ps.setString(2, bo.getHradd());
		ps.setString(3, bo.getGender());
		ps.setInt(4, bo.getAge());
		ps.setLong(5, bo.getMobileno());
		ps.setString(6, bo.getEmail());
		ps.setString(7, bo.getBlgroup());
		ps.setString(8, bo.getEducation());
		ps.setDouble(9, bo.getSalary());
		ps.setInt(10, bo.getExperience());
		ps.setString(11, bo.getUsername());
		ps.setString(12, bo.getPassword());
		ps.setString(13, bo.getStatus());
		cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			if (ps != null) {
				ps.close();
			}
			if (con != null) {
				con.close();
			}
		}
	
		return cnt;
	}
	
	public String getEmail(String name)
	{
	String email="";
	try
	{
	con=getConnection();
	ps =con.prepareStatement("select email from HRREGISTOR where uname=?");
	ps.setString(1,name);
	ResultSet rs=ps.executeQuery();
	while(rs.next())
	{
		email=rs.getString(1);
	}
	
	}
	catch(Exception e)
	{
	e.printStackTrace();	
	}
	return email;
		
		
	}
	

}
