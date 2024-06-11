package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//import java.util.List;

//import com.entity.Contact;
import com.entity.User;

public class UserDAO {
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	
	public boolean userRegister(User u)
	{
		boolean f = false;
		try {
			String sql="insert into user (name, email, password) VALUES(?, ?, ?)";
			
//			String sql="INSERT INTO `phonebook`.`user`(name, email, password) VALUES(?, ?, ?);";
			
			PreparedStatement ps = conn.prepareStatement(sql);
//			ps.setInt(1, u.getId());
			ps.setString(1, u.getName());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());
			
			int i=ps.executeUpdate();
			if (i == 1) {
				f = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			
		}
		
		return f;
	}
	
	public User loginUser(String e, String p) {
		
		User user = null;
		
		try {
			String sql="select * from user where email=? and password=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, e);
			ps.setString(2, p);
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next())
			{
				user = new User();
				user.setId(rs.getInt(1));
				user.setName(rs.getString(2));
				user.setEmail(rs.getString(3));
				user.setPassword(rs.getString(4));
				
			}
			
			
		}catch (Exception ex){
			ex.printStackTrace();
		}
		return user;

	}	
	
//	ContactDAO dao=new ContactDAO(DbConnect.getConn());
//	List<Contact> contact = dao.getAllContact(user.getId());
	
}
