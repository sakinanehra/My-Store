-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 02, 2026 at 07:52 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mystore`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(11) NOT NULL,
  `brand_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(2, 'swiggy'),
(3, 'zomato'),
(4, 'MacDonald '),
(5, 'louis Vuitton '),
(6, 'amazon'),
(7, 'flipkart'),
(8, 'channel');

-- --------------------------------------------------------

--
-- Table structure for table `cart_details`
--

CREATE TABLE `cart_details` (
  `product_id` int(11) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `quantity` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_details`
--

INSERT INTO `cart_details` (`product_id`, `ip_address`, `quantity`) VALUES
(9, '::1', 0),
(12, '::1', 3),
(13, '::1', 3),
(14, '::1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_title` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_title`) VALUES
(1, 'fruits '),
(2, 'juice'),
(3, 'cold coffee'),
(4, 'milk products'),
(7, 'bags'),
(8, 'bouquet '),
(9, 'icecreams'),
(10, 'vegetables'),
(11, 'toffee'),
(12, 'chocolate'),
(13, 'bakery');

-- --------------------------------------------------------

--
-- Table structure for table `orders_pending`
--

CREATE TABLE `orders_pending` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `invoice_numer` int(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(255) NOT NULL,
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_keywords` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image1` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_description`, `product_keywords`, `category_id`, `brand_id`, `product_image1`, `product_image2`, `product_image3`, `product_price`, `date`, `status`) VALUES
(7, 'bag', 'bag for girlds', '.bag .stylishbag .bag for girls', 7, 5, 'bag1.jpg', 'bag2.jpg', 'bag3.jpg', '2000', '2024-08-27 01:35:42', 'true'),
(8, 'mango', 'mango is a fruit that is very tasty', '.mango.fresh mango.green mango', 1, 2, 'mango1.jpg', 'mango2.jpg', 'mango3.jpg', '200', '2024-08-27 02:01:26', 'true'),
(9, 'strarberry', 'strawberry is a delicious fruit...', '.strawberry.delicious strawberry.red strawberry', 1, 3, 'strawberry.jpg.jpg', 'strawberry1.jpg', 'strawberry2.jpg', '250', '2024-08-27 02:17:23', 'true'),
(11, 'dairymilk ', 'dairymilk is very delicious and tasy chocolate 🍫 ', '.chocolate.dairymilk.tastychocolate', 12, 4, 'dairymilk1.jpg', 'dairymilk2.jpg', 'dairymilk3.jpg', '150', '2024-08-27 02:22:50', 'true'),
(12, 'bouquet', 'flower bouquet 💐 ', '.flowers.bouquet ', 8, 7, 'bouquet.jpg.jpg', 'bouquet1.jpg', 'bouquet2.jpg', '400', '2024-08-27 02:24:23', 'true'),
(13, 'cold coffee', 'a sip of coffee for freshness', '.coldcoffee .coffee .deliciouscoffee', 3, 4, 'cold coffee.jpg.jpg', 'coffee2.jpg', 'coffee2.jpg', '350', '2024-09-02 21:18:05', 'true'),
(14, 'handbags', 'classy and royal handbags', '.handbags.royalhandbags.brandedhandbags', 7, 5, 'handbag.jpg.jpg', 'hangbags1.jpg', 'handbag2.jpg', '25000', '2024-09-02 21:25:52', 'true'),
(15, 'orange juice', 'a citrus drink to get energy', '.orangejuuice.orangesip.juice.energydrink', 2, 3, 'orangejuice1.jpg', 'orange juice.jpg.jpg', 'orangejuice2.jpg', '150', '2024-09-02 21:27:59', 'true'),
(16, 'laptop', 'dell laptop', 'laptop , tech  ,dell ,hp', 11, 7, 'Gemini_Generated_Image_mjkjktmjkjktmjkj.png', 'Screenshot 2026-06-03 162123.png', 'sourabh.png', '20000', '2026-08-07 05:41:34', 'true');

-- --------------------------------------------------------

--
-- Table structure for table `user_orders`
--

CREATE TABLE `user_orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount_due` int(255) NOT NULL,
  `invoice_number` int(255) NOT NULL,
  `total_products` int(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_image` varchar(255) NOT NULL,
  `user_ip` varchar(100) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_mobile` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`user_id`, `username`, `user_email`, `user_password`, `user_image`, `user_ip`, `user_address`, `user_mobile`) VALUES
(1, 'seema', 'seema14@gmail.com', '$2y$10$PSg26E9ZjI4GPOOt6cIeLusavfPClJzL.Gzdiax822hYTD2F4P3tq', 'img1.jpg', '::1', 'delhi', '1234567890'),
(2, 'sakku', 'sakinanehra@gmail.com', '$2y$10$CqL5TTwoMJK55BxJzMmg.O4iBP9MHgg4.89u5IViuJt5X1CPi3WLa', 'img1.jpg', '::1', 'goria', '9034519056'),
(3, 'sakina', 'sakinanehra89@gmail.com', '$2y$10$EMpYuZdMXk04I7C27.dwFOtAs5Fq8iJEsYcnaPknXE6dmBrqE9dUy', 'Screenshot 2024-09-30 184030.png', '::1', 'goria', '9034519056'),
(4, 'ritu', 'rituyadav12@gmail.com', '$2y$10$ypIafEHQS1v/r2vsidQFmuKzFIDfxmwIAIr6lxDgnmfczo4nF6VSa', 'Screenshot 2024-09-01 211529.png', '::1', 'goria', '1234567890'),
(5, 'anu', 'anusangwan122@gmail.com', '$2y$10$dv6h2wdYfpUtVfux2i9mF.i3tya9DnNGwpkA.kxWjzuk7mhcm/Ccu', 'Screenshot 2024-09-30 183837.png', '::1', 'pichopa', '2345678901'),
(6, 'muskan ', 'muskan@gmail.com', '$2y$10$0.SZaBrLQUiz6GBDrexwNO.excrogL3fxtWCf/ED1B4n/06ClP2jy', 'Screenshot 2024-09-01 211529.png', '::1', 'jhojhu', '123345678'),
(7, 'himanshu', 'himanshu@gmail.com', '$2y$10$1iAZrZNod2CRV6MPNUQ1T.hJ6hNv4fsZS7dGQTjquIwkydyvwUqcy', 'Gemini_Generated_Image_mjkjktmjkjktmjkj.png', '::1', 'hisar', '1234567890');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart_details`
--
ALTER TABLE `cart_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `orders_pending`
--
ALTER TABLE `orders_pending`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_orders`
--
ALTER TABLE `user_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cart_details`
--
ALTER TABLE `cart_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `orders_pending`
--
ALTER TABLE `orders_pending`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user_orders`
--
ALTER TABLE `user_orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
