<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Continental Bhanchaa | Menu</title>
    <link rel="stylesheet" href="Menu.css">
</head>
<body>
    <header class="main-header">
        <div class="logo">Continental Bhanchaa</div>
        <nav>
            <ul class="nav-links">
                <li><a href="UserDashboard.html">Home</a></li>
                <li><a href="Menu.html" class="active">Menu</a></li>
                <li><a href="ContactUs.html">Contact</a></li>
                <li><a href="AboutUs.html">About</a></li>
                <li><a href="Login.html">Login</a></li>
            </ul>
        </nav>
    </header>
    <h1>Explore Our Continental Menu</h1>

    <div class="maroon-section">
        <h2>Indulge in our Signature Dishes</h2>
        <p>Fresh, bold, and crafted with passion — discover the heart of our menu.</p>
    </div>

    <!-- Filter Tabs -->
    <div class="category-tabs">
        <button onclick="scrollToCategory('indian')">Indian</button>
        <button onclick="scrollToCategory('chinese')">Chinese</button>
        <button onclick="scrollToCategory('italian')">Italian</button>
        <button onclick="scrollToCategory('nepali')">Nepali</button>
        <button onclick="scrollToCategory('desserts')">Desserts</button>
    </div>

    <!-- Indian Section -->
    <section id="indian">
        <h2 class="category-title">Indian Cuisine</h2>
        <div class="menu-grid">
            <div class="menu-card"><img src="img/butter chicken.jpg" alt="Butter Chicken"><h3>Butter Chicken</h3><p>Creamy tomato-based chicken curry.</p><span>$11.99</span></div>
            <div class="menu-card"><img src="img/palak paneer.jpg" alt="Palak Paneer"><h3>Palak Paneer</h3><p>Spinach gravy with Indian cottage cheese.</p><span>$10.50</span></div>
            <div class="menu-card"><img src="img/chicken biryani.jpg" alt="Chicken Biryani"><h3>Chicken Biryani</h3><p>Fragrant rice with spiced chicken.</p><span>$12.00</span></div>
            <div class="menu-card"><img src="img/dal makhani.jpg" alt="Dal Makhani"><h3>Dal Makhani</h3><p>Slow-cooked black lentils with butter.</p><span>$9.75</span></div>
            <div class="menu-card"><img src="img/paneer tikka.jpg" alt="Paneer Tikka"><h3>Paneer Tikka</h3><p>Grilled marinated cottage cheese cubes.</p><span>$9.99</span></div>
            <div class="menu-card"><img src="img/mutton sheikh kebab.jpg" alt="Mutton Sheikh Kebab"><h3>Mutton Sheikh Kebab</h3><p>Spiced mutton grilled to perfection, served with chutney.</p><span>$13.25</span></div>
            <div class="menu-card"><img src="img/naan.jpg" alt="Naan"><h3>Naan</h3><p>Soft Indian flatbread.</p><span>$2.00</span></div>
            <div class="menu-card"><img src="img/samosa.jpg" alt="Samosa"><h3>Samosa</h3><p>Crispy pastry with spiced potato filling.</p><span>$3.00</span></div>
        </div>
    </section>

    <!-- Chinese Section -->
    <section id="chinese">
        <h2 class="category-title">Chinese Cuisine</h2>
        <div class="menu-grid">
            <div class="menu-card"><img src="img/kung pao chicken.jpg" alt="Kung Pao Chicken"><h3>Kung Pao Chicken</h3><p>Spicy stir-fried chicken with peanuts.</p><span>$11.50</span></div>
            <div class="menu-card"><img src="img/spring rolls.jpg" alt="Spring Rolls"><h3>Spring Rolls</h3><p>Vegetable rolls with sweet chili sauce.</p><span>$4.75</span></div>
            <div class="menu-card"><img src="img/sweet and sour pork.jpg" alt="Sweet and Sour Pork"><h3>Sweet and Sour Pork</h3><p>Pork in tangy sweet sauce.</p><span>$10.50</span></div>
            <div class="menu-card"><img src="img/chow mein.jpg" alt="Chow Mein"><h3>Chow Mein</h3><p>Stir-fried noodles with vegetables/meat.</p><span>$9.99</span></div>
            <div class="menu-card"><img src="img/hot and sour soup.jpg" alt="Hot and Sour Soup"><h3>Hot and Sour Soup</h3><p>Spicy soup with tofu and mushrooms.</p><span>$5.25</span></div>
            <div class="menu-card"><img src="img/fried rice.jpg" alt="Fried Rice"><h3>Fried Rice</h3><p>Rice stir-fried with veggies and egg.</p><span>$8.75</span></div>
            <div class="menu-card"><img src="img/dumplings.jpg" alt="Dumplings"><h3>Dumplings</h3><p>Steamed or fried meat-filled parcels.</p><span>$7.50</span></div>
            <div class="menu-card"><img src="img/manchurian.jpg" alt="Manchurian"><h3>Manchurian</h3><p>Deep-fried veg/meat balls in spicy sauce.</p><span>$10.25</span></div>
        </div>
    </section>

    <!-- Italian Section -->
    <section id="italian">
        <h2 class="category-title">Italian Cuisine</h2>
        <div class="menu-grid">
            <div class="menu-card"><img src="img/lasagna.jpg" alt="Lasagna"><h3>Lasagna</h3><p>Layered pasta with meat and béchamel.</p><span>$12.75</span></div>
            <div class="menu-card"><img src="img/margerita pizza.jpg" alt="Margherita Pizza"><h3>Margherita Pizza</h3><p>Classic pizza with mozzarella and basil.</p><span>$9.99</span></div>
            <div class="menu-card"><img src="img/spagetti carbonara.jpg" alt="Spaghetti Carbonara"><h3>Spaghetti Carbonara</h3><p>Egg, cheese, pancetta pasta.</p><span>$11.50</span></div>
            <div class="menu-card"><img src="img/risotto.jpg" alt="Risotto"><h3>Risotto</h3><p>Creamy Arborio rice with mushrooms.</p><span>$10.99</span></div>
            <div class="menu-card"><img src="img/bruschetta.jpg" alt="Bruschetta"><h3>Bruschetta</h3><p>Toasted bread topped with tomatoes.</p><span>$5.50</span></div>
            <div class="menu-card"><img src="img/feticcine alfredo.jpg" alt="Fettuccine Alfredo"><h3>Fettuccine Alfredo</h3><p>Creamy white sauce pasta.</p><span>$11.25</span></div>
            <div class="menu-card"><img src="img/caprese salad.jpg" alt="Caprese Salad"><h3>Caprese Salad</h3><p>Tomato, mozzarella, and basil.</p><span>$6.75</span></div>
            <div class="menu-card"><img src="img/tiramisu.jpg" alt="Tiramisu"><h3>Tiramisu</h3><p>Coffee-flavored dessert with mascarpone.</p><span>$6.50</span></div>
        </div>
    </section>

    <!-- Nepali Section -->
    <section id="nepali">
        <h2 class="category-title">Nepali Cuisine</h2>
        <div class="menu-grid">
            <div class="menu-card"><img src="img/momo.jpg" alt="Momo"><h3>Momo</h3><p>Steamed dumplings with dipping sauce.</p><span>$7.99</span></div>
            <div class="menu-card"><img src="img/dal bhat.jpg" alt="Dal Bhat"><h3>Dal Bhat</h3><p>Lentils, rice, curry, and vegetables.</p><span>$9.50</span></div>
            <div class="menu-card"><img src="img/chatamari.jpg" alt="Chatamari"><h3>Chatamari</h3><p>Rice crepe with egg and toppings.</p><span>$8.00</span></div>
            <div class="menu-card"><img src="img/aloo tama.jpg" alt="Aloo Tama"><h3>Aloo Tama</h3><p>Potato and bamboo shoot curry.</p><span>$7.25</span></div>
            <div class="menu-card"><img src="img/sukuti.jpg" alt="Sukuti"><h3>Sukuti</h3><p>Spicy, dried, and smoked meat served with dipping sauce.</p><span>$6.50</span></div>
            <div class="menu-card"><img src="img/choila.jpg" alt="Choila"><h3>Choila</h3><p>A grilled meat dish with a spicy flavour.</p><span>$8.50</span></div>
        </div>
    </section>

    <!-- Desserts Section -->
    <section id="desserts">
        <h2 class="category-title">Desserts</h2>
        <div class="menu-grid">
            <div class="menu-card"><img src="img/gulab jamun.jpg" alt="Gulab Jamun"><h3>Gulab Jamun</h3><p>Milk-solid balls soaked in syrup.</p><span>$4.25</span></div>
            <div class="menu-card"><img src="img/lava cake.jpg" alt="Chocolate Lava Cake"><h3>Chocolate Lava Cake</h3><p>Warm cake with gooey chocolate center.</p><span>$5.50</span></div>
            <div class="menu-card"><img src="img/cheese cake.jpg" alt="Cheesecake"><h3>Cheesecake</h3><p>Rich cream cheese dessert on a crust.</p><span>$6.00</span></div>
            <div class="menu-card"><img src="img/fruit tart.jpg" alt="Fruit Tart"><h3>Fruit Tart</h3><p>Crispy tart filled with custard and fruits.</p><span>$5.75</span></div>
            <div class="menu-card"><img src="img/kheer.jpg" alt="Kheer"><h3>Kheer</h3><p>Rice pudding with cardamom and raisins.</p><span>$4.75</span></div>
        </div>
    </section>
    
  <div class="footer-content">
    <div class="footer-section">
      <h3>Continental Bhansa</h3>
      <p>Bringing the finest flavors from the heart of tradition to your table.</p>
    </div>
    <div class="footer-section">
      <h4>Quick Links</h4>
      <ul>
        <li><a href="UserDashboard.html">Home</a></li>
        <li><a href="#">Menu</a></li>
        <li><a href="#">Reservations</a></li>
        <li><a href="#">Contact</a></li>
      </ul>
    </div>
    <div class="footer-section">
      <h4>Contact Us</h4>
      <p>Email: info@continentalbhansa.com</p>
      <p>Phone: +123 456 7890</p>
    </div>
  </div>
  <div class="footer-bottom">
    <p>&copy; 2025 Continental Bhansa. All rights reserved.</p>
  </div>
</footer>
    <script>
        function scrollToCategory(categoryId) {
            const section = document.getElementById(categoryId);
            if (section) {
                section.scrollIntoView({ behavior: 'smooth' });
            }
        }
    </script>
</body>
</html>
