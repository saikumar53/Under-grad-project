package com.nt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.nt.dto.AdminDTO;
import com.nt.dto.HRResultDTO;
import com.nt.service.AdminService;

public class AdminController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private AdminService service = null;
	private AdminDTO dto = null;
	private PrintWriter pw = null;
	private int cnt = 0;
	private String result = null;
	private RequestDispatcher rd = null;

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		res.setContentType("text/html");
		pw = res.getWriter();
		service = new AdminService();
		dto = new AdminDTO();
		String user=req.getParameter("uname");
		dto.setUname(user);
		dto.setPsw(req.getParameter("psw"));
		try {
			cnt = service.authondication(dto);
			List<HRResultDTO> hrdto = service.getData();
			if (cnt == 0) {
				result = "InValid Credential.try Again";
				req.setAttribute("result", result);
				rd = req.getRequestDispatcher("/adminLogin.jsp");
				rd.forward(req, res);
			} else {
				result = "Valid Credential";
				// req.setAttribute("result", result);

				req.setAttribute("list", hrdto);
				rd = req.getRequestDispatcher("/success.jsp?user="+user);
				rd.forward(req, res);
			}

			// pw.print("<h1 style='text-align:center'>" + result + "</h1>");
		} catch (Exception e) {

			e.printStackTrace();
		}
		pw.close();
	}

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		doPost(req, res);
	}
}
