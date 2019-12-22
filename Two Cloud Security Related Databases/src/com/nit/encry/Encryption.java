package com.nit.encry;

import java.io.IOException;

import net.iharder.Base64;



public class Encryption 
{
	public static String encryptText(String str)
	{
			
			String bytesEncoded =(String) Base64.encodeBytes(str.getBytes());
			System.out.println(bytesEncoded);
		
		return bytesEncoded;
	}
	
	
	public static String decryptText(String str) throws IOException
	{
			
		byte[] valueDecoded = Base64.decode(str);
		String decrypt=new String(valueDecoded);
		return decrypt;
	}
	
	
	public static void main(String[] args) throws IOException {
		
		String en=encryptText("Rambabu");
		
		System.out.println("encrypt----"+en);
		
		String en1=decryptText(en);
		System.out.println("decrypt----"+en1);
		
		
		
	}

}
