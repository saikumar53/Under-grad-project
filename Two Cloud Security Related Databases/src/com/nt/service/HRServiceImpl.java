package com.nt.service;

import com.nt.bo.HRBO;
import com.nt.dao.HRDAO;
import com.nt.dao.HRDAOImpl;
import com.nt.dto.HRDTO;
import com.sun.org.apache.commons.beanutils.BeanUtils;

public class HRServiceImpl implements HRService {

	public HRServiceImpl() {
		System.out.println("SERVICE Contructor Called");
	}

	private HRDAO dao = null;
	private int cnt = 0;
	private HRBO bo = null;
	private String result = "";

	public String registractionForm(HRDTO dto) throws Exception {
		dao = new HRDAOImpl();
		bo = new HRBO();
		BeanUtils.copyProperties(bo, dto);
		cnt = dao.registerHRFormData(bo);
		if (cnt == 0)
			result = "Registraction Failed";
		else
			result = "Registraction Success";
		return result;
	}

}
