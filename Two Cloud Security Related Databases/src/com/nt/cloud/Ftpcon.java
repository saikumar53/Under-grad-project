/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nt.cloud;

/**
 *
 * @author java4
 */
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import org.apache.commons.net.ftp.FTPClient;
public class Ftpcon {
    FTPClient client = new FTPClient();
    FileInputStream fis = null;
    FileOutputStream fos=null;
    boolean status;

public boolean upload(File file){
   try{
//           client.enterLocalPassiveMode();
            client.connect("ftp.drivehq.com");
       
            client.login("Ramb1772", "Ramtheadmin@1772");
            client.enterLocalPassiveMode();
             //String filename = "/home/ibn/Desktop/report.txt";
             fis = new FileInputStream(file);
             
             status= client.storeFile(" /kk/"+file.getName(), fis);
       
             client.logout();
             fis.close();
   			}
		catch(Exception e){
		    System.out.println(e);
		}
		        if(status){
		             System.out.println("success");
		             return true;
		        }
		        else{
		            System.out.println("failed");
		            return false;
		          
		        }
    
} 















public boolean upload1(File file){
   try{
//           client.enterLocalPassiveMode();
            client.connect("ftp.drivehq.com");
       
            client.login("Pavan1772", "pavan");
            client.enterLocalPassiveMode();
             //String filename = "/home/ibn/Desktop/report.txt";
             fis = new FileInputStream(file);
             
             status= client.storeFile(" /kk/"+file.getName(), fis);
       
             client.logout();
             fis.close();
			}
			catch(Exception e){
			    System.out.println(e);
			}
			        if(status){
			             System.out.println("success");
			             return true;
			        }
			        else{
			            System.out.println("failed");
			            return false;
			          
			        }
    
} 



public boolean download(File file){
   try{
//           client.enterLocalPassiveMode();
            client.connect("ftp.drivehq.com");
       
            client.login("Ramb1772", "Ramtheadmin@1772");
            client.enterLocalPassiveMode();
             //String filename = "/home/ibn/Desktop/report.txt";
             fos = new FileOutputStream(file);
             
             status= client.retrieveFile(" /kk/"+file.getName(), fos);
       
             
        
             client.logout();
             fos.close();
    
}
catch(Exception e){
    System.out.println(e);
}
        if(status){
             System.out.println("success");
             return true;
        }
        else{
            System.out.println("failed");
            return false;
          
        }
    
} 


public boolean download1(File file){
	   try{
//	           client.enterLocalPassiveMode();
	            client.connect("ftp.drivehq.com");
	       
	            client.login("Pavan1772", "pavan");
	            client.enterLocalPassiveMode();
	             //String filename = "/home/ibn/Desktop/report.txt";
	             fos = new FileOutputStream(file);
	             
	             status= client.retrieveFile(" /kk/"+file.getName(), fos);
	       
	             
	        
	             client.logout();
	             fos.close();
	    
	}
	catch(Exception e){
	    System.out.println(e);
	}
	        if(status){
	             System.out.println("success");
	             return true;
	        }
	        else{
	            System.out.println("failed");
	            return false;
	          
	        }
	    
	} 

   
}

