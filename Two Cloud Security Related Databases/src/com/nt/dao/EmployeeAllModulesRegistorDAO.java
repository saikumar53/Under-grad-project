package com.nt.dao;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.InputStream;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.nt.bo.EmployeeMedicalBO;
import com.nt.bo.EmployeeRegistorBO;
import com.nt.bo.EmployeeTransactionBO;
import com.wc.core.AbstractDataAccessObject;

public class EmployeeAllModulesRegistorDAO extends AbstractDataAccessObject {
	private static final String INSERT_TRANSACTIONQUERY = "INSERT INTO TRANSACTION VALUES(?,?,?,?,?,?,?)";
	private static final String INSERT_MEDICALQUERY = "INSERT INTO MEDICAL VALUES(?,?,?,?,?,?,?,?)";
	private static final String INSERT_EMPLOYEE_REG = "INSERT INTO EMPLOYEEREG VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	private PreparedStatement ps = null, ps2 = null, eps = null;

	public int storeTransactionDetails(EmployeeTransactionBO bo)
			throws SQLException {
		int cnt = 0;
		try {
			ps = getConnection().prepareStatement(INSERT_TRANSACTIONQUERY);
			ps.setString(1, bo.getEname());
			ps.setString(2, bo.getBank());
			ps.setLong(3, bo.getAcno());
			//System.out.println(bo.getTdate());
			java.sql.Date sqlStartDate = new java.sql.Date(bo.getTdate()
					.getTime());
			//System.out.println(sqlStartDate);
			ps.setDate(4, sqlStartDate);
			ps.setString(5, bo.getActype());
			ps.setDouble(6, bo.getAmount());
			ps.setString(7, bo.getCompanyname());
			cnt = ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
			ps.close();

		}
		return cnt;
	}

	public int storeMedicalDetails(EmployeeMedicalBO bo) throws SQLException {
		int count = 0;
		try {
			ps2 = getConnection().prepareStatement(INSERT_MEDICALQUERY);
			ps2.setString(1, bo.getEname());
			//System.out.println(bo.getAge());
			ps2.setString(2, bo.getBlgroup());
			ps2.setInt(3, bo.getAge());
			ps2.setString(4, bo.getGender());
			ps2.setString(5, bo.getHealthCareName());
			ps2.setString(6, bo.getBp());
			Date sqldate = new Date(bo.getTreatementDate().getTime());
			//System.out.println(sqldate);
			ps2.setDate(7, sqldate);
			ps2.setString(8, bo.getTreatedDoctor());
			count = ps2.executeUpdate();
		} catch (Exception e) {
			ps2.close();

		}
		return count;
	}

	public int storeEmployeeInformation(EmployeeRegistorBO bo)
			throws SQLException {
		int cunt = 0;
		try {
			eps = getConnection().prepareStatement(INSERT_EMPLOYEE_REG);
			eps.setString(1, bo.getEname());
			//System.out.println(bo.getAge());
			eps.setString(2, bo.getAdd());
			eps.setString(3, bo.getGender());
			eps.setInt(4, bo.getAge());
			eps.setLong(5, bo.getMobileno());
			eps.setString(6, bo.getEmail());
			eps.setString(7, bo.getBlgroup());
			eps.setString(8, bo.getEducation());
			eps.setInt(9, bo.getPresentExp());
			eps.setInt(10, bo.getCurrentExp());
			eps.setDouble(11, bo.getSalary());
			eps.setString(12, bo.getRole());
			eps.setString(13, bo.getIndustryFunctionalArea());
			File file = new java.io.File(bo.getPhoto());
			InputStream pis = new FileInputStream(file);
			System.out.println("----->>>>"+file.length());
			eps.setBinaryStream(14, pis, (int) file.length());

			File rfile = new java.io.File(bo.getResume());
			FileReader ris = new FileReader(file);
			eps.setCharacterStream(15, ris, (int) rfile.length());

			cunt = eps.executeUpdate();
		} catch (Exception e) {
			eps.close();
			e.printStackTrace();

		}
		return cunt;
	}
}
