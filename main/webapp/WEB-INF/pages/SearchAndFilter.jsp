<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search & Filter Menu - Continental Bhansa</title>
    <link href="https://fonts.googleapis.com/css2?family=Inter&display=swap" rel="stylesheet" />
  <link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="SearchAndFilter.css">
</head>
<body>
    <header>
        <nav class="navbar">
            <div class="logo">Continental Bhansa</div>
            <ul class="nav-links">
                <li><a href="UserDashboard.html">Home</a></li>
                <li><a href="SearchMenu.html" class="active">Menu</a></li>
                <li><a href="#">Contact</a></li>
                <li><a href="#">Logout</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="filter-search">
            <h1>Explore Our Menu</h1>
            <input type="text" id="searchBar" placeholder="Search for dishes...">
            <select id="cuisineFilter">
                <option value="all">All Cuisines</option>
                <option value="indian">Indian</option>
                <option value="chinese">Chinese</option>
                <option value="italian">Italian</option>
                <option value="nepali">Nepali</option>
                <option value="desserts">Desserts</option>
            </select>
        </section>

        <div id="menu-sections">
            <!-- Categories will be dynamically filtered here -->
        </div>
    </main>

    

    <script>
        const menuData = {
            indian: [
                { img: "img/butter chicken.jpg", name: "Butter Chicken", desc: "Creamy tomato-based chicken curry.", price: "$11.99" },
                { img: "img/palak paneer.jpg", name: "Palak Paneer", desc: "Spinach gravy with Indian cottage cheese.", price: "$10.50" },
                { img: "img/chicken biryani.jpg", name: "Chicken Biryani", desc: "Fragrant rice with spiced chicken.", price: "$12.00" },
                { img: "img/dal makhani.jpg", name: "Dal Makhani", desc: "Slow-cooked black lentils with butter.", price: "$9.75" },
                { img: "img/paneer tikka.jpg", name: "Paneer Tikka", desc: "Grilled marinated cottage cheese cubes.", price: "$9.99" },
                { img: "img/mutton sheikh kebab.jpg", name: "Mutton Sheikh Kebab", desc: "Spiced mutton grilled to perfection.", price: "$13.25" },
                { img: "img/naan.jpg", name: "Naan", desc: "Soft Indian flatbread.", price: "$2.00" },
                { img: "img/samosa.jpg", name: "Samosa", desc: "Crispy pastry with spiced potato filling.", price: "$3.00" }
            ],
            chinese: [
                { img: "img/kung pao chicken.jpg", name: "Kung Pao Chicken", desc: "Spicy stir-fried chicken with peanuts.", price: "$11.50" },
                { img: "img/spring rolls.jpg", name: "Spring Rolls", desc: "Vegetable rolls with sweet chili sauce.", price: "$4.75" },
                { img: "img/sweet and sour pork.jpg", name: "Sweet and Sour Pork", desc: "Pork in tangy sweet sauce.", price: "$10.50" },
                { img: "img/chow mein.jpg", name: "Chow Mein", desc: "Stir-fried noodles with vegetables/meat.", price: "$9.99" },
                { img: "img/hot and sour soup.jpg", name: "Hot and Sour Soup", desc: "Spicy soup with tofu and mushrooms.", price: "$5.25" },
                { img: "img/fried rice.jpg", name: "Fried Rice", desc: "Rice stir-fried with veggies and egg.", price: "$8.75" },
                { img: "img/dumplings.jpg", name: "Dumplings", desc: "Steamed or fried meat-filled parcels.", price: "$7.50" },
                { img: "img/manchurian.jpg", name: "Manchurian", desc: "Deep-fried veg/meat balls in spicy sauce.", price: "$10.25" }
            ],
            italian: [
                { img: "img/lasagna.jpg", name: "Lasagna", desc: "Layered pasta with meat and béchamel.", price: "$12.75" },
                { img: "img/margerita pizza.jpg", name: "Margherita Pizza", desc: "Classic pizza with mozzarella and basil.", price: "$9.99" },
                { img: "img/spagetti carbonara.jpg", name: "Spaghetti Carbonara", desc: "Egg, cheese, pancetta pasta.", price: "$11.50" },
                { img: "img/risotto.jpg", name: "Risotto", desc: "Creamy Arborio rice with mushrooms.", price: "$10.99" },
                { img: "img/bruschetta.jpg", name: "Bruschetta", desc: "Toasted bread topped with tomatoes.", price: "$5.50" },
                { img: "img/feticcine alfredo.jpg", name: "Fettuccine Alfredo", desc: "Creamy white sauce pasta.", price: "$11.25" },
                { img: "img/caprese salad.jpg", name: "Caprese Salad", desc: "Tomato, mozzarella, and basil.", price: "$6.75" },
                { img: "img/tiramisu.jpg", name: "Tiramisu", desc: "Coffee-flavored dessert with mascarpone.", price: "$6.50" }
            ],
            nepali: [
                { img: "img/momo.jpg", name: "Momo", desc: "Steamed dumplings with dipping sauce.", price: "$7.99" },
                { img: "img/dal bhat.jpg", name: "Dal Bhat", desc: "Lentils, rice, curry, and vegetables.", price: "$9.50" },
                { img: "img/chatamari.jpg", name: "Chatamari", desc: "Rice crepe with egg and toppings.", price: "$8.00" },
                { img: "img/aloo tama.jpg", name: "Aloo Tama", desc: "Potato and bamboo shoot curry.", price: "$7.25" },
                { img: "img/sukuti.jpg", name: "Sukuti", desc: "Spicy dried and smoked meat.", price: "$6.50" },
                { img: "img/choila.jpg", name: "Choila", desc: "Grilled meat dish with a spicy flavour.", price: "$8.50" }
            ],
            desserts: [
                { img: "img/gulab jamun.jpg", name: "Gulab Jamun", desc: "Milk-solid balls soaked in syrup.", price: "$4.25" },
                { img: "img/lava cake.jpg", name: "Chocolate Lava Cake", desc: "Warm cake with gooey center.", price: "$5.50" },
                { img: "img/cheese cake.jpg", name: "Cheesecake", desc: "Rich cream cheese dessert on a crust.", price: "$6.00" },
                { img: "img/fruit tart.jpg", name: "Fruit Tart", desc: "Crispy tart filled with custard and fruits.", price: "$5.75" },
                { img: "img/kheer.jpg", name: "Kheer", desc: "Rice pudding with cardamom and raisins.", price: "$4.75" }
            ]
        };

        const menuContainer = document.getElementById("menu-sections");
        const searchBar = document.getElementById("searchBar");
        const cuisineFilter = document.getElementById("cuisineFilter");

        function renderMenu(filter = "all", query = "") {
            menuContainer.innerHTML = "";

            for (const [category, items] of Object.entries(menuData)) {
                if (filter !== "all" && filter !== category) continue;

                const filteredItems = items.filter(item =>
                    item.name.toLowerCase().includes(query.toLowerCase())
                );

                if (filteredItems.length === 0) continue;

                const section = document.createElement("section");
                section.classList.add("menu-category");
                const heading = document.createElement("h2");
                heading.textContent = category.charAt(0).toUpperCase() + category.slice(1) + " Cuisine";
                heading.classList.add("category-title");

                const grid = document.createElement("div");
                grid.classList.add("menu-grid");

                filteredItems.forEach(item => {
                    const card = document.createElement("div");
                    card.classList.add("menu-card");
                    card.innerHTML = `
                        <img src="${item.img}" alt="${item.name}">
                        <h3>${item.name}</h3>
                        <p>${item.desc}</p>
                        <span>${item.price}</span>
                    `;
                    grid.appendChild(card);
                });

                section.appendChild(heading);
                section.appendChild(grid);
                menuContainer.appendChild(section);
            }
        }

        searchBar.addEventListener("input", () => {
            renderMenu(cuisineFilter.value, searchBar.value);
        });

        cuisineFilter.addEventListener("change", () => {
            renderMenu(cuisineFilter.value, searchBar.value);
        });

        renderMenu();
    </script>
<footer class="footer">
    <div class="footer-content">
        <div class="footer-about">
            <h3>About Continental Bhansa</h3>
            <p>Continental Bhansa brings together the finest dishes from around the world. From traditional Nepali to modern Italian, we serve with pride and passion.</p>
        </div>
        <div class="footer-contact">
            <h3>Contact Us</h3>
            <p>Email: support@continentalbhansa.com</p>
            <p>Phone: +977-1-5551234</p>
            <p>Address: Durbar Marg, Kathmandu, Nepal</p>
        </div>
        <div class="footer-social">
            <h3>Follow Us</h3>
            <p>Facebook | Instagram | Twitter</p>
        </div>
    </div>
    <div class="footer-bottom">
        <p>&copy; 2025 Continental Bhansa. All rights reserved.</p>
    </div>
</footer>
</body>
</html>
