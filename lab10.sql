-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2025 at 06:10 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lab10`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `rating_rate` decimal(3,2) DEFAULT NULL,
  `rating_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `price`, `description`, `category`, `rating_rate`, `rating_count`) VALUES
(0, 'Wireless Mechanical Keyboard', 79.99, 'Compact 75% wireless mechanical keyboard with RGB backlight, hot-swappable switches, and Bluetooth/USB-C connectivity.', 'electronics', 4.60, 320),
(2, 'Mens Casual Premium Slim Fit T-Shirts', 22.30, 'Slim-fitting style, contrast raglan long sleeve, three-button henley placket.', 'men\'s clothing', 4.10, 259),
(3, 'Mens Cotton Jacket', 55.99, 'Great outerwear jackets for Spring/Autumn/Winter, suitable for many occasions.', 'men\'s clothing', 4.70, 500),
(4, 'Mens Casual Slim Fit', 15.99, 'The color could be slightly different between on the screen and in practice. / Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.', 'men\'s clothing', 2.10, 430),
(5, 'John Hardy Women\'s Legends Naga Gold & Silver Dragon Station Chain Bracelet', 695.00, 'From our Legends Collection, the Naga was inspired by the mythical water dragon.', 'jewelery', 4.60, 400),
(6, 'Solid Gold Petite Micropave ', 168.00, 'Satisfaction guaranteed. Return or exchange any order within 30 days.', 'jewelery', 3.90, 70),
(7, 'White Gold Plated Princess', 9.99, 'Classic Created Wedding Engagement Solitaire Diamond Promise Ring.', 'jewelery', 3.00, 400),
(8, 'Pierced Owl Rose Gold Plated Stainless Steel Double', 10.99, 'Rose Gold Plated Double Flared Tunnel Plug Earrings.', 'jewelery', 1.90, 100),
(9, 'WD 2TB Elements Portable External Hard Drive - USB 3.0 ', 64.00, 'USB 3.0 and USB 2.0 Compatibility. Transfer data at super speed.', 'electronics', 3.30, 203),
(10, 'SanDisk SSD PLUS 1TB Internal SSD - SATA III 6 Gb/s', 109.00, 'Easy upgrade for faster boot up, shutdown, application load and response.', 'electronics', 2.90, 470),
(11, 'Silicon Power 256GB SSD 3D NAND A55 SLC Cache Performance Boost SATA III 2.5', 109.00, '3D NAND flash are applied to deliver high transfer speeds.', 'electronics', 4.80, 319),
(12, 'WD 4TB Gaming Drive Works with Playstation 4 Portable External Hard Drive', 114.00, 'Expand your PS4 gaming experience, Play anywhere.', 'electronics', 4.80, 400),
(13, 'Acer SB220Q bi 21.5 inches Full HD (1920 x 1080) IPS Ultra-Thin', 599.00, '21. 5 inches Full HD (1920 x 1080) widescreen IPS display.', 'electronics', 2.90, 250),
(14, 'Samsung 49-Inch CHG90 144Hz Curved Gaming Monitor', 999.99, 'Super ultrawide 49 inch screen with 32:9 aspect ratio.', 'electronics', 2.20, 140),
(15, 'BIYLACLESEN Women\'s 3-in-1 Snowboard Jacket Winter Coats', 56.99, 'Note: The Jackets is US standard size, please choose according to your body size.', 'women\'s clothing', 2.60, 235),
(16, 'Lock and Love Women\'s Removable Hooded Faux Leather Moto Biker Jacket', 29.95, 'Faux leather material for style and comfort.', 'women\'s clothing', 2.90, 340),
(17, 'Rain Jacket Women Windbreaker Striped Climbing Raincoats', 39.99, 'Lightweight perfect for trip or casual wear.', 'women\'s clothing', 3.80, 679),
(18, 'MBJ Women\'s Solid Short Sleeve Boat Neck V', 9.85, '95% RAYON 5% SPANDEX. Made in USA or Imported.', 'women\'s clothing', 4.70, 130),
(19, 'Opna Women\'s Short Sleeve Moisture', 7.95, '100% Polyester, Machine wash, imported.', 'women\'s clothing', 4.50, 146),
(20, 'DANVOUY Womens T Shirt Casual Cotton Short', 12.99, '95% Cotton, 5% Spandex, soft and comfy.', 'women\'s clothing', 3.60, 145),
(21, 'Mens Vintage Leather Wallet', 34.90, 'Handmade genuine leather wallet with RFID blocking.', 'men\'s clothing', 4.40, 310),
(22, 'Bluetooth Wireless Headphones', 89.99, 'Over-ear Bluetooth headphones with noise cancellation.', 'electronics', 4.20, 520),
(23, 'Smart Fitness Watch', 59.95, 'Track your heart rate, sleep, and workouts with this smartwatch.', 'electronics', 4.00, 410),
(24, 'Elegant Pearl Necklace', 129.00, 'Classic freshwater pearl necklace, perfect for formal occasions.', 'jewelery', 4.70, 190),
(25, 'Women\'s Casual Sneakers', 45.50, 'Lightweight and comfortable sneakers for everyday wear.', 'women\'s clothing', 4.30, 275),
(26, 'Mens Casual Slim Fit', 15.99, 'The color could be slightly different between on the screen and in practice.', 'men\'s clothing', 2.10, 430);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
