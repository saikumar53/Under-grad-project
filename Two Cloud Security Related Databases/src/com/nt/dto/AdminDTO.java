package com.nt.dto;

import java.io.Serializable;

public class AdminDTO implements Serializable {
	private String uname;
	private String psw;

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPsw() {
		return psw;
	}

	public void setPsw(String psw) {
		this.psw = psw;
	}

}
