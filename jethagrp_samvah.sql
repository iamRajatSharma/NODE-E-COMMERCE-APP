-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 19, 2022 at 10:38 AM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jethagrp_samvah`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `landmark` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `date1` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `name`, `email`, `mobile`, `address`, `state`, `city`, `pin`, `landmark`, `type`, `date1`) VALUES
(2, 'bitto sharma', 'sharmarajat687@gmail.com', '8447886642', 'c-10 karampura', 'delhi', 'new delhi', '110008', 's.b.m.sr.sec.schoo', 'office', '31-05-21');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `product_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `product_img` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `size` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `date1` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `product_id`, `product_name`, `product_img`, `price`, `color`, `size`, `email`, `qty`, `status`, `date1`) VALUES
(15, '3', 'Men Slim Fit Checkered Casual Shirt', 'booksgo-thumbimg16220104852-img1.jpeg', '1100', 'blue', 's', 'sharmarajat687@gmail.com', '5', '1', '31-05-21'),
(17, '10', 'Boys Festive & Party Kurta', 'booksgo-thumbimg16221059939-img1.jpeg', '560', 'red', 's', 'sharmarajat687@gmail.com', '5', '1', '31-05-21'),
(19, '1', 'dress one', 'booksgo-thumbimg1622005850team_img1.jpg', '1100', 'green', 's', 'madhusudansbdelhi@gmail.com', '3', '1', '20-08-21'),
(20, '1', 'dress one', 'booksgo-thumbimg1622005850team_img1.jpg', '1100', 'red', 's', 'sharmarajat687@gmail.com', '1', '1', '27-09-21');

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` int(10) NOT NULL,
  `cat` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `cat`, `img`, `date`) VALUES
(1, 'childrens', '', '12/12/2020'),
(2, 'Girls', '', '1/06/2021'),
(3, 'Mens', '', '1/06/2021');

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `product_id` varchar(5) NOT NULL,
  `color1` varchar(25) NOT NULL,
  `color2` varchar(25) NOT NULL,
  `color3` varchar(25) NOT NULL,
  `color4` varchar(25) NOT NULL,
  `color5` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `product_id`, `color1`, `color2`, `color3`, `color4`, `color5`) VALUES
(1, '1', 'red', 'green', 'parrot', 'yellow', 'black'),
(2, '2', 'blue', 'green', 'orange', 'black', 'gray'),
(3, '3', 'blue', 'orange', 'purple', 'brown', 'gray'),
(4, '4', 'red', 'green', 'purple', 'yellow', 'brown'),
(5, '5', 'red', 'brown', 'black', '', ''),
(6, '6', 'red', 'black', '', '', ''),
(7, '7', 'yellow', 'black', '', '', ''),
(8, '8', 'black', 'gray', '', '', ''),
(9, '9', 'red', '', '', '', ''),
(10, '10', 'red', 'orange', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` text COLLATE utf8_unicode_ci NOT NULL,
  `message` text COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `solution` text COLLATE utf8_unicode_ci NOT NULL,
  `by` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `txn` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `handling_price` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_price` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `total_price` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `landmark` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_address` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_country` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_state` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_city` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_mobile` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `shipping_pin` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `order_date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `order_time` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `q_name` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `q_id` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ship_date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `ship_time` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `coupon` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `discount` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `discount_per` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `order_id` varchar(35) COLLATE utf8_unicode_ci NOT NULL,
  `book_id` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `book_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `cat` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `wr` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `pub` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `qty` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `unit_pr` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `pr` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sell_by` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sell_email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` int(11) NOT NULL,
  `mobile` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `otp` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otp1`
--

CREATE TABLE `otp1` (
  `id` int(11) NOT NULL,
  `mobile` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `otp` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(55) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(11) NOT NULL,
  `cat` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `sub_cat` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `mrp` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `product_price` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `selling_price` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `product_rating` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `img1` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `img2` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `img3` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `img4` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `manufacture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `brand` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `color` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `xs` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `s` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `m` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `l` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `xl` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `xxl` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `clr1` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `clr2` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `clr3` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `clr4` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sell_qty` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `added_by` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `add_email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `add_date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `add_time` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `cat`, `sub_cat`, `product_name`, `mrp`, `product_price`, `selling_price`, `product_rating`, `img1`, `img2`, `img3`, `img4`, `manufacture`, `brand`, `color`, `xs`, `s`, `m`, `l`, `xl`, `xxl`, `clr1`, `clr2`, `clr3`, `clr4`, `sell_qty`, `age`, `added_by`, `add_email`, `add_date`, `add_time`) VALUES
(1, 'Mens', 'formals', 'dress one', '1200', '1100', '1300', '4', 'booksgo-thumbimg1622005850team_img1.jpg', 'booksgo-thumbimg1622005850team_img2.jpg', 'booksgo-thumbimg1622005850team_img3.jpg', 'booksgo-thumbimg1622005850team_img4.jpg', 'abc', 'xyz', '', '', '', '', '', '', '', '', '', '', '', '', '', 'admin', 'admin@gmail.com', '26/05/2021', '10:40:50 am'),
(2, 'Mens', 'daily uses', 'Printed Men Round Neck Blue T-Shirt', '500', '600', '700', '5', 'booksgo-thumbimg16220063931-img1.jpeg', 'booksgo-thumbimg16220063931-img2.jpeg', 'booksgo-thumbimg16220063931-img3.jpeg', 'booksgo-thumbimg16220063931-img4.jpeg', 'abcd', 'xyz', '', '', '', '', '', '', '', '', '', '', '', '', '', 'admin', 'admin@gmail.com', '26/05/2021', '10:49:53 am'),
(3, 'Mens', 'formals', 'Men Slim Fit Checkered Casual Shirt', '1000', '1100', '1200', '3', 'booksgo-thumbimg16220104852-img1.jpeg', 'booksgo-thumbimg16220104852-img2.jpeg', 'booksgo-thumbimg16220104852-img3.jpeg', 'booksgo-thumbimg16220104852-img4.jpeg', 'abcd', 'xyz', '', '', '', '', '', '', '', '', '', '', '', '', '', 'admin', 'admin@gmail.com', '26/05/2021', '11:58:05 am'),
(4, 'Childrens', 'party dress', 'Girls Mini/Short Festive/Wedding Dress  (Blue 3/4 Sleeve)', '400', '500', '600', '3', 'booksgo-thumbimg16220110264-img1.jpeg', 'booksgo-thumbimg16220110264-img2.jpeg', 'booksgo-thumbimg16220110264-img3.jpeg', 'booksgo-thumbimg16220110264-img4.jpeg', 'abcd', 'xyz', '', '', '', '', '', '', '', '', '', '', '', '', '', 'admin', 'admin@gmail.com', '26/05/2021', '12:07:06 pm'),
(5, 'Mens', 'formals', '2 Piece Solid Men Suit', '890', '900', '950', '5', 'booksgo-thumbimg16220120905-img1.jpeg', 'booksgo-thumbimg16220120905-img2.jpeg', 'booksgo-thumbimg16220120905-img3.jpeg', 'booksgo-thumbimg16220120905-img4.jpeg', 'abcd', 'xyz', '', '', '', '', '', '', '', '', '', '', '', '', '', 'admin', 'admin@gmail.com', '26/05/2021', '12:24:50 pm'),
(6, 'Girls', 'party saree', 'Embroidered Bollywood Net Nylon Blend Saree  (Grey)', '1200', '1400', '1560', '3', 'booksgo-thumbimg16220129373-img1.jpeg', 'booksgo-thumbimg16220129373-img2.jpeg', 'booksgo-thumbimg16220129373-img3.jpeg', 'booksgo-thumbimg16220129373-img4.jpeg', 'abcd', 'xyz', '', '', '', '', '', '', '', '', '', '', '', '', '', 'admin', 'admin@gmail.com', '26/05/2021', '12:38:57 pm'),
(7, 'Mens', 'formals', 'Men Regular Fit Striped Mandarin Collar Casual Shirt', '600', '700', '800', '2', 'booksgo-thumbimg16220135786-img1.jpeg', 'booksgo-thumbimg16220135786-img2.jpeg', 'booksgo-thumbimg16220135786-img3.jpeg', 'booksgo-thumbimg16220135786-img4.jpeg', 'abcd', 'xyz', '', '', '', '', '', '', '', '', '', '', '', '', '', 'admin', 'admin@gmail.com', '26/05/2021', '12:49:38 pm'),
(8, 'Mens', 'daily uses', 'Regular Men Grey Jeans', '400', '500', '600', '5', 'booksgo-thumbimg16220144877-img1.jpeg', 'booksgo-thumbimg16220144877-img2.jpeg', 'booksgo-thumbimg16220144877-img3.jpeg', 'booksgo-thumbimg16220144877-img4.jpeg', 'abc', 'xyz', '', '', '', '', '', '', '', '', '', '', '', '', '', 'admin', 'admin@gmail.com', '26/05/2021', '01:04:47 pm'),
(9, 'Childrens', 'Party Dress', 'Girls Maxi/Full Length Party Dress  (Red Sleeveless)', '1200', '1300', '1400', '7', 'booksgo-thumbimg16220982398-img1.jpeg', 'booksgo-thumbimg16220982398-img2.jpeg', 'booksgo-thumbimg16220982398-img3.jpeg', 'booksgo-thumbimg16220982398-img4.jpeg', 'abcd', 'xyz', '', '', '', '', '', '', '', '', '', '', '', '', '', 'admin', 'admin@gmail.com', '27/05/2021', '12:20:39 pm'),
(10, 'Childrens', 'Party Dress', 'Boys Festive &amp Party Kurta', '500', '560', '610', '9', 'booksgo-thumbimg16221059939-img1.jpeg', 'booksgo-thumbimg16221059939-img2.jpeg', 'booksgo-thumbimg16221059939-img3.jpeg', 'booksgo-thumbimg16221059939-img4.jpeg', 'abcd', 'xyz', '', '', '', '', '', '', '', '', '', '', '', '', '', 'admin', 'admin@gmail.com', '27/05/2021', '02:29:53 pm');

-- --------------------------------------------------------

--
-- Table structure for table `product_review`
--

CREATE TABLE `product_review` (
  `id` int(11) NOT NULL,
  `product_id` int(5) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `review` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `time` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `business_address` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `business_state` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `business_city` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `business_pin` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `business_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `gst_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `business_contact` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `seller_type` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `stock` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `sell_ammount` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `rating` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(5) NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `name`, `email`, `password`, `mobile`, `address`, `state`, `pin`, `city`, `business_address`, `business_state`, `business_city`, `business_pin`, `business_name`, `gst_no`, `business_contact`, `seller_type`, `stock`, `sell_ammount`, `rating`, `status`, `date`) VALUES
(1, 'rajat', 'rajat@gmail.com', '12345', '8447886642', '2094/1a ,prem nagar', 'delhi', '110008', 'new delhi', '', '', '', '', '', '', '', '', '', '', '', 1, '12/12/2020');

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `order_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pin` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `landmark` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `account_type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `date1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time1` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `product_id` varchar(50) NOT NULL,
  `color_id` varchar(50) NOT NULL,
  `s` varchar(25) NOT NULL,
  `m` varchar(25) NOT NULL,
  `l` varchar(25) NOT NULL,
  `xl` varchar(25) NOT NULL,
  `xxl` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `size`
--

INSERT INTO `size` (`id`, `product_id`, `color_id`, `s`, `m`, `l`, `xl`, `xxl`) VALUES
(1, '1', 'Red', '1', '6', '7', '8', '9'),
(2, '1', 'Green', '7', '9', '12', '13', '14'),
(3, '1', 'Parrot', '14', '15', '16', '17', '18'),
(4, '1', 'Yellow', '21', '21', '21', '34', '56'),
(5, '1', 'Black', '8', '9', '2', '65', '8'),
(6, '2', 'Blue', '0', '7', '7', '7', '7'),
(7, '2', 'Green', '7', '7', '0', '8', '3'),
(8, '2', 'orange', '0', '0', '5', '0', '0'),
(9, '2', 'Black', '0', '8', '8', '8', '0'),
(10, '2', 'gray', '8', '0', '0', '0', '0'),
(11, '3', 'Blue', '1', '6', '4', '3', '1'),
(12, '3', 'Orange', '89', '6', '5', '4', '43'),
(13, '3', 'Purple', '7', '7', '7', '7', '7'),
(14, '3', 'Brown', '8', '6', '4', '3', '9'),
(15, '3', 'Gray', '8', '6', '4', '3', '5'),
(16, '4', 'Red', '6', '6', '0', '0', '0'),
(17, '4', 'Green', '2', '0', '0', '0', '0'),
(18, '4', 'Yellow', '10', '0', '0', '0', '0'),
(19, '4', 'Purple', '1', '3', '0', '0', '0'),
(20, '4', 'Brown', '10', '0', '0', '0', '0'),
(21, '5', 'Red', '6', '6', '6', '6', '6'),
(22, '5', 'Brown', '2', '8', '8', '8', '8'),
(23, '5', 'Black', '0', '7', '5', '4', '18'),
(24, '', '', '', '', '', '', ''),
(25, '', '', '', '', '', '', ''),
(26, '6', 'Red', '7', '7', '9', '6', ''),
(27, '6', 'Black', '8', '5', '4', '', ''),
(28, '', '', '', '', '', '', ''),
(29, '', '', '', '', '', '', ''),
(30, '', '', '', '', '', '', ''),
(31, '7', 'Yellow', '7', '8', '6', '4', '5'),
(32, '7', 'Black', '4', '6', '8', '9', '7'),
(33, '', '', '', '', '', '', ''),
(34, '', '', '', '', '', '', ''),
(35, '', '', '', '', '', '', ''),
(36, '8', 'Gray', '1', '7', '4', '6', '8'),
(37, '8', 'Black', '8', '6', '4', '3', ''),
(38, '', '', '', '', '', '', ''),
(39, '', '', '', '', '', '', ''),
(40, '', '', '', '', '', '', ''),
(41, '9', 'Red', '6', '8', '5', '3', '9'),
(42, '9', 'Red', '', '', '', '', ''),
(43, '9', 'Blue', '', '', '', '', ''),
(44, '9', 'Blue', '', '', '', '', ''),
(45, '9', 'Blue', '', '', '', '', ''),
(46, '10', 'Red', '0', '8', '3', '6', '8'),
(47, '10', 'Orange', '8', '6', '', '', ''),
(48, '10', 'Blue', '', '', '', '', ''),
(49, '10', 'Red', '0', '', '', '', ''),
(50, '10', 'Red', '0', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sub_cat`
--

CREATE TABLE `sub_cat` (
  `id` int(11) NOT NULL,
  `cat` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `sub_cat` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `date` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sub_cat`
--

INSERT INTO `sub_cat` (`id`, `cat`, `sub_cat`, `date`) VALUES
(1, 'Childrens', 'party dress', '22/01/2021'),
(21, 'Girls', 'Party Saree', '1/06/2021'),
(22, 'Mens', 'Formals', '1/06/2021'),
(23, 'Mens', 'Daily Uses', '1/06/2021'),
(24, 'Girls', 'Jeans', '01/06/2021');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `bank` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `reff_code` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `reff_by` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `otp` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `open_date` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `mobile`, `pass`, `gender`, `type`, `bank`, `reff_code`, `reff_by`, `otp`, `open_date`) VALUES
(10, 'Madhusudan Pandey', 'madhusudansbdelhi@gmail.com', '8700889081', 'admin', 'Male', '', '', '', '', '', '20/08/2021'),
(9, 'rajat ', 'sharmarajat687@gmail.com', '08447886644', '12345', 'Male', '', '', '', '', '', '20/08/2021'),
(11, 'Shivakant Dubey', 'shiva11496@gmail.com', '9621039998', '12345', '', '', '', '', '', '', '2022/02/10'),
(18, 'Shivakant Dubey', 'shiva114916@gmail.com', '96210399981', '12', '', '', '', '', '', '', '2022/02/25');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(11) NOT NULL,
  `product_id` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `product_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `price` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `product_img` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `date1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `time1` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`id`, `product_id`, `product_name`, `price`, `product_img`, `email`, `date1`, `time1`) VALUES
(3, '1', 'dress one', '1100', 'booksgo-thumbimg1622005850team_img1.jpg', '', '27-09-21', '10:29:05 am'),
(7, '1', 'dress one', '1100', 'booksgo-thumbimg1622005850team_img1.jpg', 'sharmarajat687@gmail.com', '27-09-21', '10:42:48 am'),
(8, '2', 'Printed Men Round Neck Blue T-Shirt', '600', 'booksgo-thumbimg16220063931-img1.jpeg', '', '30-03-22', '03:30:51 pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp1`
--
ALTER TABLE `otp1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_review`
--
ALTER TABLE `product_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_cat`
--
ALTER TABLE `sub_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otp1`
--
ALTER TABLE `otp1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `product_review`
--
ALTER TABLE `product_review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `sub_cat`
--
ALTER TABLE `sub_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
