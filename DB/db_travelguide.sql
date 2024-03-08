-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2024 at 01:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_travelguide`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_contact` varchar(50) NOT NULL,
  `admin_password` varchar(50) NOT NULL,
  `admin_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_contact`, `admin_password`, `admin_name`) VALUES
(1, 'vinumvarughese5355@gmail.com', '7025925542', '123456', 'Vinu M Varughese ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advicor`
--

CREATE TABLE `tbl_advicor` (
  `advicor_id` int(11) NOT NULL,
  `advicor_name` varchar(100) NOT NULL,
  `advicor_email` varchar(100) NOT NULL,
  `advicor_password` varchar(100) NOT NULL,
  `advicor_contact` varchar(100) NOT NULL,
  `advicor__address` varchar(100) NOT NULL,
  `advicor_photo` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_advicor`
--

INSERT INTO `tbl_advicor` (`advicor_id`, `advicor_name`, `advicor_email`, `advicor_password`, `advicor_contact`, `advicor__address`, `advicor_photo`, `place_id`) VALUES
(1, 'Shyam Kumar S', 'shyam666@gmail.com', 'shyam#666', '9876543210', 'Vettukattil(H) peruva', 'UserPhoto_1185.jpeg', 6),
(2, 'Anna', 'anna464@gmail.com', 'Anna5563', '6235064628', 'Anna (H) Wayanad', 'UserPhoto_1684.jpeg', 11),
(3, 'Midhun Biju', 'midhun111@gmail.com', 'midhun11@34', '9746366241', 'midhun (H) Chembra', 'UserPhoto_1028.jpeg', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_advicorbooking`
--

CREATE TABLE `tbl_advicorbooking` (
  `advicorbooking_id` int(11) NOT NULL,
  `advicor_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `advicorbooking_time` varchar(100) NOT NULL,
  `advicorbooking_date` varchar(100) NOT NULL,
  `advicorbooking_status` varchar(100) NOT NULL DEFAULT '0',
  `advicorbooking_content` varchar(100) NOT NULL,
  `advicorbooking_curent_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_advicorbooking`
--

INSERT INTO `tbl_advicorbooking` (`advicorbooking_id`, `advicor_id`, `user_id`, `advicorbooking_time`, `advicorbooking_date`, `advicorbooking_status`, `advicorbooking_content`, `advicorbooking_curent_date`) VALUES
(1, 2, 8, '11:55', '2024-03-05', '0', 'Haii I Am Anna', '2024-03-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Category'),
(3, 'Winter');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_complaint`
--

CREATE TABLE `tbl_complaint` (
  `complaint_id` int(11) NOT NULL,
  `complaint_title` varchar(100) NOT NULL,
  `complaint_content` varchar(100) NOT NULL,
  `complaint_reply` varchar(100) NOT NULL,
  `complaint_status` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_district`
--

CREATE TABLE `tbl_district` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_district`
--

INSERT INTO `tbl_district` (`district_id`, `district_name`) VALUES
(4, 'Idukkiiii'),
(6, 'idukki'),
(7, 'pathanamthitta'),
(8, 'Kottayam'),
(9, 'Wayanad');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driver`
--

CREATE TABLE `tbl_driver` (
  `driver_id` int(100) NOT NULL,
  `driver_name` varchar(100) NOT NULL,
  `driver_email` varchar(100) NOT NULL,
  `driver_contact` varchar(100) NOT NULL,
  `driver_password` varchar(100) NOT NULL,
  `driver_address` varchar(100) NOT NULL,
  `driver_status` varchar(100) NOT NULL DEFAULT '0',
  `driver_photo` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_driver`
--

INSERT INTO `tbl_driver` (`driver_id`, `driver_name`, `driver_email`, `driver_contact`, `driver_password`, `driver_address`, `driver_status`, `driver_photo`, `place_id`) VALUES
(6, 'Shinoy Shaji', 'shinoy334@gmail.com', '8590466138', 'shinoy@343', 'Shinoy(H) kuravilangad', '0', 'UserPhoto_2008.jpeg', 7),
(7, 'Monkey D Luffi', 'luffi33@gmail.com', '8354976154', 'luffi@55', 'Monkey D (H) Vagamon', '0', 'UserPhoto_2107.jpeg', 10),
(8, 'Roronoa Zoro', 'zoro22@gmail.com', '9458612275', 'Zoro@945', 'Roronoa (H) Vagamon', '0', 'UserPhoto_1963.jpeg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_driverbooking`
--

CREATE TABLE `tbl_driverbooking` (
  `driverbooking_id` int(11) NOT NULL,
  `driverbooking_time` varchar(100) NOT NULL,
  `driverbooking_date` varchar(100) NOT NULL,
  `driverbooking_status` varchar(100) NOT NULL DEFAULT '0',
  `drivebooking_content` varchar(100) NOT NULL,
  `drivebooking_curent_date` varchar(100) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_driverbooking`
--

INSERT INTO `tbl_driverbooking` (`driverbooking_id`, `driverbooking_time`, `driverbooking_date`, `driverbooking_status`, `drivebooking_content`, `drivebooking_curent_date`, `driver_id`, `user_id`) VALUES
(3, '12:07', '2024-02-29', '0', 'hello', '2024-02-28', 7, 8),
(6, '16:39', '2024-03-02', '0', 'haii', '2024-03-01', 7, 8),
(7, '10:07', '2024-03-07', '0', 'haii iam vinu', '2024-03-06', 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enqury`
--

CREATE TABLE `tbl_enqury` (
  `enqury_id` int(11) NOT NULL,
  `enqury_content` varchar(100) NOT NULL,
  `enqury_reply` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL,
  `advicor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `feedback_id` int(11) NOT NULL,
  `feedback_content` varchar(100) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guide`
--

CREATE TABLE `tbl_guide` (
  `guide_id` int(11) NOT NULL,
  `guide_name` varchar(100) NOT NULL,
  `guide_email` varchar(100) NOT NULL,
  `guide_password` varchar(100) NOT NULL,
  `guide_contact` varchar(100) NOT NULL,
  `guide_address` varchar(100) NOT NULL,
  `guide_photo` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_guide`
--

INSERT INTO `tbl_guide` (`guide_id`, `guide_name`, `guide_email`, `guide_password`, `guide_contact`, `guide_address`, `guide_photo`, `place_id`) VALUES
(14, 'Anto Thomas', 'antothomas369@gmail.com', 'kappola#369', '8624693571', 'kappola (H) munnar', 'UserPhoto_1715.jpg', 8),
(15, 'Naruto Uzumaki', 'naruto224@gmail.com', 'Naruto224', '8495627348', 'Uzumaki (H) Vagamon', 'UserPhoto_1991.jpg', 10),
(16, 'Itachi Uchiha', 'itachi765@gmail.com', 'Itachi@331', '7584625958', 'Uchiha (H) Vagamon', 'UserPhoto_1313.jpeg', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guidebooking`
--

CREATE TABLE `tbl_guidebooking` (
  `guidebooking` int(11) NOT NULL,
  `guide_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `guidebooking_time` varchar(100) NOT NULL,
  `guidebooking_date` varchar(100) NOT NULL,
  `guidebooking_status` varchar(100) NOT NULL DEFAULT '0',
  `guidebooking_content` varchar(100) NOT NULL,
  `guidebooking_curent_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_guidebooking`
--

INSERT INTO `tbl_guidebooking` (`guidebooking`, `guide_id`, `user_id`, `guidebooking_time`, `guidebooking_date`, `guidebooking_status`, `guidebooking_content`, `guidebooking_curent_date`) VALUES
(2, 15, 8, '22:18', '2024-03-03', '0', 'Haii I Am Naruto', '2024-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotel`
--

CREATE TABLE `tbl_hotel` (
  `hotel_id` int(11) NOT NULL,
  `hotel_name` varchar(100) NOT NULL,
  `hotel_email` varchar(100) NOT NULL,
  `hotel_password` varchar(100) NOT NULL,
  `hotel_contact` varchar(100) NOT NULL,
  `hotel_address` varchar(100) NOT NULL,
  `hotel_photo` varchar(100) NOT NULL,
  `hotel_status` varchar(100) NOT NULL DEFAULT '0',
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hotel`
--

INSERT INTO `tbl_hotel` (`hotel_id`, `hotel_name`, `hotel_email`, `hotel_password`, `hotel_contact`, `hotel_address`, `hotel_photo`, `hotel_status`, `place_id`) VALUES
(7, 'Hotel Paris', 'hotelparis@gmail.com', 'Paris@223', '5424947895', 'Hotel Paris munnar', 'UserPhoto_1535.jpeg', '0', 8),
(8, 'Skyland ', 'skyland33@gmail.com', 'Skyland 33', '86755469181', 'Hotel Skyland Wayanad', 'UserPhoto_1960.jpeg', '0', 11),
(9, 'Hiliya ', 'hiliya212@gmail.com', 'Hiliya', '9268486243', 'Hotel Hiliya Wayanad', 'UserPhoto_1840.jpeg', '0', 12),
(10, 'Misty', 'hotelmisty113@gmail.com', 'Misty#5521#', '9465721684', 'Hotel Misty Idukki', 'UserPhoto_1211.jpeg', '0', 10),
(11, 'Hotel Plasma', 'hotelplasma@gmail.com', 'v@123', '8965491528', 'Hotel Plasma Vagamon', 'UserPhoto_2030.jpeg', '0', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotelbooking`
--

CREATE TABLE `tbl_hotelbooking` (
  `hotelbooking_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hotelbooking_date` varchar(100) NOT NULL,
  `hotelbooking_time` varchar(100) NOT NULL,
  `hotelbooking_curent_date` varchar(100) NOT NULL,
  `hotelbooking_payment` varchar(100) NOT NULL DEFAULT '0',
  `hotelbooking_status` varchar(100) NOT NULL DEFAULT '0',
  `hotelbooking_content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hotelbooking`
--

INSERT INTO `tbl_hotelbooking` (`hotelbooking_id`, `hotel_id`, `user_id`, `hotelbooking_date`, `hotelbooking_time`, `hotelbooking_curent_date`, `hotelbooking_payment`, `hotelbooking_status`, `hotelbooking_content`) VALUES
(2, 10, 8, '2024-02-29', '11:30', '2024-02-28', '0', '0', 'hello'),
(3, 10, 9, '2024-03-07', '10:04', '2024-03-06', '0', '0', 'haiii iam');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_place`
--

CREATE TABLE `tbl_place` (
  `place_id` int(11) NOT NULL,
  `place_name` varchar(100) NOT NULL,
  `district_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_place`
--

INSERT INTO `tbl_place` (`place_id`, `place_name`, `district_id`) VALUES
(1, 'Muvattupuzja', 1),
(2, 'Thodupuzha', 4),
(4, 'Thiruvalla', 7),
(5, 'Ranni', 7),
(6, 'Peruva', 8),
(7, 'kuravilangad', 8),
(8, 'Munnar', 6),
(9, 'Tekkady', 6),
(10, 'Vagamon', 6),
(11, 'Chembra', 9),
(12, 'Pookeode lake', 9);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subcategory`
--

CREATE TABLE `tbl_subcategory` (
  `subcategory_id` int(11) NOT NULL,
  `subcategory_name` varchar(50) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_subcategory`
--

INSERT INTO `tbl_subcategory` (`subcategory_id`, `subcategory_name`, `category_id`) VALUES
(9, 'subCategory', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_contact` varchar(100) NOT NULL,
  `user_address` varchar(100) NOT NULL,
  `user_photo` varchar(100) NOT NULL,
  `place_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_contact`, `user_address`, `user_photo`, `place_id`) VALUES
(8, 'Vinu M Varughese', 'vinumvarughese5355@gmail.com', 'vinu553', '7025925555', 'parampil memuriyil thadiyoor po pathanamthitta', 'UserPhoto_2045.jpg', 5),
(9, 'Shyam Kumar ', 'shyam666@gmail.com', 'shyam123', '7025925542', 'Vettukattil(H) peruva', 'UserPhoto_1669.jpeg', 6);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_advicor`
--
ALTER TABLE `tbl_advicor`
  ADD PRIMARY KEY (`advicor_id`);

--
-- Indexes for table `tbl_advicorbooking`
--
ALTER TABLE `tbl_advicorbooking`
  ADD PRIMARY KEY (`advicorbooking_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `tbl_district`
--
ALTER TABLE `tbl_district`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `tbl_driver`
--
ALTER TABLE `tbl_driver`
  ADD PRIMARY KEY (`driver_id`);

--
-- Indexes for table `tbl_driverbooking`
--
ALTER TABLE `tbl_driverbooking`
  ADD PRIMARY KEY (`driverbooking_id`);

--
-- Indexes for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `tbl_guide`
--
ALTER TABLE `tbl_guide`
  ADD PRIMARY KEY (`guide_id`);

--
-- Indexes for table `tbl_guidebooking`
--
ALTER TABLE `tbl_guidebooking`
  ADD PRIMARY KEY (`guidebooking`);

--
-- Indexes for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  ADD PRIMARY KEY (`hotel_id`);

--
-- Indexes for table `tbl_hotelbooking`
--
ALTER TABLE `tbl_hotelbooking`
  ADD PRIMARY KEY (`hotelbooking_id`);

--
-- Indexes for table `tbl_place`
--
ALTER TABLE `tbl_place`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  ADD PRIMARY KEY (`subcategory_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_advicor`
--
ALTER TABLE `tbl_advicor`
  MODIFY `advicor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_advicorbooking`
--
ALTER TABLE `tbl_advicorbooking`
  MODIFY `advicorbooking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_complaint`
--
ALTER TABLE `tbl_complaint`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_district`
--
ALTER TABLE `tbl_district`
  MODIFY `district_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_driver`
--
ALTER TABLE `tbl_driver`
  MODIFY `driver_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_driverbooking`
--
ALTER TABLE `tbl_driverbooking`
  MODIFY `driverbooking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `feedback_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_guide`
--
ALTER TABLE `tbl_guide`
  MODIFY `guide_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_guidebooking`
--
ALTER TABLE `tbl_guidebooking`
  MODIFY `guidebooking` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  MODIFY `hotel_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_hotelbooking`
--
ALTER TABLE `tbl_hotelbooking`
  MODIFY `hotelbooking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_place`
--
ALTER TABLE `tbl_place`
  MODIFY `place_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_subcategory`
--
ALTER TABLE `tbl_subcategory`
  MODIFY `subcategory_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
