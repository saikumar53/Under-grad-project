package com.nt.dto;

import java.io.Serializable;

public class HRResultDTO implements Serializable {

	private String username;
	private long mobile;
	private String status;
	private String hradd;
	private String gender;
	private String email;
	private int age;

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	public String getHradd() {
		return hradd;
	}

	public void setHradd(String hradd) {
		this.hradd = hradd;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

}
