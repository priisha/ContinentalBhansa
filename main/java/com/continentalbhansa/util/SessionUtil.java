package com.continentalbhansa.util;

import jakarta.servlet.http.HttpSession;

import com.continentalbhansa.model.User;

public class SessionUtil {
    
    private static final String USER_SESSION_KEY = "user";
    private static final int SESSION_TIMEOUT = 30 * 60; // 30 minutes in seconds
    
    public static void setUser(HttpSession session, User user) {
        if (session != null) {
            session.setAttribute(USER_SESSION_KEY, user);
            session.setMaxInactiveInterval(SESSION_TIMEOUT);
        }
    }
    
    public static User getUser(HttpSession session) {
        if (session != null) {
            Object userObj = session.getAttribute(USER_SESSION_KEY);
            if (userObj instanceof User) {
                return (User) userObj;
            }
        }
        return null;
    }
    
    public static boolean isLoggedIn(HttpSession session) {
        return getUser(session) != null;
    }
    
    public static void logout(HttpSession session) {
        if (session != null) {
            session.removeAttribute(USER_SESSION_KEY);
            session.invalidate();
        }
    }
}