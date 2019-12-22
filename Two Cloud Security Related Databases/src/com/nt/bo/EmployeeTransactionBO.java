package com.nt.bo;

import java.util.Date;

public class EmployeeTransactionBO {
	private String ename;
	private String bank;
	private long acno;
	private Date tdate;
	private String actype;
	private double amount;

	private String companyname;

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getBank() {
		return bank;
	}

	public void setBank(String bank) {
		this.bank = bank;
	}

	public long getAcno() {
		return acno;
	}

	public Date getTdate() {
		return tdate;
	}

	public void setTdate(Date tdate) {
		this.tdate = tdate;
	}

	public void setAcno(long acno) {
		this.acno = acno;
	}

	

	public String getActype() {
		return actype;
	}

	public void setActype(String actype) {
		this.actype = actype;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public String getCompanyname() {
		return companyname;
	}

	public void setCompanyname(String companyname) {
		this.companyname = companyname;
	}

	@Override
	public String toString() {
		return "EmployeeTransactionBO [acno=" + acno + ", tdate=" + tdate + "]";
	}
	
}
