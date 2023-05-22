/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  Sehrish tanveer
 */
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `librarian` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

INSERT INTO `librarian` (`id`, `name`, `password`, `email`, `address`, `city`, `contact`) VALUES
(1, 'sehrish', 'sehrish123', 'sehrish@gmail.com', 'House#123,Street#23', 'Rawalpindi','01234567'),
(2, 'tanveer', 'tanveer123', 'tanveer@gmail.com', 'House#44,Street#12', 'Jaddah', '874527829290'),
(3, 'nida', 'nida123', 'nida@gmail.com', 'House#13,Street#2', 'Islamabad', '084628736682');
(4, 'hashir', 'hashir123', 'hashir@gmail.com', 'House#9,Street#1', 'Islamabad', '084628736682');
