package com.nt.controller;

import java.io.FileWriter;
import java.io.IOException;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import au.com.bytecode.opencsv.CSVWriter;

import com.csvreader.CsvWriter;

public class QueryGenerationController extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		String query = null;
		String table = null;
		
		HttpSession ses=null;
		String ename = "lalitha";
		ename = "'" + ename + "'";

		query = req.getParameter("query");
		table = req.getParameter("table");
		
		ses=req.getSession();
		if (query.equalsIgnoreCase("SELECT")) {
			if (table.equalsIgnoreCase("employeereg")) {
				query = "SELECT * FROM " + table;

			} else if (table.equalsIgnoreCase("TRANSACTION")) {
				query = "SELECT * FROM " + table;
			} else {
				query = "SELECT * FROM " + table;
			}
		} else if (query.equalsIgnoreCase("particular")) {
			if (table.equalsIgnoreCase("employeereg")) {
				query = "SELECT * FROM " + table + "   WHERE ENAME ="
						+ ename;

			} else if (table.equalsIgnoreCase("TRANSACTION")) {
				query = "SELECT * FROM " + table + "     WHERE ENAME ="
						+ ename;
			} else {
				query = "SELECT * FROM " + table + "    WHERE ENAME ="
						+ ename;
			}

		} else if (query.equalsIgnoreCase("BETWEEN")) {
			if (table.equalsIgnoreCase("employeereg")) {
				query = "SELECT * FROM " + table
						+ " WHERE SALARY >=500 AND SALARY<=10000";

			} else if (table.equalsIgnoreCase("TRANSACTION")) {
				query = "SELECT * FROM " + table
						+ " WHERE AMOUNT >=1000 AND AMOUNT<=5000";
			} else {
				query = "SELECT * FROM " + table;
			}
		} else {
			if (table.equalsIgnoreCase("employeereg")) {
				query = "SELECT * FROM " + table
						+ " WHERE SALARY >=5000 AND SALARY<=10000";

			} else if (table.equalsIgnoreCase("TRANSACTION")) {
				query = "SELECT * FROM " + table
						+ " WHERE AMOUNT >=1000 AND AMOUNT<=5000";
			} else {
				query = "SELECT * FROM " + table;
			}

		}
		System.out.println("--------->" + query);
		ses.setAttribute("query", query);
		
		
		RequestDispatcher rd = req.getRequestDispatcher("/query1.jsp");
		rd.forward(req, res);
	}

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {
		CSVWriter writer = new CSVWriter(new FileWriter("yourfile.csv"), '\t');
		
		
		doPost(req, res);
	}

}
