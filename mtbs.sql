-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2023 at 08:57 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mtbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `ticketID` bigint(20) NOT NULL,
  `userid` varchar(60) NOT NULL,
  `movieName` varchar(100) NOT NULL,
  `hall` varchar(40) NOT NULL,
  `showTime` varchar(30) NOT NULL,
  `numSeats` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `dob` date NOT NULL,
  `cancel_status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`ticketID`, `userid`, `movieName`, `hall`, `showTime`, `numSeats`, `amount`, `dob`, `cancel_status`) VALUES
(11, 'sumant@gmail.com', 'Fantastic Beasts: The Crimes of Grindelwald', 'Carnival Cinemas', '01:15 pm', 1, 180, '2023-05-27', 1);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `mob` bigint(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `secques` varchar(80) DEFAULT NULL,
  `answer` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`name`, `username`, `mob`, `password`, `secques`, `answer`) VALUES
('Sumant', 'sumant@gmail.com', 9146870328, 'sumant12', 'What is your nick name?', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `moviedb`
--

CREATE TABLE `moviedb` (
  `title` varchar(50) NOT NULL,
  `year` year(4) NOT NULL,
  `director` varchar(50) NOT NULL,
  `trailer_link` varchar(80) NOT NULL,
  `posterLoc` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `moviedb`
--

INSERT INTO `moviedb` (`title`, `year`, `director`, `trailer_link`, `posterLoc`) VALUES
('2.0', '2018', 'Shankar Shanmugham', 'https://www.youtube.com/embed/jrETX2eDhL8', 'movieIMG/2.0'),
('a kid like jake', '2018', 'Silas Howard', 'https://www.youtube.com/embed/yR-5Rme7sQ8', 'movieIMG/a-kid-like-jake-et00057246-15-05-2017-03-21-35.jpg'),
('aquaman', '2018', 'James Wan', 'https://www.youtube.com/embed/WDkg3h8PCVU', 'movieIMG/aquaman-et00052996-02-02-2017-10-15-37'),
('Ekkees Tareekh', '2018', 'Pavan K Chauhan', 'https://www.imdb.com/videoplayer/vi3666131481', 'movieIMG/ekkees-tareeekh-et00085716-05-10-2018-04-51-12'),
('Fantastic Beasts: The Crimes of Grindelwald', '2018', 'David Yates', 'https://www.youtube.com/embed/VAmT1vS-Dco', 'movieIMG/fantastic-beasts-the-crimes-of-grindelwald-et00065499-20-11-2017-06-10-21'),
('Ghoomketu', '2018', 'Pushpendra Nath Misra', 'https://www.youtube.com/embed/ZFGQl7u9wOk', 'movieIMG/ghoomketu-et00076284-23-05-2018-11-09-40'),
('Kedarnath', '2018', 'Abhishek kapoor', 'https://www.youtube.com/embed/uWD2eQOQ3U8', 'movieIMG/kedarnath-et00059532-10-07-2017-04-48-38'),
('Mohalla Assi', '2018', 'Chandraprakash Dwivedi', 'https://www.youtube.com/embed/G4-uLtTZ7NU', 'movieIMG/mohalla-assi-et00015968-27-04-2018-06-23-29'),
('puzzle', '2018', 'Marc Turtletaub', 'https://www.youtube.com/embed/dfvnCmJyBR0', 'movieIMG/puzzle-et00074430-20-04-2018-04-22-01.jpg'),
('Simmba', '2018', 'Rohit Shetty', 'https://www.youtube.com/embed/ol4gbLa74eI', 'movieIMG/simmba-et00066720-07-12-2017-08-09-13'),
('Spider-Man: Into The Spider-Verse', '2018', 'Peter Ramsey', 'https://www.youtube.com/embed/7uuz1M7oJyU', 'movieIMG/spider-man-into-the-spider-verse-et00066988-11-12-2017-11-33-21'),
('The Accidental Prime Minister', '2018', 'Vijay Ratnakar Gutte', 'https://www.youtube.com/embed/QzLsvTWfaME', 'movieIMG/the-accidental-prime-minister-et00058175-07-06-2017-03-18-15'),
('Thugs of Hindostan', '2018', 'Vijay Krishna Acharya', 'https://www.youtube.com/embed/zI-Pux4uaqM', 'movieIMG/thugs-of-hindostan-et00046165-07-09-2016-02-46-50'),
('Zero', '2018', 'Aanand L. Rai', 'https://www.youtube.com/embed/Ru4lEmhHTF4', 'movieIMG/zero-et00068462-01-01-2018-06-04-40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`ticketID`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`),
  ADD UNIQUE KEY `mob` (`mob`);

--
-- Indexes for table `moviedb`
--
ALTER TABLE `moviedb`
  ADD PRIMARY KEY (`title`),
  ADD UNIQUE KEY `trailer_link` (`trailer_link`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `ticketID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
