package com.nt.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nt.dao.HRDAOImpl;
import com.nt.dto.HRLoginDTO;
import com.nt.dto.HRResultDTO;
import com.nt.service.AdminService;
import com.nt.service.HRServiceLogin;

public class HRController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private HRServiceLogin service = null;
	private HRLoginDTO dto = null;
	private PrintWriter pw = null;
	private int cnt = 0;
	private String result = null;
	private RequestDispatcher rd = null;
	AdminService adminservice = new AdminService();

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		HttpSession hs=req.getSession(false);
		res.setContentType("text/html");
		pw = res.getWriter();
		service = new HRServiceLogin();
		dto = new HRLoginDTO();
		dto.setUname(req.getParameter("uname"));
		dto.setPsw(req.getParameter("psw"));
		String status=req.getParameter("status");
        dto.setStatus(status);
		try {
			// calling
			cnt = service.authondication(dto);
			if (cnt == 0) {
				result = "Admin Can't Approved: Application Is In Pending...!";
				req.setAttribute("result", result);
				rd = req.getRequestDispatcher("/HrLogin.jsp");
				rd.forward(req, res);
			} else {
				List<HRResultDTO> hrdto = adminservice.getData();
				HRDAOImpl hr=new HRDAOImpl();
				
				String email=hr.getEmail(req.getParameter("uname"));
				
				System.out.println("email from controller----"+email);
				
				hs.setAttribute("email", email);
				result = "Valid Credential";
				req.setAttribute("list", hrdto);
				req.setAttribute("result", result);
				rd = req.getRequestDispatcher("/successhr.jsp");
				rd.forward(req, res);
			}

			// pw.print("<h1 style='text-align:center'>" + result + "</h1>");
		} catch (Exception e) {
			e.printStackTrace();
		}
		pw.close();
	
	}
	
	
	
}
