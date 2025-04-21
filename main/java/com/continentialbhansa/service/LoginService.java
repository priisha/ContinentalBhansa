package com.continentialbhansa.service;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.continentalbhansa.config.DBconfig;
import com.continentialbhansa.model.User;

public class LoginService {
	private Connection dbConn;

	/**
	 * Constructor initializes the database connection.
	 */
	public LoginService() {
		try {
			this.dbConn = DBconfig.getDbConnection();
		} catch (SQLException | ClassNotFoundException ex) {
			System.err.println("Database connection error: " + ex.getMessage());
			ex.printStackTrace();
		}
	}
	
	public Boolean addCustomer(User user){
		if (dbConn == null) {
			System.err.println("Database connection is not available.");
			return null;
		}
		String insertQuery = "INSERT INTO User (User_Name,Password,Email,Phone,Address,Created_At,Updated_At,Role_ID) "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
		try (PreparedStatement insertStmt = dbConn.prepareStatement(insertQuery)) {
            // Insert student details
            insertStmt.setString(1, user.getFirstName());
            insertStmt.setString(2,  user.getPasswordHash());
            insertStmt.setString(3,  user.getEmail());
            insertStmt.setString(4, user.getPhoneNumber());
            insertStmt.setString(5,  user.getAddress());
            insertStmt.setString(6,  "");
            insertStmt.setString(7,  "");
            insertStmt.setFloat(8,  user.getId());
            
            System.out.println("Executing insert statement");
            int rowsAffected = insertStmt.executeUpdate();
            System.out.println("Rows affected: " + rowsAffected);
            
            return rowsAffected > 0;
        } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
        }

	}
}