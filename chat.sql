-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2024 at 01:37 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `dados`
--
-- Error reading structure for table chat.dados: #1932 - Table &#039;chat.dados&#039; doesn&#039;t exist in engine
-- Error reading data for table chat.dados: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `chat`.`dados`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `grupo`
--

CREATE TABLE `grupo` (
  `id` int(11) NOT NULL,
  `msg` varchar(1024) NOT NULL,
  `outgoing_msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grupo`
--

INSERT INTO `grupo` (`id`, `msg`, `outgoing_msg_id`, `incoming_msg_id`) VALUES
(1, 'hellooooo', 1354094959, 64274037),
(2, 'na boa', 473395873, 64274037),
(3, 'jjj', 1354094959, 64274037),
(4, 'kkk;', 473395873, 64274037),
(5, 'ok', 1354094959, 64274037);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(11) NOT NULL,
  `outgoing_msg_id` int(11) NOT NULL,
  `msg` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 473395873, 1354094959, 'bom dia'),
(2, 473395873, 1354094959, 'kmk'),
(3, 1354094959, 473395873, 'na boa'),
(4, 265104907, 473395873, 'boa tarde colega'),
(5, 727235611, 265104907, 'Boa tarde, estamos em aulas'),
(6, 265104907, 727235611, 'boa tarde');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(11) NOT NULL,
  `fname` varchar(40) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  `status` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(2, 1354094959, 'Antonio', 'Junior', 'tonny@gmail.com', '123456', '1716234972Imagem1.jpg', 'Offline'),
(3, 473395873, 'Edson', 'Macuacua', 'edsonmacuacua@gmail.com', '112233', '1716761139Imagem1.jpg', 'Offline'),
(4, 265104907, 'Yur', 'Rangel', 'yur@gmail.com', '000000', '1717059073weirdo.png', 'Online'),
(5, 727235611, 'Tonny', 'Cossa', 'ninoysscossa@gmail.com', '111111', '1717073055sonik.jpg', 'Online');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grupo`
--
ALTER TABLE `grupo`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`) USING BTREE,
  ADD KEY `msg_id` (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grupo`
--
ALTER TABLE `grupo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
