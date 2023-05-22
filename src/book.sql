/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  Sehrish tanveer
 */
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `books` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bookid` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `quantity` int(10) NOT NULL,
  `issued` int(10) default '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `bookid` (`bookid`),
  UNIQUE KEY `bookid_2` (`bookid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;
INSERT INTO `books` (`id`, `bookid`, `name`, `author`, `publisher`, `quantity`, `issued`) VALUES
(1, '1', 'How To Be Happy', 'Eva Woods', 'sphere', 5, 1),
(2, '2', 'It Ends with us', 'Collen Hover', 'atria', 3, 0),
(3, '3', 'It Starts with us', 'Collen Hover', 'atria', 2, 1),
(4, '8', 'Teachings of Rumi', 'Andrew Harvey', 'shambhala', 4, 1); 
(5, '06', 'Salient Patient', 'Alex M', 'Celadon', 10, 0);
