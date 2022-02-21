-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2022 at 08:30 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `events-reg`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_access`
--

CREATE TABLE `admin_access` (
  `username` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_access`
--

INSERT INTO `admin_access` (`username`, `pass`) VALUES
('admin', 'jane_2000');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float(10,2) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `name`, `image`, `price`, `status`) VALUES
(1, 'Contemporary Wushu Hand Forms', '', 60.00, 1),
(2, 'Traditional Short Weapons', '', 60.00, 1),
(3, 'Taiji Weapons', '', 60.00, 1),
(4, 'Contemporary Wushu Short Weapons', '', 60.00, 1),
(5, 'Traditional Soft Weapons', '', 60.00, 1),
(6, 'Duilian (Sparring)', '', 60.00, 1),
(7, 'Contemporary Wushu Long Weapons', '', 60.00, 1),
(8, 'Traditional Long Weapons', '', 60.00, 1),
(9, 'Group Set', '', 60.00, 1),
(10, 'Traditional Hand Forms', '', 60.00, 1),
(11, 'Taiji Hand Forms', '', 60.00, 1);

-- --------------------------------------------------------

--
-- Table structure for table `group-set`
--

CREATE TABLE `group-set` (
  `gs-id` int(100) NOT NULL,
  `gs-name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `group-set`
--

INSERT INTO `group-set` (`gs-id`, `gs-name`) VALUES
(1, 'G100 - Group Bare Hand Form'),
(2, 'G105 - Group Yang Style 24 Taijiquan'),
(3, 'G110 - Group 42 Taiji Sword'),
(4, 'G101 - Group Short Weapon'),
(5, 'G106 - Group Yang Style 42 Taijiquan'),
(6, 'G111 - Group Chen Style Sword'),
(7, 'G102 - Group Long Weapon'),
(8, 'G107 - Group Yang Style Taijiquan'),
(9, 'G112 - Group Wudang Taiji Sword'),
(10, 'G103 - Group Weapons'),
(11, 'G108 - Group Chen Style Taijiquan'),
(12, 'G113 - Group Taiji Fan'),
(13, 'G104 - Group Bare Hand with Weapon'),
(14, 'G109 - Group 32 Taiji Sword'),
(15, 'G114 - Group Other Taiji Weapon');

-- --------------------------------------------------------

--
-- Table structure for table `hand-forms`
--

CREATE TABLE `hand-forms` (
  `hf-id` int(100) NOT NULL,
  `hf-name` varchar(255) NOT NULL,
  `event-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hand-forms`
--

INSERT INTO `hand-forms` (`hf-id`, `hf-name`, `event-id`) VALUES
(1, 'C100 - 5 Step Longfist', 1),
(2, 'C101 - 3rd Set Elementary Longfist (IWuF)', 1),
(3, 'C103A - 2nd & 3rd Set Compulsory Longfist (IWuF)', 1),
(4, 'C106 - Beginner\'s Southern Fist', 1),
(5, 'C103 - 1st Set Compulsory Longfist (IWuF)', 1),
(6, 'C103B - Intermediate Longfist', 1),
(7, 'C107 - Optional Southern Fist', 1),
(8, 'C102 - Other Beginner\'s Longfist', 1),
(9, 'C104 - Optional Longfist (Without Nandu)', 1),
(10, 'C108 - 1st Set Compulsory Southern Fist (IWuF)', 1),
(11, 'C108A - 2nd & 3rd Set Compulsory Southern Fist (IWuF)', 1),
(12, 'C105 - Optional Longfist (Nandu)', 1),
(13, 'T113 - Shaolin Single Broadsword', 2),
(14, 'T118 - Wing Chun Eight Chop Knife', 2),
(15, 'T123 - Traditional Double Straight Sword', 2),
(16, 'T114 - Emei, Wudang Broadsword', 2),
(17, 'T119 - Traditional Double Broadsword', 2),
(18, 'T124 - Other Traditional Single Short Weapon', 2),
(19, 'T115 - Traditional Southern Broadsword', 2),
(20, 'T120 - Shaolin Single Straight Sword', 2),
(21, 'T125 - Other Traditional Double Short Weapon', 2),
(22, 'T116 - Other Tradtional Single Broadsword', 2),
(23, 'T121 - Emei, Wudang Straight Sword', 2),
(24, 'T126 - Kung Fu Fan', 2),
(25, 'T117 - Shaolin Double Broadsword', 2),
(26, 'T122 - Other Traditional Straight Sword', 2),
(27, 'T127 - Single/Double Daggers', 2),
(28, 'TJ115 - Yang Style Taiji Broadsword', 3),
(29, 'TJ118 - Chen Style Taiji Straight Sword', 3),
(30, 'TJ121 - Other Taiji Straight Sword', 3),
(31, 'TJ116 - Chen Style Taiji Broadsword', 3),
(32, 'TJ119 - 32 Taiji Straight Sword', 3),
(33, 'TJ122 - Other Taiji Short Weapon', 3),
(34, 'TJ117 -Other Taiji Broadsword', 3),
(35, 'TJ120 - 42 Taiji Straight Sword', 3),
(36, 'TJ123 - Other Taiji Long Weapon', 3),
(37, 'C109 - 3rd Set Elementary Broadsword', 4),
(38, 'C114 - 3rd Set Elementary Straight Sword', 4),
(39, 'C119 - Beginner\'s Southern Broadsword', 4),
(40, 'C110 - Other Beginner\'s Broadsword', 4),
(41, 'C115 - Other Beginner\'s Straight Sword', 4),
(42, 'C120 - 1st Set Compulsory Southern Broadsword (IWuF)', 4),
(43, 'C111 - 1st Set Compulsory Broadsword (IWuF)', 4),
(44, 'C116 - 1st Set Compulsory Straight Sword (IWuF)', 4),
(45, 'C120A - 2nd & 3rd Set Compulsory Southern Broadsword (IWuF)', 4),
(46, 'C111A - 2nd & 3rd Set Compulsory Broadsword (IWuF)', 4),
(47, 'C116A - 2nd & 3rd Set Compulsory Straight Sword (IWuF)', 4),
(48, 'C120B - Intermediate Southern Broadsword', 4),
(49, 'C111B - Intermediate Broadsword', 4),
(50, 'C116B - Intermediate Straight Sword', 4),
(51, 'C121 - Optional Southern Broadsword', 4),
(52, 'C112 - Optional Broadsword (Without Nandu)', 4),
(53, 'C117 - Optional Straight Sword (Without Nandu)', 4),
(54, 'C113 - Optional Broadsword (Nandu)', 4),
(55, 'C118 - Optional Straight Sword (Nandu)', 4),
(56, 'T138 - Shaolin Nunchuck', 5),
(57, 'T140 - Three Section Staff', 5),
(58, 'T142 - Double Chain Whip, Chain Whip with Broadsword', 5),
(59, 'T139 - Other Nunchuck', 5),
(60, 'T141 - 9 Section Chain Whip', 5),
(61, 'T143 - Other Traditional Soft Weapon', 5),
(62, 'D100 - Wushu Bare Hand Duilian', 6),
(63, 'D103 - Wushu Weapon Duilian', 6),
(64, 'D106 - Long Weapon Duilian', 6),
(65, 'D101 - Taiji Bare Hand Duilian', 6),
(66, 'D104 - Taiji Weapon Duilian', 6),
(67, 'D102 - Bare Hand Against Weapon Duillian', 6),
(68, 'D105 - Short Weapon with Long Weapon Duilian', 6);

-- --------------------------------------------------------

--
-- Table structure for table `other_options`
--

CREATE TABLE `other_options` (
  `o_id` int(100) NOT NULL,
  `o_name` varchar(255) NOT NULL,
  `o_price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `other_options`
--

INSERT INTO `other_options` (`o_id`, `o_name`, `o_price`) VALUES
(1, 'Grand Champion $50 (Advance ONLY, 4 Events Min.)', 50);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `event_id` int(10) NOT NULL,
  `transaction_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `payment_amount` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `invoice_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `event_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `createdtime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `event_id`, `transaction_id`, `payment_amount`, `currency_code`, `payment_status`, `invoice_id`, `event_name`, `createdtime`) VALUES
(1, 2, 'PAYID-MHWFZOY4VE26625YR718925G', 20.00, 'USD', 'approved', '61ec5cb7cc111', 'Event_2_20', '2022-01-22 20:37:17'),
(2, 2, 'PAYID-MHWSESI9CU54910RB552711A', 50.00, 'USD', 'approved', '61ed2245eeca1', 'Event_2_20,Event_4_30', '2022-01-23 10:40:05');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `r_id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `guardian_name` varchar(255) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `dob` date NOT NULL,
  `experience` varchar(20) NOT NULL,
  `first_timer` varchar(10) NOT NULL,
  `school_name` longtext NOT NULL,
  `instructor_name` varchar(255) NOT NULL,
  `school_address` longtext NOT NULL,
  `school_email` varchar(255) NOT NULL,
  `school_phone` varchar(20) NOT NULL,
  `no_of_events` varchar(50) NOT NULL,
  `event_ids` varchar(255) NOT NULL,
  `event_names` longtext NOT NULL,
  `event_subject` longtext NOT NULL,
  `total_amount` varchar(20) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`r_id`, `first_name`, `last_name`, `guardian_name`, `gender`, `email`, `address`, `dob`, `experience`, `first_timer`, `school_name`, `instructor_name`, `school_address`, `school_email`, `school_phone`, `no_of_events`, `event_ids`, `event_names`, `event_subject`, `total_amount`, `date_time`) VALUES
(1, 'sad', 'sf', 'sdf', 'male', 'sdf', 'sdf', '2022-01-10', '2.1', 'yes', 'dsf', 'sdf', 'dsf', 'sdf', '34324', 'sdf', '23', 'dfdsf', 'dfs', '2322', '2022-01-30 23:47:10'),
(2, 'Rahul', 'Sharma', 'Manoj Sharma', 'option1', 'rdrajni6@gmail.com', 'VPo Gondpur,distt una,una,Los Angeles,329210,Canada', '2022-01-11', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,China', 'shaolintemple12@mail.in', '3453453453453', 'more_than_one_event', '1,4', 'Contemporary_Wushu_Hand_Forms,Contemporary_Wushu_Short_Weapons', 'C100 - 5 Step Longfist,C120 - 1st Set Compulsory Southern Broadsword (IWuF),C120 - 1st Set Compulsory Southern Broadsword (IWuF),C112 - Optional Broadsword (Without Nandu),C112 - Optional Broadsword (Without Nandu),C112 - Optional Broadsword (Without Nandu)', '120', '2022-01-31 00:01:07'),
(3, 'Monu', 'Sharma', 'Ram Kumar', 'Female', 'ramu@maiL.IN', '21 model street,novel town,Wolf street,Texas,123123,USA', '2022-01-02', '30.12', 'yes', 'Vivekananda School', 'Ram', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '4', 'Contemporary_Wushu_Short_Weapons', 'C111B - Intermediate Broadsword', '60', '2022-01-31 00:12:24'),
(4, 'Monu', 'Sharma', 'Ram Kumar', 'Female', 'ramu@maiL.IN', '21 model street,novel town,Wolf street,Texas,123123,USA', '2022-01-02', '30.12', 'yes', 'Vivekananda School', 'Ram', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '2', 'Traditional_Short_Weapons', 'T116 - Other Tradtional Single Broadsword', '60', '2022-01-31 00:13:53'),
(5, 'Mohit', 'Rana', '', 'Male', 'asd', 'asd,novel town,una,Los Angeles,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'sdf', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', 'more_than_one_event', '2,10', 'Traditional_Short_Weapons,Traditional_Hand_Forms', 'T124 - Other Traditional Single Short Weapon,T115 - Traditional Southern Broadsword,T115 - Traditional Southern Broadsword', '120', '2022-01-31 00:45:07'),
(6, 'Mohit', 'Rana', '', 'Male', 'asd', 'asd,novel town,una,Los Angeles,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'sdf', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', 'more_than_one_event', '2,10', 'Traditional_Short_Weapons,Traditional_Hand_Forms', 'T124 - Other Traditional Single Short Weapon,T115 - Traditional Southern Broadsword,T115 - Traditional Southern Broadsword', '120', '2022-01-31 00:49:00'),
(7, 'Mohit', 'Rana', '', 'Male', 'asd', 'asd,novel town,una,Los Angeles,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'sdf', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', 'more_than_one_event', '2,10', 'Traditional_Short_Weapons,Traditional_Hand_Forms', 'T124 - Other Traditional Single Short Weapon,T115 - Traditional Southern Broadsword,T115 - Traditional Southern Broadsword', '120', '2022-01-31 00:49:04'),
(8, 'Mohit', 'Rana', '', 'Male', 'asd', 'asd,novel town,una,Los Angeles,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'sdf', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', 'more_than_one_event', '2,10', 'Traditional_Short_Weapons,Traditional_Hand_Forms', 'T124 - Other Traditional Single Short Weapon,T115 - Traditional Southern Broadsword,T115 - Traditional Southern Broadsword', '120', '2022-01-31 00:49:14'),
(9, 'sad', 'asdf', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-01-05', '10.12', 'yes', 'Shaolin Temple', 'Shifu', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-01-31 00:50:12'),
(10, 'sad', 'asdf', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-01-05', '10.12', 'yes', 'Shaolin Temple', 'Shifu', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-01-31 00:52:13'),
(11, 'sad', 'asdf', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-01-05', '10.12', 'yes', 'Shaolin Temple', 'Shifu', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-01-31 00:52:21'),
(12, 'sad', 'asdf', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-01-05', '10.12', 'yes', 'Shaolin Temple', 'Shifu', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', 'more_than_one_event', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-01-31 00:52:36'),
(13, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', '', '3', 'Taiji_Weapons', 'TJ115 - Yang Style Taiji Broadsword', '60', '2022-01-31 00:53:59'),
(14, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', '', '3', 'Taiji_Weapons', 'TJ115 - Yang Style Taiji Broadsword', '60', '2022-01-31 00:54:47'),
(15, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', '', '3', 'Taiji_Weapons', 'TJ115 - Yang Style Taiji Broadsword', '60', '2022-01-31 00:55:50'),
(16, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', '', '3', 'Taiji_Weapons', 'TJ115 - Yang Style Taiji Broadsword', '60', '2022-01-31 00:56:25'),
(17, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', '', '3', 'Taiji_Weapons', 'TJ115 - Yang Style Taiji Broadsword', '60', '2022-01-31 00:57:46'),
(18, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', '', '3', 'Taiji_Weapons', 'TJ115 - Yang Style Taiji Broadsword', '60', '2022-01-31 00:57:54'),
(19, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', '', '3', 'Taiji_Weapons', 'TJ115 - Yang Style Taiji Broadsword', '60', '2022-01-31 00:59:01'),
(20, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', '', '3', 'Taiji_Weapons', 'TJ115 - Yang Style Taiji Broadsword', '60', '2022-01-31 00:59:57'),
(21, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', '', '3', 'Taiji_Weapons', 'TJ115 - Yang Style Taiji Broadsword', '60', '2022-01-31 01:00:00'),
(22, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T113 - Shaolin Single Broadsword,C109 - 3rd Set Elementary Broadsword,C109 - 3rd Set Elementary Broadsword', '120', '2022-01-31 01:01:23'),
(23, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T113 - Shaolin Single Broadsword,C109 - 3rd Set Elementary Broadsword,C109 - 3rd Set Elementary Broadsword', '120', '2022-01-31 01:05:14'),
(24, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T113 - Shaolin Single Broadsword,C109 - 3rd Set Elementary Broadsword,C109 - 3rd Set Elementary Broadsword', '120', '2022-01-31 01:05:25'),
(25, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,sad,123123,USA', '2022-01-11', '10.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,India', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T113 - Shaolin Single Broadsword,C109 - 3rd Set Elementary Broadsword,C109 - 3rd Set Elementary Broadsword', '120', '2022-01-31 01:06:18'),
(26, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,123123,USA', '2022-01-12', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T124 - Other Traditional Single Short Weapon,C114 - 3rd Set Elementary Straight Sword,C114 - 3rd Set Elementary Straight Sword', '120', '2022-01-31 02:25:53'),
(27, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,123123,USA', '2022-01-12', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T124 - Other Traditional Single Short Weapon,C114 - 3rd Set Elementary Straight Sword,C114 - 3rd Set Elementary Straight Sword', '120', '2022-01-31 02:33:41'),
(28, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,123123,USA', '2022-01-12', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T124 - Other Traditional Single Short Weapon,C114 - 3rd Set Elementary Straight Sword,C114 - 3rd Set Elementary Straight Sword', '120', '2022-01-31 02:34:55'),
(29, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,123123,USA', '2022-01-12', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T124 - Other Traditional Single Short Weapon,C114 - 3rd Set Elementary Straight Sword,C114 - 3rd Set Elementary Straight Sword', '120', '2022-01-31 02:36:06'),
(30, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,123123,USA', '2022-01-12', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T124 - Other Traditional Single Short Weapon,C114 - 3rd Set Elementary Straight Sword,C114 - 3rd Set Elementary Straight Sword', '120', '2022-01-31 02:36:38'),
(31, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,123123,USA', '2022-01-12', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T124 - Other Traditional Single Short Weapon,C114 - 3rd Set Elementary Straight Sword,C114 - 3rd Set Elementary Straight Sword', '120', '2022-01-31 02:37:47'),
(32, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,123123,USA', '2022-01-12', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T124 - Other Traditional Single Short Weapon,C114 - 3rd Set Elementary Straight Sword,C114 - 3rd Set Elementary Straight Sword', '120', '2022-01-31 02:38:24'),
(33, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,123123,USA', '2022-01-12', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T124 - Other Traditional Single Short Weapon,C114 - 3rd Set Elementary Straight Sword,C114 - 3rd Set Elementary Straight Sword', '120', '2022-01-31 02:40:19'),
(34, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,123123,USA', '2022-01-12', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T124 - Other Traditional Single Short Weapon,C114 - 3rd Set Elementary Straight Sword,C114 - 3rd Set Elementary Straight Sword', '120', '2022-01-31 02:40:40'),
(35, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,123123,USA', '2022-01-12', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T124 - Other Traditional Single Short Weapon,C114 - 3rd Set Elementary Straight Sword,C114 - 3rd Set Elementary Straight Sword', '120', '2022-01-31 02:41:32'),
(36, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,123123,USA', '2022-01-12', '10.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '2,4', 'Traditional_Short_Weapons,Contemporary_Wushu_Short_Weapons', 'T124 - Other Traditional Single Short Weapon,C114 - 3rd Set Elementary Straight Sword,C114 - 3rd Set Elementary Straight Sword', '120', '2022-01-31 02:42:01'),
(37, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:00:11'),
(38, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:02:29'),
(39, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:04:23'),
(40, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:05:17'),
(41, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:05:33'),
(42, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:05:57'),
(43, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:06:17'),
(44, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:06:58'),
(45, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:07:16'),
(46, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:11:09'),
(47, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:11:56'),
(48, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:14:34'),
(49, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:15:34'),
(50, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:15:47'),
(51, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:15:55'),
(52, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:16:15'),
(53, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:17:02'),
(54, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:17:18'),
(55, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:21:13'),
(56, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:21:21'),
(57, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:21:25'),
(58, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:21:40'),
(59, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:22:11'),
(60, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:23:21'),
(61, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:23:36'),
(62, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:23:51'),
(63, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:24:00'),
(64, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:24:08'),
(65, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:24:31'),
(66, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:24:41'),
(67, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:24:48'),
(68, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:24:59'),
(69, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:25:36'),
(70, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:25:42'),
(71, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:26:02'),
(72, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:26:50'),
(73, 'Vishav', 'Sharma', '', 'Male', 'sd', 'sa,asd,una,Los Angeles,329210,Canada', '2022-02-15', 'asd.4', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C100 - 5 Step Longfist', '60', '2022-02-02 12:26:57'),
(74, 'Vishav', 'Sharma', 'Manoj Sharma', 'Male', 'rdrajni6@gmail.com', 'VPo Gondpur,novel town,sad,Los Angeles,329210,USA', '2022-02-07', '30.11', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', 'more_than_one_event', '1,3,1', 'Contemporary_Wushu_Hand_Forms,Taiji_Weapons,Grand_Champion_$50_(Advance_ONLY,_4_Events_Min.)', '', '170', '2022-02-03 17:08:18'),
(75, 'Vishav', 'Rana', 'Manoj Sharma', 'Male', 'rdrajni6@gmail.com', 'VPo Gondpur,novel town,sad,sad,329210,USA', '2022-02-16', 'asd.4', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,England', 'shaolintemple12@mail.in', '3453453453453', 'more_than_one_event', '1,1,6', 'Contemporary_Wushu_Hand_Forms,Grand_Champion_$50_(Advance_ONLY,_4_Events_Min.),Duilian_(Sparring)', '', '170', '2022-02-03 17:21:41'),
(76, 'Vishav', 'Sharma', 'Manoj Sharma', 'Male', 'sd', '21 model street,asd,Wolf street,Los Angeles,123123,USA', '2022-02-15', 'asd.4', 'yes', 'Shaolin Temple', 'Ram', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'sdf', '3453453453453', 'more_than_one_event', '1,3,1', 'Contemporary_Wushu_Hand_Forms,Taiji_Weapons,Grand_Champion_$50_(Advance_ONLY,_4_Events_Min.)', 'TJ123 - Other Taiji Long Weapon', '170', '2022-02-04 01:08:22'),
(77, 'Vishav', 'Sharma', 'Manoj Sharma', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-24', '10.12', 'yes', 'sdf', 'Ram', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', 'more_than_one_event', '1,o1,10,9', 'Contemporary_Wushu_Hand_Forms,Grand_Champion_$50_(Advance_ONLY,_4_Events_Min.),Traditional_Hand_Forms,Group_Set', 'C100 - 5 Step Longfist,C106 - Beginner', '230', '2022-02-04 02:31:54'),
(78, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'VPo Gondpur,asd,una,Los Angeles,329210,USA', '2022-02-09', 'asd.asd', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:18:56'),
(79, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'VPo Gondpur,asd,una,Los Angeles,329210,USA', '2022-02-09', 'asd.asd', 'yes', 'sdf', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:27:30'),
(80, 'Monu', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', '21 model street,novel town,una,Los Angeles,329210,USA', '2022-02-17', '10.4', 'yes', 'sdf', 'Ram', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:28:30'),
(81, 'Monu', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', '21 model street,novel town,una,Los Angeles,329210,USA', '2022-02-17', '10.4', 'yes', 'sdf', 'Ram', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:29:52'),
(82, 'Monu', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', '21 model street,novel town,una,Los Angeles,329210,USA', '2022-02-17', '10.4', 'yes', 'sdf', 'Ram', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:30:21'),
(83, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:33:54'),
(84, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:34:59'),
(85, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:35:07'),
(86, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:39:57'),
(87, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:40:47'),
(88, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:41:39'),
(89, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:42:57'),
(90, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:43:12'),
(91, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:44:44'),
(92, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C108A - 2nd & 3rd Set Compulsory Southern Fist (IWuF)', '60', '2022-02-08 11:45:00'),
(93, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C108A - 2nd & 3rd Set Compulsory Southern Fist (IWuF)', '60', '2022-02-08 11:45:12'),
(94, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C108A - 2nd & 3rd Set Compulsory Southern Fist (IWuF)', '60', '2022-02-08 11:45:36'),
(95, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', 'more_than_one_event', '1,o1', 'Contemporary_Wushu_Hand_Forms,Grand_Champion_$50_(Advance_ONLY,_4_Events_Min.)', '', '110', '2022-02-08 11:45:56'),
(96, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', 'more_than_one_event', '1,o1', 'Contemporary_Wushu_Hand_Forms,Grand_Champion_$50_(Advance_ONLY,_4_Events_Min.)', '', '110', '2022-02-08 11:48:05'),
(97, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 11:48:48'),
(98, 'Mohit', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', 'asd,asd,una,sad,329210,USA', '2022-02-06', '30.12', 'yes', 'Vivekananda School', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', '', '60', '2022-02-08 11:49:05'),
(99, 'Monu', 'Rana', '', 'Male', 'sd', 'VPo Gondpur,asd,una,sad,329210,USA', '2022-02-14', '10.4', 'yes', 'sdf', 'Shifu', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1,o1', 'Contemporary_Wushu_Hand_Forms,Grand_Champion_$50_(Advance_ONLY,_4_Events_Min.)', '', '110', '2022-02-08 22:26:17'),
(100, 'Monu', 'Rana', '', 'Male', 'sd', 'VPo Gondpur,asd,una,sad,329210,USA', '2022-02-14', '10.4', 'yes', 'sdf', 'Shifu', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 22:26:35'),
(101, 'Vishav', 'Sharma', '', 'Male', 'rdrajni6@gmail.com', '21 model street,novel town,una,sad,329210,USA', '2022-02-15', '10.12', 'yes', 'sdf', 'Shifu', '10th street,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '1', 'Contemporary_Wushu_Hand_Forms', 'C107 - Optional Southern Fist', '60', '2022-02-08 22:28:36'),
(102, 'Monu', 'Rana', '', 'Male', 'asd', 'asd,asd,una,Los Angeles,123123,USA', '2022-02-27', 'asd.4', 'yes', 'Shaolin Temple', 'Shifu', '10, Chinatown,Near Hanumangarh,Honkong,honkong,435345,USA', 'shaolintemple12@mail.in', '3453453453453', '', '', '', '', '', '2022-02-08 22:38:38');

-- --------------------------------------------------------

--
-- Table structure for table `stripe_orders`
--

CREATE TABLE `stripe_orders` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_number` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `item_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `item_price` float(10,2) NOT NULL,
  `item_price_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `paid_amount` float(10,2) NOT NULL,
  `paid_amount_currency` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `txn_id` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `checkout_session_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stripe_orders`
--

INSERT INTO `stripe_orders` (`id`, `name`, `email`, `item_number`, `item_name`, `item_price`, `item_price_currency`, `paid_amount`, `paid_amount_currency`, `txn_id`, `checkout_session_id`, `payment_status`, `created`, `modified`) VALUES
(1, 'Test', 'nbvnv@mail.in', '1', 'Event_1_60', 60.00, '', 60.00, 'usd', 'pi_3KLB4ZSCcV9lacaw1zihhIl6', 'cs_test_a1SXuqReh0YlAENMYZql0GI8wTRpI8L2XE7YisvngWSo0jWLMO8ZvqmpV4', 'succeeded', '2022-01-24 00:18:25', '2022-01-24 00:18:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group-set`
--
ALTER TABLE `group-set`
  ADD PRIMARY KEY (`gs-id`);

--
-- Indexes for table `hand-forms`
--
ALTER TABLE `hand-forms`
  ADD PRIMARY KEY (`hf-id`),
  ADD KEY `event-id` (`event-id`);

--
-- Indexes for table `other_options`
--
ALTER TABLE `other_options`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `stripe_orders`
--
ALTER TABLE `stripe_orders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `group-set`
--
ALTER TABLE `group-set`
  MODIFY `gs-id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `hand-forms`
--
ALTER TABLE `hand-forms`
  MODIFY `hf-id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `other_options`
--
ALTER TABLE `other_options`
  MODIFY `o_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `stripe_orders`
--
ALTER TABLE `stripe_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hand-forms`
--
ALTER TABLE `hand-forms`
  ADD CONSTRAINT `hand-forms_ibfk_1` FOREIGN KEY (`event-id`) REFERENCES `events` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
