package com.giang.data;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.giang.model.User;

public class UserDB {
	DAL dal;
	
	public UserDB() {
		dal = new DAL();
	}
	
	public ResultSet getAllUser() {
		return dal.getData("select * from user"); 
	}
	
	public boolean insert(User user) {
		String fname = user.getFirstName();
		String lname = user.getLastName();
		String email = user.getEmail();
		String heardFrom = user.getHeardFrom();
	    String wantsUpdates = user.getWantsUpdates();
	    String contactVia = user.getContactVia();
	    
	    try {
			PreparedStatement ps = dal.conn.prepareStatement("insert into user(firstname, lastname, email, heardFrom, wantsUpdates, contactVia) values (?, ?, ?, ?, ?, ?)");
			ps.setString(1, fname);
			ps.setString(2, lname);
			ps.setString(3, email);
			ps.setString(4, heardFrom);
			ps.setString(5, wantsUpdates);
			ps.setString(6, contactVia);
			return ps.executeUpdate() > 0 ? true:false;
		} catch (SQLException e) {
			e.printStackTrace();
		}
	    
        return false;
    }
}
