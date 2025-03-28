-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2025 at 01:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exampledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `full_name`, `email`, `password`, `reg_date`) VALUES
(7, 'adb', 'abd@gmail.com', '$2y$10$pQFe9iU39tV6SddFRAMvQ.tiHla/05WtEhrABYe6kcTR1123RxghW', '2025-03-25 09:47:34'),
(8, 'bbb', 'bbb@gmail.com', '$2y$10$S5x7az7.20LQNoFlKkxTiemmPdzbmo01nroPSCcHVr1ggGukQj9p.', '2025-03-25 10:06:29'),
(9, 'add', 'add@gmail.com', '$2y$10$tSorLuHe2jvVL49psSpbV.UxT/j/lOIO0ipZ2SjlF4KNk1G2U3yvu', '2025-03-25 10:28:05'),
(10, 'Denni Gatuthu Kuhora', 'denniskuhora@gmail.com', '$2y$10$KAGIaftjgJz/elCNDM.A5eTUGk7DMje2SdNgvIpOtuY49zzUL2l4m', '2025-03-28 12:17:18'),
(11, 'gg', 'gg@gmail.com', '$2y$10$FoWxBBQ/tLB.QQ3HW7wr4.iGsD3kfhuSQUUhYYuTIX8ig8pFstrAG', '2025-03-28 12:23:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
