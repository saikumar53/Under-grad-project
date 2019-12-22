package com.nt.dao;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.nt.bo.AdminBO;
import com.nt.bo.HRResultBO;
import com.wc.core.AbstractDataAccessObject;

public class AdminDAO extends AbstractDataAccessObject {
	// database table Name is::HRREGISTOR
	private static final String SELECT_query = "SELECT COUNT(*) FROM ADMIN_REG WHERE ADMINNAME=? AND ADMINPSW=?";
	private static final String SELECT_HRRECORDS = "SELECT UNAME,MOBILENO,HRADD,GENDER,EMAIL,AGE,STATUS FROM HRREGISTOR WHERE STATUS='pending'";
	private static final String SELECT_HRAllRECORDS = "SELECT UNAME,MOBILENO,HRADD,GENDER,EMAIL,AGE,STATUS FROM HRREGISTOR WHERE STATUS='active'";
	private static final String UPDATE_HRRECORDSBYUNAME = "UPDATE  HRREGISTOR SET STATUS=? WHERE UNAME=?";
	private PreparedStatement ps = null, ps1 = null;
	private int cnt = 0;
	private Connection con = null;
	private ResultSet rs = null, rs1 = null;
	private Statement st = null;

	public AdminDAO() throws Exception {

		//System.out.println("DAOImpl Constructor");
		/*
		 * Class.forName("oracle.jdbc.driver.OracleDriver"); con =
		 * DriverManager.getConnection( "jdbc:oracle:thin:@localhost:1521:xe",
		 * "oracle", "oracle");
		 */
	}

	public int Authodicate(AdminBO bo) throws SQLException {
		try {
			con = getConnection();
			ps = con.prepareStatement(SELECT_query);
			//System.out.println(bo.getUname());
			ps.setString(1, bo.getUname());
			ps.setString(2, bo.getPsw());

			//System.out.println(SELECT_query);
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

	public List<HRResultBO> getHRData() throws SQLException {

		List<HRResultBO> lbo = null;
		HRResultBO bo = null;
		try {
			con = getConnection();
			st = con.createStatement();
			rs1 = st.executeQuery(SELECT_HRRECORDS);
			lbo = new ArrayList<HRResultBO>();
			while (rs1.next()) {
				//System.out.println("hai");
				bo = new HRResultBO();

				bo.setUsername(rs1.getString(1));
				bo.setMobile(rs1.getLong(2));
				bo.setHradd(rs1.getString(3));
				bo.setGender(rs1.getString(4));
				bo.setAge(rs1.getInt(6));
				bo.setEmail(rs1.getString(5));
				bo.setStatus(rs1.getString(7));

				lbo.add(bo);
				// System.out.println(rs.getString(3));
			}

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

		return lbo;
	}
	public List<HRResultBO> getAllHRData() throws SQLException {

		List<HRResultBO> lbo = null;
		HRResultBO bo = null;
		try {
			con = getConnection();
			st = con.createStatement();
			rs1 = st.executeQuery(SELECT_HRAllRECORDS);
			lbo = new ArrayList<HRResultBO>();
			while (rs1.next()) {
				//System.out.println("hai");
				bo = new HRResultBO();

				bo.setUsername(rs1.getString(1));
				bo.setMobile(rs1.getLong(2));
				bo.setHradd(rs1.getString(3));
				bo.setGender(rs1.getString(4));
				bo.setAge(rs1.getInt(6));
				bo.setEmail(rs1.getString(5));
				bo.setStatus(rs1.getString(7));

				lbo.add(bo);
				// System.out.println(rs.getString(3));
			}

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

		return lbo;
	}


	public int getHRDataByUName(String uname) throws SQLException {
		int count = 0;
		try {
			con = getConnection();
			ps1 = con.prepareStatement(UPDATE_HRRECORDSBYUNAME);

			System.out.println("===========*****===============");
			ps1.setString(1, "active");
			ps1.setString(2, uname);
			System.out.println(UPDATE_HRRECORDSBYUNAME);
			boolean flage = ps1.execute();
			System.out.println("===========*****===============");
			if (flage == true) {
				//System.out.println("hai");
				count = 0;
				// System.out.println(rs.getString(3));
			} else {
				count = 1;
			}

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
		//System.out.println(count);
		return count;

	}

}
