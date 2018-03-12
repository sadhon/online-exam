-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2018 at 04:24 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `harun_oes`
--

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `password` varchar(30) DEFAULT NULL,
  `visible` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `mst_admin`
--

CREATE TABLE IF NOT EXISTS `mst_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `visible` int(11) NOT NULL,
  `loginid` varchar(30) NOT NULL,
  `pass` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `mst_admin`
--

INSERT INTO `mst_admin` (`id`, `email`, `password`, `visible`, `loginid`, `pass`) VALUES
(20, 'harun@gmail.com', '01776967480', 0, '', ''),
(21, 'harun@gmail.com', '1234567890', 0, '', ''),
(22, 'harun@gmail.com', '01776967480', 0, '', ''),
(23, 'harun@gmail.com', '01776967480', 0, '', ''),
(24, 'harun@gmail.com', '01776967480', 0, '', ''),
(25, 'harun@gmail.com', '01776967480', 1, 'harun', '12345'),
(26, 'harunurrashid@gmail.com', '01776967480', 1, '', ''),
(27, 'harun@gmail.com', '01776967480', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `mst_question`
--

CREATE TABLE IF NOT EXISTS `mst_question` (
  `que_id` int(5) NOT NULL AUTO_INCREMENT,
  `test_id` int(5) DEFAULT NULL,
  `que_desc` varchar(150) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(2) DEFAULT NULL,
  PRIMARY KEY (`que_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mst_question`
--

INSERT INTO `mst_question` (`que_id`, `test_id`, `que_desc`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`) VALUES
(1, 3, 'What does PHP stand for?', 'Personal Hypertext Processor', 'PHP: Hypertext Preprocessor', 'Private Home Page', 'Public Home Page', 2),
(2, 3, 'PHP server scripts are surrounded by delimiters, which?', '&lt?php &gt', '&lt?php &gt &lt?&gt', '&lt &amp &gt', '&lt?script&gt', 1),
(3, 3, 'How do you write "Hello World" in PHP', 'echo "Hello World";', '"Hello World";', 'Document.Write("Hello World");', 'printf "Hello World";', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_result`
--

CREATE TABLE IF NOT EXISTS `mst_result` (
  `result_id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(20) DEFAULT NULL,
  `test_id` int(5) DEFAULT NULL,
  `test_date` date DEFAULT NULL,
  `score` int(3) DEFAULT NULL,
  PRIMARY KEY (`result_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `mst_result`
--

INSERT INTO `mst_result` (`result_id`, `login`, `test_id`, `test_date`, `score`) VALUES
(1, 'harun', 1, '0000-00-00', 0),
(2, 'harun', 1, '0000-00-00', 0),
(3, 'harun', 1, '0000-00-00', 0),
(4, 'harun', 2, '0000-00-00', 0),
(5, 'harun', 2, '0000-00-00', 0),
(6, 'admin', 1, '0000-00-00', 0),
(7, '', 1, '0000-00-00', 0),
(8, '', 1, '0000-00-00', 0),
(9, '', 1, '0000-00-00', 0),
(10, '', 1, '0000-00-00', 0),
(11, '', 1, '0000-00-00', 0),
(12, '', 1, '0000-00-00', 0),
(13, '', 3, '0000-00-00', 1),
(14, '', 3, '0000-00-00', 1),
(15, '', 3, '0000-00-00', 0),
(16, '', 3, '0000-00-00', 0),
(17, '', 3, '0000-00-00', 1),
(18, '', 3, '0000-00-00', 0),
(19, '', 3, '0000-00-00', 0),
(20, '', 3, '0000-00-00', 0),
(21, '', 3, '0000-00-00', 0),
(22, '', 3, '0000-00-00', 2),
(23, '', 3, '0000-00-00', 1),
(24, '', 3, '0000-00-00', 2),
(25, '', 3, '0000-00-00', 0),
(26, '', 3, '0000-00-00', 2),
(27, '', 3, '0000-00-00', 2),
(28, '', 3, '0000-00-00', 2),
(29, '', 3, '0000-00-00', 2),
(30, '', 3, '0000-00-00', 2),
(31, '', 3, '0000-00-00', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mst_subject`
--

CREATE TABLE IF NOT EXISTS `mst_subject` (
  `sub_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_name` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`sub_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `mst_subject`
--

INSERT INTO `mst_subject` (`sub_id`, `sub_name`) VALUES
(4, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `mst_test`
--

CREATE TABLE IF NOT EXISTS `mst_test` (
  `test_id` int(5) NOT NULL AUTO_INCREMENT,
  `sub_id` int(5) DEFAULT NULL,
  `test_name` varchar(30) DEFAULT NULL,
  `total_que` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mst_test`
--

INSERT INTO `mst_test` (`test_id`, `sub_id`, `test_name`, `total_que`) VALUES
(3, 4, 'Beginer', '10');

-- --------------------------------------------------------

--
-- Table structure for table `mst_user`
--

CREATE TABLE IF NOT EXISTS `mst_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(30) NOT NULL,
  `login` varchar(30) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `mst_user`
--

INSERT INTO `mst_user` (`id`, `user_id`, `login`, `pass`, `username`, `address`, `city`, `phone`, `email`) VALUES
(1, '', 'harun', '01776967480', 'harun', 'HSTU', 'dinajpur', '01776967480', 'ahmharunurrashid@gmail.com'),
(2, '', 'sabbir', 'sabbir', 'Sabbir Rashid', 'D-3 Hstu', 'Dinajpur', '01776967480', 'sabbir123@gmail.com'),
(3, '', 'admin', 'admin', 'Administration', 'localhost', 'xampp', '01776967480', 'admin@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `mst_useranswer`
--

CREATE TABLE IF NOT EXISTS `mst_useranswer` (
  `UserAnswer_id` int(5) NOT NULL AUTO_INCREMENT,
  `sess_id` varchar(80) DEFAULT NULL,
  `test_id` int(11) DEFAULT NULL,
  `que_des` varchar(200) DEFAULT NULL,
  `ans1` varchar(75) DEFAULT NULL,
  `ans2` varchar(75) DEFAULT NULL,
  `ans3` varchar(75) DEFAULT NULL,
  `ans4` varchar(75) DEFAULT NULL,
  `true_ans` int(11) DEFAULT NULL,
  `your_ans` int(11) DEFAULT NULL,
  PRIMARY KEY (`UserAnswer_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `mst_useranswer`
--

INSERT INTO `mst_useranswer` (`UserAnswer_id`, `sess_id`, `test_id`, `que_des`, `ans1`, `ans2`, `ans3`, `ans4`, `true_ans`, `your_ans`) VALUES
(27, '479dk8jrittj1b3ttb831oht90', 3, 'What does PHP stand for?', 'Personal Hypertext Processor', 'PHP: Hypertext Preprocessor', 'Private Home Page', 'Public Home Page', 2, 1),
(34, 'ssuooh4ivka22b2mfde2ja97f4', 3, 'What does PHP stand for?', 'Personal Hypertext Processor', 'PHP: Hypertext Preprocessor', 'Private Home Page', 'Public Home Page', 2, 2),
(35, 'ssuooh4ivka22b2mfde2ja97f4', 3, 'PHP server scripts are surrounded by delimiters, which?', '&lt?php &gt', '&lt?php &gt &lt?&gt', '&lt &amp &gt', '&lt?script&gt', 1, 1),
(36, 'ssuooh4ivka22b2mfde2ja97f4', 3, 'How do you write "Hello World" in PHP', 'echo "Hello World";', '"Hello World";', 'Document.Write("Hello World");', 'printf "Hello World";', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `mst_userregistration`
--

CREATE TABLE IF NOT EXISTS `mst_userregistration` (
  `registration_id` int(5) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(20) DEFAULT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`registration_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `mst_userregistration`
--

INSERT INTO `mst_userregistration` (`registration_id`, `full_name`, `user_id`, `email`, `mobile`, `password`) VALUES
(4, 'Md Harunur Rashid', 'DeadM', 'deadman@gmail.com', '12345', '12345'),
(5, 'Md Harunur Rashid', 'DeadMan', 'deadman@gmail.com', '1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(50) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `visible` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `full_name`, `user_name`, `email`, `mobile`, `password`, `visible`) VALUES
(1, 'Administration', 'admin', 'admin@gmail.com', '01776967480', 'admin', 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
