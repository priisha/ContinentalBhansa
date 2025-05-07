<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us - Continental Bhansa</title>
    <link rel="stylesheet" href="contactus.css">
    <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&family=Segoe+UI&display=swap" rel="stylesheet">
</head>
<body>

    <!-- Header (Same as UserDashboard) -->
    <header>
        <div class="logo">Continental Bhanchaa</div>
        <nav>
            <ul class="nav-links">
                <li><a href="UserDashboard.html">Home</a></li>
                <li><a href="Menu.html">Menu</a></li>
                <li><a href="AboutUs.html">About Us</a></li>
                <li><a href="ContactUs.html" class="active">Contact</a></li>
                <li><a href="Logout.jsp">Logout</a></li>
            </ul>
        </nav>
    </header>

    <!-- Hero Section -->
    <div class="hero">
        <h1>Contact Us</h1>
    </div>

    <!-- Contact Form and Info -->
    <div class="contact-section">
        <div class="form-container">
            <h2>Send Us a Message</h2>
            <form action="contactSubmit.jsp" method="post">
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <textarea name="message" rows="5" placeholder="Your Message" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </div>

        <div class="info-container">
            <h2>Visit Us</h2>
            <p><strong>Address:</strong> Kamal Pokhari, Kathmandu, Nepal</p>
            <p><strong>Phone:</strong> <a href="tel:+ 123 456 7890">+977 1234567890</a></p>
            <p><strong>Email:</strong> <a href="mailto:info@continentalbhanchaa.com">info@continentalbhanchaa.com</a></p>

            <h3>Opening Hours</h3>
            <ul>
                <li>Mon–Fri: 10am – 9pm</li>
                <li>Sat–Sun: 9am – 10pm</li>
            </ul>

            <h3>Find Us</h3>
            <iframe 
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3531.8032300000003!2d85.3205817!3d27.708317!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39eb190e75b94a0b%3A0xe2b9edb8c9ac0b38!2sKamal%20Pokhari%2C%20Kathmandu%2C%20Nepal!5e0!3m2!1sen!2snp!4v1680462769490" 
                width="100%" 
                height="200" 
                style="border:0;" 
                allowfullscreen="" 
                loading="lazy">
            </iframe>

            <div class="social-media">
                <a href="https://facebook.com" target="_blank">Facebook</a>
                <a href="https://instagram.com" target="_blank">Instagram</a>
                <a href="https://twitter.com" target="_blank">Twitter</a>
            </div>
        </div>
    </div>

    <!-- Full Footer Section (like UserDashboard) -->
<footer>
    <div class="footer-container">
        <div class="footer-section">
            <h3>Continental Bhanchaa</h3>
            <p>Experience the finest fusion of authentic Nepali flavors with a continental twist.</p>
        </div>
        <div class="footer-section">
            <h4>Contact</h4>
            <p>Durbar Marg, Kathmandu, Nepal</p>
            <p>Phone: +977 123456789</p>
            <p>Email: info@continentalbhanchaa.com</p>
        </div>
        <div class="footer-section">
            <h4>Follow Us</h4>
            <p><a href="#">Facebook</a></p>
            <p><a href="#">Instagram</a></p>
            <p><a href="#">Twitter</a></p>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2025 Continental Bhansa. All rights reserved.</p>
    </div>
</footer>


</body>
</html>
