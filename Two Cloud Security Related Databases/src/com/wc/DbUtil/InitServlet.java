package com.wc.DbUtil;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;

import com.wc.core.AbstractDataAccessObject;
import com.wc.core.db.DBFactory;

public class InitServlet extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	AbstractDataAccessObject dobject;

	public void init(ServletConfig sc) {
		ServletContext ctx = sc.getServletContext();
		System.out.println("before-------config");
		InputStream fis = ctx
				.getResourceAsStream(sc.getInitParameter("config"));
		Properties props = new Properties();
		System.out.println("after ---config");
		try {
			System.out.println("InitServlet-----------------2");
			props.load(fis);
		} catch (IOException ioe) {
			ioe.printStackTrace();
		}
		dobject = new AbstractDataAccessObject();
		dobject.setProperties(props);

		try {
			new DBFactory();
		} catch (NullPointerException npe) {
			npe.printStackTrace();
		}
	}
}
