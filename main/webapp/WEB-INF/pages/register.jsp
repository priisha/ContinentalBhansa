<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>User Register - Continental Bhansa</title>
  <link rel="stylesheet" href="register.css" />
  <link rel="preconnect" href="https://fonts.googleapis.com" />
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&family=Inter&display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet" />
</head>

<body>
  <!-- Navbar -->
  <header class="navbar">
    <div class="font-logo">Continental Bhansa</div>
    <nav class="nav-links">
      <a href="UserDashboard.html">Home</a>
      <a href="contactus.html">Contact Us</a>
      <a href="Login.html">Login</a>
      
    </nav>
  </header>

  <!-- Banner -->
  <section class="banner">
    <h1>Create Account</h1>
    <p>Join us to manage your reservations and receive exclusive offers</p>
  </section>

  <!-- Registration Form -->
  <section class="form-section">
    <div class="form-card">
      <h2>Create Account</h2>
      <p>Fill in the details below to get started</p>
      <form>
        <div class="form-row dual">
          <input type="text" placeholder="First Name" required />
          <input type="text" placeholder="Last Name" required />
        </div>
        <div class="form-row">
          <input type="email" placeholder="Email Address" required />
        </div>
        <div class="form-row">
          <input type="tel" placeholder="Phone Number" required />
        </div>
        <div class="form-row dual">
          <input type="password" placeholder="Password" required />
          <input type="password" placeholder="Confirm Password" required />
        </div>
        <label class="checkbox">
          <input type="checkbox" required />
          I agree to the <a href="#">Terms and Conditions</a> and <a href="#">Privacy Policy</a>
        </label>
        <button type="submit" class="submit-btn">Create Account</button>
        <p class="signin-text">Already have an account? <a href="#">Sign in</a></p>
      </form>
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
