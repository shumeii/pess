-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 09:57 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pess_shumei`
--

-- --------------------------------------------------------

--
-- Table structure for table `dispatch`
--

CREATE TABLE `dispatch` (
  `incidentld` int(11) NOT NULL,
  `patrolcarld` varchar(10) NOT NULL,
  `timeDispatched` datetime NOT NULL,
  `timeArrived` datetime NOT NULL,
  `timeCompleted` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dispatch`
--

INSERT INTO `dispatch` (`incidentld`, `patrolcarld`, `timeDispatched`, `timeArrived`, `timeCompleted`) VALUES
(0, 'QX1111J', '2019-03-07 20:10:42', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, 'QX1234A', '2019-03-11 08:38:32', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, 'QX1342G', '2019-03-08 13:31:25', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, 'QX2288D', '2019-03-07 10:35:44', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, 'QX3456B', '2019-03-07 10:38:48', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, 'QX5555D', '2019-03-07 10:36:46', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, 'QX8723W', '2019-03-07 10:47:58', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(0, 'QX8769P', '2019-03-11 08:38:37', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `incident`
--

CREATE TABLE `incident` (
  `incident` int(11) NOT NULL,
  `callerName` varchar(30) NOT NULL,
  `phoneNumber` varchar(10) NOT NULL,
  `incidentTypeId` varchar(3) NOT NULL,
  `incidentLocation` varchar(50) NOT NULL,
  `incidentDesc` varchar(100) NOT NULL,
  `incidentStatusid` varchar(1) NOT NULL,
  `timeCalled` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incident`
--

INSERT INTO `incident` (`incident`, `callerName`, `phoneNumber`, `incidentTypeId`, `incidentLocation`, `incidentDesc`, `incidentStatusid`, `timeCalled`) VALUES
(0, 'ksdbw', '23456677', '', 'erfgh', '', '1', '2019-02-27 07:50:52'),
(0, 'ksdbw', '23456677', '010', 'erfgh', '', '1', '2019-02-27 07:52:11'),
(0, 'ksdbw', '23456677', '010', 'erfgh', '', '1', '2019-02-27 07:52:43'),
(0, 'ksdbw', '23456677', '010', 'erfgh', '', '1', '2019-02-27 07:54:03'),
(0, 'ksdbw', '23456677', '010', 'erfgh', '', '1', '2019-02-27 07:55:20'),
(0, 'ksdbw', '23456677', '010', 'erfgh', '', '1', '2019-02-27 07:55:22'),
(0, 'ksdbw', '23456677', '010', 'erfgh', 'sdfg', '1', '2019-02-27 07:55:36'),
(0, 'ksdbw', '23456677', '010', 'erfgh', 'asdfgb', '1', '2019-02-27 08:23:40'),
(0, 'ksdbw', '23456677', '010', 'erfghqsdc', 'asdf', '1', '2019-03-05 02:52:53'),
(0, 'ksdbw', '23456677', '010', 'erfgh', 'qsdfg', '1', '2019-03-05 02:52:59'),
(0, 'qweg', 'sdfghj', '010', 'sdfghj', 'sxdcvb', '1', '2019-03-05 02:59:44'),
(0, 'wsdf', 'sdfg', '010', '', 'zxdcfgh', '1', '2019-03-05 03:00:18'),
(0, 'ksdbw', '23456677', '010', 'erfgh', '][pojhgfds', '1', '2019-03-06 06:02:25'),
(0, 'ksdbw', '23456677', '010', 'erfgh', '][pojhgfds', '1', '2019-03-06 06:03:37'),
(0, 'ksdbw', '23456677', '010', 'erfgh', 'sdfgh', '1', '2019-03-07 01:48:52'),
(0, '', '', '', '', '', '2', '2019-03-07 02:21:16'),
(0, '', '', '', '', '', '2', '2019-03-07 02:21:30'),
(0, '', '', '', '', '', '2', '2019-03-07 02:21:56'),
(0, '', '', '', '', '', '2', '2019-03-07 02:22:33'),
(0, '', '', '', '', '', '2', '2019-03-07 02:22:48'),
(0, '', '', '', '', '', '2', '2019-03-07 02:23:33'),
(0, '', '', '', '', '', '2', '2019-03-07 02:27:58'),
(0, '', '', '', '', '', '2', '2019-03-07 02:34:04'),
(0, '', '', '', '', '', '2', '2019-03-07 02:34:14'),
(0, '', '', '', '', '', '2', '2019-03-07 02:35:17'),
(0, '', '', '', '', '', '2', '2019-03-07 02:35:21'),
(0, '', '', '', '', '', '2', '2019-03-07 02:35:50'),
(0, '', '', '', '', '', '2', '2019-03-07 02:36:09'),
(0, '', '', '', '', '', '2', '2019-03-07 02:37:49'),
(0, '', '', '', '', '', '2', '2019-03-07 02:43:16'),
(0, '', '', '', '', '', '2', '2019-03-07 02:47:00'),
(0, '', '', '', '', '', '2', '2019-03-07 02:47:58'),
(0, '', '', '', '', '', '2', '2019-03-07 02:49:59'),
(0, '', '', '', '', '', '2', '2019-03-07 02:59:52'),
(0, '', '', '', '', '', '2', '2019-03-07 12:10:42'),
(0, '', '', '', '', '', '2', '2019-03-07 12:10:50'),
(0, '', '', '', '', '', '2', '2019-03-08 05:31:25'),
(0, '', '', '', '', '', '1', '2019-03-08 05:31:25'),
(0, '', '', '', '', '', '2', '2019-03-08 05:31:36'),
(0, '', '', '', '', '', '2', '2019-03-11 00:38:32'),
(0, '', '', '', '', '', '1', '2019-03-11 00:38:33'),
(0, '', '', '', '', '', '2', '2019-03-11 00:38:37'),
(0, '', '', '', '', '', '1', '2019-03-11 00:38:38'),
(0, '', '', '', '', '', '2', '2019-03-11 00:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `incidenttype`
--

CREATE TABLE `incidenttype` (
  `incidentTypeId` varchar(3) DEFAULT NULL,
  `incidentTypeDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `incidenttype`
--

INSERT INTO `incidenttype` (`incidentTypeId`, `incidentTypeDesc`) VALUES
('010', 'Fire'),
('020', 'Riot'),
('030', 'Burglary'),
('040', 'Domestic Violent'),
('050', 'Fallen Tree'),
('060', 'Traffic Accident'),
('070', 'Loan Shark'),
('999', 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `incident_status`
--

CREATE TABLE `incident_status` (
  `statusId` varchar(1) NOT NULL,
  `statusDesc` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar`
--

CREATE TABLE `patrolcar` (
  `patrolcarId` varchar(10) NOT NULL,
  `patrolcarStatusId` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar`
--

INSERT INTO `patrolcar` (`patrolcarId`, `patrolcarStatusId`) VALUES
('QX1234A', ''),
('QX3456B', 'I'),
('QX1111J', 'I'),
('QX2222K', '2'),
('QX5555D', 'I'),
('QX2288D', 'I'),
('QX8769P', 'I'),
('QX1342G', 'I'),
('QX8723W', 'I'),
('QX8923T', '2');

-- --------------------------------------------------------

--
-- Table structure for table `patrolcar_status`
--

CREATE TABLE `patrolcar_status` (
  `statusId` varchar(1) NOT NULL,
  `statusDesc` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patrolcar_status`
--

INSERT INTO `patrolcar_status` (`statusId`, `statusDesc`) VALUES
('1', 'Dispatched'),
('2', 'Patrol'),
('3', 'Free'),
('4', 'Arrived');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dispatch`
--
ALTER TABLE `dispatch`
  ADD PRIMARY KEY (`incidentld`,`patrolcarld`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
