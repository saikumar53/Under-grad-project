package com.nt.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.dto.EmployeeTransactionDTO;
import com.nt.service.EmployeeModulesService;

public class EmployeeTransactionController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private EmployeeTransactionDTO tdto = null;
	private EmployeeModulesService service = null;
	private String result = "";
	private RequestDispatcher rd = null;

	SimpleDateFormat sdf1 = new SimpleDateFormat("MM/dd/yyyy");
	java.util.Date date = null;

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		try {
			tdto = new EmployeeTransactionDTO();
			tdto.setEname(req.getParameter("ename"));
			tdto.setBank(req.getParameter("bname"));
			tdto.setAcno(Long.parseLong(req.getParameter("acno")));
			date = sdf1.parse(req.getParameter("tdate"));
			System.out.println(req.getParameter("tdate"));

			tdto.setTdate(date);

			tdto.setActype(req.getParameter("ttype"));
			tdto.setAmount(Double.parseDouble(req.getParameter("amount")));
			tdto.setCompanyname(req.getParameter("cname"));
			service = new EmployeeModulesService();

			int cnt = service.sendTransactionDetails(tdto);
			if (cnt == 0) {
				result = req.getParameter("ename") + "\t"
						+ "Registration Failed";
				req.setAttribute("result", result);
				rd = req.getRequestDispatcher("/transaction.jsp");
				rd.forward(req, res);
			} else {
				result = req.getParameter("ename") + "\t"
						+ "Registration Succeded";
				req.setAttribute("result", result);
				rd = req.getRequestDispatcher("/transaction.jsp");
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
