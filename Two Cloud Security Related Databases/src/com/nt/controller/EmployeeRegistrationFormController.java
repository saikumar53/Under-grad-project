package com.nt.controller;

import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.dto.EmployeeRegistorDTO;
import com.nt.service.EmployeeModulesService;

public class EmployeeRegistrationFormController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String result = "";
		RequestDispatcher rd = null;
	//	res.setHeader(arg0, arg1)
		try {
			EmployeeModulesService service = null;
			EmployeeRegistorDTO dto = new EmployeeRegistorDTO();
			dto.setEname(req.getParameter("ename"));
			dto.setAdd(req.getParameter("add"));
			dto.setGender(req.getParameter("m"));
			dto.setAge(Integer.parseInt(req.getParameter("employeeage")));
			dto.setBlgroup(req.getParameter("blood"));
			dto.setEmail(req.getParameter("email"));
			dto.setMobileno(Long.parseLong(req.getParameter("tmobile")));
			dto.setEducation(req.getParameter("qua"));
			dto.setPresentExp(Integer.parseInt(req.getParameter("pexp")));
			dto.setCurrentExp(Integer.parseInt(req.getParameter("cexp")));
			dto.setSalary(Double.parseDouble(req.getParameter("sal")));

			dto.setRole(req.getParameter("role"));

			dto.setIndustryFunctionalArea(req.getParameter("ifa"));
			System.out.println(req.getParameter("fphoto"));
			dto.setPhoto(req.getParameter("fphoto"));
			dto.setResume(req.getParameter("fresume"));
			service = new EmployeeModulesService();
			int cnt = service.sendEmployeeDetails(dto);
			if (cnt == 0) {
				result = req.getParameter("ename") + "\t"
						+ "Registration Failed";
				req.setAttribute("result", result);
				rd = req.getRequestDispatcher("/employeeRegistration.jsp");
				rd.forward(req, res);
			} else {
				result = req.getParameter("ename") + "\t"
						+ "Registration Success";
				req.setAttribute("result", result);
				rd = req.getRequestDispatcher("/employeeRegistration.jsp");
				rd.forward(req, res);
			}
		} catch (Exception e) {
			e.printStackTrace();

		}

	}

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doPost(req, resp);
	}
}
