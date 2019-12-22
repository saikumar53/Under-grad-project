package com.nt.bo;

import java.util.Date;

public class EmployeeMedicalBO {
	private String ename;
	private int age;
	private String gender;
	private String blgroup;
	private String healthCareName;

	private String bp;
	private Date treatementDate;
	private String treatedDoctor;

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBlgroup() {
		return blgroup;
	}

	public void setBlgroup(String blgroup) {
		this.blgroup = blgroup;
	}

	public String getHealthCareName() {
		return healthCareName;
	}

	public void setHealthCareName(String healthCareName) {
		this.healthCareName = healthCareName;
	}

	public String getBp() {
		return bp;
	}

	public void setBp(String bp) {
		this.bp = bp;
	}

	public Date getTreatementDate() {
		return treatementDate;
	}

	public void setTreatementDate(Date treatementDate) {
		this.treatementDate = treatementDate;
	}

	public String getTreatedDoctor() {
		return treatedDoctor;
	}

	public void setTreatedDoctor(String treatedDoctor) {
		this.treatedDoctor = treatedDoctor;
	}

}
