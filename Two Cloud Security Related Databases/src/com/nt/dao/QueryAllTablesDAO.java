package com.nt.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.wc.core.AbstractDataAccessObject;

public class QueryAllTablesDAO extends AbstractDataAccessObject {
	public static List  getData(String query) {
		List list = new ArrayList();
		try {
			PreparedStatement ps = getConnection().prepareStatement(query);
			ResultSetMetaData rsmd = null;
			ResultSet rs=ps.executeQuery();
			rsmd=rs.getMetaData();
			int cnt=rsmd.getColumnCount();
			
			for (int i = 1; i <= cnt; i++) {
				System.out.println(rsmd.getColumnLabel(i));
			}
			   
				while(rs.next())
				{
					 for(int col = 1; col <= cnt; col++) {
				    
				        
				        } 
				        System.out.println();
				}
				
			
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return list;

	}
}
