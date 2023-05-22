/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/SQLTemplate.sql to edit this template
 */
/**
 * Author:  Sehrish tanveer
 */
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE TABLE IF NOT EXISTS `issuebooks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookid` varchar(50) NOT NULL,
  `studentid` int(11) NOT NULL,
  `studentname` varchar(50) NOT NULL,
  `studentcontact` varchar(20) NOT NULL,
  `issueddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

INSERT INTO `issuebooks` (`id`, `bookid`, `studentid`, `studentname`, `studentcontact`, `issueddate`) VALUES
(1, '1', 123, 'Abiha', '8998752347', '2023-03-02 18:43:16'),
(2, '3', 456, 'Fatima', '21863700912', '2023-04-25 18:44:34'),
(3, '8', 789, 'Asma', '9536372783', '2023-05-05 18:46:12');
