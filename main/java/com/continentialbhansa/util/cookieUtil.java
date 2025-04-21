package com.continentalbhansa.util;

import javax.servlet.http.Cookie;

public class cookieUtil {
    
    public static String getValue(Cookie[] cookies, String name) {
        if (cookies == null || name == null) {
            return null;
        }
        
        for (Cookie cookie : cookies) {
            if (name.equals(cookie.getName())) {
                return cookie.getValue();
            }
        }
        
        return null;
    }
    
    public static Cookie createCookie(String name, String value, int maxAge) {
        Cookie cookie = new Cookie(name, value);
        cookie.setMaxAge(maxAge);
        cookie.setPath("/");
        return cookie;
    }
    
    public static Cookie createSecureCookie(String name, String value, int maxAge) {
        Cookie cookie = createCookie(name, value, maxAge);
        cookie.setSecure(true);
        cookie.setHttpOnly(true);
        return cookie;
    }
}