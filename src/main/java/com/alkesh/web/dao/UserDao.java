package com.alkesh.web.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.alkesh.utils.Utils;

public class UserDao {
	public static Connection conn;
	public static PreparedStatement statement;

	public void saveUser(String UserName, String email, String mobile,
			String city, String password) {

		try {
			conn = Utils.getConnection();
			String INSERT_SQL = "INSERT INTO user_master_t(uname,uemail,umobile,ucity,upassword,createdDate) values(?, ?, ?, ?, ?, CURDATE()) ";
			statement = conn.prepareStatement(INSERT_SQL);
			statement.setString(1, UserName);
			statement.setString(2, email);
			statement.setString(3, mobile);
			statement.setString(4, city);
			statement.setString(5, password);
			statement.execute();
			statement.close();
			conn.close();
		} catch (Exception e) {
			System.out.println(e);
		}

	}

	public void deleteUser(String UserName) {
		try {
			conn = Utils.getConnection();
			String DELETE_SQL = "DELETE FROM user_master_t where uname=?";
			statement = conn.prepareStatement(DELETE_SQL);
			statement.setString(1, UserName);
			statement.executeUpdate();
			statement.close();
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
