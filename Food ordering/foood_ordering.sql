-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 24, 2025 at 01:35 PM
-- Server version: 9.1.0
-- PHP Version: 8.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foood_ordering`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `name`, `price`, `category`) VALUES
(1, 'Paneer Butter Masala', 250.00, 'Indian'),
(2, 'Dal Tadka', 180.00, 'Indian'),
(3, 'Butter Naan', 50.00, 'Indian'),
(4, 'Garlic Naan', 70.00, 'Indian'),
(5, 'Aloo Paratha', 100.00, 'Indian'),
(6, 'Gobi Paratha', 110.00, 'Indian'),
(7, 'Chicken Tikka Masala', 320.00, 'Indian'),
(8, 'Mutton Rogan Josh', 400.00, 'Indian'),
(9, 'Palak Paneer', 260.00, 'Indian'),
(10, 'Kadhai Paneer', 270.00, 'Indian'),
(11, 'Masala Dosa', 150.00, 'Indian'),
(12, 'Idli Sambhar', 120.00, 'Indian'),
(13, 'Medu Vada', 130.00, 'Indian'),
(14, 'Pav Bhaji', 160.00, 'Indian'),
(15, 'Chole Bhature', 180.00, 'Indian'),
(16, 'Veg Hakka Noodles', 180.00, 'Chinese'),
(17, 'Chicken Hakka Noodles', 220.00, 'Chinese'),
(18, 'Egg Hakka Noodles', 200.00, 'Chinese'),
(19, 'Veg Fried Rice', 170.00, 'Chinese'),
(20, 'Chicken Fried Rice', 220.00, 'Chinese'),
(21, 'Egg Fried Rice', 200.00, 'Chinese'),
(22, 'Chilli Paneer', 240.00, 'Chinese'),
(23, 'Chilli Chicken', 280.00, 'Chinese'),
(24, 'Manchow Soup', 120.00, 'Chinese'),
(25, 'Hot & Sour Soup', 130.00, 'Chinese'),
(26, 'Spring Rolls', 160.00, 'Chinese'),
(27, 'Hyderabadi Chicken Biryani', 320.00, 'Biryani'),
(28, 'Mutton Biryani', 400.00, 'Biryani'),
(29, 'Paneer Biryani', 260.00, 'Biryani'),
(30, 'Egg Biryani', 230.00, 'Biryani'),
(31, 'Veg Biryani', 200.00, 'Biryani'),
(32, 'Dum Biryani', 350.00, 'Biryani'),
(33, 'Kolkata Biryani', 370.00, 'Biryani'),
(34, 'Lucknowi Biryani', 380.00, 'Biryani'),
(35, 'Lassi', 90.00, 'Beverages'),
(36, 'Masala Chai', 50.00, 'Beverages'),
(37, 'Cold Coffee', 140.00, 'Beverages'),
(38, 'Sweet Lime Juice', 110.00, 'Beverages'),
(39, 'Mango Shake', 130.00, 'Beverages'),
(40, 'Chocolate Milkshake', 150.00, 'Beverages'),
(41, 'Gulab Jamun (2pcs)', 80.00, 'Desserts'),
(42, 'Rasgulla (2pcs)', 90.00, 'Desserts'),
(43, 'Rasmalai (2pcs)', 120.00, 'Desserts'),
(44, 'Kesar Pista Kulfi', 130.00, 'Desserts'),
(45, 'Jalebi', 100.00, 'Desserts'),
(46, 'Gajar Ka Halwa', 140.00, 'Desserts'),
(47, 'Chocolate Brownie', 160.00, 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `item_name`, `price`) VALUES
(1, 'Pizza', 10.00),
(2, 'Pizza', 10.00),
(3, 'Lassi', 80.00);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
