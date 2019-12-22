package com.nt.mailer;

import java.util.Iterator;
import java.util.List;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.sun.jndi.cosnaming.IiopUrl.Address;
  
  
public class Mailer
{  

	
	public static int sendEmail(String to,String subject,String text)
	{
		int count=0;
		
		String status="";
		final String userMail=UtilConstants.userMail;
		final String password=UtilConstants.password;
		
		Properties properties=new Properties();
		properties.put("mail.smtp.host","smtp.gmail.com");
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable","true");
		properties.put("mail.smtp.starttls.required", "true");
		properties.put("mail.smtp.ssl.trust","smtp.gmail.com");
		
		
		Session session=Session.getDefaultInstance(properties,new javax.mail.Authenticator()
		{
			protected PasswordAuthentication getPasswordAuthentication()
			{
				return new PasswordAuthentication(userMail,password);
			}
		});
		
		try
		{
				
		MimeMessage mimeMessage=new MimeMessage(session);
		mimeMessage.setFrom(new InternetAddress(userMail));
		mimeMessage.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
		mimeMessage.setSubject(subject);
		mimeMessage.setText(text);
		Transport.send(mimeMessage);
		count++;
		System.out.println("succes---"+count);
		
		
		}
		catch(Exception e)
		{
			status="FAILURE";
			e.printStackTrace();
			 
		}
		
		return count;
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}