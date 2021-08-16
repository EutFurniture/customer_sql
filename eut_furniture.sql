-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2021 at 09:03 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eut_furniture`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `totalprice` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `customer_id`, `product_id`, `quantity`, `totalprice`, `date`) VALUES
(44, 4, 9, 1, 25000, '2021-08-16');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `name`) VALUES
(1, 'dining set'),
(2, 'Table'),
(3, 'Chair'),
(4, 'sofa');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8mb4 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `password` varchar(25) CHARACTER SET utf8mb4 NOT NULL,
  `fname` varchar(100) CHARACTER SET utf8mb4 NOT NULL,
  `lname` varchar(100) NOT NULL,
  `points` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `date` date NOT NULL,
  `order_frequency` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `star` int(11) NOT NULL,
  `feedback` varchar(255) NOT NULL,
  `proimg` varchar(255) NOT NULL DEFAULT '/'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `email`, `phone`, `address`, `password`, `fname`, `lname`, `points`, `date`, `order_frequency`, `star`, `feedback`, `proimg`) VALUES
(1, 'gajanikank@gmail.com', '0778965412', 'pannalai', '123456', 'gajani', '', '', '0000-00-00', '', 0, '', ''),
(2, 'dttdgh@gmail.com', '0789456123', 'pannalai', '563214', 'gaju', '', '', '0000-00-00', '', 0, '', ''),
(3, 'cghj@gmail.com', '0775489632', 'jaffna', '7894', 'maax', '', '', '0000-00-00', '', 3, 'hello', ''),
(4, 'dool@gmail.com', '0770000123', 'colombo', '4444', 'dool', '', '20', '0000-00-00', '', 5, 'super', 'kitten.jpg'),
(5, 'achchu@gmail.com', '0764444444', 'chunnakam', '22222', 'achchu', '', '', '0000-00-00', '', 0, '', ''),
(6, 'savd@gmail.com', '1234567890', 'cdvv', '123456', 'eaegdsds', '', '', '0000-00-00', '', 0, '', ''),
(7, 'schhj@gmail.com', '0123456789', 'ccc', '0101', 'my', '', '', '0000-00-00', '', 0, '', ''),
(8, 'ssss@gmail.com', '0123456789', 'vdvdsd', '010101', 'ssss', '', '', '0000-00-00', '', 0, '', ''),
(20, 'orange@gmail.com', '0778945612', 'cddvdcdcd', 'orange', 'orange', '', '', '0000-00-00', '', 0, '', ''),
(21, 'apple@gmail.com\r\n', '0', '0', 'apple', 'apple', 'king', '', '0000-00-00', '', 3, 'dddd', '/profile.jpg'),
(22, 'mango@gmail.com', '4445455555', 'cscc', 'mango', 'mango', '', '', '0000-00-00', '', 0, '', ''),
(24, 'gajani@gmail.com', '0775896412', 'ffcxcxgavj', 'gajani', 'gajani', '', '', '0000-00-00', '', 0, '', ''),
(25, 'gaju@gmail.com', '0778945632', 'dfsdgss', 'gaju18', 'gaju', '', '', '0000-00-00', '', 0, '', ''),
(26, 'cscdcdvs@gmail.com', '0112365478', 'dfhxisxlsj', 'bellaa', 'bella', 'bella', '', '0000-00-00', '', 0, '', ''),
(27, '0', '0', '0', '0', '0', 'archchun', '', '0000-00-00', '', 0, '', '2ee58dba0c8f6fecdb83cf74eb35913d.jpg'),
(28, 'gajanikangesan08@gmail.com', '0778212159', 'pannalai', '$2b$10$7KbZyOyeBJTP5z1Dlr', 'Gajani', ' Kangesan', '', '0000-00-00', '', 0, '', '/user.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `custorder`
--

CREATE TABLE `custorder` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(50) CHARACTER SET utf8mb4 NOT NULL,
  `due_date` date NOT NULL,
  `advanced_price` double NOT NULL,
  `total_price` double NOT NULL,
  `order_description` varchar(200) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `custorder`
--

INSERT INTO `custorder` (`order_id`, `customer_id`, `date`, `status`, `due_date`, `advanced_price`, `total_price`, `order_description`) VALUES
(1, 4, '2021-07-06', 'completed', '2021-07-20', 1000, 11000, 'fnfd g c');

-- --------------------------------------------------------

--
-- Table structure for table `custproducts`
--

CREATE TABLE `custproducts` (
  `cus_product_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(200) NOT NULL,
  `color` varchar(20) NOT NULL,
  `material` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `measurement` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `custproducts`
--

INSERT INTO `custproducts` (`cus_product_id`, `image`, `description`, `color`, `material`, `product_name`, `measurement`) VALUES
(71, 'abc.jpg', 'xscdvfv', '#c06621', 'asdfg', 'chair', 2),
(72, '20181122_144805.jpg', 'sfdgfhgjh,k.', '#155f7f', 'adsfdgfhm', 'csdvfbgnhmj', 1),
(73, 'accuracy.jpg', 'qgehrjdrje', '#951d1d', 'aaa', 'chair', 20),
(74, 'accuracy.jpg', 'qgehrjdrje', '#951d1d', 'aaa', 'chair', 20);

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE `delivery` (
  `delivery_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `returned_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `NIC` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_no` varchar(15) NOT NULL,
  `job_start_date` date NOT NULL,
  `date_of_birth` date NOT NULL,
  `address` varchar(100) NOT NULL,
  `role` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `gift`
--

CREATE TABLE `gift` (
  `gift_id` int(11) NOT NULL,
  `gift_name` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `gifimage` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gift`
--

INSERT INTO `gift` (`gift_id`, `gift_name`, `price`, `quantity`, `gifimage`) VALUES
(1, 'Low Pot Table Lamp', 1599, 5, '/g1.jpg'),
(2, 'Wailea outdoor chair', 2199, 5, '/g2.jpg'),
(3, 'Dog Bed', 3799, 5, '/g3.jpg'),
(4, 'BookShelf', 3999, 5, '/g4.jpg'),
(5, 'child Table', 1999, 5, '/g5.jpg'),
(6, 'CupBoard ', 3999, 5, '/g6.jpg'),
(7, 'Bamboo Round Table', 3199, 5, '/g7.jpg'),
(8, 'Book Smarts', 5490, 5, '/g8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orderitem`
--

CREATE TABLE `orderitem` (
  `order_id` int(255) NOT NULL,
  `product_id` int(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderitem`
--

INSERT INTO `orderitem` (`order_id`, `product_id`, `quantity`) VALUES
(1, 2, 2),
(1, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `payment_method` varchar(25) NOT NULL,
  `payment_status` varchar(50) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `currency` varchar(2) NOT NULL DEFAULT 'Rs',
  `price` double NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `material` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `currency`, `price`, `product_name`, `quantity`, `material`, `image`, `category_id`) VALUES
(1, 'Rs', 25000, 'dining set', '2', 'wooden', '/images/c7.jpg\r\n', 3),
(2, 'Rs', 18000, 'chair', '10', 'wooden', '/images/c5.jpg', 3),
(3, 'Rs', 1300, 'Garden Dining Chair', '5', 'Iron', '/ch1.jpg', 3),
(4, 'Rs', 1500, 'Side chair', '10', 'plastic', '/ch2.jpg', 3),
(5, 'Rs', 18000, 'Dining chair', '5', 'wood', '/ch3.jpg', 3),
(6, 'Rs', 800, 'Sunshine chair', '20', 'plastic', '/ch4.jpg', 3),
(7, 'Rs', 8000, 'computer chair', '5', 'plastic', '/c4.jpg', 3),
(8, 'Rs', 5000, 'Fabric chair', '4', 'wood', '/c2.jpg', 3),
(9, 'Rs', 25000, 'Dining set', '3', 'wooden', '/d5.jpg', 1),
(10, 'Rs', 35000, 'Dining set', '0', '', '/d4.jpg', 1),
(11, 'Rs', 20000, 'plastic dining set', '5', '', '/d6.jpg', 1),
(12, 'Rs', 25999, 'Bistro & Dining set', '3', '', '/d8.jpg', 1),
(13, 'Rs', 32999, 'Glass Dining set', '3', '', '/d11.jpg', 1),
(14, 'Rs', 32000, 'Patio Sets ', '3', '', '/d10.jpg', 1),
(15, 'Rs', 27000, 'Dining set', '2', '', '/d2.jpg', 1),
(16, 'Rs', 50999, 'Rectangular set', '4', '', '/d12.jpeg\r\n', 1),
(17, 'Rs', 120000, '', '2', '', '/s1.jpg', 4),
(18, 'Rs', 0, '', '2', '', '/s2.jpg', 4),
(19, 'Rs', 0, '', '3', '', '/s3.png', 4),
(20, 'Rs', 0, '', '3', '', '/s4.jpg', 4);

-- --------------------------------------------------------

--
-- Table structure for table `return_item`
--

CREATE TABLE `return_item` (
  `returned_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `return_date` date NOT NULL,
  `reason` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  `user_id` int(11) NOT NULL,
  `user_role` varchar(25) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `cart1` (`customer_id`),
  ADD KEY `cart2` (`product_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `custorder`
--
ALTER TABLE `custorder`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `custproducts`
--
ALTER TABLE `custproducts`
  ADD PRIMARY KEY (`cus_product_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
  ADD PRIMARY KEY (`delivery_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `returned_id` (`returned_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `gift`
--
ALTER TABLE `gift`
  ADD PRIMARY KEY (`gift_id`);

--
-- Indexes for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `return_item`
--
ALTER TABLE `return_item`
  ADD PRIMARY KEY (`returned_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `employee_id` (`employee_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `custorder`
--
ALTER TABLE `custorder`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custproducts`
--
ALTER TABLE `custproducts`
  MODIFY `cus_product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
  MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gift`
--
ALTER TABLE `gift`
  MODIFY `gift_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `return_item`
--
ALTER TABLE `return_item`
  MODIFY `returned_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `cart2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `custorder`
--
ALTER TABLE `custorder`
  ADD CONSTRAINT `custorder_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `delivery`
--
ALTER TABLE `delivery`
  ADD CONSTRAINT `delivery_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `userlogin` (`user_id`),
  ADD CONSTRAINT `delivery_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `custorder` (`order_id`),
  ADD CONSTRAINT `delivery_ibfk_3` FOREIGN KEY (`returned_id`) REFERENCES `return_item` (`returned_id`);

--
-- Constraints for table `orderitem`
--
ALTER TABLE `orderitem`
  ADD CONSTRAINT `orderitem1` FOREIGN KEY (`order_id`) REFERENCES `custorder` (`order_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orderitem2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `custorder` (`order_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

--
-- Constraints for table `return_item`
--
ALTER TABLE `return_item`
  ADD CONSTRAINT `return_item_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `custorder` (`order_id`);

--
-- Constraints for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD CONSTRAINT `userlogin_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`employee_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
