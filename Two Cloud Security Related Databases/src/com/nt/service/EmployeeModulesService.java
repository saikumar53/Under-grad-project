package com.nt.service;

import com.nt.bo.EmployeeMedicalBO;
import com.nt.bo.EmployeeRegistorBO;
import com.nt.bo.EmployeeTransactionBO;
import com.nt.dao.EmployeeAllModulesRegistorDAO;
import com.nt.dto.EmployeeMedicalDTO;
import com.nt.dto.EmployeeRegistorDTO;
import com.nt.dto.EmployeeTransactionDTO;
import com.sun.org.apache.commons.beanutils.BeanUtils;

public class EmployeeModulesService {
	private EmployeeAllModulesRegistorDAO dao = null, dao1 = null,
			erdao = null;
	private EmployeeTransactionBO bo = null;

	public int sendTransactionDetails(EmployeeTransactionDTO dto)
			throws Exception {
		dao = new EmployeeAllModulesRegistorDAO();
		bo = new EmployeeTransactionBO();
		BeanUtils.copyProperties(bo, dto);
		int cnt = dao.storeTransactionDetails(bo);
		return cnt;
	}

	public int sendMedicalDetails(EmployeeMedicalDTO dto) throws Exception {
		dao1 = new EmployeeAllModulesRegistorDAO();
		EmployeeMedicalBO mbo = new EmployeeMedicalBO();
		BeanUtils.copyProperties(mbo, dto);
		int cnt = dao1.storeMedicalDetails(mbo);
		return cnt;
	}

	public int sendEmployeeDetails(EmployeeRegistorDTO dto) throws Exception {
		erdao = new EmployeeAllModulesRegistorDAO();
		EmployeeRegistorBO ebo = new EmployeeRegistorBO();
		BeanUtils.copyProperties(ebo, dto);
		int cnt = erdao.storeEmployeeInformation(ebo);
		return cnt;
	}
}
