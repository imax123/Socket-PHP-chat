-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 10, 2017 at 11:00 AM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 7.0.16-3+deb.sury.org~trusty+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `chat-box`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `msg_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `messages` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`msg_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=168 ;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `user_id`, `messages`, `created_at`) VALUES
(136, 34, 'Hello Mr.', '2017-01-24 11:34:20'),
(137, 34, 'Hello Mr.', '2017-01-24 11:34:26'),
(138, 35, 'Hello Bhai', '2017-01-24 11:35:00'),
(139, 35, 'Hello ', '2017-01-24 11:36:29'),
(140, 34, 'hi ', '2017-01-24 11:36:55'),
(141, 34, 'dfgsdfgs', '2017-01-24 11:37:04'),
(142, 34, 'dog', '2017-01-24 11:39:48'),
(143, 35, 'cat', '2017-01-24 11:39:54'),
(144, 36, 'hello', '2017-01-24 11:43:46'),
(145, 36, 'hello', '2017-01-24 11:43:47'),
(146, 37, 'hi', '2017-02-17 10:50:17'),
(147, 37, 'hi', '2017-02-17 10:50:18'),
(148, 37, 'hi', '2017-02-17 10:50:21'),
(149, 38, 'helo', '2017-02-18 11:39:02'),
(150, 38, 'helo', '2017-02-18 11:39:03'),
(151, 38, 'helo', '2017-02-18 11:39:04'),
(152, 38, 'helo', '2017-02-18 11:39:04'),
(153, 38, 'helo', '2017-02-18 11:39:04'),
(154, 38, 'helo', '2017-02-18 11:39:04'),
(155, 38, 'helo', '2017-02-18 11:39:05'),
(156, 38, 'helo', '2017-02-18 11:39:05'),
(157, 39, 'hi', '2017-02-22 12:29:53'),
(158, 39, 'hi', '2017-02-22 12:29:54'),
(159, 39, 'hi', '2017-02-22 12:29:55'),
(160, 39, 'hi', '2017-02-22 12:29:57'),
(161, 39, 'hi', '2017-02-22 12:29:57'),
(162, 39, 'hi', '2017-02-22 12:29:57'),
(163, 40, 'asdf', '2017-03-06 08:52:39'),
(164, 40, 'asdfasdf', '2017-03-06 08:52:54'),
(165, 41, 'hi amna', '2017-03-06 08:53:59'),
(166, 40, ' hello saurav', '2017-03-06 08:54:10'),
(167, 40, ' hello saurav', '2017-03-06 08:54:11');

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

CREATE TABLE IF NOT EXISTS `userdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `salary` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `userid`, `salary`) VALUES
(1, 1, 5000),
(2, 1, 8000),
(3, 1, 5000),
(4, 1, 8000),
(5, 2, 5000),
(6, 3, 5000),
(7, 3, 5000),
(8, 3, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `userlist`
--

CREATE TABLE IF NOT EXISTS `userlist` (
  `civil_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `card_type` varchar(100) NOT NULL,
  `count` int(11) NOT NULL,
  `amt` int(11) NOT NULL,
  `avail_bal` int(11) NOT NULL,
  `issue_year` int(11) NOT NULL,
  `issue_month` varchar(50) NOT NULL,
  `issue_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `distribute` varchar(200) NOT NULL,
  PRIMARY KEY (`civil_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `userlist`
--

INSERT INTO `userlist` (`civil_id`, `name`, `card_type`, `count`, `amt`, `avail_bal`, `issue_year`, `issue_month`, `issue_date`, `distribute`) VALUES
(1, 'aman,suresh,mohan', 'POST', 10, 500, 50, 2016, 'March', '2017-02-01 06:46:16', 'Airtel,Idea,Vodafone');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `created_at`) VALUES
(34, 'Aman Kumar', '2017-01-24 11:34:01'),
(35, 'Aman.imax', '2017-01-24 11:34:10'),
(36, 'karnail', '2017-01-24 11:43:41'),
(37, 'amardeep singh  ', '2017-02-17 10:50:12'),
(38, 'aman', '2017-02-18 11:38:54'),
(39, 'imax', '2017-02-22 12:29:49'),
(40, 'Aman', '2017-03-06 08:52:32'),
(41, 'saurav', '2017-03-06 08:53:53');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
