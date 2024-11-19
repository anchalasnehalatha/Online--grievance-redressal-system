-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2024 at 04:55 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `fullname` varchar(259) DEFAULT NULL,
  `mobilenumber` bigint(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `fullname`, `mobilenumber`, `email`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 8956232356, 'admin@gmail.com', 'admin', 'f925916e2754e5e03f75dd58a5733251', '2023-09-12 05:16:16', '18-10-2016 04:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'ClassRoom', 'ClassRoom', '2023-08-28 07:10:55', '2024-03-16 09:39:52'),
(2, 'general', 'dsdas', '2023-08-11 10:54:06', '2023-09-14 07:10:46'),
(4, 'Examination', 'Examination', '2023-09-12 06:26:48', '2024-03-16 09:40:24'),
(5, 'Library', 'Library', '2023-09-12 06:27:36', '2024-03-16 09:40:40'),
(9, 'Other', '', '2024-03-16 10:03:21', NULL),
(10, 'Sports', '', '2024-03-23 11:43:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 3, 'in process', 'your ticket forward to associated team', '2023-09-15 13:05:38'),
(2, 3, 'closed', 'Ticket close in favor of user', '2023-09-15 13:06:31'),
(3, 5, 'in process', 'We are reviewing the complaint', '2023-10-01 04:12:48'),
(4, 5, 'closed', 'Issue resolved', '2023-10-01 04:13:12'),
(5, 1, 'closed', 'solved', '2024-03-16 09:45:13'),
(6, 2, 'in process', 'solves in 2 days', '2024-03-16 10:49:51'),
(7, 4, 'in process', 'slove in 3 dysa', '2024-03-16 16:56:30'),
(8, 7, 'closed', 'solved', '2024-03-25 15:14:01'),
(9, 8, 'in process', 'problem slove in 2 days', '2024-03-25 15:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) DEFAULT NULL,
  `stateDescription` tinytext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(10, 'CSE', '', '2024-04-04 15:17:44', NULL),
(11, 'ECE', '', '2024-04-04 15:17:56', NULL),
(12, 'AIML', '', '2024-04-04 15:18:01', NULL),
(13, 'EEE', '', '2024-04-04 15:18:07', NULL),
(14, 'CIVIL', '', '2024-04-04 15:18:13', NULL),
(16, 'MECH', '', '2024-04-04 15:18:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Providing Projectors', '2023-03-28 07:11:07', '2024-03-16 09:41:28'),
(2, 1, 'Lights_Fans', '2023-08-28 07:11:20', '2024-03-16 09:42:29'),
(3, 2, 'Drinking Water', '2023-09-14 07:06:44', '2024-03-16 09:43:17'),
(4, 2, 'Wifi Problem', '2023-09-12 11:40:13', '2024-03-16 09:43:34');

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `complaintType` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `noc` varchar(255) DEFAULT NULL,
  `complaintDetails` mediumtext DEFAULT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(7, 6, 2, '', 'General Query', '', 'Provide Projector for our class', 'xgvcaghc', '8db85ca66d1c20350768f8e0db78bf10.png', '2024-03-16 10:45:16', 'closed', '2024-03-25 15:14:01'),
(8, 6, 1, '', ' Complaint', '', 'provide lights for our class', 'classsssssssssssssssss', '87d0de889766a6f3f0c1e35d4d2c60e9.jpg', '2024-03-25 15:11:18', 'in process', '2024-03-25 15:14:46'),
(9, 6, 5, '', ' Complaint', '', 'provide news paper', 'sakshi new paper give lots of konwledge ', 'b961b8724d80704aaccaacae17a0f64c.jpg', '2024-03-25 15:13:01', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NULL DEFAULT NULL,
  `status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 9999857860, 'Shakarpur', 'Uttar Pradesh', 'India', 110092, '6e8024ec26c292f258ec30f01e0392dc.png', '2023-09-28 16:56:56', '2023-09-28 16:56:56', 1),
(2, 'test', 'test@123', '202cb962ac59075b964b07152d234b70', 7894561236, NULL, NULL, NULL, NULL, NULL, '2023-09-13 05:05:11', NULL, 1),
(3, 'Ram', 'ram@gmail.com', '202cb962ac59075b964b07152d234b70', 1234567899, NULL, NULL, NULL, NULL, NULL, '2023-09-15 06:33:30', NULL, 1),
(4, 'Rakesh Sharma', 'rakesh@gmail.com', '202cb962ac59075b964b07152d234b70', 8989898989, 'J-789, Near Metro Station', 'Delhi', 'India', 110110, 'e9a19a656ca1e4758c2025fe1adaeb64.jpg', '2023-09-15 06:43:53', NULL, 1),
(5, 'John Doe', 'jhndoe12@test.com', 'f925916e2754e5e03f75dd58a5733251', 4141414141, NULL, NULL, NULL, NULL, NULL, '2023-09-26 01:06:49', NULL, 1),
(6, 'Garima', 'grmat@test.com', 'f925916e2754e5e03f75dd58a5733251', 1234563214, 'A1 1222 XYZ Aprtment', 'Delhi', 'India', 110001, NULL, '2023-10-01 04:10:45', NULL, 1),
(8, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-03-19 12:53:37', NULL, 1),
(48, 'SWSw', 'aaa33@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 15:56:30', NULL, 1),
(49, '123213', 'aajnxkw@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 15:56:56', NULL, 1),
(50, 'smejkc', 'saxkeh@s', 'f925916e2754e5e03f75dd58a5733251', 1111111111, NULL, NULL, NULL, NULL, NULL, '2024-04-04 15:57:43', NULL, 1),
(51, 'smejkc', 'saxkeh@s', 'f925916e2754e5e03f75dd58a5733251', 1111111111, NULL, NULL, NULL, NULL, NULL, '2024-04-04 16:01:32', NULL, 1),
(52, 'csa', 'acec@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 16:01:54', NULL, 1),
(53, 'csa', 'acec@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 16:32:42', NULL, 1),
(54, 'caf', 'xvgx@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 16:33:08', NULL, 1),
(55, 'acdsadc', 'acmszej@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:03:18', NULL, 1),
(56, 'acdsadc', 'acmszej@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:05:04', NULL, 1),
(57, 'lknki', 'scccaeaw@gmail', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:05:45', NULL, 1),
(58, 'lknki', 'scccaeaw@gmail', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:06:57', NULL, 1),
(59, 'lknki', 'scccaeaw@gmail', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:14:35', NULL, 1),
(60, 'sjcaks', 'adminamcsba@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:15:05', NULL, 1),
(61, 'nmx g', 'adminjd@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:22:28', NULL, 1),
(62, 'nmx g', 'adminjd@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:23:27', NULL, 1),
(63, 'ncg', 'adminhdty@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:23:46', NULL, 1),
(64, 'neeki', 'adminbfvxf@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:26:41', NULL, 1),
(66, 'neeki', 'adminbfvxf@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:31:06', NULL, 1),
(67, 'neeki', 'adminbfvxf@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:32:19', NULL, 1),
(68, 'neeki', 'adminbfvxf@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:32:52', NULL, 1),
(69, 'neeki', 'adminbfvxf@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:34:05', NULL, 1),
(70, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:34:25', NULL, 1),
(71, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:34:47', NULL, 1),
(72, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:35:58', NULL, 1),
(73, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:38:09', NULL, 1),
(74, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:40:59', NULL, 1),
(75, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:41:30', NULL, 1),
(76, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:42:07', NULL, 1),
(77, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:47:11', NULL, 1),
(78, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:50:48', NULL, 1),
(79, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:54:16', NULL, 1),
(80, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:55:18', NULL, 1),
(81, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:55:49', NULL, 1),
(82, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:56:56', NULL, 1),
(83, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 17:58:58', NULL, 1),
(84, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:02:20', NULL, 1),
(85, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:02:50', NULL, 1),
(86, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:05:00', NULL, 1),
(87, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:05:44', NULL, 1),
(88, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:08:35', NULL, 1),
(89, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:09:42', NULL, 1),
(90, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:10:32', NULL, 1),
(91, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:12:45', NULL, 1),
(92, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:13:27', NULL, 1),
(93, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:14:03', NULL, 1),
(94, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:14:43', NULL, 1),
(95, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:14:59', NULL, 1),
(96, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:16:20', NULL, 1),
(97, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:17:41', NULL, 1),
(98, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:19:09', NULL, 1),
(99, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:20:01', NULL, 1),
(100, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:20:19', NULL, 1),
(101, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:21:26', NULL, 1),
(102, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:21:59', NULL, 1),
(103, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:23:47', NULL, 1),
(104, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:24:18', NULL, 1),
(105, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:27:23', NULL, 1),
(106, 'Neelima', '122345@gmail.com', '38a37250612c3745825b21c16dd0839c', 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 18:28:49', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
