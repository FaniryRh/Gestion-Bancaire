-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2017 at 08:31 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gestion_b`
--

-- --------------------------------------------------------

--
-- Table structure for table `audit_compte`
--

CREATE TABLE IF NOT EXISTS `audit_compte` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type_op` varchar(25) NOT NULL,
  `date_miseajour` datetime DEFAULT NULL,
  `numcompte` int(11) DEFAULT NULL,
  `nomclient` varchar(150) DEFAULT NULL,
  `SoldeAncien` double DEFAULT NULL,
  `SoldeNouveau` double DEFAULT NULL,
  `utilisateur` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=99 ;

--
-- Dumping data for table `audit_compte`
--

INSERT INTO `audit_compte` (`id`, `Type_op`, `date_miseajour`, `numcompte`, `nomclient`, `SoldeAncien`, `SoldeNouveau`, `utilisateur`) VALUES
(1, 'Ajout', '2017-05-11 23:43:37', 1, 'Tojo', 0, 500, 'root@localhost'),
(2, 'Modification', '2017-05-11 23:44:32', 1, 'Tojo', 500, 450, 'root@localhost'),
(3, 'Modification', '2017-05-11 23:44:55', 1, 'Tojo', 450, 600, 'root@localhost'),
(4, 'Ajout', '2017-05-11 23:45:11', 2, 'Tj', 0, 5000, 'root@localhost'),
(5, 'Suppression', '2017-05-11 23:45:25', 1, 'Tojo', 600, 0, 'root@localhost'),
(6, 'Ajout', '2017-05-11 23:48:58', 3, 'Tojo', 0, 2000, 'root@localhost'),
(7, 'Ajout', '2017-05-11 23:51:14', 4, 'Faniry', 0, 25000, 'root@localhost'),
(8, 'Modification', '2017-05-11 23:51:51', 4, 'Faniry', 25000, 20000, 'root@localhost'),
(9, 'Modification', '2017-05-11 23:52:23', 4, 'Faniry', 20000, 22500, 'root@localhost'),
(10, 'Modification', '2017-05-11 23:53:25', 4, 'Faniry', 22500, 25000, 'root@localhost'),
(11, 'Suppression', '2017-05-11 23:53:34', 4, 'Faniry', 25000, 0, 'root@localhost'),
(12, 'Ajout', '2017-05-11 23:57:54', 5, 'Faniry', 0, 1500, 'root@localhost'),
(13, 'Ajout', '2017-05-11 23:59:58', 6, 'Ranto', 0, 100, 'root@localhost'),
(14, 'Ajout', '2017-05-12 00:08:56', 7, 'Ranto', 0, 0, 'root@localhost'),
(15, 'Ajout', '2017-05-12 00:14:07', 8, 'Silver', 0, 100, 'root@localhost'),
(16, 'Ajout', '2017-05-12 00:15:50', 9, 'Vola', 0, 20, 'root@localhost'),
(17, 'Ajout', '2017-05-12 00:19:09', 10, 'Jo', 0, 4000, 'root@localhost'),
(18, 'Ajout', '2017-05-12 00:19:49', 11, 'Malala', 0, 1000, 'root@localhost'),
(19, 'Ajout', '2017-05-12 00:21:51', 12, 'Tiavina', 0, 2000, 'root@localhost'),
(20, 'Ajout', '2017-05-12 00:23:01', 13, 'Bessa', 0, 5000, 'root@localhost'),
(21, 'Ajout', '2017-05-12 00:25:00', 14, 'Tiana', 0, 1000, 'root@localhost'),
(22, 'Ajout', '2017-05-12 00:27:01', 15, 'Tay', 0, 1000, 'root@localhost'),
(23, 'Ajout', '2017-05-12 00:30:14', 16, 'jno', 0, 78, 'root@localhost'),
(24, 'Modification', '2017-05-12 00:32:22', 6, 'Ranto', 100, 90, 'root@localhost'),
(25, 'Modification', '2017-05-12 00:32:49', 7, 'Ranto', 0, 100200, 'root@localhost'),
(26, 'Suppression', '2017-05-12 00:32:58', 7, 'Ranto', 100200, 0, 'root@localhost'),
(27, 'Modification', '2017-05-12 00:33:31', 16, 'jno', 78, -399922, 'root@localhost'),
(28, 'Modification', '2017-05-12 00:33:47', 16, 'jno', -399922, 78, 'root@localhost'),
(29, 'Modification', '2017-05-12 00:34:00', 16, 'jno', 78, 100280, 'root@localhost'),
(30, 'Suppression', '2017-05-12 00:34:11', 16, 'jno', 100280, 0, 'root@localhost'),
(31, 'Modification', '2017-05-12 00:34:47', 2, 'Tj', 5000, 4999, 'root@localhost'),
(32, 'Modification', '2017-05-12 00:35:05', 2, 'Tj', 4999, 4998, 'root@localhost'),
(33, 'Modification', '2017-05-12 00:35:20', 2, 'Tj', 4998, 4999, 'root@localhost'),
(34, 'Modification', '2017-05-12 00:35:26', 2, 'Tj', 4999, 5000, 'root@localhost'),
(35, 'Modification', '2017-05-12 00:36:18', 15, 'PIpi', 1000, 1000, 'root@localhost'),
(36, 'Suppression', '2017-05-12 00:36:30', 15, 'PIpi', 1000, 0, 'root@localhost'),
(37, 'Modification', '2017-05-12 03:06:17', 14, 'Tiana', 1000, 987, 'root@localhost'),
(38, 'Suppression', '2017-05-12 03:06:30', 14, 'Tiana', 987, 0, 'root@localhost'),
(39, 'Modification', '2017-05-13 13:30:02', 6, 'Ranto', 90, 80, 'root@localhost'),
(40, 'Modification', '2017-05-13 13:34:08', 13, 'Bessa', 5000, 5020, 'root@localhost'),
(41, 'Modification', '2017-05-13 13:34:27', 13, 'Bessa', 5020, 5000, 'root@localhost'),
(42, 'Modification', '2017-05-13 13:46:16', 2, 'Tj', 5000, 0, 'root@localhost'),
(43, 'Modification', '2017-05-13 13:53:29', 3, 'Tojo', 2000, 3000, 'root@localhost'),
(44, 'Modification', '2017-05-13 13:53:47', 3, 'Tojo', 3000, 3140, 'root@localhost'),
(45, 'Suppression', '2017-05-13 14:38:03', 6, 'Ranto', 80, 0, 'root@localhost'),
(46, 'Modification', '2017-05-13 16:02:16', 2, 'Tj', 0, -500, 'root@localhost'),
(47, 'Modification', '2017-05-13 16:02:16', 2, 'Tj', -500, 500, 'root@localhost'),
(48, 'Modification', '2017-05-13 16:02:33', 2, 'Tj', 500, 486, 'root@localhost'),
(49, 'Modification', '2017-05-13 16:02:33', 2, 'Tj', 486, 514, 'root@localhost'),
(50, 'Modification', '2017-05-13 16:07:19', 2, 'Tj', 514, 114, 'root@localhost'),
(51, 'Modification', '2017-05-13 16:07:19', 2, 'Tj', 114, 914, 'root@localhost'),
(52, 'Modification', '2017-05-13 16:10:37', 2, 'Tj', 914, 913, 'root@localhost'),
(53, 'Modification', '2017-05-13 16:11:02', 2, 'Tj', 913, 910, 'root@localhost'),
(54, 'Modification', '2017-05-13 16:11:02', 2, 'Tj', 910, 916, 'root@localhost'),
(55, 'Modification', '2017-05-13 16:14:25', 2, 'Tj', 916, 910, 'root@localhost'),
(56, 'Modification', '2017-05-13 16:14:25', 2, 'Tj', 910, 922, 'root@localhost'),
(57, 'Modification', '2017-05-13 16:16:00', 2, 'Tj', 922, 900, 'root@localhost'),
(58, 'Modification', '2017-05-13 16:16:00', 2, 'Tj', 900, 944, 'root@localhost'),
(59, 'Modification', '2017-05-13 16:17:34', 2, 'Tj', 944, 988, 'root@localhost'),
(60, 'Modification', '2017-05-13 16:17:34', 2, 'Tj', 988, 900, 'root@localhost'),
(61, 'Modification', '2017-05-13 16:20:23', 2, 'Tj', 900, 800, 'root@localhost'),
(62, 'Modification', '2017-05-13 16:20:23', 2, 'Tj', 800, 900, 'root@localhost'),
(63, 'Modification', '2017-05-13 16:22:31', 2, 'Tj', 900, 800, 'root@localhost'),
(64, 'Modification', '2017-05-13 16:22:31', 2, 'Tj', 800, 900, 'root@localhost'),
(65, 'Modification', '2017-05-13 16:23:18', 2, 'Tj', 900, 880, 'root@localhost'),
(66, 'Modification', '2017-05-13 16:23:18', 2, 'Tj', 880, 900, 'root@localhost'),
(67, 'Modification', '2017-05-13 16:25:23', 2, 'Tj', 900, 800, 'root@localhost'),
(68, 'Modification', '2017-05-13 16:25:23', 3, 'Tojo', 3140, 3240, 'root@localhost'),
(69, 'Modification', '2017-05-13 16:33:46', 5, 'Faniry', 1500, 1000, 'root@localhost'),
(70, 'Modification', '2017-05-13 16:33:46', 2, 'Tj', 800, 1300, 'root@localhost'),
(71, 'Modification', '2017-05-13 17:37:44', 9, 'Vola', 20, 0, 'root@localhost'),
(72, 'Modification', '2017-05-13 17:37:44', 8, 'Silver', 100, 120, 'root@localhost'),
(74, 'Modification', '2017-05-13 17:40:05', 9, 'Vola', 0, 10, 'root@localhost'),
(75, 'Modification', '2017-05-13 17:40:05', 8, 'Silver', 120, 110, 'root@localhost'),
(76, 'Modification', '2017-05-13 17:54:10', 9, 'Vola', 10, 20, 'root@localhost'),
(77, 'Modification', '2017-05-13 17:54:10', 8, 'Silver', 110, 100, 'root@localhost'),
(78, 'Modification', '2017-05-13 18:47:24', 5, 'Faniry', 1000, 1500, 'root@localhost'),
(79, 'Modification', '2017-05-13 18:47:24', 2, 'Tj', 1300, 800, 'root@localhost'),
(80, 'Modification', '2017-05-13 18:48:34', 2, 'Tj', 800, 875, 'root@localhost'),
(81, 'Modification', '2017-05-13 18:48:34', 3, 'Tojo', 3240, 3165, 'root@localhost'),
(82, 'Modification', '2017-05-13 19:04:44', 13, 'Bessa', 5000, 4500, 'root@localhost'),
(83, 'Modification', '2017-05-13 19:04:44', 10, 'Jo', 4000, 4500, 'root@localhost'),
(84, 'Modification', '2017-05-13 19:07:42', 13, 'Bessa', 4500, 4000, 'root@localhost'),
(85, 'Modification', '2017-05-13 19:07:42', 2, 'Tj', 875, 1375, 'root@localhost'),
(86, 'Modification', '2017-05-13 19:19:08', 13, 'Bessa', 4000, 3950, 'root@localhost'),
(87, 'Modification', '2017-05-13 19:19:08', 2, 'Tj', 1375, 1425, 'root@localhost'),
(88, 'Modification', '2017-05-13 19:24:13', 13, 'Bessa', 3950, 3938, 'root@localhost'),
(89, 'Modification', '2017-05-13 19:24:13', 2, 'Tj', 1425, 1437, 'root@localhost'),
(90, 'Modification', '2017-05-13 19:25:50', 13, 'Bessa', 3938, 3926, 'root@localhost'),
(91, 'Modification', '2017-05-13 19:25:50', 11, 'Malala', 1000, 1012, 'root@localhost'),
(92, 'Modification', '2017-05-25 22:10:37', 13, 'Bessa', 3926, 3938, 'root@localhost'),
(93, 'Modification', '2017-05-25 22:10:37', 11, 'Malala', 1012, 1000, 'root@localhost'),
(94, 'Modification', '2017-06-23 20:18:59', 13, 'Bessa', 3938, 3939, 'root@localhost'),
(95, 'Modification', '2017-06-23 21:11:39', 13, 'Bessa', 3939, 3930, 'Admin'),
(96, 'Modification', '2017-06-23 21:14:28', 13, 'Bessa', 3930, 3940, 'Admin'),
(97, 'Modification', '2017-06-23 21:20:10', 13, 'Bessa', 3940, 39465, 'Utilisateur01'),
(98, 'Modification', '2017-06-23 21:21:05', 12, 'Tiavina', 2000, 2001, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `audit_operation`
--

CREATE TABLE IF NOT EXISTS `audit_operation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type_op` varchar(50) NOT NULL,
  `date_op` datetime DEFAULT NULL,
  `numcheque` int(11) DEFAULT NULL,
  `numcompte` varchar(25) DEFAULT NULL,
  `nomclient` varchar(150) DEFAULT NULL,
  `Montant` double DEFAULT NULL,
  `utilisateur` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data for table `audit_operation`
--

INSERT INTO `audit_operation` (`id`, `Type_op`, `date_op`, `numcheque`, `numcompte`, `nomclient`, `Montant`, `utilisateur`) VALUES
(1, 'Retrait', '2017-05-11 23:44:32', 1, '1', 'Tojo', 50, 'root@localhost'),
(2, 'Versement', '2017-05-11 23:44:55', 2, '1', '', 150, 'root@localhost'),
(3, 'Retrait', '2017-05-11 23:51:51', 1, '4', 'Faniry', 5000, 'root@localhost'),
(4, 'Versement', '2017-05-11 23:53:25', 3, '4', 'Faniry', 2500, 'root@localhost'),
(5, 'Retrait', '2017-05-12 00:32:22', 10, '6', 'Ranto', 10, 'root@localhost'),
(6, 'Versement', '2017-05-12 00:32:49', 13, '7', 'Ranto', 100200, 'root@localhost'),
(7, 'Retrait', '2017-05-12 00:33:31', 4, '16', 'jno', 400000, 'root@localhost'),
(8, 'Versement', '2017-05-12 00:34:00', 13, '16', 'jno', 100202, 'root@localhost'),
(9, 'Retrait', '2017-05-12 00:34:47', 4, '2', 'Tj', 1, 'root@localhost'),
(10, 'Retrait', '2017-05-12 00:35:05', 6, '2', 'Tj', 1, 'root@localhost'),
(11, 'Retrait', '2017-05-12 03:06:17', 2, '14', 'Tiana', 13, 'root@localhost'),
(12, 'Retrait', '2017-05-13 13:30:02', 1, '6', 'Ranto', 10, 'root@localhost'),
(13, 'Versement', '2017-05-13 13:34:08', 12, '13', 'Bessa', 20, 'root@localhost'),
(14, 'Retrait', '2017-05-13 13:34:27', 2, '13', 'Bessa', 20, 'root@localhost'),
(15, 'Retrait', '2017-05-13 13:46:16', 115, '2', 'Tj', 5000, 'root@localhost'),
(16, 'Versement', '2017-05-13 13:53:29', 17, '3', 'Tojo', 1000, 'root@localhost'),
(17, 'Versement', '2017-05-13 13:53:47', 121, '3', 'Tojo', 140, 'root@localhost'),
(18, 'Transfert', '2017-05-13 16:02:16', 0, '4', '0', 500, 'root@localhost'),
(19, 'Transfert', '2017-05-13 16:02:33', 0, '4', '0', 14, 'root@localhost'),
(20, 'Transfert', '2017-05-13 16:07:19', 0, '4', '0', 400, 'root@localhost'),
(21, 'Retrait', '2017-05-13 16:10:37', 12, '2', 'Tj', 1, 'root@localhost'),
(22, 'Transfert', '2017-05-13 16:11:02', 0, '4', '0', 3, 'root@localhost'),
(23, 'Transfert', '2017-05-13 16:14:25', 0, '4', '0', 6, 'root@localhost'),
(24, 'Transfert', '2017-05-13 16:16:00', 0, '4', '0', 22, 'root@localhost'),
(25, 'Transfert', '2017-05-13 16:17:34', 0, '4', '0', 44, 'root@localhost'),
(26, 'Transfert', '2017-05-13 16:20:23', 0, '4', '0', 100, 'root@localhost'),
(27, 'Transfert', '2017-05-13 16:22:31', 0, '4', '0', 100, 'root@localhost'),
(28, 'Transfert', '2017-05-13 16:23:18', 0, '4', '0', 20, 'root@localhost'),
(29, 'Transfert', '2017-05-13 16:25:23', 0, '5', '0', 100, 'root@localhost'),
(30, 'Transfert', '2017-05-13 16:33:46', 0, '7', '0', 500, 'root@localhost'),
(31, 'Transfert', '2017-05-13 17:37:44', 0, '17', '0', 20, 'root@localhost'),
(32, 'Transfert', '2017-05-13 19:04:44', 0, '23', '0', 500, 'root@localhost'),
(33, 'Transfert', '2017-05-13 19:07:42', 0, '15', '0', 500, 'root@localhost'),
(34, 'Transfert', '2017-05-13 19:19:08', 0, '15', '0', 50, 'root@localhost'),
(35, 'Transfert', '2017-05-13 19:24:13', 0, '13->2', 'Bessa->Tj', 12, 'root@localhost'),
(36, 'Transfert', '2017-05-13 19:25:50', 0, '13 ---> 11', 'Bessa ---> Malala', 12, 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `audit_retrait`
--

CREATE TABLE IF NOT EXISTS `audit_retrait` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type_op` varchar(25) NOT NULL,
  `date_miseajour` datetime DEFAULT NULL,
  `numretrait` int(11) DEFAULT NULL,
  `numcompte` int(11) DEFAULT NULL,
  `nomclient` varchar(150) DEFAULT NULL,
  `Montant_ancien` double DEFAULT NULL,
  `Montant_nouveau` double DEFAULT NULL,
  `utilisateur` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `audit_retrait`
--

INSERT INTO `audit_retrait` (`id`, `Type_op`, `date_miseajour`, `numretrait`, `numcompte`, `nomclient`, `Montant_ancien`, `Montant_nouveau`, `utilisateur`) VALUES
(1, 'Suppression', '2017-05-11 23:49:30', 1, 1, 'Tojo', 50, 0, 'root@localhost'),
(2, 'Modification', '2017-05-11 23:52:23', 2, 4, 'Faniry', 5000, 2500, 'root@localhost'),
(3, 'Suppression', '2017-05-11 23:53:35', 2, 4, 'Faniry', 2500, 0, 'root@localhost'),
(4, 'Suppression', '2017-05-12 00:33:47', 4, 16, 'jno', 400000, 0, 'root@localhost'),
(5, 'Suppression', '2017-05-12 00:35:20', 6, 2, 'Tj', 1, 0, 'root@localhost'),
(6, 'Suppression', '2017-05-12 00:35:26', 5, 2, 'Tj', 1, 0, 'root@localhost'),
(7, 'Suppression', '2017-05-12 03:06:30', 7, 14, 'Tiana', 13, 0, 'root@localhost'),
(8, 'Suppression', '2017-05-13 14:38:03', 3, 6, 'Ranto', 10, 0, 'root@localhost'),
(9, 'Suppression', '2017-05-13 14:38:03', 4, 6, 'Ranto', 10, 0, 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `audit_transfer`
--

CREATE TABLE IF NOT EXISTS `audit_transfer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type_op` varchar(15) NOT NULL,
  `date_op` datetime NOT NULL,
  `num_transfert` int(11) NOT NULL,
  `num_exp` int(11) NOT NULL,
  `num_dest` int(11) NOT NULL,
  `Montant_ancien` float NOT NULL,
  `Montant_nouveau` float NOT NULL,
  `utilisateur` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `audit_transfer`
--

INSERT INTO `audit_transfer` (`id`, `Type_op`, `date_op`, `num_transfert`, `num_exp`, `num_dest`, `Montant_ancien`, `Montant_nouveau`, `utilisateur`) VALUES
(1, 'Suppression', '2017-05-13 18:47:24', 12, 5, 2, 500, 0, 'root@localhost'),
(2, 'Modification', '2017-05-13 18:48:34', 11, 2, 3, 100, 25, 'root@localhost'),
(3, 'Suppression', '2017-05-25 22:10:37', 18, 13, 11, 12, 0, 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `audit_versement`
--

CREATE TABLE IF NOT EXISTS `audit_versement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Type_op` varchar(25) NOT NULL,
  `date_miseajour` datetime DEFAULT NULL,
  `numversement` int(11) DEFAULT NULL,
  `numcompte` int(11) DEFAULT NULL,
  `nomclient` varchar(150) DEFAULT NULL,
  `Montant_ancien` double DEFAULT NULL,
  `Montant_nouveau` double DEFAULT NULL,
  `utilisateur` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `audit_versement`
--

INSERT INTO `audit_versement` (`id`, `Type_op`, `date_miseajour`, `numversement`, `numcompte`, `nomclient`, `Montant_ancien`, `Montant_nouveau`, `utilisateur`) VALUES
(1, 'Suppression', '2017-05-11 23:45:25', 1, 1, '', 150, 0, 'root@localhost'),
(2, 'Suppression', '2017-05-11 23:53:35', 2, 4, 'Faniry', 2500, 0, 'root@localhost'),
(3, 'Suppression', '2017-05-12 00:32:58', 3, 7, 'Ranto', 100200, 0, 'root@localhost'),
(4, 'Suppression', '2017-05-12 00:34:11', 4, 16, 'jno', 100202, 0, 'root@localhost');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `numcompte` int(11) NOT NULL AUTO_INCREMENT,
  `nomclient` varchar(150) DEFAULT NULL,
  `solde` float DEFAULT NULL,
  `actif` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`numcompte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`numcompte`, `nomclient`, `solde`, `actif`) VALUES
(2, 'Tj', 1437, 1),
(3, 'Tojo', 3165, 1),
(5, 'Faniry', 1500, 1),
(8, 'Silver', 100, 1),
(9, 'Vola', 20, 1),
(10, 'Jo', 4500, 1),
(11, 'Malala', 1000, 1),
(12, 'Tiavina', 2001, 1),
(13, 'Bessa', 39465, 1);

--
-- Triggers `client`
--
DROP TRIGGER IF EXISTS `add_client`;
DELIMITER //
CREATE TRIGGER `add_client` AFTER INSERT ON `client`
 FOR EACH ROW BEGIN

DECLARE login1 varchar(25);
SELECT Login into login1 from cur_user;

INSERT INTO audit_compte(type_op, date_miseajour, numcompte, nomclient, SoldeAncien, SoldeNouveau, utilisateur) VALUES ( 'Ajout', NOW(), NEW.numcompte, NEW.nomclient, '0', NEW.solde, login1);


END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modif_client`;
DELIMITER //
CREATE TRIGGER `modif_client` AFTER UPDATE ON `client`
 FOR EACH ROW BEGIN


DECLARE login1 varchar(25);
SELECT Login into login1 from cur_user;

INSERT INTO audit_compte(type_op, date_miseajour, numcompte, nomclient, SoldeAncien, SoldeNouveau, utilisateur) VALUES ( 'Modification', NOW(), NEW.numcompte, NEW.nomclient, OLD.solde, NEW.solde, login1);


END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `suppr_client`;
DELIMITER //
CREATE TRIGGER `suppr_client` AFTER DELETE ON `client`
 FOR EACH ROW BEGIN

DECLARE login1 varchar(25);
SELECT Login into login1 from cur_user;


INSERT INTO audit_compte(Type_op, date_miseajour, numcompte, nomclient, SoldeAncien, SoldeNouveau, utilisateur) VALUES('Suppression', NOW(), OLD.numcompte, OLD.nomclient, OLD.solde, '0', login1); 





END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `cur_user`
--

CREATE TABLE IF NOT EXISTS `cur_user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Login` varchar(25) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `cur_user`
--

INSERT INTO `cur_user` (`ID`, `Login`) VALUES
(1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `retrait`
--

CREATE TABLE IF NOT EXISTS `retrait` (
  `num_retrait` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `num_cheque` int(11) NOT NULL,
  `num_compte` int(11) NOT NULL,
  `Montant` int(11) NOT NULL,
  PRIMARY KEY (`num_retrait`,`num_compte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `retrait`
--

INSERT INTO `retrait` (`num_retrait`, `nom`, `num_cheque`, `num_compte`, `Montant`) VALUES
(5, 'Bessa', 2, 13, 20),
(6, 'Tj', 115, 2, 5000),
(7, 'Tj', 12, 2, 1);

--
-- Triggers `retrait`
--
DROP TRIGGER IF EXISTS `deleteretrait`;
DELIMITER //
CREATE TRIGGER `deleteretrait` AFTER DELETE ON `retrait`
 FOR EACH ROW BEGIN


DECLARE solde_old float;
DECLARE new_solde float;





SELECT solde INTO solde_old from client WHERE numcompte = OLD.num_compte;

set new_solde= solde_old + OLD.Montant;



UPDATE CLIENT SET solde = solde + OLD.Montant WHERE numcompte= OLD.num_compte;

END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modif_retrait`;
DELIMITER //
CREATE TRIGGER `modif_retrait` AFTER UPDATE ON `retrait`
 FOR EACH ROW BEGIN
DECLARE solde_actuel float;
DECLARE new_solde float;
DECLARE final_solde float;
DECLARE old float;
DECLARE new float;
DECLARE login1 varchar(25);
SELECT Login into login1 from cur_user;
set old = OLD.Montant;
set new = NEW.Montant;

SELECT solde into solde_actuel from client WHERE numcompte= OLD.num_compte;


INSERT INTO audit_retrait(type_op, date_miseajour, numretrait, numcompte, nomclient, Montant_ancien, Montant_nouveau, utilisateur) VALUES ( 'Modification', NOW(), OLD.num_retrait, OLD.num_compte, OLD.nom, OLD.Montant, NEW.Montant, login1);



set new_solde = solde_actuel + old;
set final_solde = new_solde - new;

UPDATE client SET solde = final_solde WHERE numcompte = NEW.num_compte;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `set_solde`;
DELIMITER //
CREATE TRIGGER `set_solde` AFTER INSERT ON `retrait`
 FOR EACH ROW BEGIN
DECLARE login1 varchar(25);
SELECT Login into login1 from cur_user;

UPDATE client SET solde = solde - NEW.montant WHERE numcompte = NEW.num_compte;

INSERT into audit_operation (type_op, date_op, Montant, nomclient, numcheque, numcompte, utilisateur) VALUES ( 'Retrait', NOW(), NEW.Montant, NEW.nom,NEW.num_cheque, NEW.num_compte, login1);

END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `suppr`;
DELIMITER //
CREATE TRIGGER `suppr` BEFORE DELETE ON `retrait`
 FOR EACH ROW BEGIN

DECLARE login1 varchar(25);
SELECT Login into login1 from cur_user;

INSERT INTO audit_retrait(type_op, date_miseajour, numretrait, numcompte, nomclient, Montant_ancien, Montant_nouveau, utilisateur) VALUES ( 'Suppression', NOW(), OLD.num_retrait, OLD.num_compte, OLD.nom, OLD.Montant, '0', login1);


END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transfer`
--

CREATE TABLE IF NOT EXISTS `transfer` (
  `num_transfert` int(11) NOT NULL AUTO_INCREMENT,
  `num_exp` int(11) NOT NULL,
  `nom_exp` varchar(50) NOT NULL,
  `num_dest` int(11) NOT NULL,
  `nom_dest` varchar(50) NOT NULL,
  `Montant` float NOT NULL,
  PRIMARY KEY (`num_transfert`,`num_exp`,`num_dest`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `transfer`
--

INSERT INTO `transfer` (`num_transfert`, `num_exp`, `nom_exp`, `num_dest`, `nom_dest`, `Montant`) VALUES
(1, 2, 'Tj', 2, 'Tj', 500),
(2, 2, 'Tj', 2, 'Tj', 14),
(3, 2, 'Tj', 2, 'Tj', 400),
(4, 2, 'Tj', 2, 'Tj', 3),
(5, 2, 'Tj', 2, 'Tojo', 6),
(6, 2, 'Tj', 2, 'Tojo', 12),
(7, 2, 'Tj', 2, 'Tojo', 44),
(8, 2, 'Tj', 2, 'Tojo', 100),
(9, 2, 'Tj', 2, 'Tojo', 100),
(10, 2, 'Tj', 2, 'Tojo', 20),
(11, 2, 'Tj', 3, 'Tojo', 25),
(14, 13, 'Bessa', 10, 'Jo', 500),
(15, 13, 'Bessa', 2, 'Tj', 500),
(16, 13, 'Bessa', 2, 'Tj', 50),
(17, 13, 'Bessa', 2, 'Tj', 12);

--
-- Triggers `transfer`
--
DROP TRIGGER IF EXISTS `delete`;
DELIMITER //
CREATE TRIGGER `delete` BEFORE DELETE ON `transfer`
 FOR EACH ROW BEGIN

DECLARE Solde_ancien_exp float;
DECLARE Solde_ancien_dest float;
DECLARE Montant float;
DECLARE Solde_nouveau_exp float;
DECLARE Solde_nouveau_dest float;
DECLARE login1 varchar(25);
SELECT Login into login1 from cur_user;

SELECT solde into Solde_ancien_exp FROM client WHERE numcompte= OLD.num_exp;
SELECT solde into Solde_ancien_dest FROM client WHERE numcompte= OLD.num_dest;

set Montant= OLD.Montant;
set Solde_nouveau_exp= Solde_ancien_exp + Montant;
set Solde_nouveau_dest= Solde_ancien_dest - Montant;

UPDATE client set solde = Solde_nouveau_exp WHERE numcompte= OLD.num_exp;
UPDATE client set solde = Solde_nouveau_dest WHERE numcompte= OLD.num_dest;

INSERT INTO audit_transfer(Type_op, date_op, num_transfert, num_exp, num_dest, Montant_ancien,Montant_nouveau, utilisateur) VALUES ( 'Suppression', NOW(), OLD.num_transfert, OLD.num_exp, OLD.num_dest, OLD.Montant,'0', login1);


END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modif_transfert`;
DELIMITER //
CREATE TRIGGER `modif_transfert` AFTER UPDATE ON `transfer`
 FOR EACH ROW BEGIN
DECLARE Montant_ancien float;
DECLARE Montant_nouveau float;
DECLARE Solde_ancien_exp float;
DECLARE Solde_ancien_dest float;
DECLARE Solde_interim_dest float;
DECLARE Solde_interim_exp float;
DECLARE Solde_nouveau_exp float;
DECLARE Solde_nouveau_dest float;
DECLARE login1 varchar(25);
SELECT Login into login1 from cur_user;

SELECT solde INTO solde_ancien_exp FROM client WHERE numcompte= OLD.num_exp;
SELECT solde INTO solde_ancien_dest FROM client WHERE numcompte= OLD.num_dest;

set Montant_ancien= OLD.Montant;
set Montant_nouveau=NEW.Montant;
set Solde_interim_exp= Solde_ancien_exp + OLD.Montant;
set Solde_interim_dest= Solde_ancien_dest - OLD.Montant;
set Solde_nouveau_exp= Solde_interim_exp - NEW.Montant;
set Solde_nouveau_dest= Solde_interim_dest + NEW.Montant;

UPDATE client set solde= Solde_nouveau_exp WHERE numcompte= OLD.num_exp;
UPDATE client set solde=Solde_nouveau_dest WHERE numcompte= OLD.num_dest;

INSERT INTO audit_transfer(Type_op, date_op, num_transfert, num_exp, num_dest, Montant_ancien, Montant_nouveau, utilisateur) VALUES ( 'Modification', NOW(), OLD.num_transfert, OLD.num_exp, OLD.num_dest, OLD.Montant,NEW.Montant, login1);

END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `new_transfert`;
DELIMITER //
CREATE TRIGGER `new_transfert` AFTER INSERT ON `transfer`
 FOR EACH ROW BEGIN

DECLARE montant_add float;
DECLARE solde_final_exp float;
DECLARE solde_final_dest float;
DECLARE solde_initial_exp float;
DECLARE solde_initial_dest float;
DECLARE noms varchar(50);
DECLARE nums varchar(50);

set noms = CONCAT(NEW.nom_exp, ' ---> ' ,NEW.nom_dest);
set nums =  CONCAT(NEW.num_exp, ' ---> ', NEW.num_dest);



SELECT solde into solde_initial_exp from client WHERE numcompte= NEW.num_exp;
set montant_add = NEW.Montant;
set solde_final_exp= solde_initial_exp - montant_add;
UPDATE client set solde = solde_final_exp WHERE numcompte= NEW.num_exp;


SELECT solde into solde_initial_dest from client WHERE numcompte= NEW.num_dest;
set montant_add = NEW.Montant;
set solde_final_dest= solde_initial_dest + montant_add;
UPDATE client set solde = solde_final_dest WHERE numcompte= NEW.num_dest;







INSERT into audit_operation(Type_op, date_op, numcheque, numcompte, nomclient, Montant, utilisateur) VALUES ('Transfert', NOW(),'_', nums, noms, NEW.Montant, USER());

END
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `Login` varchar(30) NOT NULL,
  `Mdp` varchar(30) NOT NULL,
  PRIMARY KEY (`Login`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Login`, `Mdp`) VALUES
('Admin', 'admin'),
('Utilisateur01', 'azerty'),
('Utilisateur02', 'qsdfg');

-- --------------------------------------------------------

--
-- Table structure for table `versement`
--

CREATE TABLE IF NOT EXISTS `versement` (
  `num_versement` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) NOT NULL,
  `num_cheque` int(11) NOT NULL,
  `num_compte` int(11) NOT NULL,
  `Montant` double NOT NULL,
  PRIMARY KEY (`num_versement`,`num_cheque`,`num_compte`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `versement`
--

INSERT INTO `versement` (`num_versement`, `nom`, `num_cheque`, `num_compte`, `Montant`) VALUES
(1, 'Bessa', 12, 13, 20),
(2, 'Tojo', 17, 3, 1000),
(3, 'Tojo', 121, 3, 140);

--
-- Triggers `versement`
--
DROP TRIGGER IF EXISTS `DELETE_VERS`;
DELIMITER //
CREATE TRIGGER `DELETE_VERS` BEFORE DELETE ON `versement`
 FOR EACH ROW BEGIN


DECLARE solde_old float;
DECLARE new_solde float;
DECLARE login1 varchar(25);
SELECT Login into login1 from cur_user;





SELECT solde INTO solde_old from client WHERE numcompte = OLD.num_compte;

set new_solde= solde_old - OLD.Montant;



INSERT INTO audit_versement(type_op, date_miseajour, numversement, numcompte, nomclient, Montant_ancien, Montant_nouveau, utilisateur) VALUES ( 'Suppression', NOW(), OLD.num_versement, OLD.num_compte, OLD.nom, OLD.Montant, '0', login1);


UPDATE CLIENT SET solde = solde - OLD.montant WHERE numcompte= OLD.num_compte;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modif`;
DELIMITER //
CREATE TRIGGER `modif` BEFORE UPDATE ON `versement`
 FOR EACH ROW BEGIN

DECLARE login1 varchar(25);
SELECT Login into login1 from cur_user;

INSERT INTO audit_versement(Type_op, date_miseajour, numversement, numcompte, nomclient, Montant_ancien, Montant_nouveau, utilisateur) VALUES('Modification', NOW(), OLD.num_versement, OLD.num_compte, OLD.nom, OLD.Montant, NEW.Montant, login1);



END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `modif_versement`;
DELIMITER //
CREATE TRIGGER `modif_versement` AFTER UPDATE ON `versement`
 FOR EACH ROW BEGIN
DECLARE solde_actuel float;
DECLARE new_solde float;
DECLARE final_solde float;
DECLARE old float;
DECLARE new float;

set old = OLD.Montant;
set new = NEW.Montant;

SELECT solde into solde_actuel from client WHERE numcompte= OLD.num_compte;

set new_solde = solde_actuel - old;
set final_solde = new_solde + new;

UPDATE client SET solde = final_solde WHERE numcompte = NEW.num_compte;
END
//
DELIMITER ;
DROP TRIGGER IF EXISTS `verse_trig`;
DELIMITER //
CREATE TRIGGER `verse_trig` AFTER INSERT ON `versement`
 FOR EACH ROW BEGIN

DECLARE login1 varchar(25);
SELECT Login into login1 from cur_user;

UPDATE client SET solde = solde + NEW.montant WHERE numcompte = NEW.num_compte;

INSERT into audit_operation (type_op, date_op, Montant, nomclient, numcheque, numcompte, utilisateur) VALUES ( 'Versement', NOW(), NEW.Montant, NEW.nom,NEW.num_cheque, NEW.num_compte, login1);

END
//
DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
