package com.nt.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.nt.cloud.Ftpcon;
import com.nt.encrypt_decrypt.CryptoException;
import com.nt.encrypt_decrypt.CryptoUtils;

public class Decrypt extends HttpServlet 
{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse response)
		throws ServletException, IOException {

	PrintWriter out=response.getWriter();
	
	String type=req.getParameter("type");
	String key=req.getParameter("key");
	System.out.println("type----"+type+"---");
	
	System.out.println("key--"+key+"------");
	String path=null;
	
		File f=new File("C:/Users/Abhinay/Desktop/encrypt.csv");
		
		
		String target="CloudAFiles.jsp";
		File decryptedFile = new File("C:/Users/Abhinay/Desktop/cloudData.csv");
		Ftpcon ftp=new Ftpcon();
		
		try {
			System.out.println("abve decryption------");
			CryptoUtils.decrypt(key.trim(), f, decryptedFile);
			System.out.println("succesffully decrypted.......");
			
			path=decryptedFile.toString();
			
			 target="CloudAFiles.jsp?status=Successfully data downloaded and decrypted&cloud="+type+"&decc="+path;
			
		} catch (Exception e) 
		{
			 target="CloudAFiles.jsp?status=You Entered Wrong Key&cloud="+type+"&decc="+path;
			
		}
		
		
	
			
	
	
	response.sendRedirect(target);
	
	

}
	

}
