-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 24, 2024 at 09:29 PM
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
-- Database: `qrconnect`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_mentees`
--

CREATE TABLE `assigned_mentees` (
  `mentee` varchar(255) NOT NULL,
  `fname` text NOT NULL,
  `lname` text NOT NULL,
  `mentor` varchar(255) NOT NULL,
  `remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `assigned_mentees`
--

INSERT INTO `assigned_mentees` (`mentee`, `fname`, `lname`, `mentor`, `remarks`) VALUES
('Aayush', 'Aayush', 'Shah', 'rina', 'Can do better!!!'),
('dhruv', 'Dhruv', 'Shetty', 'rina', 'Can do better!!'),
('pran', 'Pranjal', 'Patil', 'jyoti', 'Can do better!!\r\n'),
('purva', 'Purva', 'Ambre', 'jyoti', 'Can do better!!');

-- --------------------------------------------------------

--
-- Table structure for table `mentees`
--

CREATE TABLE `mentees` (
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `prn_num` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `branch` varchar(255) NOT NULL,
  `batch` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified` tinyint(1) NOT NULL,
  `mobile_no` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `blood_grp` varchar(255) NOT NULL,
  `linkedin_pro` varchar(255) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `father_occupation` varchar(255) NOT NULL,
  `father_mobile_no` varchar(10) NOT NULL,
  `father_email` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `mother_occupation` varchar(255) NOT NULL,
  `mother_mobile_no` varchar(10) NOT NULL,
  `mother_email` varchar(255) NOT NULL,
  `hobbies` varchar(255) NOT NULL,
  `strengths` varchar(255) NOT NULL,
  `weakness` varchar(255) NOT NULL,
  `goals` varchar(255) NOT NULL,
  `ssc` float NOT NULL,
  `hsc` float NOT NULL,
  `cet_jee` float NOT NULL,
  `bio` text NOT NULL,
  `cv_help` tinyint(1) NOT NULL,
  `meetAlumni` tinyint(1) NOT NULL,
  `mockInterview` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentees`
--

INSERT INTO `mentees` (`fname`, `lname`, `prn_num`, `dob`, `username`, `year`, `password`, `branch`, `batch`, `email`, `email_verified`, `mobile_no`, `address`, `blood_grp`, `linkedin_pro`, `profile_pic`, `father_name`, `father_occupation`, `father_mobile_no`, `father_email`, `mother_name`, `mother_occupation`, `mother_mobile_no`, `mother_email`, `hobbies`, `strengths`, `weakness`, `goals`, `ssc`, `hsc`, `cet_jee`, `bio`, `cv_help`, `meetAlumni`, `mockInterview`) VALUES
('Aayush', 'Shah', '121A1098', '19/11/2002', 'Aayush', 'third year', '1234', 'Computer Engineering', 'D2', 'aayushsce121@siesgst.ac.in', 1, '8465975231', 'Nerul, Navi Mumbai', 'O(-ve)', 'https://www.linkedin.com/in/aayush-shah-42370b1b7', 'Aayush_Image.jpg', 'Rajendra Shah', 'postmaster', '7478965274', 'rajendrashah@gmail.com', 'Anjana Shah', 'Housewife', '7768945231', 'anjanashah@gmail.com', 'play cricket and badminton', 'strong focus and determination', 'stage fear', 'securing placement', 90, 88, 89, 'Bio has not been edited by the user', 1, 1, 1),
('Dhruv', 'Shetty', '121A1101', '25/02/2003', 'dhruv', 'Third Year', 'dhruv', 'Computer Engineering', 'D2', 'dhruvnsce121@siesgst.ac.in', 1, '9324212493', 'Sanpada', 'O+ve', 'http://linkedin.com/in/dhruv-shetty-org/', 'dp.jpg', 'Nagesh Shetty', 'Service', '9892562959', 'a@b', 'Saroj Shetty', 'Housewife', '8850283614', 'a@b', 'Cricket', 'Good in Programming', 'Overthinker', 'Getting a Good Job', 92.8, 91.67, 95.019, 'Bio has not been edited by the user', 0, 0, 0),
('Pranjal', 'Patil', '121A1082', '31/07/2003', 'pran', 'Third Year', '123', 'Computer Engineering', 'D1', 'pranjalpce121@siesgst.ac.in', 1, '2147483647', 'CBD Belapur', 'B+ve', 'linkedin.com/in/pranjalp', 'pranjal.jpeg', 'B.S. Patil', 'Service', '2147483647', 'bspatil1970@gmail.com', 'Vasanti B Patil', 'Homemaker', '2147483647', 'pvasanti555@gmail.com', 'Trekking', 'Goal Oriented', 'Overthinking', 'Getting good placement', 96, 80, 88.98, 'Bio has not been edited by the user', 0, 0, 0),
('Purva', 'Ambre', '121A1085', '12/05/2003', 'purva', 'Third Year', 'ymca', 'Computer Engineering', 'D1', 'purvasace121@siesgst.ac.in', 1, '2147483647', 'CBD Belapur', 'B+ve', 'https://www.linkedin.com/in/purva-ambre', 'purva.jpeg', 'Sanjay Ambre', 'Service', '2147483647', 'sanjay.ambre@gmail.com', 'Amarjaya Ambre', 'Teacher', '2147483647', 'amarjayaambre86@gmail.com', 'Dancing', 'Calm in panic situation.', 'Procrastination', 'Going to Germany.', 88.9, 83.4, 93.2, 'Bio has not been edited by the user', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `mentee_grades`
--

CREATE TABLE `mentee_grades` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `sem` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `marks_ia` float NOT NULL,
  `marks_sem` float NOT NULL,
  `total_marks` float NOT NULL,
  `cgpa` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentee_grades`
--

INSERT INTO `mentee_grades` (`id`, `username`, `sem`, `subject`, `marks_ia`, `marks_sem`, `total_marks`, `cgpa`) VALUES
(161, 'dhruv', 3, 'EM-3', 20, 51, 71, 8.57),
(162, 'dhruv', 3, 'DSGT', 19, 54, 73, 8.57),
(163, 'dhruv', 3, 'DS', 15, 54, 69, 8.57),
(164, 'dhruv', 3, 'DLCOA', 20, 59, 79, 8.57),
(165, 'dhruv', 3, 'CG', 18, 49, 67, 8.57),
(166, 'dhruv', 4, 'EM-4', 20, 66, 86, 9.38),
(167, 'dhruv', 4, 'AOA', 20, 75, 95, 9.38),
(168, 'dhruv', 4, 'DBMS', 19, 56, 75, 9.38),
(169, 'dhruv', 4, 'OS', 19, 62, 81, 9.38),
(170, 'dhruv', 4, 'MP', 16, 38, 54, 9.38),
(171, 'dhruv', 5, 'TOC', 17, 48, 65, 8.96),
(172, 'dhruv', 5, 'SE', 20, 55, 75, 8.96),
(173, 'dhruv', 5, 'CN', 19, 58, 77, 8.96),
(174, 'dhruv', 5, 'DWM', 20, 50, 70, 8.96),
(175, 'dhruv', 5, 'PGM', 19, 57, 76, 8.96),
(176, 'pran', 3, 'EM-3', 19, 53, 72, 8.83),
(177, 'pran', 3, 'DSGT', 20, 60, 80, 8.83),
(178, 'pran', 3, 'DS', 14, 54, 68, 8.83),
(179, 'pran', 3, 'DLCOA', 16, 60, 76, 8.83),
(180, 'pran', 3, 'CG', 19, 42, 61, 8.83),
(181, 'pran', 4, 'EM-4', 20, 57, 77, 8.92),
(182, 'pran', 4, 'AOA', 17, 70, 87, 8.92),
(183, 'pran', 4, 'DBMS', 18, 55, 73, 8.92),
(184, 'pran', 4, 'OS', 19, 60, 79, 8.92),
(185, 'pran', 4, 'MP', 19, 39, 58, 8.92),
(186, 'pran', 5, 'TOC', 19, 63, 82, 9.48),
(187, 'pran', 5, 'SE', 20, 51, 71, 9.48),
(188, 'pran', 5, 'CN', 19, 60, 79, 9.48),
(189, 'pran', 5, 'DWM', 17, 68, 85, 9.48),
(190, 'pran', 5, 'PGM', 19, 57, 76, 9.48),
(201, 'dhruv', 1, 'EM-1', 20, 67, 87, 10),
(202, 'dhruv', 1, 'EP-1', 13, 50, 63, 10),
(203, 'dhruv', 1, 'EC-1', 15, 53, 68, 10),
(204, 'dhruv', 1, 'EM', 19, 72, 91, 10),
(205, 'dhruv', 1, 'BEE', 19, 74, 93, 10),
(206, 'dhruv', 2, 'EM-2', 18, 52, 70, 9.1),
(207, 'dhruv', 2, 'EP-2', 10, 44, 54, 9.1),
(208, 'dhruv', 2, 'EC-2', 14, 47, 61, 9.1),
(209, 'dhruv', 2, 'EG', 13, 49, 62, 9.1),
(210, 'dhruv', 2, 'CP', 13, 34, 47, 9.1),
(216, 'pran', 2, 'EM-2', 20, 58, 78, 9.55),
(217, 'pran', 2, 'EC-2', 13, 49, 62, 9.55),
(218, 'pran', 2, 'EP-2', 10, 48, 58, 9.55),
(219, 'pran', 2, 'CP', 13, 50, 63, 9.55),
(220, 'pran', 2, 'EG', 14, 49, 63, 9.55),
(221, 'pran', 1, 'EM-1', 20, 75, 95, 10),
(222, 'pran', 1, 'EC-1', 14, 56, 70, 10),
(223, 'pran', 1, 'EP-1', 15, 52, 67, 10),
(224, 'pran', 1, 'BEE', 20, 69, 89, 10),
(225, 'pran', 1, 'EM', 20, 71, 91, 10),
(226, 'Aayush', 1, 'EM-1', 19, 75, 94, 9.97),
(227, 'Aayush', 1, 'EP-1', 14, 50, 64, 9.97),
(228, 'Aayush', 1, 'EC-1', 14, 48, 62, 9.97),
(229, 'Aayush', 1, 'EM', 20, 67, 87, 9.97),
(230, 'Aayush', 1, 'BEE', 19, 70, 89, 9.97),
(231, 'Aayush', 2, 'EM-2', 16, 50, 66, 8.9),
(232, 'Aayush', 2, 'EP-2', 7, 50, 57, 8.9),
(233, 'Aayush', 2, 'EC-2', 13, 49, 62, 8.9),
(234, 'Aayush', 2, 'EG', 12, 43, 55, 8.9),
(235, 'Aayush', 2, 'CP', 10, 45, 55, 8.9),
(236, 'Aayush', 3, 'EM-3', 15, 36, 51, 8.04),
(237, 'Aayush', 3, 'DSGT', 17, 58, 75, 8.04),
(238, 'Aayush', 3, 'DS', 13, 48, 61, 8.04),
(239, 'Aayush', 3, 'DLCOA', 16, 42, 58, 8.04),
(240, 'Aayush', 3, 'CG', 19, 44, 63, 8.04),
(241, 'Aayush', 4, 'EM-4', 17, 52, 69, 8.04),
(242, 'Aayush', 4, 'AOA', 16, 42, 58, 8.04),
(243, 'Aayush', 4, 'DBMS', 16, 53, 69, 8.04),
(244, 'Aayush', 4, 'OS', 20, 56, 76, 8.04),
(245, 'Aayush', 4, 'MP', 18, 36, 54, 8.04),
(246, 'Aayush', 5, 'TOC', 15, 55, 70, 8.43),
(247, 'Aayush', 5, 'SE', 19, 51, 70, 8.43),
(248, 'Aayush', 5, 'CN', 18, 33, 51, 8.43),
(249, 'Aayush', 5, 'DWM', 16, 44, 60, 8.43),
(250, 'Aayush', 5, 'PGM', 17, 58, 75, 8.43),
(251, 'purva', 1, 'EM-1', 19, 66, 85, 10),
(252, 'purva', 1, 'EP-1', 14, 57, 71, 10),
(253, 'purva', 1, 'EC-1', 14, 53, 67, 10),
(254, 'purva', 1, 'EM', 20, 67, 87, 10),
(255, 'purva', 1, 'BEE', 16, 74, 90, 10),
(256, 'purva', 2, 'EM-2', 17, 33, 50, 9),
(257, 'purva', 2, 'EP-2', 9, 50, 59, 9),
(258, 'purva', 2, 'EC-2', 13, 36, 49, 9),
(259, 'purva', 2, 'EG', 14, 47, 61, 9),
(260, 'purva', 2, 'CP', 13, 51, 64, 9),
(261, 'purva', 3, 'EM-3', 16, 35, 51, 7.3),
(262, 'purva', 3, 'DSGT', 16, 48, 64, 7.3),
(263, 'purva', 3, 'DS', 15, 54, 69, 7.3),
(264, 'purva', 3, 'DLCOA', 13, 25, 38, 7.3),
(265, 'purva', 3, 'CG', 18, 38, 56, 7.3),
(266, 'purva', 4, 'EM-4', 18, 41, 59, 8.27),
(267, 'purva', 4, 'AOA', 18, 62, 80, 8.27),
(268, 'purva', 4, 'DBMS', 14, 51, 65, 8.27),
(269, 'purva', 4, 'OS', 19, 55, 74, 8.27),
(270, 'purva', 4, 'MP', 17, 32, 49, 8.27),
(271, 'purva', 5, 'TOC', 20, 54, 74, 8.83),
(272, 'purva', 5, 'SE', 20, 56, 76, 8.83),
(273, 'purva', 5, 'CN', 18, 49, 67, 8.83),
(274, 'purva', 5, 'DWM', 19, 64, 83, 8.83),
(275, 'purva', 5, 'PGM', 20, 46, 66, 8.83);

-- --------------------------------------------------------

--
-- Table structure for table `mentors`
--

CREATE TABLE `mentors` (
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified` tinyint(1) NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `bio` text NOT NULL,
  `job` varchar(255) NOT NULL,
  `cv_help` tinyint(1) NOT NULL,
  `meetStudents` tinyint(1) NOT NULL,
  `mockInterview` tinyint(1) NOT NULL,
  `workExp` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mentors`
--

INSERT INTO `mentors` (`fname`, `lname`, `username`, `password`, `email`, `email_verified`, `profile_pic`, `bio`, `job`, `cv_help`, `meetStudents`, `mockInterview`, `workExp`) VALUES
('Jyoti', 'Baviskar', 'jyoti', 'jyoti', 'jyotice@gmail.com', 1, 'mentor_pic.png', 'Bio not edited by user', 'Assistant Professor', 0, 0, 0, 0),
('Rina', 'Bora', 'rina', 'rina', 'Rinab@sies.edu.in', 1, 'mentor_pic.png', '', 'Assistant Professor', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `date_uploaded` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resource`
--

INSERT INTO `resource` (`id`, `username`, `title`, `description`, `file`, `date_uploaded`) VALUES
(1, 'dhruv', 'NSS ERP Certificate', 'Work Done in ERP Portal of the college.', 'ERP_Certificate.pdf', '2024-04-24 18:03:26'),
(2, 'dhruv', 'Hackfusion Certificate', 'Participated in HackFusion Hackathon.', 'Hack_Fusion_Certificate.pdf', '2024-04-24 18:04:24'),
(3, 'pran', 'Hackfusion Certificate', 'Participated in Hackfusion Hackathon.', 'hackfusion.pdf', '2024-04-24 18:05:36'),
(4, 'pran', 'Google Cloud Certificate', 'Participated in GCP conducted by GDSC SIEGST.', 'GCP.jpg', '2024-04-24 18:06:31'),
(5, 'Aayush', 'NIT Hackathon', 'Participated in NIT Hackathon.', 'NIT-Hackthon.pdf', '2024-04-24 18:07:58'),
(6, 'Aayush', 'NSS Portal Certificate', 'Built the NSS Portal for the ERP System of the college.', 'NSS_portal_internship.png', '2024-04-24 18:09:11'),
(7, 'purva', 'SIH Certificate', 'Participated in SIH Hackathon.', 'purva_certificate_.pdf', '2024-04-24 18:10:30'),
(8, 'purva', 'Prodigy Certificate', 'Completed 1 month internship in Data Science at Prodigy.', 'purva_in2.pdf', '2024-04-24 18:12:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_mentees`
--
ALTER TABLE `assigned_mentees`
  ADD PRIMARY KEY (`mentee`);

--
-- Indexes for table `mentees`
--
ALTER TABLE `mentees`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `mentee_grades`
--
ALTER TABLE `mentee_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mentors`
--
ALTER TABLE `mentors`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mentee_grades`
--
ALTER TABLE `mentee_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;

--
-- AUTO_INCREMENT for table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
