-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2020 at 09:22 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doccpe`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `postingdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id`, `username`, `password`, `firstname`, `lastname`, `status`, `postingdate`) VALUES
(1, 'admin', '1234', 'admin', 'test', 2, '2020-09-05 13:24:19'),
(2, 'admin01', '81dc9bdb52d04dc20036dbd8313ed055', 'admin', 'test02', 2, '2020-09-05 13:40:47');

-- --------------------------------------------------------

--
-- Table structure for table `tb_document`
--

CREATE TABLE `tb_document` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `document_no` varchar(20) NOT NULL,
  `topic` varchar(20) NOT NULL,
  `detail` text NOT NULL,
  `ext` varchar(4) NOT NULL,
  `size` double NOT NULL,
  `file` varchar(15) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `regdata` timestamp NULL DEFAULT current_timestamp(),
  `status` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `firstname`, `lastname`, `regdata`, `status`) VALUES
(1, 'natthaphorn', 'f8c2a767cc7e015136805751ac7ba67b', '', '', '2020-09-04 13:10:32', 0),
(3, 'motita', '1234', '1234', 'มณฑิตา', '2020-09-04 14:59:07', 0),
(7, 'tadsara1', '1234', 'tad', 'sara', '2020-09-04 15:04:32', 0),
(8, 'oadsara', '1234', 'oad', 'sara', '2020-09-04 15:05:39', 0),
(9, 'radsara', '', 'rad', 'sara', '2020-09-04 15:06:23', 0),
(10, 'tus1234', '81dc9bdb52d04dc20036dbd8313ed055', 'tus', 'jai', '2020-09-04 15:10:21', 0),
(11, 'nat456', '81dc9bdb52d04dc20036dbd8313ed055', 'tusnat', 'nattus', '2020-09-04 15:15:37', 0),
(12, 'mon', '81dc9bdb52d04dc20036dbd8313ed055', 'มณ', 'อิน', '2020-09-04 15:17:48', 0),
(13, 'sadzxc', '704d2e1880a6358b4640421cf8bb4780', 'sad', 'xz', '2020-09-04 15:22:08', 0),
(14, 'qwe78', '8620005ac78d8257435d490058c643dd', 'asdzxc', 'sadzxc', '2020-09-04 15:29:46', 0),
(15, 'sadzxcasdzxc', 'f03da6b9a2184b6641764533420dc327', 'sadzxcws', 'sacxzas', '2020-09-04 15:32:18', 0),
(16, 'natthaphornas', 'f5d3f6e61f5337ca19b519f1468201a5', 'sadzcsa', 'wqeqwe', '2020-09-04 15:32:58', 0),
(17, 'qw4e89d', '5ab81a138ba1e6606614b218d41e66b2', '124', 'asdzxc', '2020-09-04 15:36:51', 0),
(18, '9999', 'b59c67bf196a4758191e42f76670ceba', '999', '777', '2020-09-04 15:40:40', 0),
(19, 'lotusnatthaphorn', '81dc9bdb52d04dc20036dbd8313ed055', 'ณัฐ', 'ใจ', '2020-09-04 15:50:20', 0),
(20, 'natthaphorn', '81dc9bdb52d04dc20036dbd8313ed055', 'sadzxc', 'aasda', '2020-09-04 16:27:49', 0),
(21, 'kadsara1', 'bb7946e7d85c81a9e69fee1cea4a087c', 'kad', 'saraaaaaa', '2020-09-04 16:53:53', 0),
(22, 'lotusntp', '81dc9bdb52d04dc20036dbd8313ed055', 'lotus', 'ntp', '2020-09-04 16:54:51', 0),
(23, 'ntplotus', '81dc9bdb52d04dc20036dbd8313ed055', 'ntp', 'lotus', '2020-09-04 17:03:07', 1),
(24, 'admin', '81dc9bdb52d04dc20036dbd8313ed055', 'admin', 'test01', '2020-09-05 13:11:50', 0),
(25, 'admin', '1234', 'admin', 'test01', '2020-09-05 13:22:53', 2),
(26, 'peter', '81dc9bdb52d04dc20036dbd8313ed055', 'sadzxc', 'sadsad', '2020-09-05 13:51:32', 0);

-- --------------------------------------------------------

--
-- Table structure for table `user_db`
--

CREATE TABLE `user_db` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nameuser` varchar(100) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_db`
--

INSERT INTO `user_db` (`id`, `username`, `password`, `nameuser`, `status`) VALUES
(1, 'natthaphorn', 'f8c2a767cc7e015136805751ac7ba67b', 'ณัฐพร ใจเฉลียว', 0),
(2, 'peter', '81dc9bdb52d04dc20036dbd8313ed055', 'ไตรภพ แพรศิริ', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_document`
--
ALTER TABLE `tb_document`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_db`
--
ALTER TABLE `user_db`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_document`
--
ALTER TABLE `tb_document`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_db`
--
ALTER TABLE `user_db`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
