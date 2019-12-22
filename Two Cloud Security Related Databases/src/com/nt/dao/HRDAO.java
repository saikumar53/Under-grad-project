package com.nt.dao;

import java.sql.SQLException;

import com.nt.bo.HRBO;

public interface HRDAO {
	public int registerHRFormData(HRBO bo)throws SQLException;
}
