<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Login - Continental Bhansa</title>
  
  <link rel="stylesheet" href="Login.css" />
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@700&display=swap" rel="stylesheet">
</head>
<body>

  <!-- Homepage Style Navbar -->
  <header class="navbar">
    <div class="logo">Continental Bhansa</div>
    <nav class="nav-links">
      <a href="UserDashboard.html">Home</a>
      <a href="contactus.html">Contact</a>
      <a class="active-link" href="register.html">Register</a>
    </nav>
  </header>

  <!-- Banner -->
  <section class="banner">
    <h1>Login</h1>
    <p>Access your dashboard</p>
  </section>

  <!-- Login Form Section -->
  <main class="form-section">
    <div class="form-card">
      <h2>Welcome Back</h2>
      <p>Please enter your credentials to proceed</p>
      <form>
        <input type="email" placeholder="Email" required />
        <input type="password" placeholder="Password" required />
        <button type="submit" class="submit-btn">Login</button>
      </form>
    </div>
  </main>

  <!-- Footer -->
  <footer class="footer">
    <div class="footer-col about">
      <h4>Continental Bhansa</h4>
      <p>Crafting Indian excellence, one dish at a time.</p>
    </div>
    <div class="footer-col contact">
      <h4>Contact Us</h4>
      <p>Email: contact@continentalbhansa.com</p>
      <p>Phone: +91 98765 43210</p>
    </div>
  </footer>

  <div class="copyright">
    &copy; 2025 Continental Bhansa. All rights reserved.
  </div>

</body>
</html>
