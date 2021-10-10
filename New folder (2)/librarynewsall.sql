-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 22, 2021 at 08:37 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `librarynewsall`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Username` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `Sec_Q` varchar(30) NOT NULL,
  `Answer` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Name`, `Password`, `Sec_Q`, `Answer`) VALUES
('zubaer', 'zubaer', '123', 'What is your child nick name?', 'dipu');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `Book_ID` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Edition` varchar(30) NOT NULL,
  `Publisher` varchar(30) NOT NULL,
  `Price` varchar(30) NOT NULL,
  `Pages` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`Book_ID`, `Name`, `Edition`, `Publisher`, `Price`, `Pages`) VALUES
('48', 'HTML', '1', 'IDB', '100', '200');

-- --------------------------------------------------------

--
-- Table structure for table `issue`
--

CREATE TABLE `issue` (
  `Book_ID` varchar(30) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Edition` varchar(30) NOT NULL,
  `Publisher` varchar(30) NOT NULL,
  `Price` varchar(30) NOT NULL,
  `Pages` varchar(30) NOT NULL,
  `Student_ID` varchar(30) NOT NULL,
  `S_Name` varchar(30) NOT NULL,
  `S_Father` varchar(30) NOT NULL,
  `S_Phone` varchar(30) NOT NULL,
  `S_Round` varchar(30) NOT NULL,
  `S_Group` varchar(30) NOT NULL,
  `Dateofissue` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `issue`
--

INSERT INTO `issue` (`Book_ID`, `Name`, `Edition`, `Publisher`, `Price`, `Pages`, `Student_ID`, `S_Name`, `S_Father`, `S_Phone`, `S_Round`, `S_Group`, `Dateofissue`) VALUES
('48', 'HTML', '1', 'IDB', '100', '200', '282', 'shakib', 'shakib hasan', 'shakib khatun', '38', 'GAVE', 'May 22, 2021'),
('48', 'HTML', '1', 'IDB', '100', '200', '282', 'shakib', 'shakib hasan', 'shakib khatun', '38', 'GAVE', 'May 22, 2021'),
('48', 'HTML', '1', 'IDB', '100', '200', '111', 'sana', 'sanaa', '123456', '41', 'JAVA', 'May 22, 2021');

-- --------------------------------------------------------

--
-- Table structure for table `returnn`
--

CREATE TABLE `returnn` (
  `student_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `p_number` varchar(30) NOT NULL,
  `round` varchar(30) NOT NULL,
  `groupp` varchar(30) NOT NULL,
  `book_id` varchar(30) NOT NULL,
  `bname` varchar(30) NOT NULL,
  `bedition` varchar(30) NOT NULL,
  `bpublisher` varchar(30) NOT NULL,
  `bprice` varchar(30) NOT NULL,
  `bpages` varchar(30) NOT NULL,
  `bdateof_issue` varchar(30) NOT NULL,
  `return_date` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `returnn`
--

INSERT INTO `returnn` (`student_id`, `name`, `f_name`, `p_number`, `round`, `groupp`, `book_id`, `bname`, `bedition`, `bpublisher`, `bprice`, `bpages`, `bdateof_issue`, `return_date`) VALUES
('111', 'sana', 'sanaa', '123456', '41', 'JAVA', '48', 'HTML', '1', 'IDB', '100', '200', 'May 22, 2021', 'May 23, 2021'),
('282', 'shakib', 'shakib hasan', 'shakib khatun', '38', 'GAVE', '48', 'HTML', '1', 'IDB', '100', '200', 'May 22, 2021', '');

-- --------------------------------------------------------

--
-- Table structure for table `stu`
--

CREATE TABLE `stu` (
  `stu_id` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `f_name` varchar(30) NOT NULL,
  `p_number` varchar(30) NOT NULL,
  `round` varchar(30) NOT NULL,
  `groupp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stu`
--

INSERT INTO `stu` (`stu_id`, `name`, `f_name`, `p_number`, `round`, `groupp`) VALUES
('111', 'sana', 'sanaa', '123456', '41', 'JAVA'),
('282', 'shakib', 'shakib hasan', 'shakib khatun', '38', 'GAVE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`Book_ID`);

--
-- Indexes for table `returnn`
--
ALTER TABLE `returnn`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `stu`
--
ALTER TABLE `stu`
  ADD PRIMARY KEY (`stu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
