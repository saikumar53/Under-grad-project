package com.nt.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.dto.EmployeeMedicalDTO;
import com.nt.service.EmployeeModulesService;

public class EmployeeMedicalDetailsRegistrationController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private EmployeeMedicalDTO mdto = null;
	private EmployeeModulesService service = null;
	private String result = "";
	private RequestDispatcher rd = null;

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		try {
			mdto = new EmployeeMedicalDTO();
			mdto.setAge(Integer.parseInt(req.getParameter("tage")));
			mdto.setEname(req.getParameter("ename"));
			mdto.setBlgroup(req.getParameter("blood"));
			mdto.setGender(req.getParameter("m"));
			mdto.setHealthCareName(req.getParameter("hcname"));
			mdto.setBp(req.getParameter("bp"));
			SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd/yyyy");
			System.out.println(req.getParameter("tdetails"));
			java.util.Date date = sdf1.parse(req.getParameter("tdetails"));
			System.out.println(sdf1.parse(req.getParameter("tdetails")));
			mdto.setTreatementDate(date);
			mdto.setTreatedDoctor(req.getParameter("tdoctor"));
			service = new EmployeeModulesService();

			int cunt = service.sendMedicalDetails(mdto);
			if (cunt == 0) {
				result = req.getParameter("ename") + "\t"
						+ "Registration Failed";
				req.setAttribute("result", result);
				rd = req.getRequestDispatcher("/employeemedical.jsp");
				rd.forward(req, res);
			} else {
				result = req.getParameter("ename") + "\t"
						+ "Registration Success";
				req.setAttribute("result", result);
				rd = req.getRequestDispatcher("/employeemedical.jsp");
				rd.forward(req, res);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		doPost(req, res);
	}
}
