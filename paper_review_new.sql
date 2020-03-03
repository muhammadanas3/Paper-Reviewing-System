-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2019 at 10:06 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `paper_review_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(5) NOT NULL,
  `teacher_id` varchar(8) NOT NULL,
  `subject_id` int(5) NOT NULL,
  `exam` varchar(10) NOT NULL,
  `q_nos` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `teacher_id`, `subject_id`, `exam`, `q_nos`) VALUES
(18, '3945', 1, 'Quiz', 2),
(19, '3946', 2, 'Mid-2', 2),
(22, '3945', 2, 'Final', 3),
(23, '3945', 1, 'Quiz', 2),
(24, '3945', 2, 'Quiz', 2),
(25, '3945', 1, 'Mid-1', 3),
(26, '3945', 2, 'Final', 2);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(5) NOT NULL,
  `announcement_id` int(5) NOT NULL,
  `student_id` varchar(8) NOT NULL,
  `comment` varchar(400) NOT NULL,
  `datetime` datetime NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `announcement_id`, `student_id`, `comment`, `datetime`, `type`) VALUES
(25, 18, 'k163801', 'hi', '0000-00-00 00:00:00', 't'),
(26, 18, 'k163801', 'sdfadcsac', '0000-00-00 00:00:00', 's'),
(27, 18, 'k163801', 'hello g', '0000-00-00 00:00:00', 't'),
(29, 18, 'k163801', 'adads', '0000-00-00 00:00:00', 's'),
(30, 18, 'k163801', 'sir no barha de plz', '0000-00-00 00:00:00', 's'),
(31, 18, 'k163801', 'nai beta', '0000-00-00 00:00:00', 't');

-- --------------------------------------------------------

--
-- Table structure for table `invite`
--

CREATE TABLE `invite` (
  `number` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `invite`
--

INSERT INTO `invite` (`number`) VALUES
('3142401569'),
('923312227740');

-- --------------------------------------------------------

--
-- Table structure for table `obtain_marks`
--

CREATE TABLE `obtain_marks` (
  `tot_id` int(5) NOT NULL,
  `student_id` varchar(8) NOT NULL,
  `obtain_marks` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `obtain_marks`
--

INSERT INTO `obtain_marks` (`tot_id`, `student_id`, `obtain_marks`) VALUES
(1, 'k163801', 5),
(2, 'k163801', 6),
(3, 'k163801', 3),
(4, 'k163801', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pics`
--

CREATE TABLE `pics` (
  `id` int(5) NOT NULL,
  `path` varchar(50) NOT NULL,
  `question_no` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pics`
--

INSERT INTO `pics` (`id`, `path`, `question_no`) VALUES
(3, 'paper_pics/abc.jpg', 1),
(4, 'paper_pics/abc2.jpg', 2),
(10, 'paper_pics/abc3.jpg', 1),
(11, 'paper_pics/abc4.jpg', 2),
(12, 'uploads/1559197449039.jpg', 1),
(13, 'uploads/1559197449676.jpg', 2),
(14, 'uploads/1559197605294.jpg', 1),
(15, 'uploads/1559197605952.jpg', 2),
(16, 'uploads/1559199605246.jpg', 1),
(17, 'uploads/1559199605926.jpg', 2),
(18, 'uploads/1559200007024.jpg', 1),
(19, 'uploads/1559200007711.jpg', 2),
(20, 'uploads/1559200560116.jpg', 1),
(21, 'uploads/1559200560769.jpg', 2),
(22, '../../paper_review1559200935653.jpg', 1),
(23, '../../paper_review1559200936261.jpg', 2),
(24, 'uploads1559200997328.jpg', 1),
(25, 'uploads1559200997933.jpg', 2),
(26, '../1559201071043.jpg', 1),
(27, '../1559201071655.jpg', 2),
(28, '../../1559201092653.jpg', 1),
(29, '../../1559201093261.jpg', 2),
(30, '../../../1559201116029.jpg', 1),
(31, '../../../1559201116670.jpg', 2),
(32, '../../../1559201234557.jpg', 1),
(33, '../../../1559201235210.jpg', 2),
(34, '../../../1559201272885.jpg', 1),
(35, '../../../1559201273512.jpg', 2),
(36, '../../../paper_review1559201308224.jpg', 1),
(37, '../../../paper_review1559201308844.jpg', 2),
(38, '../../../1559201356401.jpg', 1),
(39, '../../../1559201357013.jpg', 2),
(40, '../../1559201383667.jpg', 1),
(41, '../../1559201384284.jpg', 2),
(42, '../../1559201404012.jpg', 1),
(43, '../../1559201404636.jpg', 2),
(44, '../../1559201442996.jpg', 1),
(45, '../../1559201443605.jpg', 2),
(46, '../../1559201484790.jpg', 2),
(47, '../../1559201484155.jpg', 1),
(48, '../../paper_review/1559201504666.jpg', 2),
(49, '../../paper_review/1559201504091.jpg', 1),
(50, '../../paper_review/portal/paper_pics/1559201533233', 2),
(51, '../../paper_review/portal/paper_pics/1559201532625', 1),
(52, '../../paper_review/portal/paper_pics/1559241715360', 1),
(53, '../../paper_review/portal/paper_pics/1559241716055', 2),
(54, '../../paper_review/portal/paper_pics/1559241779441', 3),
(55, '../../paper_review/portal/paper_pics/1559241780189', 1),
(56, '../../paper_review/portal/paper_pics/1559241834154', 2),
(57, '../../paper_review/portal/paper_pics/1559241835657', 1),
(58, '../../paper_review/portal/paper_pics/1559241834917', 3),
(59, '../../paper_review/portal/paper_pics/1559242212422', 2),
(60, '../../paper_review/portal/paper_pics/1559242213800', 1),
(61, '../../paper_review/portal/paper_pics/1559242213129', 3);

-- --------------------------------------------------------

--
-- Table structure for table `reviewer`
--

CREATE TABLE `reviewer` (
  `id` int(5) NOT NULL,
  `announcement_id` int(5) NOT NULL,
  `reviewer_id` varchar(8) NOT NULL,
  `student_id` varchar(8) NOT NULL,
  `type` varchar(3) NOT NULL,
  `status` int(1) NOT NULL,
  `pic_path` varchar(100) NOT NULL,
  `q_no` int(3) NOT NULL,
  `obtain_marks` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviewer`
--

INSERT INTO `reviewer` (`id`, `announcement_id`, `reviewer_id`, `student_id`, `type`, `status`, `pic_path`, `q_no`, `obtain_marks`) VALUES
(27, 18, '3945', 'k163801', 't', 1, '../../paper_review1559200935653.jpg', 1, 4),
(28, 18, '3946', 'k163801', 't', 0, '../../paper_review1559200935653.jpg', 1, 0),
(29, 18, 'k163759', 'k163801', 's', 1, '../../paper_review1559200935653.jpg', 1, 7),
(30, 18, '3945', 'k163801', 't', 1, '../../paper_review1559200936261.jpg', 2, 5),
(31, 18, '3946', 'k163801', 't', 0, '../../paper_review1559200936261.jpg', 2, 0),
(32, 18, 'k163759', 'k163801', 's', 1, '../../paper_review1559200936261.jpg', 2, 7),
(48, 25, '3945', 'k163801', 't', 0, '../../paper_review/portal/paper_pics/1559242212422.jpg', 2, 0),
(49, 25, '3946', 'k163801', 't', 1, '../../paper_review/portal/paper_pics/1559242212422.jpg', 2, 10),
(50, 25, 'k163759', 'k163801', 's', 0, '../../paper_review/portal/paper_pics/1559242212422.jpg', 2, 0),
(51, 25, '3945', 'k163801', 't', 0, '../../paper_review/portal/paper_pics/1559242213800.jpg', 1, 0),
(52, 25, '3946', 'k163801', 't', 1, '../../paper_review/portal/paper_pics/1559242213800.jpg', 1, 8),
(53, 25, 'k163759', 'k163801', 's', 0, '../../paper_review/portal/paper_pics/1559242213800.jpg', 1, 0),
(54, 25, '3945', 'k163801', 't', 0, '../../paper_review/portal/paper_pics/1559242213129.jpg', 3, 0),
(55, 25, '3946', 'k163801', 't', 1, '../../paper_review/portal/paper_pics/1559242213129.jpg', 3, 10),
(56, 25, 'k163759', 'k163801', 's', 0, '../../paper_review/portal/paper_pics/1559242213129.jpg', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reviewer_pics`
--

CREATE TABLE `reviewer_pics` (
  `id` int(5) NOT NULL,
  `pic_id` int(5) NOT NULL,
  `paper_reviewer_id` int(5) NOT NULL,
  `obtain_marks` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` varchar(8) NOT NULL,
  `name` text NOT NULL,
  `semester` int(1) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `tot_review_papers` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `semester`, `email`, `password`, `tot_review_papers`) VALUES
('k163759', 'Haris', 6, 'k163759@nu.edu.pk', 'haris', 3),
('k16380', 'Haris', 0, '0@gmail,com', '12345678', 0),
('k163801', 'Anas', 6, 'k163801@nu.edu.pk', 'anas', 0),
('k163808', 'Saad', 6, 'k163808@nu.edu.pk', 'saad', 0),
('k16381', 'Anas', 1, '1@gmail,com', '12345678', 0),
('k163810', 'saad', 2, '10@gmail,com', '12345678', 0),
('k163811', 'moiz', 3, '11@gmail,com', '12345678', 0),
('k163812', 'Haris', 4, '12@gmail,com', '12345678', 0),
('k163813', 'Anas', 5, '13@gmail,com', '12345678', 0),
('k163814', 'saad', 6, '14@gmail,com', '12345678', 0),
('k163815', 'moiz', 7, '15@gmail,com', '12345678', 0),
('k163816', 'Haris', 0, '16@gmail,com', '12345678', 0),
('k163817', 'Anas', 1, '17@gmail,com', '12345678', 0),
('k163818', 'saad', 2, '18@gmail,com', '12345678', 0),
('k163819', 'moiz', 3, '19@gmail,com', '12345678', 0),
('k16382', 'saad', 2, '2@gmail,com', '12345678', 0),
('k163820', 'Haris', 4, '20@gmail,com', '12345678', 0),
('k163821', 'Anas', 5, '21@gmail,com', '12345678', 0),
('k163822', 'saad', 6, '22@gmail,com', '12345678', 0),
('k163823', 'moiz', 7, '23@gmail,com', '12345678', 0),
('k163824', 'Haris', 0, '24@gmail,com', '12345678', 0),
('k163825', 'Anas', 1, '25@gmail,com', '12345678', 0),
('k163826', 'saad', 2, '26@gmail,com', '12345678', 0),
('k163827', 'moiz', 3, '27@gmail,com', '12345678', 0),
('k163828', 'Haris', 4, '28@gmail,com', '12345678', 0),
('k163829', 'Anas', 5, '29@gmail,com', '12345678', 0),
('k16383', 'moiz', 3, '3@gmail,com', '12345678', 0),
('k163830', 'saad', 6, '30@gmail,com', '12345678', 0),
('k163831', 'moiz', 7, '31@gmail,com', '12345678', 0),
('k163832', 'Haris', 0, '32@gmail,com', '12345678', 0),
('k163833', 'Anas', 1, '33@gmail,com', '12345678', 0),
('k163834', 'saad', 2, '34@gmail,com', '12345678', 0),
('k163835', 'moiz', 3, '35@gmail,com', '12345678', 0),
('k163836', 'Haris', 4, '36@gmail,com', '12345678', 0),
('k163837', 'Anas', 5, '37@gmail,com', '12345678', 0),
('k163838', 'saad', 6, '38@gmail,com', '12345678', 0),
('k163839', 'moiz', 7, '39@gmail,com', '12345678', 0),
('k16384', 'Haris', 4, '4@gmail,com', '12345678', 0),
('k163840', 'Haris', 0, '40@gmail,com', '12345678', 0),
('k163841', 'Anas', 1, '41@gmail,com', '12345678', 0),
('k163842', 'saad', 2, '42@gmail,com', '12345678', 0),
('k163843', 'moiz', 3, '43@gmail,com', '12345678', 0),
('k163844', 'Haris', 4, '44@gmail,com', '12345678', 0),
('k163845', 'Anas', 5, '45@gmail,com', '12345678', 0),
('k163846', 'saad', 6, '46@gmail,com', '12345678', 0),
('k163847', 'moiz', 7, '47@gmail,com', '12345678', 0),
('k163848', 'Haris', 0, '48@gmail,com', '12345678', 0),
('k163849', 'Anas', 1, '49@gmail,com', '12345678', 0),
('k16385', 'Anas', 5, '5@gmail,com', '12345678', 0),
('k163850', 'saad', 2, '50@gmail,com', '12345678', 0),
('k163851', 'moiz', 3, '51@gmail,com', '12345678', 0),
('k163852', 'Haris', 4, '52@gmail,com', '12345678', 0),
('k163853', 'Anas', 5, '53@gmail,com', '12345678', 0),
('k163854', 'saad', 6, '54@gmail,com', '12345678', 0),
('k163855', 'moiz', 7, '55@gmail,com', '12345678', 0),
('k163856', 'Haris', 0, '56@gmail,com', '12345678', 0),
('k163857', 'Anas', 1, '57@gmail,com', '12345678', 0),
('k163858', 'saad', 2, '58@gmail,com', '12345678', 0),
('k163859', 'moiz', 3, '59@gmail,com', '12345678', 0),
('k16386', 'saad', 6, '6@gmail,com', '12345678', 0),
('k163860', 'Haris', 4, '60@gmail,com', '12345678', 0),
('k163861', 'Anas', 5, '61@gmail,com', '12345678', 0),
('k163862', 'saad', 6, '62@gmail,com', '12345678', 0),
('k163863', 'moiz', 7, '63@gmail,com', '12345678', 0),
('k163864', 'Haris', 0, '64@gmail,com', '12345678', 0),
('k163865', 'Anas', 1, '65@gmail,com', '12345678', 0),
('k163866', 'saad', 2, '66@gmail,com', '12345678', 0),
('k163867', 'moiz', 3, '67@gmail,com', '12345678', 0),
('k163868', 'Haris', 4, '68@gmail,com', '12345678', 0),
('k163869', 'Anas', 5, '69@gmail,com', '12345678', 0),
('k16387', 'moiz', 7, '7@gmail,com', '12345678', 0),
('k163870', 'saad', 6, '70@gmail,com', '12345678', 0),
('k163871', 'moiz', 7, '71@gmail,com', '12345678', 0),
('k163872', 'Haris', 0, '72@gmail,com', '12345678', 0),
('k163873', 'Anas', 1, '73@gmail,com', '12345678', 0),
('k163874', 'saad', 2, '74@gmail,com', '12345678', 0),
('k163875', 'moiz', 3, '75@gmail,com', '12345678', 0),
('k163876', 'Haris', 4, '76@gmail,com', '12345678', 0),
('k163877', 'Anas', 5, '77@gmail,com', '12345678', 0),
('k163878', 'saad', 6, '78@gmail,com', '12345678', 0),
('k163879', 'moiz', 7, '79@gmail,com', '12345678', 0),
('k16388', 'Haris', 0, '8@gmail,com', '12345678', 0),
('k163880', 'Haris', 0, '80@gmail,com', '12345678', 0),
('k163881', 'Anas', 1, '81@gmail,com', '12345678', 0),
('k163882', 'saad', 2, '82@gmail,com', '12345678', 0),
('k163883', 'moiz', 3, '83@gmail,com', '12345678', 0),
('k163884', 'Haris', 4, '84@gmail,com', '12345678', 0),
('k163885', 'Anas', 5, '85@gmail,com', '12345678', 0),
('k163886', 'saad', 6, '86@gmail,com', '12345678', 0),
('k163887', 'moiz', 7, '87@gmail,com', '12345678', 0),
('k163888', 'Haris', 0, '88@gmail,com', '12345678', 0),
('k163889', 'Anas', 1, '89@gmail,com', '12345678', 0),
('k16389', 'Anas', 1, '9@gmail,com', '12345678', 0),
('k163890', 'saad', 2, '90@gmail,com', '12345678', 0),
('k163891', 'moiz', 3, '91@gmail,com', '12345678', 0),
('k163892', 'Haris', 4, '92@gmail,com', '12345678', 0),
('k163893', 'Anas', 5, '93@gmail,com', '12345678', 0),
('k163894', 'saad', 6, '94@gmail,com', '12345678', 0),
('k163895', 'moiz', 7, '95@gmail,com', '12345678', 0),
('k163896', 'Haris', 0, '96@gmail,com', '12345678', 0),
('k163897', 'Anas', 1, '97@gmail,com', '12345678', 0),
('k163898', 'saad', 2, '98@gmail,com', '12345678', 0),
('k163899', 'moiz', 3, '99@gmail,com', '12345678', 0);

-- --------------------------------------------------------

--
-- Table structure for table `student_tag`
--

CREATE TABLE `student_tag` (
  `student_id` varchar(8) NOT NULL,
  `tag_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_tag`
--

INSERT INTO `student_tag` (`student_id`, `tag_id`) VALUES
('k163801', 2),
('k163801', 3),
('k163759', 3),
('k163759', 2),
('k16383', 3),
('k16381', 1),
('k16382', 2),
('k16383', 3),
('k16384', 4),
('k16385', 5),
('k16386', 6),
('k16387', 7),
('k16389', 1),
('k163810', 2),
('k163811', 3),
('k163812', 4),
('k163813', 5),
('k163814', 6),
('k163815', 7),
('k163817', 1),
('k163818', 2),
('k163819', 3),
('k163820', 4),
('k163821', 5),
('k163822', 6),
('k163823', 7),
('k163825', 1),
('k163826', 2),
('k163827', 3),
('k163828', 4),
('k163829', 5),
('k163830', 6),
('k163831', 7),
('k163833', 1),
('k163834', 2),
('k163835', 3),
('k163836', 4),
('k163837', 5),
('k163838', 6),
('k163839', 7),
('k163841', 1),
('k163842', 2),
('k163843', 3),
('k163844', 4),
('k163845', 5),
('k163846', 6),
('k163847', 7),
('k163849', 1),
('k163850', 2),
('k163851', 3),
('k163852', 4),
('k163853', 5),
('k163854', 6),
('k163855', 7),
('k163857', 1),
('k163858', 2),
('k163859', 3),
('k163860', 4),
('k163861', 5),
('k163862', 6),
('k163863', 7),
('k163865', 1),
('k163866', 2),
('k163867', 3),
('k163868', 4),
('k163869', 5),
('k163870', 6),
('k163871', 7),
('k163873', 1),
('k163874', 2),
('k163875', 3),
('k163876', 4),
('k163877', 5),
('k163878', 6),
('k163879', 7),
('k163881', 1),
('k163882', 2),
('k163883', 3),
('k163884', 4),
('k163885', 5),
('k163886', 6),
('k163887', 7),
('k163889', 1),
('k163890', 2),
('k163891', 3),
('k163892', 4),
('k163893', 5),
('k163894', 6),
('k163895', 7),
('k163897', 1),
('k163898', 2),
('k163899', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(5) NOT NULL,
  `name` varchar(40) NOT NULL,
  `semester` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `semester`) VALUES
(1, 'Computer Network', 6),
(2, 'Artificial Intelligence', 6),
(3, 'Operating System', 4),
(4, 'Computer Programming', 2),
(5, 'Information retrival', 8),
(6, 'Crypto Coins', 7),
(7, 'ITC', 1),
(8, 'Data structure', 3);

-- --------------------------------------------------------

--
-- Table structure for table `subject_tag`
--

CREATE TABLE `subject_tag` (
  `subject_id` int(5) NOT NULL,
  `tag_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject_tag`
--

INSERT INTO `subject_tag` (`subject_id`, `tag_id`) VALUES
(2, 2),
(1, 3),
(2, 6),
(2, 7),
(4, 6),
(3, 8),
(5, 1),
(6, 4),
(7, 6),
(8, 6);

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` int(5) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `name`) VALUES
(1, 'ir'),
(2, 'ai'),
(3, 'cn'),
(4, 'blockchain'),
(5, 'networking'),
(6, 'OOP'),
(7, 'python'),
(8, 'OS');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` varchar(8) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `tot_review_papers` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `name`, `email`, `password`, `tot_review_papers`) VALUES
('3787', 'hussain', 'ad@gmail.com', 'hussain', 0),
('3945', 'Khalid', 'khalid@nu.edu.pk', 'khalid', 3),
('3946', 'Ali', 'ali@abc.com', 'ali', 3),
('3948', 'yahya', 'a@gmail.com', 'yahya', 0),
('6381', 'Sir Noman', 'Dr1@gmail,com', '12345678', 0),
('63810', 'Sir Nadeem', 'Dr10@gmail,com', '12345678', 0),
('63811', 'Sir Noman', 'Dr11@gmail,com', '12345678', 0),
('63812', 'Miss Nida', 'Dr12@gmail,com', '12345678', 0),
('63813', 'Sir Osman', 'Dr13@gmail,com', '12345678', 0),
('63814', 'Sir Jawad', 'Dr14@gmail,com', '12345678', 0),
('63815', 'Sir Nadeem', 'Dr15@gmail,com', '12345678', 0),
('63816', 'Sir Noman', 'Dr16@gmail,com', '12345678', 0),
('63817', 'Miss Nida', 'Dr17@gmail,com', '12345678', 0),
('63818', 'Sir Osman', 'Dr18@gmail,com', '12345678', 0),
('63819', 'Sir Jawad', 'Dr19@gmail,com', '12345678', 0),
('6382', 'Miss Nida', 'Dr2@gmail,com', '12345678', 0),
('63820', 'Sir Nadeem', 'Dr20@gmail,com', '12345678', 0),
('63821', 'Sir Noman', 'Dr21@gmail,com', '12345678', 0),
('63822', 'Miss Nida', 'Dr22@gmail,com', '12345678', 0),
('63823', 'Sir Osman', 'Dr23@gmail,com', '12345678', 0),
('63824', 'Sir Jawad', 'Dr24@gmail,com', '12345678', 0),
('63825', 'Sir Nadeem', 'Dr25@gmail,com', '12345678', 0),
('63826', 'Sir Noman', 'Dr26@gmail,com', '12345678', 0),
('63827', 'Miss Nida', 'Dr27@gmail,com', '12345678', 0),
('63828', 'Sir Osman', 'Dr28@gmail,com', '12345678', 0),
('63829', 'Sir Jawad', 'Dr29@gmail,com', '12345678', 0),
('6383', 'Sir Osman', 'Dr3@gmail,com', '12345678', 0),
('63830', 'Sir Nadeem', 'Dr30@gmail,com', '12345678', 0),
('63831', 'Sir Noman', 'Dr31@gmail,com', '12345678', 0),
('63832', 'Miss Nida', 'Dr32@gmail,com', '12345678', 0),
('63833', 'Sir Osman', 'Dr33@gmail,com', '12345678', 0),
('63834', 'Sir Jawad', 'Dr34@gmail,com', '12345678', 0),
('63835', 'Sir Nadeem', 'Dr35@gmail,com', '12345678', 0),
('63836', 'Sir Noman', 'Dr36@gmail,com', '12345678', 0),
('63837', 'Miss Nida', 'Dr37@gmail,com', '12345678', 0),
('63838', 'Sir Osman', 'Dr38@gmail,com', '12345678', 0),
('63839', 'Sir Jawad', 'Dr39@gmail,com', '12345678', 0),
('6384', 'Sir Jawad', 'Dr4@gmail,com', '12345678', 0),
('63840', 'Sir Nadeem', 'Dr40@gmail,com', '12345678', 0),
('63841', 'Sir Noman', 'Dr41@gmail,com', '12345678', 0),
('63842', 'Miss Nida', 'Dr42@gmail,com', '12345678', 0),
('63843', 'Sir Osman', 'Dr43@gmail,com', '12345678', 0),
('63844', 'Sir Jawad', 'Dr44@gmail,com', '12345678', 0),
('63845', 'Sir Nadeem', 'Dr45@gmail,com', '12345678', 0),
('63846', 'Sir Noman', 'Dr46@gmail,com', '12345678', 0),
('63847', 'Miss Nida', 'Dr47@gmail,com', '12345678', 0),
('63848', 'Sir Osman', 'Dr48@gmail,com', '12345678', 0),
('63849', 'Sir Jawad', 'Dr49@gmail,com', '12345678', 0),
('6385', 'Sir Nadeem', 'Dr5@gmail,com', '12345678', 0),
('63850', 'Sir Nadeem', 'Dr50@gmail,com', '12345678', 0),
('63851', 'Sir Noman', 'Dr51@gmail,com', '12345678', 0),
('63852', 'Miss Nida', 'Dr52@gmail,com', '12345678', 0),
('63853', 'Sir Osman', 'Dr53@gmail,com', '12345678', 0),
('63854', 'Sir Jawad', 'Dr54@gmail,com', '12345678', 0),
('63855', 'Sir Nadeem', 'Dr55@gmail,com', '12345678', 0),
('63856', 'Sir Noman', 'Dr56@gmail,com', '12345678', 0),
('63857', 'Miss Nida', 'Dr57@gmail,com', '12345678', 0),
('63858', 'Sir Osman', 'Dr58@gmail,com', '12345678', 0),
('63859', 'Sir Jawad', 'Dr59@gmail,com', '12345678', 0),
('6386', 'Sir Noman', 'Dr6@gmail,com', '12345678', 0),
('63860', 'Sir Nadeem', 'Dr60@gmail,com', '12345678', 0),
('63861', 'Sir Noman', 'Dr61@gmail,com', '12345678', 0),
('63862', 'Miss Nida', 'Dr62@gmail,com', '12345678', 0),
('63863', 'Sir Osman', 'Dr63@gmail,com', '12345678', 0),
('63864', 'Sir Jawad', 'Dr64@gmail,com', '12345678', 0),
('63865', 'Sir Nadeem', 'Dr65@gmail,com', '12345678', 0),
('63866', 'Sir Noman', 'Dr66@gmail,com', '12345678', 0),
('63867', 'Miss Nida', 'Dr67@gmail,com', '12345678', 0),
('63868', 'Sir Osman', 'Dr68@gmail,com', '12345678', 0),
('63869', 'Sir Jawad', 'Dr69@gmail,com', '12345678', 0),
('6387', 'Miss Nida', 'Dr7@gmail,com', '12345678', 0),
('63870', 'Sir Nadeem', 'Dr70@gmail,com', '12345678', 0),
('63871', 'Sir Noman', 'Dr71@gmail,com', '12345678', 0),
('63872', 'Miss Nida', 'Dr72@gmail,com', '12345678', 0),
('63873', 'Sir Osman', 'Dr73@gmail,com', '12345678', 0),
('63874', 'Sir Jawad', 'Dr74@gmail,com', '12345678', 0),
('63875', 'Sir Nadeem', 'Dr75@gmail,com', '12345678', 0),
('63876', 'Sir Noman', 'Dr76@gmail,com', '12345678', 0),
('63877', 'Miss Nida', 'Dr77@gmail,com', '12345678', 0),
('63878', 'Sir Osman', 'Dr78@gmail,com', '12345678', 0),
('63879', 'Sir Jawad', 'Dr79@gmail,com', '12345678', 0),
('6388', 'Sir Osman', 'Dr8@gmail,com', '12345678', 0),
('63880', 'Sir Nadeem', 'Dr80@gmail,com', '12345678', 0),
('63881', 'Sir Noman', 'Dr81@gmail,com', '12345678', 0),
('63882', 'Miss Nida', 'Dr82@gmail,com', '12345678', 0),
('63883', 'Sir Osman', 'Dr83@gmail,com', '12345678', 0),
('63884', 'Sir Jawad', 'Dr84@gmail,com', '12345678', 0),
('63885', 'Sir Nadeem', 'Dr85@gmail,com', '12345678', 0),
('63886', 'Sir Noman', 'Dr86@gmail,com', '12345678', 0),
('63887', 'Miss Nida', 'Dr87@gmail,com', '12345678', 0),
('63888', 'Sir Osman', 'Dr88@gmail,com', '12345678', 0),
('63889', 'Sir Jawad', 'Dr89@gmail,com', '12345678', 0),
('6389', 'Sir Jawad', 'Dr9@gmail,com', '12345678', 0),
('63890', 'Sir Nadeem', 'Dr90@gmail,com', '12345678', 0),
('63891', 'Sir Noman', 'Dr91@gmail,com', '12345678', 0),
('63892', 'Miss Nida', 'Dr92@gmail,com', '12345678', 0),
('63893', 'Sir Osman', 'Dr93@gmail,com', '12345678', 0),
('63894', 'Sir Jawad', 'Dr94@gmail,com', '12345678', 0),
('63895', 'Sir Nadeem', 'Dr95@gmail,com', '12345678', 0),
('63896', 'Sir Noman', 'Dr96@gmail,com', '12345678', 0),
('63897', 'Miss Nida', 'Dr97@gmail,com', '12345678', 0),
('63898', 'Sir Osman', 'Dr98@gmail,com', '12345678', 0),
('63899', 'Sir Jawad', 'Dr99@gmail,com', '12345678', 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_tag`
--

CREATE TABLE `teacher_tag` (
  `teacher_tag` varchar(8) NOT NULL,
  `tag_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_tag`
--

INSERT INTO `teacher_tag` (`teacher_tag`, `tag_id`) VALUES
('3945', 2),
('3945', 3),
('3946', 3),
('3946', 2),
('6381', 1),
('6382', 2),
('6383', 3),
('6384', 4),
('6385', 5),
('6386', 6),
('6387', 7),
('6388', 8),
('63810', 1),
('63811', 2),
('63812', 3),
('63813', 4),
('63814', 5),
('63815', 6),
('63816', 7),
('63817', 8),
('63819', 1),
('63820', 2),
('63821', 3),
('63822', 4),
('63823', 5),
('63824', 6),
('63825', 7),
('63826', 8),
('63828', 1),
('63829', 2),
('63830', 3),
('63831', 4),
('63832', 5),
('63833', 6),
('63834', 7),
('63835', 8),
('63837', 1),
('63838', 2),
('63839', 3),
('63840', 4),
('63841', 5),
('63842', 6),
('63843', 7),
('63844', 8),
('63846', 1),
('63847', 2),
('63848', 3),
('63849', 4),
('63850', 5),
('63851', 6),
('63852', 7),
('63853', 8),
('63855', 1),
('63856', 2),
('63857', 3),
('63858', 4),
('63859', 5),
('63860', 6),
('63861', 7),
('63862', 8),
('63864', 1),
('63865', 2),
('63866', 3),
('63867', 4),
('63868', 5),
('63869', 6),
('63870', 7),
('63871', 8),
('63873', 1),
('63874', 2),
('63875', 3),
('63876', 4),
('63877', 5),
('63878', 6),
('63879', 7),
('63880', 8),
('63882', 1),
('63883', 2),
('63884', 3),
('63885', 4),
('63886', 5),
('63887', 6),
('63888', 7),
('63889', 8),
('63891', 1),
('63892', 2),
('63893', 3),
('63894', 4),
('63895', 5),
('63896', 6),
('63897', 7),
('63898', 8);

-- --------------------------------------------------------

--
-- Table structure for table `total_marks`
--

CREATE TABLE `total_marks` (
  `id` int(5) NOT NULL,
  `announcement_id` int(5) NOT NULL,
  `q_no` int(3) NOT NULL,
  `total_marks` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `total_marks`
--

INSERT INTO `total_marks` (`id`, `announcement_id`, `q_no`, `total_marks`) VALUES
(1, 18, 1, 10),
(2, 18, 2, 10),
(3, 19, 1, 7),
(4, 19, 2, 4),
(5, 22, 1, 10),
(6, 22, 2, 10),
(7, 22, 3, 5),
(8, 23, 1, 3),
(9, 23, 2, 3),
(10, 24, 1, 10),
(11, 24, 2, 5),
(12, 25, 1, 10),
(13, 25, 2, 15),
(14, 25, 3, 15),
(15, 26, 1, 10),
(16, 26, 2, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `subject_id` (`subject_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_ibfk_1` (`announcement_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `invite`
--
ALTER TABLE `invite`
  ADD UNIQUE KEY `number` (`number`);

--
-- Indexes for table `obtain_marks`
--
ALTER TABLE `obtain_marks`
  ADD KEY `student_id` (`student_id`),
  ADD KEY `tot_id` (`tot_id`);

--
-- Indexes for table `pics`
--
ALTER TABLE `pics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviewer`
--
ALTER TABLE `reviewer`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcement_id` (`announcement_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `reviewer_pics`
--
ALTER TABLE `reviewer_pics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `paper_reviewer_id` (`paper_reviewer_id`),
  ADD KEY `reviewer_pics_ibfk_2` (`pic_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `student_tag`
--
ALTER TABLE `student_tag`
  ADD KEY `student_id` (`student_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `subject_tag`
--
ALTER TABLE `subject_tag`
  ADD KEY `subject_id` (`subject_id`),
  ADD KEY `tag_id` (`tag_id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `teacher_tag`
--
ALTER TABLE `teacher_tag`
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `teacher_tag` (`teacher_tag`);

--
-- Indexes for table `total_marks`
--
ALTER TABLE `total_marks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `announcement_id` (`announcement_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `pics`
--
ALTER TABLE `pics`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `reviewer`
--
ALTER TABLE `reviewer`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `reviewer_pics`
--
ALTER TABLE `reviewer_pics`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `total_marks`
--
ALTER TABLE `total_marks`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `announcement`
--
ALTER TABLE `announcement`
  ADD CONSTRAINT `announcement_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `announcement_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_ibfk_1` FOREIGN KEY (`announcement_id`) REFERENCES `announcement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `comments_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `obtain_marks`
--
ALTER TABLE `obtain_marks`
  ADD CONSTRAINT `obtain_marks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `obtain_marks_ibfk_2` FOREIGN KEY (`tot_id`) REFERENCES `total_marks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviewer`
--
ALTER TABLE `reviewer`
  ADD CONSTRAINT `reviewer_ibfk_1` FOREIGN KEY (`announcement_id`) REFERENCES `announcement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewer_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reviewer_pics`
--
ALTER TABLE `reviewer_pics`
  ADD CONSTRAINT `reviewer_pics_ibfk_1` FOREIGN KEY (`paper_reviewer_id`) REFERENCES `reviewer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reviewer_pics_ibfk_2` FOREIGN KEY (`pic_id`) REFERENCES `pics` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_tag`
--
ALTER TABLE `student_tag`
  ADD CONSTRAINT `student_tag_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `student_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subject_tag`
--
ALTER TABLE `subject_tag`
  ADD CONSTRAINT `subject_tag_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_tag_ibfk_2` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_tag`
--
ALTER TABLE `teacher_tag`
  ADD CONSTRAINT `teacher_tag_ibfk_1` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_tag_ibfk_2` FOREIGN KEY (`teacher_tag`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `total_marks`
--
ALTER TABLE `total_marks`
  ADD CONSTRAINT `total_marks_ibfk_1` FOREIGN KEY (`announcement_id`) REFERENCES `announcement` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
