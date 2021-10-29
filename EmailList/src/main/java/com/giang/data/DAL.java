package com.giang.data;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DAL {
	Connection conn;
	Statement stm;
	
	public DAL() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost/emaillist", "root", "27082001");
		}
		catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		catch (SQLException se) {
			se.printStackTrace();
		}
		catch (Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public ResultSet getData(String sql) {
		stm = null;
		try {
			stm = conn.createStatement();
			return stm.executeQuery(sql);
		}
		catch (SQLException se) {
			se.printStackTrace();
		}
		
		return null;
	}
	
	public boolean updateData(String sql) {
		stm = null;
		try {
			stm=conn.createStatement();
			return stm.executeUpdate(sql) > 0 ? true:false;
		}
		catch (SQLException se) {
			se.printStackTrace();
		}
		
		return false;
	}
	
	public void freeConnection(Connection conn) {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void freeStatement(Statement stm) {
		try {
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
