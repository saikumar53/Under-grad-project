package com.nt.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import com.nt.bo.HRLoginBO;
import com.wc.core.AbstractDataAccessObject;

public class HRDAOLogin extends AbstractDataAccessObject {
	// database table Name is::HRREGISTOR
	private static final String SELECT_query = "SELECT COUNT(*) FROM HRREGISTOR WHERE UNAME=? AND PSW=? AND STATUS=?";
	
	private PreparedStatement ps = null;
	private int cnt = 0;
	private Connection con = null;
	private ResultSet rs = null;

	public HRDAOLogin() throws Exception {

		//System.out.println("DAOImpl Constructor");
		/*
		 * Class.forName("oracle.jdbc.driver.OracleDriver"); con =
		 * DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521:xe",
		 * "oracle", "oracle");
		 */
	}

	public int Authodicate(HRLoginBO bo) throws SQLException {
		try {
			con=getConnection();
			ps = con.prepareStatement(SELECT_query);
			//System.out.println(bo.getUname());
			ps.setString(1, bo.getUname());
			ps.setString(2, bo.getPsw());
			ps.setString(3, bo.getStatus());
			rs = ps.executeQuery();
			while (rs.next())
				cnt = rs.getInt(1);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (con != null) {
				con.close();
			}
		}

		return cnt;
	}

}
