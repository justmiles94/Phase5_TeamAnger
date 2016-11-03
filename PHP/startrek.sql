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
(15, 'William Campbell', 'Trelane', 'The Squire of gothos', '');
(16, 'Gary Lockwood', 'Gary Mitchell', 'Where no man has gone before', '');
(17, 'Ricardo Montalban', 'Khan Noonien Singh', 'Space Seed', '');
(18, 'Stewart Moss', 'Joe Tormolen', 'Naked Time', '');
(19, 'Madlyn Rhue', 'Marla McGivers', 'Space Seed', '');
(20, 'Malachi Throne', 'Commodore Mendez', 'The Menagerie', '');
(21, 'Morgan Woodward', 'Dr. Simon Van Gelder', 'Dagger of the Mind', '');
(22, 'Meg Wyllie', 'The Keeper', 'The Cage', '');
(23, 'Joan Collins', 'Edith Keeler', 'The City on the edge of forever', '');
(24, 'Michael J. Pollard', 'Jahn', 'Miri', '');
(25, 'Majel Barrett', 'Number One', 'The Cage', '');
(26, 'Sherry Jackson', 'Andrea', 'What are little girls made of?', '');
(27, 'DeForest Kelley', 'Leonard H. McCoy', '', 'Doctor');
(28, 'Walter Koenig', 'Pavel A. Chekov', '', 'Ensign');
(29, 'Dorothy Fontana', '', '', 'Writer');
(30, 'Majel Barrett', 'Christine Chapel', '', 'Nurse');
(31, 'William Shatner', 'James T. Kirk', '', 'Captain');
(32, 'James Doohan', 'Montgomery Scott', '', 'Chief Engineer');
(33, 'George Takei', 'Hikaru Sulu', '', 'Lieutenant');
(34, 'Nichelle Nichols', 'Uhura', '', 'Lieutenant');
(35, 'Antoinette Bower', 'Sylvia', 'Catspaw', '');
(36, 'Tige Andrews', 'Kras', 'Friday\'s Child', '');
(37, 'Michael Forest', 'Apollo', 'Who Mourns for Adonais?', '');
(38, 'Tasha Martel', 'T\'pring', 'Amok Time', '');
(39, 'William Windom', 'Matthew Decker', 'The Doomsday Machine', 'Commodore');
(40, 'John Fiedler', 'Hengist', 'Wolf in the fold', '');
(41, 'Charles Macaulay', 'Jaris', 'Wolf in the fold', '');
(42, 'Keith Andes', 'Akuta', 'The Apple');
(43, 'Barbara Luna', 'Marlena Moreau', 'Mirror, Mirror', '');
(44, 'Charlie Brill', 'Arne Darvin', 'The Trouble with Tribbles', '');
(45, 'William Campbell', 'Captain Koloth', 'The Trouble with Tribbles', 'Captain');
(46, 'William Schallert', 'Nilz Barris', 'The Trouble with Tribbles', '');
(47, 'William O\'Connell', 'Thelev', 'Jorney To Babel', '');
(48, 'John Wheeler', 'Gav', 'Journey To Babel', '');
(49, 'Nancy Kovack', 'Nona', 'A Private Little War', '');
(50, 'Joseph Ruskin', 'Galt', 'The Gamesters of Triskelion', '');
(51, 'Stephen Brooks', 'Ensign Garrovick', 'Obsession', 'Ensign');
(52, 'Anthony Caruso', 'Bela Oxmyx', 'A Piece of the Action', '');
(53, 'Lee Delano', 'Kalo', 'A Piece of the Action', '');
(54, 'Barbara Bouchet', 'Kelinda', 'By any other name', '');
(55, 'Warren Stevens', 'Rojan', 'By any other name', '');
(56, 'William Marshall', 'Doctor Richard Daystrom', 'The Ultimate Computer', 'Doctor');
(57, 'Roy Jenson', 'Cloud William', 'The Omega Glory', '');
(58, 'Teri Garr', 'Roberta Lincoln', 'Assignment: Earth', '');
(59, 'Leonard Nimoy', 'Mister Spock', '', '');
(60, 'James Doohan', 'Montgomery Scott', '', 'Chief Engineer');
(61, 'DeForest Kelley', 'Leonard H. McCoy', '', 'Doctor');
(62, 'Walter Koenig', 'Pavel Chekov', '', 'Ensign');
(63, 'John Winston', 'Lieutenant Kyle', '', 'Lieutenant');
(64, 'Herb Solow', '', '', 'Executive in charge of production');
(65, 'Walter M. Jefferies', '', '', 'Art Director');
(66, 'Ron Soble', 'Wyatt Earp', 'Spectre of the Gun', '');
(67, 'Tony Young', 'Kryton', 'Elaan of Troyius', '');


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
