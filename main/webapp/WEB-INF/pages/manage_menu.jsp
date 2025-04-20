<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Manage Menu</title>
<link rel="stylesheet" href="css/manage_menu.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
<link href="https://fonts.googleapis.com/css2?family=Playfair+Display:wght@400;600;700&display=swap" rel="stylesheet">


</head>
<body>
	<div class="sidebar">
  <h4 class="brand">Continental Bhansa</h4>

  <a href="admin_dashboard.jsp">
    <i class="fas fa-folder"></i> Dashboard
  </a>
  <a href="manage_reservation.jsp">
    <i class="fas fa-calendar-alt"></i> Reservations
  </a>
  <a href="manage_user.jsp">
    <i class="fas fa-users"></i> Users
  </a>
  <a href="#" class="active">
    <i class="fas fa-bars"></i> Menu
  </a>

  <div class="logout-section">
    <a href="#"><i class="fas fa-sign-out-alt"></i> Logout</a>
  </div>
</div>


	<div class="main">
		<div class="header">
			<h1>Manage Menu</h1>
			<button class="add-btn">Add Menu Item</button>
		</div>

	<div class="search-filter">
  <input type="text" placeholder="Search menu items...">

  <!-- Category Dropdown -->
  <select>
    <option>All Categories</option>
    <option>Appetizers</option>
    <option>Main Course</option>
    <option>Desserts</option>
    <option>Beverages</option>
    <option>Vegetarian</option>
    <option>Non-Vegetarian</option>
    <option>Specials</option>
  </select>

  <!-- Item Dropdown -->
  <select>
    <option>All Items</option>
    <option>Chicken Biryani</option>
    <option>Paneer Butter Masala</option>
    <option>Spring Rolls</option>
    <option>Tiramisu</option>
    <option>Mango Lassi</option>
    <option>Caprese Salad</option>
    <option>Tandoori Chicken</option>
  </select>
</div>


		<div class="grid-container">
			<div class="card">
				<div class="card-header">
					<span class="tag special">Chef's Special</span> <span class="price">NPR 650</span>
				</div>
				<h3>Butter Chicken</h3>
				<p>Tender chicken pieces cooked in a rich and creamy
					tomato-based sauce with butter and aromatic spices.</p>
				<div class="tags">
					<span>Main Course</span>
				</div>
				<div class="actions">
					<label class="switch"><input type="checkbox" checked><span
						class="slider round"></span></label>
					<button>Edit</button>
					<button>Delete</button>
				</div>
			</div>
			<div class="card">
				<div class="card-header">
					<span class="price">NPR 450</span>
				</div>
				<h3>Paneer Tikka </h3>
				<p>Cubes of cottage cheese marinated in spices, grilled and then
					cooked in a rich tomato gravy.</p>
				<div class="tags">
					<span>Main Course</span><span>Vegetarian</span>
				</div>
				<div class="actions">
					<label class="switch"><input type="checkbox" checked><span
						class="slider round"></span></label>
					<button>Edit</button>
					<button>Delete</button>
				</div>
			</div>

			<div class="card">
				<div class="card-header">
					<span class="tag special">Chef's Special</span> <span class="price">NPR 720</span>
				</div>
				<h3>Chicken Biryani</h3>
				<p>Fragrant basmati rice cooked with tender chicken pieces,
					caramelized onions, and aromatic spices.</p>
				<div class="tags">
					<span>Rice and Biryani</span><span>Spicy</span>
				</div>
				<div class="actions">
					<label class="switch"><input type="checkbox" checked><span
						class="slider round"></span></label>
					<button>Edit</button>
					<button>Delete</button>
				</div>
			</div>

			<div class="card">
				<div class="card-header">
					<span class="price">NPR 80</span>
				</div>
				<h3>Garlic Naan</h3>
				<p>Soft and fluffy bread stuffed with minced garlic and herbs,
					baked in a tandoor oven.</p>
				<div class="tags">
					<span>Bread</span><span>Vegetarian</span>
				</div>
				<div class="actions">
					<label class="switch"><input type="checkbox" checked><span
						class="slider round"></span></label>
					<button>Edit</button>
					<button>Delete</button>
				</div>
			</div>

			<div class="card">
				<div class="card-header">
					<span class="price">NPR 580</span>
				</div>
				<h3>Mutton Kebab (Curry)</h3>
				<p>Spicy curry made with tender mutton pieces, potatoes, and a
					tangy sauce with vinegar and spices.</p>
				<div class="tags">
					<span>Main Course</span><span>Spicy</span>
				</div>
				<div class="actions">
					<label class="switch"><input type="checkbox" checked><span
						class="slider round"></span></label>
					<button>Edit</button>
					<button>Delete</button>
				</div>
			</div>

			<div class="card">
				<div class="card-header">
					<span class="price">NPR 350</span>
				</div>
				<h3>Mango Lassi</h3>
				<p>Refreshing yogurt-based drink blended with sweet mango pulp
					and a hint of cardamom.</p>
				<div class="tags">
					<span>Beverages</span><span>Vegetarian</span>
				</div>
				<div class="actions">
					<label class="switch"><input type="checkbox" checked><span
						class="slider round"></span></label>
					<button>Edit</button>
					<button>Delete</button>
				</div>
			</div>

			<div class="card">
				<div class="card-header">
					<span class="price">NPR 480</span>
				</div>
				<h3>Dumplings</h3>
				<p>Soft dough filled with minced meat of choice, spiced potatoes, peas, and aromatic
					spices, steamed to perfection.</p>
				<div class="tags">
					<span>Appetizer</span><span>Non-Vegetarian</span>
				</div>
				<div class="actions">
					<label class="switch"><input type="checkbox"><span
						class="slider round"></span></label>
					<button>Edit</button>
					<button>Delete</button>
				</div>
			</div>

			<div class="card">
				<div class="card-header">
					<span class="price">NPR 100</span>
				</div>
				<h3>Gulab Jamun</h3>
				<p>Soft milk solids dumplings, fried and soaked in rose-flavored
					sugar syrup.</p>
				<div class="tags">
					<span>Desserts</span><span>Vegetarian</span>
				</div>
				<div class="actions">
					<label class="switch"><input type="checkbox" checked><span
						class="slider round"></span></label>
					<button>Edit</button>
					<button>Delete</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
