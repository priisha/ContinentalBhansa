<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Continental Bhansa - Home</title>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/UserDashboard.css"/>
  <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
</head>
<body>

  <!-- Navbar -->
  <header class="navbar">
    <div class="font-logo">Continental Bhansa</div>
    <nav class="nav-links">
      <a href="#">Home</a>
      <a href="contactus.html">Contact Us</a>
      <a href="Reservation.html">Reservation</a>
      <a href="Menu.html">Menu</a>
      <a href="${pageContext.request.contextPath}/Profilecontroller">Profile</a>
    </nav>
    
  </header>
  

  <!-- Hero Section -->
  <section class="hero">
    <h1>Welcome to Continental Bhansa</h1>
    <p>Experience timeless Indian flavors with a modern twist.</p>
  </section>

  <!-- Image Slider Section -->
  <section class="slider-section">
    <h2 class="section-title">Discover More</h2>
    <div class="slider-wrapper">
      <div class="slider-track">
        <div class="slide"><img src="img/Slider 1.png" alt="Slide 1"></div>
        <div class="slide"><img src="img/Slider 2.png" alt="Slide 2"></div>
        <div class="slide"><img src="img/Slider 3.png" alt="Slide 3"></div>
        <div class="slide"><img src="img/Slider 1.png" alt="Slide 1 Duplicate"></div>
        <div class="slide"><img src="img/Slider 2.png" alt="Slide 2 Duplicate"></div>
      </div>
    </div>
  </section>

  <!-- Features Section -->
  <section class="section">
    <h2 class="section-title">Our Highlights</h2>
    <div class="card-grid">
      <div class="card">
        <h3>Exquisite Menu</h3>
        <p>Curated dishes that bring out authentic flavors with a modern presentation.</p>
      </div>
      <div class="card">
        <h3>Easy Reservations</h3>
        <p>Reserve your table instantly and enjoy hassle-free dining experiences.</p>
      </div>
      <div class="card">
        <h3>Customer Support</h3>
        <p>We're here for you—get in touch anytime for assistance or inquiries.</p>
      </div>
    </div>
  </section>


<section class="gallery-section">
  <h2 class="section-title">Chef's Special</h2>
  <div class="gallery-grid">
    <div class="gallery-item">
      <img src="img/biriyani.jpeg" alt="Biriyani">
      <p class="caption">Biriyani</p>
      <p class="desc">The most lovable and famous dish available with 3 different meat bases.</p>
    </div>
    <div class="gallery-item">
      <img src="img/Jaituni chicken tikka.jpg" alt="Jaituni Chicken Tikka">
      <p class="caption">Jaituni Chicken Tikka</p>
      <p class="desc">Chicken tikka marinated in chopped kalamata olives with burnt garlic and hang curd, spread with confit tomato garlic, served with stuffed cheese bun.</p>
    </div>
    <div class="gallery-item">
      <img src="img/Lamb Madras Curry.jpg" alt="Lamb Madras Curry">
      <p class="caption">Lamb Madras Curry</p>
      <p class="desc">A fiery, flavorful curry with tender lamb simmered in a rich tomato and tamarind sauce. A true showstopper for spice lovers.</p>
    </div>
    <div class="gallery-item">
      <img src="img/Spiced lamb Shanl with saffrom rice.jpg" alt="Spiced Lamb Shank with Saffron Rice">
      <p class="caption">Spiced Lamb Shank with Saffron Rice</p>
      <p class="desc">Rich in spices, the lamb shank is full of falling-off-the-bone flavour, layered with fluffy saffron rice and 'goodies'.</p>
    </div>
  </div>
</section>
<!-- Call to Action Section -->
<section class="cta-section">
  <h2 class="cta-heading">Ready to embark on a culinary journey?</h2>
  <p class="cta-subtext">Create an account to easily manage your reservations and receive exclusive offers</p>
  <div class="cta-buttons">
    <a href="#" class="cta-btn cta-primary"><span>&#128100;</span> Create Account</a>
    <a href="#" class="cta-btn cta-secondary">Already have an account? Sign In</a>
  </div>
</section>

  <!-- Footer -->
  <footer class="footer">
    <div class="footer-col about">
      <h4>Continental Bhansa</h4>
      <p>
        Experience authentic Indian flavors with a contemporary twist. Our chefs craft each dish with passion, tradition, and the finest ingredients.
      </p>
    </div>
    <div class="footer-col links">
      <h4>Quick Links</h4>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Login</a></li>
        <li><a href="#">Register</a></li>
      </ul>
    </div>
    <div class="footer-col contact">
      <h4>Contact Us</h4>
      <p>123 Spice Avenue, Culinary District, Flavorville, FL 54321</p>
      <p>+1 (543) 123-4567</p>
      <p>info@continentalbhansa.com</p>
    </div>
  </footer>
  
  <div class="copyright">
    &copy; 2025 Continental Bhansa. All rights reserved.
  </div>
  

</body>
</html>
