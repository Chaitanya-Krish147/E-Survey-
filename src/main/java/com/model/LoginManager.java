package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LoginManager 
{
	String url = "jdbc:mysql://localhost:3306/klu";
	String dbuser = "root";
	String dbpwd = "6281406276";
	
	Connection con = null;
	PreparedStatement ps = null;
	
	public List<Login> readData() throws Exception
	{
		con = DriverManager.getConnection(url, dbuser, dbpwd);
		ps = con.prepareStatement("select * from login");
		ResultSet rs = ps.executeQuery();
		List<Login> L = new ArrayList<Login>();
		while(rs.next())
		{
			Login S =new Login();
			S.setName(rs.getString(1));
			S.setPassword(rs.getString(2));
			
			L.add(S);
		}
		con.close();
		return L;
	}
	
	public String saveData(Login S) throws Exception
	{
		con = DriverManager.getConnection(url,dbuser,dbpwd);
		ps = con.prepareStatement("insert into login values(?,?,?)");
		ps.setString(2, S.getName());
		ps.setString(3, S.getPassword());
		
		ps.execute();
		con.close();
		return "Data Inserted Successfully...";
	}
}
