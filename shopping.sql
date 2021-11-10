-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2021 at 05:19 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `status`) VALUES
(1, 'vivek', 'vivek', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `id` int(11) NOT NULL,
  `brand_name` varchar(250) NOT NULL,
  `brand_icon` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`id`, `brand_name`, `brand_icon`, `status`, `date`, `time`) VALUES
(16, 'USHA', '1(5).png', '1', '21/09/12', '16:01:13'),
(17, 'NILKAMAL', '2(4).png', '1', '21/09/12', '16:02:26'),
(18, 'DMARO', '4(1).png', '1', '21/09/12', '16:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `cart_table`
--

CREATE TABLE `cart_table` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `product_id` varchar(250) NOT NULL,
  `quantity` varchar(250) NOT NULL,
  `offer_price` varchar(250) NOT NULL,
  `subtotal` varchar(255) NOT NULL,
  `status` varchar(250) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_table`
--

INSERT INTO `cart_table` (`id`, `user_id`, `product_id`, `quantity`, `offer_price`, `subtotal`, `status`, `order_id`, `date`, `time`) VALUES
(58, '7', '32', '2', '4200', '8400', '0', 'OID23092021020805761', '21/09/23', '17:37:20'),
(59, '13', '31', '1', '880', '880', '0', 'OID30092021015652224', '21/09/27', '12:53:27'),
(60, '13', '33', '1', '6272', '6272', '0', 'OID30092021015652224', '21/09/27', '20:01:45'),
(61, '13', '32', '1', '4200', '4200', '0', 'OID30092021015652224', '21/09/27', '20:02:30'),
(62, '13', '34', '1', '1272', '1272', '1', '0', '21/09/30', '17:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `categary`
--

CREATE TABLE `categary` (
  `id` int(11) NOT NULL,
  `category_name` varchar(250) NOT NULL,
  `icon` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categary`
--

INSERT INTO `categary` (`id`, `category_name`, `icon`, `status`, `date`, `time`) VALUES
(82, 'CHAIR AND SEATING', 'office-chair-icon-600w-660589321.webp', '1', '21/09/12', '14:48:12'),
(83, 'DESK', 'download (1).png', '1', '21/09/12', '14:50:47'),
(84, 'BED', 'bed.png', '1', '21/09/12', '14:54:11'),
(85, 'CABINETS', 'download.png', '1', '21/09/12', '15:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `massege` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `subject`, `massege`, `date`, `time`) VALUES
(3, 'rakesh', 'rakesh@gamil.com', 'php', 'kjsgs;gsdgdlskg', '21/09/09', '09:25:03'),
(7, 'Prem', 'prem@gmail.com', 'php', 'hjjkasdfas', '21/09/14', '23:02:24'),
(8, 'rakesh', 'rakesh3@gamil.com', 'java', 'fjghgfhfjh', '21/09/14', '23:12:38');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `order_id` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL,
  `apartment` varchar(250) NOT NULL,
  `city` varchar(250) NOT NULL,
  `street` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `post_code` varchar(250) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `dilivery` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL,
  `order_status` varchar(250) NOT NULL,
  `totat_tax` varchar(250) NOT NULL,
  `total_price` varchar(250) NOT NULL,
  `onlinepayment_status` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `order_id`, `name`, `apartment`, `city`, `street`, `email`, `post_code`, `mobile`, `dilivery`, `date`, `time`, `order_status`, `totat_tax`, `total_price`, `onlinepayment_status`) VALUES
(9, '7', 'OID23092021020805761', 'Vivek Kumar', 'chhihi', 'up', 'chhihi', 'vivekkumar240898@gmail.com', '276121', '7052888451', 'Online', '21/09/23', '17:38:05', 'confirmed', '273.3', '8400', 'Success'),
(10, '13', 'OID30092021015652224', 'Vivek kumar', 'asdfasf', 'sdafa', 'kanpur', 'vivekkumar240898@gmail.com', '78954', '7052888451', 'Online', '21/09/30', '17:26:52', 'pending', '1333.3', '11352', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(255) NOT NULL,
  `order_id` varchar(50) NOT NULL,
  `userid` varchar(50) NOT NULL,
  `amount` varchar(200) NOT NULL,
  `payment_response` longtext NOT NULL,
  `txn_id` varchar(200) NOT NULL,
  `txn_status` varchar(25) NOT NULL,
  `txn_message` varchar(500) NOT NULL,
  `date` varchar(25) NOT NULL,
  `time` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `userid`, `amount`, `payment_response`, `txn_id`, `txn_status`, `txn_message`, `date`, `time`) VALUES
(7, 'OID23092021020805761', '7', '8400', 'a:14:{s:8:\"CURRENCY\";s:3:\"INR\";s:11:\"GATEWAYNAME\";s:6:\"WALLET\";s:7:\"RESPMSG\";s:11:\"Txn Success\";s:8:\"BANKNAME\";s:6:\"WALLET\";s:11:\"PAYMENTMODE\";s:3:\"PPI\";s:3:\"MID\";s:20:\"bYoqAe02921595593008\";s:8:\"RESPCODE\";s:2:\"01\";s:5:\"TXNID\";s:35:\"20210923111212800110168506703011351\";s:9:\"TXNAMOUNT\";s:7:\"8400.00\";s:7:\"ORDERID\";s:20:\"OID23092021020805761\";s:6:\"STATUS\";s:11:\"TXN_SUCCESS\";s:9:\"BANKTXNID\";s:8:\"65336704\";s:7:\"TXNDATE\";s:21:\"2021-09-23 17:38:08.0\";s:12:\"CHECKSUMHASH\";s:108:\"dUiIKtbzssKfsvJw1rWmZER7ZQqVtUjI3b06ezWWJdozAFtKJYljmOW5pDTjBDvqaBdFwOsRiU9EK/qFiXLMDNexVMolVdjhxKOi9uI6M6I=\";}', '20210923111212800110168506703011351', 'Success', 'Txn Success', '23-09-2021', '05:38:06pm'),
(8, 'OID30092021015652224', '13', '11352', '', '', 'Pending', '', '30-09-2021', '05:26:53pm');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `produnt_shortname` varchar(255) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_photo` varchar(250) NOT NULL,
  `product_photo2` varchar(250) NOT NULL,
  `product_photo3` varchar(250) NOT NULL,
  `product_photo4` varchar(250) NOT NULL,
  `product_category` varchar(250) NOT NULL,
  `produnt_sub_category` varchar(250) NOT NULL,
  `produnt_brand` varchar(250) NOT NULL,
  `product_mrp` varchar(250) NOT NULL,
  `product_tax` varchar(250) NOT NULL,
  `product_discount` varchar(250) NOT NULL,
  `product_offer` varchar(255) NOT NULL,
  `product_discription` varchar(250) NOT NULL,
  `product_date` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `produnt_shortname`, `product_title`, `product_photo`, `product_photo2`, `product_photo3`, `product_photo4`, `product_category`, `produnt_sub_category`, `produnt_brand`, `product_mrp`, `product_tax`, `product_discount`, `product_offer`, `product_discription`, `product_date`, `status`, `time`) VALUES
(31, 'TABLE', 'TABLE', '1(1).jpg', '1(4).jpg', '1(6).jpg', '2(3).jpg', '83', '31', '17', '1000', '10', '20', '880', 'nice table', '21/09/20', '1', '20:40:21'),
(32, 'CHAIR', 'CHAIR', '2.jpg', '3.jpg', '1(4).jpg', '4.jpg', '83', '30', '16', '4555', '6', '13', '4200', 'nice chair', '21/09/20', '1', '20:41:56'),
(33, 'phone', 'phone2', '7.jpg', '11.jpg', '8.jpg', '1(4).jpg', '82', '28', '17', '8000', '12', '30', '6272', 'nice', '21/09/20', '1', '20:43:13'),
(34, 'Shofa', 'shofa', '3.jpg', '11.jpg', '6.jpg', '10.jpg', '82', '24', '18', '3000', '6', '60', '1272', 'Nice prduct', '21/09/20', '1', '20:49:30'),
(35, 'laptop', 'laptop2', '11.jpg', '1.jpg', '1(5).png', '1(4).jpg', '84', '23', '16', '5000', '12', '50', '2800', 'nice', '21/09/22', '1', '20:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL,
  `status` int(22) NOT NULL,
  `otp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`id`, `name`, `email`, `mobile`, `password`, `date`, `time`, `status`, `otp`) VALUES
(13, 'Vivek kumar', 'vivekkumar240898@gmail.com', '7052888451', '123', '21/09/24', '01:32:23', 1, '8765'),
(14, 'Vivek', 'vivekkumar240898@gmail.com', '78954455', '123456', '21/09/24', '21:01:02', 1, ''),
(15, 'A', 'b', '123', '123', '21/09/24', '21:21:06', 1, ''),
(16, 'Himanshu', 'hk@gmail.com', '009987786', '12345', '21/09/24', '21:24:24', 1, ''),
(17, 'Vivek', 'vivekkumar240898@gmail.com', '7052888451', 'gfhdahds', '21/09/24', '21:25:03', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `headding` varchar(250) NOT NULL,
  `headding2` varchar(250) NOT NULL,
  `btn` varchar(250) NOT NULL,
  `slider` varchar(255) NOT NULL,
  `date` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `headding`, `headding2`, `btn`, `slider`, `date`, `status`) VALUES
(17, 'collection 2021', 'Nice Chair', 'Shop Now', '1.png', '21/09/13', '1'),
(18, 'collection 2021', 'Nice Chair', 'Shop Now', '2.png', '21/09/13', '1'),
(19, 'collection 2020', 'Nice Chair', 'Shop Now', '1(2).png', '21/09/13', '1');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `categary_name` varchar(255) NOT NULL,
  `sub_categary` varchar(255) NOT NULL,
  `sub_icon` varchar(250) NOT NULL,
  `sub_status` varchar(250) NOT NULL,
  `sub_date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `categary_name`, `sub_categary`, `sub_icon`, `sub_status`, `sub_date`, `time`) VALUES
(22, '82', 'BATH CHAIR', 'LL.jpg', '1', '21/09/12', '15:15:20'),
(23, '82', 'BENCH', 'gardening-bench-icon-hand-drawn-icon-set-outline-black-vector.jpg', '1', '21/09/12', '15:18:05'),
(24, '82', 'STOOL', 'down.jpg', '1', '21/09/12', '15:21:57'),
(25, '82', 'THRONS', 'downloa.png', '1', '21/09/12', '15:28:03'),
(26, '83', 'CARREL', 'down (2).png', '1', '21/09/12', '15:33:57'),
(27, '83', ' Prie Dieu', 'images.jpg', '1', '21/09/12', '15:40:43'),
(28, '83', 'LECTURN', 'istockphoto-814002228-170667a.jpg', '1', '21/09/12', '15:42:51'),
(29, '84', 'CRADLE', 'images.png', '1', '21/09/12', '15:46:20'),
(30, '84', 'TRUNDLE BED', 'download (2).png', '1', '21/09/12', '15:48:10'),
(31, '85', 'CUPBOARD', 'download (3).png', '1', '21/09/12', '15:50:29'),
(32, '85', 'SIDEBOARD', '33.jpg', '1', '21/09/12', '15:52:18');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `user_id` varchar(250) NOT NULL,
  `product_id` varchar(250) NOT NULL,
  `status` int(250) NOT NULL,
  `date` varchar(250) NOT NULL,
  `time` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `user_id`, `product_id`, `status`, `date`, `time`) VALUES
(27, '7', '32', 1, '21/09/23', '17:37:18'),
(28, '13', '32', 1, '21/09/27', '20:02:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_table`
--
ALTER TABLE `cart_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categary`
--
ALTER TABLE `categary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_category`
--
ALTER TABLE `sub_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cart_table`
--
ALTER TABLE `cart_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `categary`
--
ALTER TABLE `categary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sub_category`
--
ALTER TABLE `sub_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
