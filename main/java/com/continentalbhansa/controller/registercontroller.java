package com.continentalbhansa.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

import com.continentalbhansa.model.User;
import com.continentalbhansa.service.LoginService;
import com.continentalbhansa.util.PasswordUtil;

/**
 * Servlet implementation class registercontroller
 */
@WebServlet(asyncSupported = true, urlPatterns = { "/registercontroller" })
public class registercontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registercontroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("/WEB-INF/pages/register.jsp").forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    request.setCharacterEncoding("UTF-8");
	    
	    // Read form parameters
	    String username = request.getParameter("username");
	    String address = request.getParameter("address");
	    String email = request.getParameter("email");
	    String phone = request.getParameter("phoneNumber");
	    String password = request.getParameter("password");
	    

	    // Hash the password (basic example — use BCrypt or similar in production)
	   

	    // Create User object
	    User user = new User();
	    user.setUserName(username);
	    user.setEmail(email);
	    user.setAddress(address);
	    user.setPhoneNumber(phone);
	    user.setPasswordHash(password);
	    
	    // Here you'd save 'user' to a database (DAO logic), skipped for simplicity

	    // Store user in request/session (optional)
	    LoginService loginService = new LoginService();
	    loginService.addCustomer(user);
	}


}
