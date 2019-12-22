package com.nt.service;

import java.util.ArrayList;
import java.util.List;

import com.nt.bo.AdminBO;
import com.nt.bo.HRResultBO;
import com.nt.dao.AdminDAO;
import com.nt.dto.AdminDTO;
import com.nt.dto.HRResultDTO;
import com.sun.org.apache.commons.beanutils.BeanUtils;

public class AdminService {
	private AdminDAO dao = null, dao1 = null;
	private AdminBO bo = null;
	private int cnt = 0;
	public int authondication(AdminDTO dto) throws Exception {
		bo = new AdminBO();
		dao = new AdminDAO();
		BeanUtils.copyProperties(bo, dto);
		cnt = dao.Authodicate(bo);

		return cnt;
	}

	public List<HRResultDTO> getData() throws Exception {
		dao1 = new AdminDAO();

		List<HRResultDTO> ldto = new ArrayList<HRResultDTO>();
		List<HRResultBO> bo1 = dao1.getHRData();
		HRResultDTO dto = null;
		for (HRResultBO hrResultBO : bo1) {
			dto = new HRResultDTO();
			BeanUtils.copyProperties(dto, hrResultBO);
			ldto.add(dto);
		}
		// dto.setStatus(bo1.getStatus());
		// dto.setUsername(bo1.getUsername());
		// dto.setPassword(bo1.getPassword());
		return ldto;

	}
	public List<HRResultDTO> getAllData() throws Exception {
		dao1 = new AdminDAO();

		List<HRResultDTO> ldto = new ArrayList<HRResultDTO>();
		List<HRResultBO> bo1 = dao1.getAllHRData();
		HRResultDTO dto = null;
		for (HRResultBO hrResultBO : bo1) {
			dto = new HRResultDTO();
			BeanUtils.copyProperties(dto, hrResultBO);
			ldto.add(dto);
		}
		// dto.setStatus(bo1.getStatus());
		// dto.setUsername(bo1.getUsername());
		// dto.setPassword(bo1.getPassword());
		return ldto;

	}


	public int getDataByUname(String uname) throws Exception {
		dao1 = new AdminDAO();

		int cnt = dao1.getHRDataByUName(uname);

		return cnt;

	}


}
