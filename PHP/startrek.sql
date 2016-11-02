-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2016 at 09:20 AM
-- Server version: 5.7.9
-- PHP Version: 5.6.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `startrek`
--
CREATE DATABASE IF NOT EXISTS `startrek` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `startrek`;

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

DROP TABLE IF EXISTS `library`;
CREATE TABLE IF NOT EXISTS `library` (
  `CardNum` int(5) NOT NULL,
  `Actor` varchar(25) NOT NULL,
  `Role` varchar(25) NOT NULL,
  `Quote` varchar(50) NOT NULL,
  `Position` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`CardNum`, `Actor`, `Role`, `Episode`, `Position`) VALUES
(0, 'Leonard Nimoy', 'Spock', 'live long and prosper', ''),
(1, 'William Shatner', '', '', 'captain'),
(2, 'James Doohan', 'Montgomery Scott', '', 'Chief Engineer'),
(3, 'Nichelle Nicols', 'Uhura', '', 'Lieutenant'),
(4, 'George Takei', 'Hikaru Sulu', '', 'Lieutenant'),
(0, 'Leonard Nimoy', 'Spock', 'live long and prosper', ''),
(1, 'William Shatner', '', '', 'captain'),
(2, 'James Doohan', 'Montgomery Scott', '', 'Chief Engineer'),
(3, 'Nichelle Nicols', 'Uhura', '', 'Lieutenant'),
(4, 'George Takei', 'Hikaru Sulu', '', 'Lieutenant'),
(5, 'Grace Lee Whitney', 'Janice Rand', '', 'Yeuman'),
(6, 'Robert Justman', '', '', 'Associate Producer'),
(0, 'Leonard Nimoy', 'Spock', 'live long and prosper', ''),
(1, 'William Shatner', '', '', 'captain'),
(2, 'James Doohan', 'Montgomery Scott', '', 'Chief Engineer'),
(3, 'Nichelle Nicols', 'Uhura', '', 'Lieutenant'),
(4, 'George Takei', 'Hikaru Sulu', '', 'Lieutenant'),
(5, 'Grace Lee Whitney', 'Janice Rand', '', 'Yeuman'),
(6, 'Robert Justman', '', '', 'Associate Producer'),
(7, 'Barbara Anderson', 'Lenore Karidian', 'the conscience of the king', ''),
(8, 'Dave Bailey', 'Anthony Call', 'the corbomite maneuver', 'Lieutenant'),
(9, 'Lazarus', 'Robert Brown', 'the alternative factor', ''),
(10, 'Lee Kelso', 'Paul Carr', 'where no man has gone before', 'Lieutenant'),
(11, 'Miri', 'Kim Darby', 'miri', ''),
(12, 'Ben Childress', 'Gene Dynarski', 'mudd''s women', ''),
(13, 'Balok', 'Clint Howard', 'the corbomite maneuver', ''),
(14, 'Kevin Riley', 'Bruce Hyde', 'the conscience of the king', 'Lieutenant');
(15, 'William Campbell', 'Trelane', 'the squire of gothos', '');
(16, 'Gary Lockwood', 'Gary Mitchell', 'where no man has gone before', '');
(17, 'Ricardo Montalban', 'Khan Noonien Singh', 'space seed', '');
(18, 'Stewart Moss', 'Joe Tormolen', 'naked time', '');
(19, 'Madlyn Rhue', 'Marla McGivers', 'space seed', '');
(20, 'Malachi Throne', 'Commodore Mendez', 'the menagerie', '');
(21, 'Morgan Woodward', 'Dr. Simon Van Gelder', 'dagger of the mind', '');
(22, 'Meg Wyllie', 'The Keeper', 'the cage', '');
(23, 'Joan Collins', 'Edith Keeler', 'the city on the edge of forever', '');
(24, 'Michael J. Pollard', 'Jahn', 'miri', '');
(25, 'Majel Barrett', 'Number One', 'the cage', '');
(26, 'Sherry Jackson', 'Andrea', 'what are little girls made of?', '');
(27, 'DeForest Kelley', 'Leonard H. McCoy', '', 'Doctor');
(28, 'Walter Koenig', 'Pavel A. Chekov', '', 'Ensign');
(29, 'Dorothy Fontana', '', '', 'Writer');
(30, 'Majel Barrett', 'Christine Chapel', '', 'Nurse');
(31, 'William Shatner', 'James T. Kirk', '', 'Captain');
(32, 'James Doohan', 'Montgomery Scott', '', 'Chief Engineer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `username` varchar(12) NOT NULL,
  `password` varchar(12) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`) VALUES
('meg', 'hiesler'),
('admin', 'password'),
('justin', 'miles'),
('zach', 'auer'),
('bill', 'white');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
