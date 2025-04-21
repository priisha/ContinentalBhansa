<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Payment - Continental Bhansa</title>
  <link rel="stylesheet" href="navbar.css" />
  <link rel="stylesheet" href="footer.css" />
  <link rel="stylesheet" href="Payment.css" />
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display&display=swap" rel="stylesheet" />
</head>
<body>

  <!-- ✅ Updated Navbar -->
  <header class="navbar">
    <div class="logo">Continental Bhansa</div>
    <nav class="nav-links">
      <a href="#">Home</a>
      <a href="Menu.html">Menu</a>
      <a href="bookinghistory.html">Bookings</a>
      <a href="Login.html">Login</a>
      <a href="register.html">Register</a>
    </nav>
  </header>

  <!-- Banner -->
  <section class="banner">
    <h1>Payment</h1>
    <p>Securely complete your order</p>
  </section>

  <!-- Payment Form -->
  <main class="payment-section">
    <div class="payment-card">
      <h2>Complete Your Payment</h2>
      <form>
        <label>Name on Card</label>
        <input type="text" placeholder="Full Name" required />

        <label>Card Number</label>
        <input type="text" placeholder="1234 5678 9012 3456" maxlength="19" required />

        <div class="row">
          <div>
            <label>Expiry Date</label>
            <input type="text" placeholder="MM/YY" maxlength="5" required />
          </div>
          <div>
            <label>CVV</label>
            <input type="text" placeholder="123" maxlength="3" required />
          </div>
        </div>

        <label>Billing Address</label>
        <input type="text" placeholder="Street, City, State" required />

        <button type="submit" class="pay-btn">Pay Now</button>
      </form>
    </div>
  </main>

  <!-- Footer -->
  <footer class="footer">
    <div class="footer-col about">
      <h4>Continental Bhansa</h4>
      <p>Experience authentic Indian flavors with a contemporary twist. Our chefs craft each dish with passion, tradition, and the finest ingredients.</p>
      <div class="social-icons">
        <a href="#">📘</a>
        <a href="#">📷</a>
        <a href="#">🐦</a>
      </div>
    </div>
    <div class="footer-col links">
      <h4>Quick Links</h4>
      <ul>
        <li><a href="#">Home</a></li>
        <li><a href="#">Menu</a></li>
        <li><a href="#">Reservations</a></li>
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
