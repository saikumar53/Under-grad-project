package com.nt.service;

import com.nt.bo.HRLoginBO;
import com.nt.dao.HRDAOLogin;
import com.nt.dto.HRLoginDTO;
import com.sun.org.apache.commons.beanutils.BeanUtils;

public class HRServiceLogin {
	private HRDAOLogin dao = null;
	private HRLoginBO bo = null;
	private int cnt = 0;

	public int authondication(HRLoginDTO dto) throws Exception {
		bo = new HRLoginBO();
		dao = new HRDAOLogin();
		BeanUtils.copyProperties(bo, dto);
		cnt = dao.Authodicate(bo);

		return cnt;
	}

}
