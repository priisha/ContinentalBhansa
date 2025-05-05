package com.continentalbhansa.controller;

import com.continentalbhansa.model.Contact;
import com.continentalbhansa.service.ContactService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

/**
 * Servlet implementation class ContactController for handling contact messages CRUD operations.
 */
@WebServlet("/contactcontroller")
public class contactuscontroller extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private ContactService contactService;

    public contactuscontroller() {
        super();
        contactService = new ContactService(); // initialize the service class
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     * Retrieves contact messages (Read) and handles other actions like deleting.
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        // Show all contact messages
        if (action == null || action.equals("list")) {
            List<Contact> contacts = contactService.getAllContacts();
            request.setAttribute("contacts", contacts);
            request.getRequestDispatcher("/WEB-INF/pages/contactList.jsp").forward(request, response);

        // Delete a contact message
        } else if (action.equals("delete")) {
            int id = Integer.parseInt(request.getParameter("id"));
            if (contactService.deleteContact(id)) {
                request.setAttribute("message", "Contact message deleted successfully.");
            } else {
                request.setAttribute("message", "Failed to delete the contact message.");
            }
            request.getRequestDispatcher("/WEB-INF/pages/contactList.jsp").forward(request, response);
        }
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     * Handles the creation and updating of contact messages (Create and Update).
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Create a new contact message
        Contact contact = new Contact(name, email, message);
        if (contactService.saveContact(contact)) {
            request.setAttribute("message", "Your message has been sent successfully!");
        } else {
            request.setAttribute("message", "Failed to send your message. Please try again.");
        }

        // Forward the request back to the contact page
        request.getRequestDispatcher("/WEB-INF/pages/contactus.jsp").forward(request, response);
    }
}
