<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Profile | Continental Bhansa</title>
    <link rel="stylesheet" href="profile.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>

    <!-- Navbar -->
    <div class="navbar">
        <div class="logo">Continental Bhansa</div>
        <ul class="nav-links">
            <li><i class="fas fa-home"></i> Home</li>
            <li><a href="Menu.html"><i class="fas fa-utensils"></i> Menu</a></li>
            <li><i class="fas fa-calendar-check"></i> Bookings</li>
            <li class="active"><i class="fas fa-user"></i> Profile</li>
            <li>Contact US</li>
        </ul>
    </div>

    <!-- Profile Content -->
    <div class="profile-container">
        <div class="profile-box">
            <h2><i class="fas fa-user-circle"></i> My Profile</h2>
            <form>
                <label>Full Name</label>
                <input type="text" value="Prisha Malla" readonly>

                <label>Email</label>
                <input type="email" value="prishamalla@gmail.com" readonly>

                <label>Phone Number</label>
                <input type="text" value="+977 9860889546" readonly>

                <label>Address</label>
                <input type="text" value="Baluwatar, Kathmandu" readonly>

                <button type="button"><i class="fas fa-edit"></i> Edit Profile</button>
            </form>
        </div>
    </div>

    <!-- Footer -->
    <footer>
        <div class="footer-container">
            <div class="footer-about">
                <h3>Continental Bhansa</h3>
                <p>Experience authentic flavors with a contemporary twist. Our chefs craft each dish with passion, tradition, and the finest ingredients.</p>
                <div class="social-icons">
                    <i class="fab fa-facebook-f"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-twitter"></i>
                </div>
            </div>

            <div class="footer-links">
                <h4>Quick Links</h4>
                <ul>
                    <li>Home</li>
                    <li>Menu</li>
                    <li>Reservations</li>
                    <li>Profile</li>
                    <li>Contact Us</li>  
                    
                </ul>
            </div>

            <div class="footer-contact">
                <h4>Contact Us</h4>
                <p><i class="fas fa-map-marker-alt"></i> Kamalpokhari, Kathmandu</p>
                <p><i class="fas fa-phone"></i> +977 9803421026</p>
                <p><i class="fas fa-envelope"></i> info@continentalbhansa.com</p>
            </div>
        </div>
        <div class="footer-bottom">
            © 2025 Continental Bhansa. All rights reserved.
        </div>
    </footer>

</body>
</html>
