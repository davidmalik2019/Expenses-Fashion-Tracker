-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2025 at 12:39 PM
-- Server version: 5.5.41
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expensetracker_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `name` varchar(255) NOT NULL,
  `prce` varchar(11) NOT NULL,
  `qtyy` varchar(5) NOT NULL,
  `unit` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `date`, `name`, `prce`, `qtyy`, `unit`) VALUES
(1, '2021-03-17', 'Electrical Industrial Machine (Emel)', '137,000', '1', 'pcs'),
(2, '2021-04-14', 'Electrical Industrial Weaving Machine (Emel)', '152,000', '1', 'pcs'),
(3, '2021-03-13', 'Electrical Sewing Machine (ButterFly)', '45,000', '1', 'pcs'),
(4, '2021-03-10', 'Electrical Sewing Machine (ambro brothers) ', '147,000', '1', 'pcs'),
(5, '2021-04-06', 'Executive Table', '35,000', '1', 'pcs'),
(6, '2021-04-09', 'Secretary Chair', '15,000', '1', 'pcs'),
(7, '2021-05-12', 'Standing Table (Ironing)', '15,000', '1', 'pcs'),
(8, '2022-01-31', 'Shelf for Fabric', '40,000', '1', 'pcs'),
(9, '2021-11-09', 'Sitting Stool (Apprenticeship)', '5,000', '5', 'pcs'),
(10, '2021-04-14', 'Ceiling Fan', '5,000', '1', 'pcs'),
(11, '2021-04-29', 'Generator (Fireman) 7.5 kva key', '155,000', '1', 'pcs'),
(12, '2023-07-12', 'Manual Sewing Machine (Butterfly)', '75,000', '1', 'pcs');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) NOT NULL,
  `date` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `location_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `date`, `name`, `phone`, `location_id`) VALUES
(1, '2025-03-22', 'Egbunu David', '08086265615', 2),
(8, '2025-03-22', 'New Client', '08083648995', 1),
(9, '2025-03-20', 'Rev. Peace', '08033083732', 1),
(10, '2025-03-13', 'Mr Noel', '08067794767', 1),
(11, '2025-03-05', 'Mrs Agatha', '08170632019', 1),
(12, '2025-03-25', 'Elizabeth David', '07086378969', 2),
(13, '2025-03-26', 'Divine David', 'Nil', 2),
(14, '2025-03-26', 'Faithful David', 'Nil', 2),
(16, '2024-07-17', 'Jeremiah', '08138852777', 1),
(17, '2024-06-05', 'Seyi', 'Nil', 1),
(18, '2024-07-17', 'Ebenezer', '08038743128', 2),
(19, '2023-06-06', 'Theo plaza', '08027793775', 1),
(20, '2025-04-14', 'Young child', 'Nil', 1),
(21, '2025-04-14', 'Jerry igala', '08138852777', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Bwari, Abuja', '2025-03-16', '2025-03-16'),
(2, 'Barangoni, Bwari', '2025-03-16', '2025-04-09'),
(3, 'Usafa, Bwari, Abuja', '2025-03-16', '2025-03-16'),
(4, 'Gwarinpa, Abuja', '2025-03-20', '2025-03-20'),
(6, ' Dutse, Abuja', '2025-03-23', '2025-04-09'),
(7, 'Kubwa, Abuja', '2025-03-25', '2025-03-25'),
(8, 'Dawaki, Abuja', '2025-04-10', '2025-04-10');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `amount` double NOT NULL,
  `date` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `order_type` enum('EXPENSE','INCOME') NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `order_status` enum('IN','OUT') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `amount`, `date`, `description`, `order_type`, `customer_id`, `order_status`) VALUES
(1, 7500, '2025-03-24', ' material/payout', 'EXPENSE', 8, 'OUT'),
(2, 15000, '2025-03-24', '4 fabric', 'INCOME', 8, 'OUT'),
(4, 500, '2025-03-22', 'Weaving thread', 'EXPENSE', 1, 'OUT'),
(5, 5000, '2025-03-20', '1 fabric', 'INCOME', 9, 'IN'),
(6, 15000, '2025-03-15', '2 fabric', 'INCOME', 10, 'OUT'),
(7, 9200, '2025-03-26', 'Material/payout', 'EXPENSE', 10, 'OUT'),
(8, 2500, '2025-03-26', 'Material/payout', 'EXPENSE', 9, 'IN'),
(18, 5000, '2025-04-01', '1 fabric', 'INCOME', 10, 'OUT'),
(19, 2500, '2025-04-04', 'sewing material ', 'EXPENSE', 10, 'OUT'),
(20, 3000, '2025-04-14', 'Material', 'INCOME', 20, 'OUT'),
(21, 1500, '2025-04-16', 'Material/payout', 'EXPENSE', 20, 'OUT');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK3tpff6vgcq2x4lrtt4vn65wnq` (`location_id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpxtb8awmi0dk6smoh2vp1litg` (`customer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `FK3tpff6vgcq2x4lrtt4vn65wnq` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FKpxtb8awmi0dk6smoh2vp1litg` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
