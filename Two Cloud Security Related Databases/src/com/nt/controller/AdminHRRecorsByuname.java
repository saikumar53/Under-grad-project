package com.nt.controller;

import java.io.IOException;

import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.dto.HRResultDTO;
import com.nt.service.AdminService;

public class AdminHRRecorsByuname extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		String uname = req.getParameter("username");
		System.out.println(uname);

		String result = "";
		RequestDispatcher rd = null;
		AdminService service = new AdminService();
		try {
			int cnt = service.getDataByUname(uname);
			if (cnt == 0) {
				List<HRResultDTO> hrdto = service.getData();
				result = req.getParameter("username") + " Not Updated";
				req.setAttribute("result1", result);
				req.setAttribute("list", hrdto);
				rd = req.getRequestDispatcher("/success.jsp");
				rd.forward(req, res);

			} else {
				List<HRResultDTO> hrdto = service.getData();
				result = req.getParameter("username")
						+ "  Successfully Updated";
				req.setAttribute("result1", result);
				req.setAttribute("list", hrdto);
				rd = req.getRequestDispatcher("/success.jsp");
				rd.forward(req, res);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, res);
	}
}
