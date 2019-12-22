package com.nt.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.dto.HRDTO;
import com.nt.service.HRService;
import com.nt.service.HRServiceImpl;

public class HRRegistorController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public HRRegistorController() {
		System.out.println("Controller Constructor Called");
	}

	private HRService service = null;
	private HRDTO dto = null;
	private String result = "";
	private RequestDispatcher rd = null;

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		dto = new HRDTO();
		dto.setAge(Integer.parseInt(req.getParameter("tage")));
		dto.setBlgroup(req.getParameter("blood"));
		dto.setEducation(req.getParameter("qua"));
		dto.setEmail(req.getParameter("email"));
		dto.setExperience(Integer.parseInt(req.getParameter("exp")));
		dto.setGender(req.getParameter("m"));
		dto.setPassword(req.getParameter("psw"));
		dto.setHradd(req.getParameter("add"));
		dto.setHrname(req.getParameter("hname"));
		dto.setUsername(req.getParameter("uname"));
		dto.setMobileno(Long.parseLong(req.getParameter("tmobile")));
		dto.setSalary(Double.parseDouble(req.getParameter("sal")));
		dto.setStatus(req.getParameter("hidden"));
		service = new HRServiceImpl();
		try {
			result = service.registractionForm(dto);
			result=req.getParameter("uname")+"   "+result;
			req.setAttribute("result", result);
			rd = req.getRequestDispatcher("/Registraionpage.jsp");
			rd.forward(req, res);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
