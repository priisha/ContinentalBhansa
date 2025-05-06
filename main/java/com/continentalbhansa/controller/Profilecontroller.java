package com.continentalbhansa.controller;

import com.continentalbhansa.model.User;
import com.continentalbhansa.service.ProfileService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation for handling user profile display and updates.
 */
@WebServlet(urlPatterns = { "/Profilecontroller" })
public class Profilecontroller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public Profilecontroller() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	 request.getRequestDispatcher("/WEB-INF/pages/Profile.jsp").forward(request, response);
//        User user = (User) request.getSession().getAttribute("user");
//
//        if (user != null) {
//            request.setAttribute("user", user);
//            request.getRequestDispatcher("/WEB-INF/pages/Profile.jsp").forward(request, response);
//        } else {
//            response.sendRedirect("login");
//        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");

        User user = (User) request.getSession().getAttribute("user");

        if (user != null) {
            user.setUserName(username);
            user.setEmail(email);
            user.setPhoneNumber(phone);
            user.setAddress(address);

            ProfileService profileService = new ProfileService();
            boolean success = profileService.updateUserProfile(user);

            if (success) {
                response.sendRedirect("Profilecontroller");
            } else {
                request.setAttribute("errorMessage", "Failed to update profile.");
                request.getRequestDispatcher("/WEB-INF/pages/Profile.jsp").forward(request, response);
            }
        } else {
            response.sendRedirect("login");
        }
    }
}
