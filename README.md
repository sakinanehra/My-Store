# 🛒 E-Commerce Website

A PHP and MySQL e-commerce web application with separate **User** and **Admin** panels, built to practice full-stack web development: user registration and login, product browsing, shopping cart, and an admin area for managing products, categories, and brands.

---

## ✨ Features

### User Side
- User registration and login
- Browse products and view product details
- Search products
- Add products to the shopping cart

### Admin Side
- Separate admin panel
- Insert and manage products
- Manage categories
- Manage brands

---

## 🛠️ Tech Stack

| Layer | Technology |
|---|---|
| Frontend | HTML5, CSS3 |
| Backend | PHP |
| Database | MySQL |
| Local Server | XAMPP (Apache + MySQL) |
| DB Tool | phpMyAdmin |
| Version Control | Git, GitHub |

---

## 📸 Screenshots

### User Side

**Home Page**

![Home Page](Demo%20Screenshots/Screenshots/HomePage.png.png)

**User Registration**

![User Registration](Demo%20Screenshots/Screenshots/UserRegistration.png.png)

**Login**

![Login](Demo%20Screenshots/Screenshots/Login.png)

**Product Details**

![Product Details](Demo%20Screenshots/Screenshots/ProductDetails.png.png)

**Shopping Cart**

![Shopping Cart](Demo%20Screenshots/Screenshots/Cart.png.png)

### Admin Side

**Admin Panel**

![Admin Panel](Demo%20Screenshots/Screenshots/AdminPanel.png.png)

**Insert Products**

![Insert Products](Demo%20Screenshots/Screenshots/InsertProducts.png.png)

**Categories**

![Categories](Demo%20Screenshots/Screenshots/Categories.png)

**Brands**

![Brands](Demo%20Screenshots/Screenshots/Brands.png)


## 📁 Project Structure

```
Eccomerce-Website/
│
├── admin_area/           # Admin panel pages
├── users_area/           # User account pages
├── functions/            # Reusable PHP functions
├── product images/       # Product images
├── Demo screenshots/     # README screenshots
├── index.php             # Home page
├── display_all.php       # All products page
├── product_details.php   # Single product page
├── search_product.php    # Product search
├── cart.php              # Shopping cart
├── style.css             # Styling
├── mystore.sql           # Database script
└── README.md
```

---

## 🗃️ Database

The database schema is provided in `mystore.sql`. Import it into MySQL using phpMyAdmin before running the project.

---

## 💻 Local Setup

1. **Install XAMPP** and start **Apache** and **MySQL** from the control panel.
2. **Clone the repository** into the XAMPP `htdocs` folder:
   ```bash
   cd C:/xampp/htdocs
   git clone https://github.com/sakinanehra/My-Store.git
   ```
3. **Create the database:** open `http://localhost/phpmyadmin`, create a database named `mystore`, then click **Import** and select `mystore.sql`.
4. **Check the connection settings** in the PHP connection file inside the `functions` folder (host `localhost`, user `root`, empty password by default on XAMPP).
5. **Run the project:** open `http://localhost/My-Store/` in your browser.
6. **Admin panel:** open `http://localhost/My-Store/admin_area/`.
> ⚠️ Use demo credentials only for testing. Never commit real passwords.

---

## 🔮 Upcoming Features

### Security
- [ ] Password hashing for user and admin accounts
- [ ] Prepared statements to prevent SQL injection
- [ ] Input validation and session security improvements

### Shopping Experience
- [ ] Order placement and order history
- [ ] Online payment gateway integration
- [ ] Wishlist
- [ ] Product ratings and reviews
- [ ] Product filtering and sorting (price, category, brand)
- [ ] Coupon codes and discounts

### Admin Features
- [ ] Order management and status updates
- [ ] Sales dashboard with reports
- [ ] Inventory and stock tracking
- [ ] User management

### General
- [ ] Fully responsive mobile design
- [ ] Email notifications for orders
- [ ] Deployment to a live hosting platform
- [ ] Migrating the backend to Java Spring Boot with REST APIs

---

## 👩‍💻 Author

**Sakina Nehra**
GitHub: [github.com/sakinanehra](https://github.com/sakinanehra)

---

## 📄 License

This project is developed for educational and portfolio purposes.
