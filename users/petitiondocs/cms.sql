-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2023 at 06:23 PM
-- Server version: 5.6.26
-- PHP Version: 5.5.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '01-08-2023 04:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'E-commerce', 'E-commerce', '2023-08-01 07:10:55', ''),
(2, 'general', 'dsdas', '2023-08-01 10:54:06', '');

-- --------------------------------------------------------

--
-- Table structure for table `Petitionremark`
--

CREATE TABLE IF NOT EXISTS `Petitionremark` (
  `id` int(11) NOT NULL,
  `PetitionNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext NOT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Petitionremark`
--

INSERT INTO `Petitionremark` (`id`, `PetitionNumber`, `status`, `remark`, `remarkDate`) VALUES
(1, 2, 'in process', 'Hi this for demo', '2023-08-01 17:29:19'),
(2, 9, 'in process', 'hiiiiiiiiiiiiiiiiiiii', '2023-08-01 18:37:59'),
(3, 3, 'in process', 'test', '2023-08-02 15:57:43'),
(4, 19, 'closed', 'case solved', '2023-08-11 11:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE IF NOT EXISTS `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(3, 'abcd', '', '2023-08-08 11:35:02', ''),
(4, 'BTL', 'pbPB', '2023-08-11 11:35:58', '08-08-2023 03:40:02 PM'),
(5, 'CTW', 'CTW', '2023-08-11 07:20:36', ''),
(6, 'fsdfs', 'fsdf', '2023-08-11 10:54:12', '');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE IF NOT EXISTS `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Online SHopping', '2023-08-03 07:11:07', ''),
(2, 1, 'E-wllaet', '2023-08-11 07:11:20', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblPetitions`
--

CREATE TABLE IF NOT EXISTS `tblPetitions` (
  `PetitionNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `PetitionType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `PetitionDetails` mediumtext NOT NULL,
  `PetitionFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblPetitions`
--

INSERT INTO `tblPetitions` (`PetitionNumber`, `userId`, `category`, `subcategory`, `PetitionType`, `state`, `noc`, `PetitionDetails`, `PetitionFile`, `regDate`, `status`, `lastUpdationDate`) VALUES
(1, 1, 1, 'E-wllaet', 'General Query', 'BTL', 'test demo', 'test demo test demo test demotest demotest demotest demotest demotest demotest demotest demotest demo', NULL, '2023-07-30 16:52:40', 'in process', '2023-07-31 16:06:17'),
(2, 1, 1, 'Online SHopping', 'General Query', 'BTL', 'testing', 'sample text for demo', '', '2023-07-30 17:05:56', 'in process', '2023-08-01 17:29:19'),
(3, 1, 1, 'Online SHopping', ' Petition', 'BTL', 'ferwekt lwentgwewt', 'wetwetwe', '', '2023-07-30 17:07:51', 'in process', '2023-05-02 15:57:43'),
(4, 1, 1, 'E-wllaet', 'General Query', 'CTW', 'lkdlsfklsdf', 'fdsf,msd,f  f f', '2. Compendium Selected Paper.doc', '2023-07-30 17:13:14', 'closed', '2023-07-31 16:06:22'),
(5, 1, 1, 'E-wllaet', ' Petition', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2023-07-30 17:14:55', NULL, '0000-00-00 00:00:00'),
(6, 1, 1, 'E-wllaet', ' Petition', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2023-07-30 17:20:16', NULL, '0000-00-00 00:00:00'),
(7, 1, 1, 'E-wllaet', ' Petition', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2023-07-30 17:20:56', NULL, '0000-00-00 00:00:00'),
(8, 1, 1, 'E-wllaet', ' Petition', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2023-07-30 17:23:05', NULL, '0000-00-00 00:00:00'),
(9, 1, 1, 'E-wllaet', ' Petition', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2023-07-30 17:25:09', 'in process', '2023-08-01 18:38:00'),
(10, 1, 1, 'E-wllaet', ' Petition', 'BTL', 'bgfhfgh', 'hfghfgh', '1 (3).jpg', '2023-07-30 17:27:24', NULL, '0000-00-00 00:00:00'),
(11, 1, 1, 'Online SHopping', 'General Query', 'CTW', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2023-07-30 17:36:32', NULL, '0000-00-00 00:00:00'),
(12, 1, 1, 'Online SHopping', 'General Query', 'CTW', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2023-07-30 17:37:09', NULL, '0000-00-00 00:00:00'),
(13, 1, 1, 'Online SHopping', 'General Query', 'CTW', 'dsflsdlflsdf', 'fsdfsdfsdf', 'avatar-1.jpg.png', '2023-07-30 17:39:57', NULL, '0000-00-00 00:00:00'),
(14, 1, 1, 'Online SHopping', ' Petition', 'CTW', 'vcxvxcvxcv', 'cvcx', 'doctorslog.sql', '2023-07-30 17:41:19', NULL, '0000-00-00 00:00:00'),
(15, 1, 1, 'E-wllaet', 'General Query', 'BTL', 'dsfsd', 'fsdfsdf', '', '2023-07-30 17:42:38', NULL, '0000-00-00 00:00:00'),
(16, 1, 1, 'E-wllaet', 'General Query', 'BTL', 'dsfsd', 'fsdfsdf', '', '2023-07-31 01:54:07', NULL, '0000-00-00 00:00:00'),
(17, 5, 1, 'E-wllaet', ' Petition', 'fsdfs', 'regarding refund', 'test test', '', '2023-06-11 10:57:49', NULL, '0000-00-00 00:00:00'),
(18, 5, 1, 'Online SHopping', ' Petition', 'abcd', 'yhytr', 'rtytry', 'About Us.docx', '2023-06-11 11:08:47', NULL, '0000-00-00 00:00:00'),
(19, 6, 1, 'Online SHopping', ' Petition', 'abcd', 'regarding refund', 'Test@123 dfds fsd fs gs gsd g sg g g sgstwerwe ewtw tw', 'About Us.docx', '2023-06-11 11:15:24', 'closed', '2023-06-11 11:18:33');

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE IF NOT EXISTS `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-28 17:04:36', '', 1),
(2, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-29 15:02:26', '', 1),
(3, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-30 14:58:00', '', 1),
(4, 0, 'dsad', 0x3a3a3100000000000000000000000000, '2023-07-31 17:39:07', '', 0),
(5, 0, 'dwerwer', 0x3a3a3100000000000000000000000000, '2023-07-31 17:41:22', '', 0),
(6, 0, 'ffert', 0x3a3a3100000000000000000000000000, '2023-07-31 17:41:29', '', 0),
(7, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2023-07-31 17:42:12', '', 0),
(8, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2023-07-31 17:47:51', '', 0),
(9, 0, 'ewrwe', 0x3a3a3100000000000000000000000000, '2023-07-31 17:47:54', '', 0),
(10, 0, 'fsdfsdff', 0x3a3a3100000000000000000000000000, '2023-07-31 17:48:11', '', 0),
(11, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-07-31 17:49:25', '', 1),
(12, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-01 18:52:35', '02-08-2023 12:24:41 AM', 1),
(13, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-01 18:58:09', '02-08-2023 12:50:42 AM', 1),
(14, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-01 19:38:15', '02-08-2023 01:08:19 AM', 1),
(15, 0, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-02 18:50:20', '', 0),
(16, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-08-02 18:50:28', '03-08-2023 12:26:50 AM', 1),
(17, 1, 'user@gmail.com', 0x3a3a3100000000000000000000000000, '2023-05-02 18:01:26', '', 1),
(18, 0, 'test@gm.com', 0x3a3a3100000000000000000000000000, '2023-08-11 10:48:50', '', 0),
(19, 5, 'abc@abc.com', 0x3a3a3100000000000000000000000000, '2023-08-11 10:56:30', '11-08-2023 04:39:15 PM', 1),
(20, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2023-08-11 11:13:28', '11-08-2023 04:45:46 PM', 1),
(21, 6, 'xyz@xyz.com', 0x3a3a3100000000000000000000000000, '2023-08-11 11:19:45', '11-08-2023 04:50:02 PM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(1, 'ben ', 'user@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 9999857860, 'Shakarpur', 'abcd', 'UAE', 110092, NULL, '2023-07-28 11:44:52', '2023-08-01 19:37:42', 1),
(2, 'Amit', 'amit@gmail.com', 'f925916e2754e5e03f75dd58a5733251', 8888888888, NULL, NULL, NULL, NULL, NULL, '2023-07-28 16:58:04', '0000-00-00 00:00:00', 1),
(3, 'Teste', 'test@test.com', 'f925916e2754e5e03f75dd58a5733251', 1212121212, NULL, NULL, NULL, NULL, NULL, '2023-07-28 16:59:14', '0000-00-00 00:00:00', 1),
(4, 'demo', 'test@gm.com', 'ceb6c970658f31504a901b89dcd3e461', 9999999999, NULL, NULL, NULL, NULL, NULL, '2023-06-11 10:48:35', '0000-00-00 00:00:00', 1),
(5, 'ABC', 'abc@abc.com', '5c428d8875d2948607f3e3fe134d71b4', 9999857868, 'fdgfdgdf', 'abcd', 'UAE', 110092, NULL, '2023-06-11 10:56:05', '2023-06-11 10:58:28', 1),
(6, 'XYZ', 'xyz@xyz.com', 'f925916e2754e5e03f75dd58a5733251', 1111111111, 'test', 'fsdfs', 'UAE', 110092, NULL, '2023-06-11 11:13:05', '2023-06-11 11:16:18', 1);

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
-- Indexes for table `Petitionremark`
--
ALTER TABLE `Petitionremark`
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
-- Indexes for table `tblPetitions`
--
ALTER TABLE `tblPetitions`
  ADD PRIMARY KEY (`PetitionNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Petitionremark`
--
ALTER TABLE `Petitionremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblPetitions`
--
ALTER TABLE `tblPetitions`
  MODIFY `PetitionNumber` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
