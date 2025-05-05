package com.continentalbhansa.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.continentalbhansa.model.User;
import com.continentalbhansa.service.LoginService;
import com.continentalbhansa.util.ValidationUtil;

import java.io.IOException;

@WebServlet(asyncSupported = true, urlPatterns = { "/Logincontroller" })
public class Logincontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static LoginService loginService;

	public Logincontroller() {
		super();
		loginService = new LoginService(); // Ensure this service is initialized
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/WEB-INF/pages/Login.jsp").forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String validationMessage = validateRegistrationForm(request);
			if (validationMessage != null) {
				request.setAttribute("error", validationMessage);
				request.getRequestDispatcher("/WEB-INF/pages/Login.jsp").forward(request, response);
				return;
			}

			User user = createCustomerFromRequest(request);
			Boolean result = loginService.addCustomer(user);
			if (result != null && result) {
				request.setAttribute("success", "Login successful!");
			} else {
				request.setAttribute("error", "Login failed. Please try again.");
			}
			request.getRequestDispatcher("/WEB-INF/pages/Login.jsp").forward(request, response);
		} catch (Exception e) {
			System.err.println("Unexpected error in login: " + e.getMessage());
			e.printStackTrace();
			request.setAttribute("error", "An unexpected error occurred: " + e.getMessage());
			request.getRequestDispatcher("/WEB-INF/pages/Login.jsp").forward(request, response);
		}
	}

	private String validateRegistrationForm(HttpServletRequest req) {
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String username = req.getParameter("username");
		String email = req.getParameter("email");
		String number = req.getParameter("phoneNumber");
		String password = req.getParameter("password");
		String retypePassword = req.getParameter("reTypePassword");

		if (!ValidationUtil.validateName(firstName))
			return "First name is required.";
		// Additional validations can be uncommented as needed
		// if (!ValidationUtil.validateName(lastName)) return "Last name is required.";
		// if (!ValidationUtil.isValidEmail(email)) return "Invalid email format.";
		// if (!ValidationUtil.doPasswordsMatch(password, retypePassword)) return "Passwords do not match.";
		// ... etc.

		return null; // All validations passed
	}

	private User createCustomerFromRequest(HttpServletRequest req) {
		User customer = new User();
		customer.setFirstName(req.getParameter("firstName"));
		customer.setLastName(req.getParameter("lastName"));
		customer.setEmail(req.getParameter("email"));
		customer.setPhoneNumber(req.getParameter("phoneNumber"));
		customer.setAddress(req.getParameter("address"));
		customer.setPasswordHash(req.getParameter("password")); // Password should ideally be hashed
		return customer;
	}
}
