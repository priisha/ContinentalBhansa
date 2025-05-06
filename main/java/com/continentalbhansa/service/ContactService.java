package com.continentalbhansa.service;

import com.continentalbhansa.config.DBconfig;
import com.continentalbhansa.model.Contact;

import java.sql.*;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

/**
 * Service class handling all database operations related to contact messages.
 */
public class ContactService {

	private static final String INSERT_QUERY = "INSERT INTO contact_messages (name, email, message, submitted_date) VALUES (?, ?, ?, ?)";
	private static final String SELECT_ALL_QUERY = "SELECT * FROM contact_messages ORDER BY submitted_date DESC";
	private static final String SELECT_BY_ID_QUERY = "SELECT * FROM contact_messages WHERE id = ?";
	private static final String DELETE_QUERY = "DELETE FROM contact_messages WHERE id = ?";

	/**
	 * Saves a new contact message to the database.
	 *
	 * @param contact The contact message to save
	 * @return true if the operation was successful, false otherwise
	 */
	public boolean saveContact(Contact contact) {
		try (Connection conn = DBconfig.getDbConnection()) {
			if (conn == null) {
				System.err.println("Failed to establish database connection.");
				return false;
			}

			try (PreparedStatement pstmt = conn.prepareStatement(INSERT_QUERY)) {
				pstmt.setString(1, contact.getName());
				pstmt.setString(2, contact.getEmail());
				pstmt.setString(3, contact.getMessage());
				pstmt.setString(4, getCurrentTimestamp());

				return pstmt.executeUpdate() > 0;
			} catch (SQLException e) {
				System.err.println("Error saving contact: " + e.getMessage());
				return false;
			}

		} catch (SQLException e) {
			System.err.println("Error saving contact: " + e.getMessage());
			return false;
		}
	}

	/**
	 * Retrieves all contact messages from the database.
	 *
	 * @return List of all contact messages
	 */
	public List<Contact> getAllContacts() {
		List<Contact> contacts = new ArrayList<>();

		try (Connection conn = DBconfig.getDbConnection()) {
			if (conn == null) {
				System.err.println("Failed to establish database connection.");
				return contacts;
			}

			try (Statement stmt = conn.createStatement(); ResultSet rs = stmt.executeQuery(SELECT_ALL_QUERY)) {

				while (rs.next()) {
					Contact contact = new Contact();
					contact.setId(rs.getInt("id"));
					contact.setName(rs.getString("name"));
					contact.setEmail(rs.getString("email"));
					contact.setMessage(rs.getString("message"));
					contact.setSubmittedDate(rs.getString("submitted_date"));

					contacts.add(contact);
				}
			}

		} catch (SQLException e) {
			System.err.println("Error retrieving contacts: " + e.getMessage());
		}

		return contacts;
	}

	/**
	 * Retrieves a specific contact message by ID.
	 *
	 * @param id The ID of the contact message to retrieve
	 * @return The contact message or null if not found
	 */
	public Contact getContactById(int id) {
		try (Connection conn = DBconfig.getDbConnection()) {
			if (conn == null) {
				System.err.println("Failed to establish database connection.");
				return null;
			}

			try (PreparedStatement pstmt = conn.prepareStatement(SELECT_BY_ID_QUERY)) {
				pstmt.setInt(1, id);
				ResultSet rs = pstmt.executeQuery();

				if (rs.next()) {
					Contact contact = new Contact();
					contact.setId(rs.getInt("id"));
					contact.setName(rs.getString("name"));
					contact.setEmail(rs.getString("email"));
					contact.setMessage(rs.getString("message"));
					contact.setSubmittedDate(rs.getString("submitted_date"));
					return contact;
				}
			}

		} catch (SQLException e) {
			System.err.println("Error retrieving contact by ID: " + e.getMessage());
		}

		return null;
	}

	/**
	 * Deletes a contact message from the database.
	 *
	 * @param id The ID of the contact message to delete
	 * @return true if the operation was successful, false otherwise
	 */
	public boolean deleteContact(int id) {
		try (Connection conn = DBconfig.getDbConnection()) {
			if (conn == null) {
				System.err.println("Failed to establish database connection.");
				return false;
			}

			try (PreparedStatement pstmt = conn.prepareStatement(DELETE_QUERY)) {
				pstmt.setInt(1, id);
				return pstmt.executeUpdate() > 0;
			}

		} catch (SQLException e) {
			System.err.println("Error deleting contact: " + e.getMessage());
			return false;
		}
	}

	private String getCurrentTimestamp() {
		DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
		return LocalDateTime.now().format(formatter);
	}
}
