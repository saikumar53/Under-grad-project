package com.nt.service;

import com.nt.dto.HRDTO;

public interface HRService {
	//register(-) send the hr details
	public String registractionForm(HRDTO dto)throws Exception;
}
