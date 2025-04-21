<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Continental Bhansa - Booking History</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">
    <link rel="stylesheet" href="bookinghistory.css">
</head>
<body>
    <header class="top-header">
        <div class="logo">Continental Bhansa</div>
        <nav class="top-nav">
            <a href="#" class="top-nav-item">
                <i class="fas fa-home"></i> Home
            </a>
            <a href="#" class="top-nav-item">
                <i class="fas fa-bars"></i> Menu
            </a>
            <a href="#" class="top-nav-item active">
                <i class="fas fa-clock"></i> Bookings
            </a>
            <a href="#" class="top-nav-item">
                <i class="fas fa-sign-in-alt"></i> Login
            </a>
            <a href="#" class="top-nav-item">
                <i class="fas fa-user-plus"></i> Register
            </a>
        </nav>
    </header>

    <div class="dashboard-container">
        <div class="dashboard-content">
            <h1 class="page-title">Table Booking History</h1>
            
            <div class="booking-filters">
                <a href="#" class="filter-tab active">All bookings</a>
                <a href="#" class="filter-tab">Confirmed</a>
                <a href="#" class="filter-tab">Cancelled</a>
            </div>

            <div class="date-pickers">
                <div class="date-picker-wrapper">
                    <input type="date" class="date-picker-input" id="fromDate" placeholder="From Date">
                </div>
                <div class="date-picker-wrapper">
                    <input type="date" class="date-picker-input" id="toDate" placeholder="To Date">
                </div>
            </div>

            <table class="booking-table">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Table</th>
                        <th>Status</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Guest 1</td>
                        <td>Table 1</td>
                        <td class="status-confirmed">Confirmed</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Guest 1</td>
                        <td>Table 2</td>
                        <td class="status-confirmed">Confirmed</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Guest 1</td>
                        <td>Table 5</td>
                        <td class="status-cancelled">Cancelled</td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Guest 1</td>
                        <td>Table 7</td>
                        <td class="status-cancelled">Cancelled</td>
                    </tr>
                    <tr>
                        <td>5</td>
                        <td>Guest 1</td>
                        <td>Table 3</td>
                        <td class="status-confirmed">Confirmed</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <section class="cta-section">
        <h2 class="cta-title">Ready to embark on a culinary journey?</h2>
        <p class="cta-subtitle">Create an account to easily manage your reservations and receive exclusive offers</p>
        <div class="cta-buttons">
            <a href="#" class="cta-btn cta-btn-primary">Create Account</a>
            <a href="#" class="cta-btn cta-btn-secondary">Subscribe to our newsletter</a>
        </div>
    </section>

    <footer class="footer">
        <div class="footer-brand">Continental Bhansa</div>
        <p style="margin-bottom: 30px;">Experience authentic Indian flavors with a contemporary twist. Our chefs craft each dish with passion, tradition, and the finest ingredients.</p>
        
        <div class="footer-section">
            <div class="footer-column">
                <h3>Quick Links</h3>
                <ul class="footer-links">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Menu</a></li>
                    <li><a href="#">Reservations</a></li>
                    <li><a href="#">About</a></li>
                    <li><a href="#">Register</a></li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Contact Us</h3>
                <ul class="footer-links">
                    <li>123 Spice Avenue, Culinary District, Flavorville, FL 33039</li>
                    <li>+1 (555) 123-4567</li>
                    <li>info@continentalBhansa.com</li>
                </ul>
            </div>
            <div class="footer-column">
                <h3>Our Services</h3>
                <ul class="footer-links">
                    <li>Authentic Cuisine</li>
                    <li>Exquisite Menu</li>
                    <li>Easy Reservations</li>
                </ul>
            </div>
        </div>
        
        <div class="social-links">
            <a href="#"><i class="fab fa-facebook-f"></i></a>
            <a href="#"><i class="fab fa-instagram"></i></a>
            <a href="#"><i class="fab fa-twitter"></i></a>
        </div>
        <div class="copyright">© 2024 Continental Bhansa. All rights reserved.</div>
    </footer>

    <script>
        // Date picker functionality
        const fromDate = document.getElementById('fromDate');
        const toDate = document.getElementById('toDate');

        // Set minimum date to today
        const today = new Date().toISOString().split('T')[0];
        fromDate.min = today;
        toDate.min = today;

        // Update the min/max dates when one is selected
        fromDate.addEventListener('change', function() {
            if (this.value) {
                toDate.min = this.value;
            }
        });

        toDate.addEventListener('change', function() {
            if (this.value) {
                fromDate.max = this.value;
            }
        });

        // Tab filtering functionality
        document.querySelectorAll('.filter-tab').forEach(tab => {
            tab.addEventListener('click', function(e) {
                e.preventDefault();
                
                // Remove active class from all tabs
                document.querySelectorAll('.filter-tab').forEach(t => t.classList.remove('active'));
                
                // Add active class to clicked tab
                this.classList.add('active');
                
                // Filter functionality
                const filterType = this.textContent.trim().toLowerCase();
                const rows = document.querySelectorAll('.booking-table tbody tr');
                
                rows.forEach(row => {
                    const status = row.querySelector('td:last-child').textContent.trim().toLowerCase();
                    
                    if (filterType === 'all bookings') {
                        row.style.display = '';
                    } else if (filterType === status) {
                        row.style.display = '';
                    } else {
                        row.style.display = 'none';
                    }
                });
            });
        });
    </script>
</body>
</html>