package com.wc.core.db;

import com.wc.core.AbstractDataAccessObject;

public class DBFactory
{
	public  DBFactory()
	{
		System.out.println("Factory");
		new AbstractDataAccessObject().getConnection();
	}
}
