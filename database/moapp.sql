-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2020 at 04:08 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `moapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `id_group_cate` int(11) NOT NULL,
  `active` tinyint(3) NOT NULL,
  `name_cate` varchar(255) NOT NULL,
  `image_cate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `id_group_cate`, `active`, `name_cate`, `image_cate`) VALUES
(1, 1, 0, 'Băng keo đục', 'nhom_bangkeo1.png'),
(2, 1, 0, 'Băng keo trong', 'nhom_bangkeo2.png'),
(3, 1, 0, 'Nhóm băng keo A', 'nhom_bangkeo3.png'),
(4, 1, 0, 'Nhóm băng keo B', 'nhom_bangkeo4.png'),
(5, 1, 0, 'Nhóm băng keo C', 'nhom_bangkeo5.png'),
(6, 1, 0, 'Nhóm băng keo D', 'nhom_bangkeo6.png'),
(11, 2, 0, 'Nhóm băng keo A', 'nhom_bangkeo2_1.png'),
(12, 2, 0, 'Nhóm băng keo B', 'nhom_bangkeo2_2.png'),
(13, 2, 0, 'Nhóm băng keo C', 'nhom_bangkeo2_3.png'),
(14, 2, 0, 'Nhóm băng keo D', 'nhom_bangkeo2_4.png'),
(15, 2, 0, 'Nhóm băng keo F', 'nhom_bangkeo2_5.png'),
(16, 2, 0, 'Nhóm băng keo G', 'nhom_bangkeo2_6.png'),
(17, 2, 0, 'Nhóm băng keo H', 'nhom_bangkeo2_7.png'),
(18, 2, 0, 'Nhóm băng keo H', 'nhom_bangkeo2_8.png'),
(19, 3, 0, 'Nhóm băng keo A', 'nhom_bangkeo3_7.png'),
(20, 3, 0, 'Nhóm băng keo B', 'nhom_bangkeo3_8.png'),
(21, 3, 0, 'Nhóm băng keo C', 'nhom_bangkeo3_9.png'),
(25, 3, 0, 'Nhóm băng keo A', 'nhom_bangkeo3_1.png'),
(26, 3, 0, 'Nhóm băng keo B', 'nhom_bangkeo3_2.png'),
(27, 3, 1, 'Nhóm băng keo C', 'nhom_bangkeo3_3.png'),
(28, 3, 0, 'Nhóm băng keo D', 'nhom_bangkeo3_4.png'),
(29, 3, 0, 'Nhóm băng keo F', 'nhom_bangkeo3_5.png'),
(30, 3, 0, 'Nhóm băng keo G', 'nhom_bangkeo3_6.png');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `class` tinyint(3) NOT NULL,
  `name_cus` varchar(255) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `class`, `name_cus`, `phone`, `address`) VALUES
(1, 0, 'Trần Hùng Danh', '0329254554', '8 Đường số 6, Phường Bình Thuận, Quận 7, Thành phố Hồ Chí Minh'),
(2, 1, 'Nguyễn Văn A', '0329254554', '123 Đường số 1, Xã Cư Drăm, Huyện Krông Bông, Đắc Lắc'),
(3, 1, 'Trân Thị Mỹ H', '0329254554', '12/3 Đường số 10, Phường 03, Quận 11, TP Hồ Chí Minh'),
(4, 0, 'Đỗ Minh Nghĩa', '0329254554', '8 Đường số 6, Phường Bình Thuận, Quận 7, Thành phố Hồ Chí Minh'),
(5, 1, 'Bùi Thị CAB', '0329254554', '43/2 Đường số 9, Xã Cư Drăm, Huyện Krông Bông, Đắc Lắc'),
(6, 0, 'Trần Văn Thanh', '0329254554', '543 Đường AAA, Phường 06, Quận 3, TP Hồ Chí Minh'),
(7, 0, 'Trần Hùng Danh', '0329254554', '8 Đường số 6, Phường Bình Thuận, Quận 7, Thành phố Hồ Chí Minh'),
(8, 1, 'Nguyễn Văn A', '0329254554', '123 Đường số 1, Xã Cư Drăm, Huyện Krông Bông, Đắc Lắc'),
(9, 1, 'Trân Thị Mỹ H', '0329254554', '12/3 Đường số 10, Phường 03, Quận 11, TP Hồ Chí Minh'),
(10, 0, 'Đỗ Minh Nghĩa', '0329254554', '8 Đường số 6, Phường Bình Thuận, Quận 7, Thành phố Hồ Chí Minh'),
(11, 1, 'Bùi Thị CAB', '0329254554', '43/2 Đường số 9, Xã Cư Drăm, Huyện Krông Bông, Đắc Lắc'),
(12, 0, 'Trần Văn Thanh', '0329254554', '543 Đường AAA, Phường 06, Quận 3, TP Hồ Chí Minh'),
(13, 0, 'Trần Hùng Danh', '0329254554', '8 Đường số 6, Phường Bình Thuận, Quận 7, Thành phố Hồ Chí Minh'),
(14, 1, 'Nguyễn Văn A', '0329254554', '123 Đường số 1, Xã Cư Drăm, Huyện Krông Bông, Đắc Lắc'),
(15, 1, 'Trân Thị Mỹ H', '0329254554', '12/3 Đường số 10, Phường 03, Quận 11, TP Hồ Chí Minh'),
(16, 0, 'Đỗ Minh Nghĩa', '0329254554', '8 Đường số 6, Phường Bình Thuận, Quận 7, Thành phố Hồ Chí Minh'),
(17, 1, 'Bùi Thị CAB', '0329254554', '43/2 Đường số 9, Xã Cư Drăm, Huyện Krông Bông, Đắc Lắc'),
(18, 0, 'Trần Văn Thanh', '0329254554', '543 Đường AAA, Phường 06, Quận 3, TP Hồ Chí Minh'),
(19, 0, 'Trần Hùng Danh', '0329254554', '8 Đường số 6, Phường Bình Thuận, Quận 7, Thành phố Hồ Chí Minh'),
(20, 1, 'Nguyễn Văn A', '0329254554', '123 Đường số 1, Xã Cư Drăm, Huyện Krông Bông, Đắc Lắc'),
(21, 1, 'Trân Thị Mỹ H', '0329254554', '12/3 Đường số 10, Phường 03, Quận 11, TP Hồ Chí Minh'),
(22, 0, 'Đỗ Minh Nghĩa', '0329254554', '8 Đường số 6, Phường Bình Thuận, Quận 7, Thành phố Hồ Chí Minh'),
(23, 1, 'Bùi Thị CAB', '0329254554', '43/2 Đường số 9, Xã Cư Drăm, Huyện Krông Bông, Đắc Lắc'),
(24, 0, 'Trần Văn Thanh', '0329254554', '543 Đường AAA, Phường 06, Quận 3, TP Hồ Chí Minh'),
(25, 0, 'Trần Hùng Danh', '0329254554', '8 Đường số 6, Phường Bình Thuận, Quận 7, Thành phố Hồ Chí Minh'),
(26, 1, 'Nguyễn Văn A', '0329254554', '123 Đường số 1, Xã Cư Drăm, Huyện Krông Bông, Đắc Lắc'),
(27, 1, 'Trân Thị Mỹ H', '0329254554', '12/3 Đường số 10, Phường 03, Quận 11, TP Hồ Chí Minh'),
(28, 0, 'Đỗ Minh Nghĩa', '0329254554', '8 Đường số 6, Phường Bình Thuận, Quận 7, Thành phố Hồ Chí Minh'),
(29, 1, 'Bùi Thị CAB', '0329254554', '43/2 Đường số 9, Xã Cư Drăm, Huyện Krông Bông, Đắc Lắc'),
(30, 0, 'Trần Văn Thanh', '0329254554', '543 Đường AAA, Phường 06, Quận 3, TP Hồ Chí Minh');

-- --------------------------------------------------------

--
-- Table structure for table `group_cate`
--

CREATE TABLE `group_cate` (
  `id` int(11) NOT NULL,
  `active` tinyint(3) NOT NULL,
  `name_group_cate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `group_cate`
--

INSERT INTO `group_cate` (`id`, `active`, `name_group_cate`) VALUES
(1, 0, 'Nhóm băng keo gia đình, văn phòng, dán thùng'),
(2, 0, 'Nhóm băng keo công nghiệp'),
(3, 0, 'Nhóm băng keo dân dụng'),
(6, 0, 'Nhóm băng keo học sinh');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `id_cate` int(11) NOT NULL,
  `active` tinyint(3) NOT NULL,
  `name_pro` varchar(255) NOT NULL,
  `image_pro` varchar(50) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `spec` varchar(255) NOT NULL,
  `material` varchar(255) NOT NULL,
  `thickness` varchar(255) NOT NULL,
  `width` varchar(255) NOT NULL,
  `length` varchar(255) NOT NULL,
  `color` varchar(255) NOT NULL,
  `adh_force` varchar(255) NOT NULL,
  `elas` varchar(255) NOT NULL,
  `charac` varchar(255) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `bearing` varchar(255) NOT NULL,
  `exp_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `id_cate`, `active`, `name_pro`, `image_pro`, `price`, `quantity`, `spec`, `material`, `thickness`, `width`, `length`, `color`, `adh_force`, `elas`, `charac`, `unit`, `bearing`, `exp_date`) VALUES
(1, 1, 0, 'Băng keo1 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(2, 1, 0, 'Băng keo1 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(3, 1, 0, 'Băng keo1 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(4, 1, 0, 'Băng keo1 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(5, 1, 0, 'Băng keo1 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(6, 1, 0, 'Băng keo1 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(7, 2, 0, 'Băng keo2 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(8, 2, 0, 'Băng keo2 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(9, 2, 0, 'Băng keo2 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(10, 2, 0, 'Băng keo2 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(11, 2, 0, 'Băng keo2 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(12, 2, 0, 'Băng keo2 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(13, 3, 0, 'Băng keo3 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(14, 3, 0, 'Băng keo3 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(15, 3, 0, 'Băng keo3 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(16, 3, 0, 'Băng keo3 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(17, 3, 0, 'Băng keo3 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(18, 3, 0, 'Băng keo3 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(19, 4, 0, 'Băng keo4 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(20, 4, 0, 'Băng keo4 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(21, 4, 0, 'Băng keo4 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(22, 4, 0, 'Băng keo4 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(23, 4, 0, 'Băng keo4 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(24, 4, 0, 'Băng keo4 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(25, 5, 0, 'Băng keo5 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(26, 5, 0, 'Băng keo5 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(27, 5, 0, 'Băng keo5 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(28, 5, 0, 'Băng keo5 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(29, 5, 0, 'Băng keo5 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(30, 5, 0, 'Băng keo5 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(31, 6, 0, 'Băng keo6 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(32, 6, 0, 'Băng keo6 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(33, 6, 0, 'Băng keo6 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(34, 6, 0, 'Băng keo6 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(35, 6, 0, 'Băng keo6 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(36, 6, 0, 'Băng keo6 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(61, 11, 0, 'Băng keo11 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(62, 11, 0, 'Băng keo11 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(63, 11, 0, 'Băng keo11 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(64, 11, 0, 'Băng keo11 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(65, 11, 0, 'Băng keo11 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(66, 11, 0, 'Băng keo11 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(67, 12, 0, 'Băng keo12 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(68, 12, 0, 'Băng keo12 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(69, 12, 0, 'Băng keo12 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(70, 12, 0, 'Băng keo12 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(71, 12, 0, 'Băng keo12 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(72, 12, 0, 'Băng keo12 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(73, 13, 0, 'Băng keo13 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(74, 13, 0, 'Băng keo13 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(75, 13, 0, 'Băng keo13 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(76, 13, 0, 'Băng keo13 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(77, 13, 0, 'Băng keo13 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(78, 13, 0, 'Băng keo13 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(79, 14, 0, 'Băng keo14 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(80, 14, 0, 'Băng keo14 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(81, 14, 0, 'Băng keo14 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(82, 14, 0, 'Băng keo14 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(83, 14, 0, 'Băng keo14 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(84, 14, 0, 'Băng keo14 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(85, 15, 0, 'Băng keo15 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(86, 15, 0, 'Băng keo15 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(87, 15, 0, 'Băng keo15 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(88, 15, 0, 'Băng keo15 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(89, 15, 0, 'Băng keo15 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(90, 15, 0, 'Băng keo15 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(91, 16, 0, 'Băng keo16 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(92, 16, 0, 'Băng keo16 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(93, 16, 0, 'Băng keo16 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(94, 16, 0, 'Băng keo16 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(95, 16, 0, 'Băng keo16 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(96, 16, 0, 'Băng keo16 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(97, 17, 0, 'Băng keo17 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(98, 17, 0, 'Băng keo17 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(99, 17, 0, 'Băng keo17 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(100, 17, 0, 'Băng keo17 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(101, 17, 0, 'Băng keo17 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(102, 17, 0, 'Băng keo17 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(103, 18, 0, 'Băng keo18 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(104, 18, 0, 'Băng keo18 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(105, 18, 0, 'Băng keo18 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(106, 18, 0, 'Băng keo18 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(107, 18, 0, 'Băng keo18 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(108, 18, 0, 'Băng keo18 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(109, 19, 0, 'Băng keo19 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(110, 19, 0, 'Băng keo19 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(111, 19, 0, 'Băng keo19 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(112, 19, 0, 'Băng keo19 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(113, 19, 0, 'Băng keo19 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(114, 19, 0, 'Băng keo19 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(115, 20, 0, 'Băng keo20 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(116, 20, 0, 'Băng keo20 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(117, 20, 0, 'Băng keo20 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(118, 20, 0, 'Băng keo20 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(119, 20, 0, 'Băng keo20 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(120, 20, 0, 'Băng keo20 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(121, 21, 0, 'Băng keo21 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(122, 21, 0, 'Băng keo21 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(123, 21, 0, 'Băng keo21 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(124, 21, 0, 'Băng keo21 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(125, 21, 0, 'Băng keo21 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(126, 21, 0, 'Băng keo21 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(145, 25, 0, 'Băng keo25 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(146, 25, 0, 'Băng keo25 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(147, 25, 0, 'Băng keo25 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(148, 25, 0, 'Băng keo25 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(149, 25, 0, 'Băng keo25 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(150, 25, 0, 'Băng keo25 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(151, 26, 0, 'Băng keo26 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(152, 26, 0, 'Băng keo26 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(153, 26, 0, 'Băng keo26 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(154, 26, 0, 'Băng keo26 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(155, 26, 0, 'Băng keo26 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(156, 26, 0, 'Băng keo26 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(157, 27, 1, 'Băng keo27 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(158, 27, 1, 'Băng keo27 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(159, 27, 1, 'Băng keo27 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(160, 27, 1, 'Băng keo27 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(161, 27, 1, 'Băng keo27 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(162, 27, 1, 'Băng keo27 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(163, 28, 0, 'Băng keo28 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(164, 28, 0, 'Băng keo28 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(165, 28, 0, 'Băng keo28 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(166, 28, 0, 'Băng keo28 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(167, 28, 0, 'Băng keo28 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(168, 28, 0, 'Băng keo28 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(169, 29, 0, 'Băng keo29 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(170, 29, 0, 'Băng keo29 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(171, 29, 0, 'Băng keo29 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(172, 29, 0, 'Băng keo29 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(173, 29, 0, 'Băng keo29 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(174, 29, 0, 'Băng keo29 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(175, 30, 0, 'Băng keo30 1', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(176, 30, 0, 'Băng keo30 2', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(177, 30, 0, 'Băng keo30 3', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(178, 30, 0, 'Băng keo30 4', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(179, 30, 0, 'Băng keo30 5', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025'),
(180, 30, 0, 'Băng keo30 6', 'bangkeo1-1.png', 5000, 10, '4F8* 100Y (90 mét)', 'OPP', '35- 65mic', '10- 288mm', '35- 1000mm', 'Trong suốt, nâu', '>=4N/100mm', '162%', 'Không thấm nước', 'Cuộn', '>=24N/10mm', '12/2025');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_ibfk_1` (`id_group_cate`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_cate`
--
ALTER TABLE `group_cate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_cate` (`id_cate`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `group_cate`
--
ALTER TABLE `group_cate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=273;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`id_group_cate`) REFERENCES `group_cate` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`id_cate`) REFERENCES `category` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
