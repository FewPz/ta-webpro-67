-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Sep 02, 2024 at 03:08 AM
-- Server version: 8.0.39
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta-webpro-exercise-9`
--

-- --------------------------------------------------------

--
-- Table structure for table `artists`
--

CREATE TABLE `artists` (
  `artist_id` bigint NOT NULL,
  `artist_name` text NOT NULL,
  `createAt` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `artists`
--

INSERT INTO `artists` (`artist_id`, `artist_name`, `createAt`) VALUES
(1, 'BNK48', '2024-09-02 02:46:37'),
(2, 'CGM48', '2024-09-02 02:46:42'),
(3, 'QRRA', '2024-09-02 02:50:11'),
(4, 'eRAA', '2024-09-02 02:50:20'),
(5, 'INDYCAMP', '2024-09-02 02:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `song_id` bigint NOT NULL,
  `song_name` text NOT NULL,
  `song_release_date` datetime NOT NULL,
  `song_type` enum('SINGLE','COUPLING SINGLE','DIGITAL RELEASE','ALBUM') NOT NULL,
  `artist` bigint NOT NULL,
  `createAt` int NOT NULL,
  `updateAt` int NOT NULL,
  `deleteAt` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`song_id`, `song_name`, `song_release_date`, `song_type`, `artist`, `createAt`, `updateAt`, `deleteAt`) VALUES
(1, 'BORDERLESS', '2024-07-20 00:00:00', 'SINGLE', 1, 1725246094, 1725246094, NULL),
(2, 'Sayonara Crawl', '2024-02-15 00:00:00', 'SINGLE', 1, 1725246094, 1725246094, NULL),
(3, 'Mirai to wa', '2023-09-10 00:00:00', 'COUPLING SINGLE', 1, 1725246094, 1725246094, NULL),
(4, 'Namo Ha Mo Rumor', '2023-05-20 00:00:00', 'DIGITAL RELEASE', 1, 1725246094, 1725246094, NULL),
(5, 'Heavy Rotation', '2023-01-25 00:00:00', 'SINGLE', 1, 1725246094, 1725246094, NULL),
(6, 'Chiang Mai 106', '2024-06-10 00:00:00', 'SINGLE', 2, 1725246166, 1725246166, NULL),
(7, 'Melon Juice', '2024-02-01 00:00:00', 'SINGLE', 2, 1725246166, 1725246166, NULL),
(8, 'Zetsumetsu Kurokami Shoujo', '2023-10-15 00:00:00', 'COUPLING SINGLE', 2, 1725246166, 1725246166, NULL),
(9, 'Pinocchio Gun', '2023-07-25 00:00:00', 'DIGITAL RELEASE', 2, 1725246166, 1725246166, NULL),
(10, 'Seishun no Lap Time', '2023-03-10 00:00:00', 'SINGLE', 2, 1725246166, 1725246166, NULL),
(11, 'Sunshine', '2024-01-10 00:00:00', 'SINGLE', 4, 1725246191, 1725246191, NULL),
(12, 'Dream On', '2024-02-15 00:00:00', 'COUPLING SINGLE', 4, 1725246191, 1725246191, NULL),
(13, 'Rise Up', '2024-03-20 00:00:00', 'ALBUM', 4, 1725246191, 1725246191, NULL),
(14, 'Starlight', '2024-04-25 00:00:00', 'SINGLE', 4, 1725246191, 1725246191, NULL),
(15, 'Begin Again', '2024-05-30 00:00:00', 'COUPLING SINGLE', 4, 1725246191, 1725246191, NULL),
(16, 'Echoes of Tomorrow', '2024-01-15 00:00:00', 'SINGLE', 3, 1725246251, 1725246251, NULL),
(17, 'Whispering Dreams', '2024-02-20 00:00:00', 'DIGITAL RELEASE', 3, 1725246251, 1725246251, NULL),
(18, 'Pathfinder', '2024-03-25 00:00:00', 'SINGLE', 3, 1725246251, 1725246251, NULL),
(19, 'Chasing Shadows', '2024-04-30 00:00:00', 'DIGITAL RELEASE', 3, 1725246251, 1725246251, NULL),
(20, 'Eternal Flame', '2024-05-05 00:00:00', 'SINGLE', 3, 1725246251, 1725246251, NULL),
(21, 'Freedom March', '2024-01-05 00:00:00', 'SINGLE', 5, 1725246302, 1725246302, NULL),
(22, 'Rebel Heart', '2024-02-10 00:00:00', 'COUPLING SINGLE', 5, 1725246302, 1725246302, NULL),
(23, 'Wild Spirit', '2024-03-15 00:00:00', 'SINGLE', 5, 1725246302, 1725246302, NULL),
(24, 'Break the Chains', '2024-04-20 00:00:00', 'ALBUM', 5, 1725246302, 1725246302, NULL),
(25, 'Rise of the Phoenix', '2024-05-25 00:00:00', 'ALBUM', 5, 1725246302, 1725246302, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artists`
--
ALTER TABLE `artists`
  ADD PRIMARY KEY (`artist_id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`song_id`),
  ADD KEY `song_fk_artist` (`artist`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artists`
--
ALTER TABLE `artists`
  MODIFY `artist_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `song_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `songs`
--
ALTER TABLE `songs`
  ADD CONSTRAINT `song_fk_artist` FOREIGN KEY (`artist`) REFERENCES `artists` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
