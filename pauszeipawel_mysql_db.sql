-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Host: pauszeipawel.mysql.db
-- Generation Time: Nov 27, 2022 at 07:08 PM
-- Server version: 5.7.40-log
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pauszeipawel`
--
CREATE DATABASE IF NOT EXISTS `pauszeipawel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `pauszeipawel`;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `username` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`username`, `url`) VALUES
('test1', 'users/test1//firefox_GdMK0SXWkF.png'),
('test1', 'users/test1/katalog1/firefox_gEr4blNmJ5.png'),
('test1', 'users/test1/katalog1/msedge_QCM98TApBQ.png'),
('test1', 'users/test1/katalog1/cute_cheetah.mp4'),
('test1', 'users/test1/Dokumentacja TM G1 Z2 Pauszek.pdf'),
('test1', 'users/test1/grad1.docx'),
('test1', 'users/test1/io.docx'),
('test1', 'users/test1/zpo5.pdf'),
('test1', 'users/test1/domek.jpg'),
('test1', 'users/test1/muza/oxy is dead.mp3'),
('test1', 'users/test1/muza/oxy is dead.mp3'),
('test1', 'users/test1/muza/4444phil x midnightcoupes - bubbles.mp3'),
('test1', 'users/test1/muza/techno1.mp3'),
('test1', 'users/test1/muza/techno2.mp3'),
('test1', 'users/test1/muza/techno2.mp3'),
('test1', 'users/test1/muza/raving-in-mexico.mp3'),
('test1', 'users/test1/muza/raving-in-mexico.mp3'),
('test2', 'users/test2//cute_cheetah.mp4'),
('test2', 'users/test2//anna.jpg'),
('test2', 'users/test2/obrazki/domek.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `goscieportalu`
--

CREATE TABLE `goscieportalu` (
  `ipaddress` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `przegladarka` varchar(90) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `rozdzielczosc_ekranu` varchar(10) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `rozdzielczosc_przegladarki` varchar(10) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `ilosc_kolorow_ekranu` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `cookies_accept` varchar(10) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `java_aplets_accept` varchar(10) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `jezyk` varchar(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goscieportalu`
--

INSERT INTO `goscieportalu` (`ipaddress`, `datetime`, `przegladarka`, `rozdzielczosc_ekranu`, `rozdzielczosc_przegladarki`, `ilosc_kolorow_ekranu`, `cookies_accept`, `java_aplets_accept`, `jezyk`) VALUES
('188.47.125.213', '2022-10-31 01:47:40', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 01:48:40', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 01:49:28', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 01:49:48', 'Firefox 106.0 Windows NT 10.0', '2752x1548', '2752x1369', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 01:53:37', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 01:56:10', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 01:56:32', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 02:16:54', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 02:37:53', 'Microsoft Edge 107.0.1418.24 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('188.47.125.213', '2022-10-31 03:25:13', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 03:28:10', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 03:28:22', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 14:06:37', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('194.126.177.27', '2022-10-31 14:35:44', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 16:11:42', 'Microsoft Edge 107.0.1418.26 Windows NT 10.0', '1920x1080', '1873x969', '24', 'true', 'false', 'pl'),
('138.199.55.37', '2022-10-31 16:33:45', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 16:56:40', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 16:56:41', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 16:56:48', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-10-31 16:57:08', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('194.126.177.21', '2022-11-02 14:21:32', 'Firefox 108.0 Android 10', '360x780', '360x715', '24', 'true', 'false', 'pl-PL'),
('82.146.251.76', '2022-11-03 10:18:31', 'Chrome 106.0.0.0 Windows NT 10.0', '1600x900', '1056x687', '24', 'true', 'false', 'en-US'),
('188.47.125.213', '2022-11-03 12:50:43', 'Microsoft Edge 107.0.1418.26 Windows NT 10.0', '1920x1080', '1873x969', '24', 'true', 'false', 'pl'),
('188.47.125.213', '2022-11-06 13:21:02', 'Firefox 106.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('104.200.29.231', '2022-11-15 01:46:48', '   ', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `goscieportalu2`
--

CREATE TABLE `goscieportalu2` (
  `user` varchar(255) NOT NULL,
  `success` varchar(255) NOT NULL,
  `ipaddress` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `datetime` datetime NOT NULL,
  `przegladarka` varchar(90) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `rozdzielczosc_ekranu` varchar(10) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `rozdzielczosc_przegladarki` varchar(10) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `ilosc_kolorow_ekranu` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `cookies_accept` varchar(10) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `java_aplets_accept` varchar(10) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `jezyk` varchar(40) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `goscieportalu2`
--

INSERT INTO `goscieportalu2` (`user`, `success`, `ipaddress`, `datetime`, `przegladarka`, `rozdzielczosc_ekranu`, `rozdzielczosc_przegladarki`, `ilosc_kolorow_ekranu`, `cookies_accept`, `java_aplets_accept`, `jezyk`) VALUES
('admin', 'false', '31.0.37.194', '2022-11-07 13:05:17', 'Firefox 106.0 Windows NT 10.0', '1536x864', '1536x739', '24', 'true', 'false', 'pl'),
('admin', 'true', '31.0.37.194', '2022-11-07 13:06:05', 'Firefox 106.0 Windows NT 10.0', '1536x864', '1269x690', '24', 'true', 'false', 'pl'),
('grad', 'true', '212.122.194.7', '2022-11-07 13:09:02', 'Chrome 107.0.0.0 Windows NT 10.0', '1600x900', '1600x781', '24', 'true', 'false', 'en-US'),
('grad2', 'true', '212.122.194.7', '2022-11-07 13:10:15', 'Chrome 107.0.0.0 Windows NT 10.0', '1600x900', '1600x781', '24', 'true', 'false', 'en-US'),
('grad', 'true', '212.122.194.7', '2022-11-07 13:10:41', 'Chrome 107.0.0.0 Windows NT 10.0', '1600x900', '1600x781', '24', 'true', 'false', 'en-US'),
('grad2', 'true', '212.122.194.7', '2022-11-07 13:11:42', 'Chrome 107.0.0.0 Windows NT 10.0', '1600x900', '1600x781', '24', 'true', 'false', 'en-US'),
('grad', 'true', '212.122.194.7', '2022-11-14 12:26:45', 'Chrome 107.0.0.0 Windows NT 10.0', '1600x900', '1232x764', '24', 'true', 'false', 'en-US'),
('grad3', 'true', '212.122.194.7', '2022-11-14 12:27:24', 'Chrome 107.0.0.0 Windows NT 10.0', '1600x900', '1232x764', '24', 'true', 'false', 'en-US'),
('grad', 'true', '212.122.194.7', '2022-11-14 12:28:46', 'Chrome 107.0.0.0 Windows NT 10.0', '1600x900', '1232x764', '24', 'true', 'false', 'en-US'),
('grad3', 'true', '212.122.194.7', '2022-11-14 12:29:55', 'Chrome 107.0.0.0 Windows NT 10.0', '1600x900', '1232x764', '24', 'true', 'false', 'en-US'),
('user1', 'true', '31.0.43.234', '2022-11-21 12:54:29', 'Firefox 107.0 Windows NT 10.0', '1536x864', '1269x662', '24', 'true', 'false', 'pl'),
('user1', 'true', '31.0.43.234', '2022-11-21 13:00:48', 'Firefox 107.0 Windows NT 10.0', '1536x864', '1536x739', '24', 'true', 'false', 'pl'),
('user1', 'true', '31.0.43.234', '2022-11-21 13:01:29', 'Firefox 107.0 Windows NT 10.0', '1536x864', '1536x739', '24', 'true', 'false', 'pl'),
('user1', 'true', '31.0.43.234', '2022-11-21 13:39:05', 'Firefox 107.0 Windows NT 10.0', '1536x864', '1536x739', '24', 'true', 'false', 'pl'),
('user1', 'true', '31.0.43.234', '2022-11-21 13:42:02', 'Microsoft Edge 107.0.1418.52 Windows NT 10.0', '1536x864', '1014x747', '24', 'true', 'false', 'pl'),
('user1', 'true', '188.47.125.213', '2022-11-24 23:25:21', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1873x969', '24', 'true', 'false', 'pl'),
('user1', 'true', '188.47.125.213', '2022-11-24 23:25:50', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1873x969', '24', 'true', 'false', 'pl'),
('user1', 'true', '188.47.125.213', '2022-11-24 23:29:18', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-24 23:31:44', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-24 23:32:33', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 00:17:49', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('user1', 'true', '188.47.125.213', '2022-11-25 00:29:16', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 00:32:12', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 00:34:01', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 00:39:09', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 00:49:39', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 00:59:43', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 01:06:51', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 01:10:08', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 22:38:58', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('user1', 'true', '188.47.125.213', '2022-11-25 22:45:04', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 23:00:01', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 23:01:27', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 23:07:30', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('user1', 'true', '188.47.125.213', '2022-11-25 23:08:33', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('user1', 'true', '188.47.125.213', '2022-11-25 23:15:28', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-25 23:49:38', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 00:29:23', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 00:35:34', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 00:52:25', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 00:54:20', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 00:55:40', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:06:12', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:07:01', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:08:47', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:09:33', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:17:07', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:20:46', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:26:43', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:31:38', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:32:40', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:37:45', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:39:42', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:52:42', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:56:35', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 01:59:28', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 02:14:25', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 02:19:52', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 02:29:20', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user2', 'true', '188.47.125.213', '2022-11-26 18:53:36', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user2', 'true', '188.47.125.213', '2022-11-26 19:19:46', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:20:11', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:20:19', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 19:20:27', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user2', 'true', '188.47.125.213', '2022-11-26 19:21:06', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user2', 'false', '188.47.125.213', '2022-11-26 19:21:14', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user2', 'false', '188.47.125.213', '2022-11-26 19:21:20', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user2', 'false', '188.47.125.213', '2022-11-26 19:21:31', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user2', 'true', '188.47.125.213', '2022-11-26 19:21:39', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user2', 'true', '188.47.125.213', '2022-11-26 19:24:13', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:41:36', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:41:49', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '946x762', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 19:41:57', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '946x762', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 19:42:30', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '946x762', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 19:42:43', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '946x762', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:42:47', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '946x1009', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:49:51', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:50:02', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 19:50:12', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:50:25', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 19:50:32', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:50:48', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:51:57', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:54:41', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:54:48', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 19:54:57', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:55:06', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:55:12', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 19:55:28', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'false', '188.47.125.213', '2022-11-26 19:58:49', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 19:58:58', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 20:00:43', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-26 20:01:12', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('user1', 'true', '188.47.125.213', '2022-11-27 15:37:54', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test1', 'true', '188.47.125.213', '2022-11-27 15:45:27', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test1', 'true', '188.47.125.213', '2022-11-27 15:49:15', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test1', 'true', '188.47.125.213', '2022-11-27 15:51:31', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test1', 'true', '188.47.125.213', '2022-11-27 16:58:24', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test1', 'true', '188.47.125.213', '2022-11-27 18:24:14', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test2', 'true', '188.47.125.213', '2022-11-27 18:33:34', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:35:17', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:35:22', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:35:28', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:37:15', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:38:30', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:42:45', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:43:49', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:46:14', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test1', 'true', '188.47.125.213', '2022-11-27 18:47:03', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:48:33', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:50:38', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:50:44', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:51:10', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:51:40', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:51:46', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:52:41', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:52:47', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'true', '188.47.125.213', '2022-11-27 18:52:55', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'true', '188.47.125.213', '2022-11-27 18:53:37', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:54:24', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:54:29', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'true', '188.47.125.213', '2022-11-27 18:55:25', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:55:39', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:55:45', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:56:04', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'true', '188.47.125.213', '2022-11-27 18:57:23', 'Microsoft Edge 107.0.1418.56 Windows NT 10.0', '1920x1080', '1920x969', '24', 'true', 'false', 'pl'),
('test2', 'true', '188.47.125.213', '2022-11-27 18:57:49', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test2', 'true', '188.47.125.213', '2022-11-27 18:59:33', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:59:42', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:59:49', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test2', 'false', '188.47.125.213', '2022-11-27 18:59:58', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test2', 'false', '188.47.125.213', '2022-11-27 19:02:06', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x927', '24', 'true', 'false', 'en-US'),
('test2', 'false', '188.47.125.213', '2022-11-27 19:02:12', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test2', 'false', '188.47.125.213', '2022-11-27 19:03:29', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test2', 'false', '188.47.125.213', '2022-11-27 19:03:37', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US'),
('test2', 'true', '188.47.125.213', '2022-11-27 19:04:42', 'Firefox 107.0 Windows NT 10.0', '1920x1080', '1920x955', '24', 'true', 'false', 'en-US');

-- --------------------------------------------------------

--
-- Table structure for table `loginattempts`
--

CREATE TABLE `loginattempts` (
  `id` int(11) NOT NULL,
  `user_id` smallint(6) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginattempts`
--

INSERT INTO `loginattempts` (`id`, `user_id`, `ip`, `timestamp`) VALUES
(59, 1, '188.47.125.213', '2022-11-26 18:54:41'),
(60, 1, '188.47.125.213', '2022-11-26 18:54:48'),
(61, 1, '188.47.125.213', '2022-11-26 18:55:06'),
(62, 1, '188.47.125.213', '2022-11-26 18:58:49'),
(63, 22, '188.47.125.213', '2022-11-27 17:35:17'),
(64, 22, '188.47.125.213', '2022-11-27 17:35:22'),
(65, 22, '188.47.125.213', '2022-11-27 17:35:28'),
(66, 22, '188.47.125.213', '2022-11-27 17:37:15'),
(67, 22, '188.47.125.213', '2022-11-27 17:38:30'),
(68, 22, '188.47.125.213', '2022-11-27 17:42:45'),
(69, 22, '188.47.125.213', '2022-11-27 17:43:49'),
(70, 22, '188.47.125.213', '2022-11-27 17:46:14'),
(71, 22, '188.47.125.213', '2022-11-27 17:48:33'),
(72, 22, '188.47.125.213', '2022-11-27 17:50:38'),
(73, 22, '188.47.125.213', '2022-11-27 17:51:40'),
(74, 22, '188.47.125.213', '2022-11-27 17:52:41'),
(75, 22, '188.47.125.213', '2022-11-27 17:54:24'),
(76, 22, '188.47.125.213', '2022-11-27 17:55:39'),
(77, 22, '188.47.125.213', '2022-11-27 17:59:42'),
(78, 22, '188.47.125.213', '2022-11-27 18:02:06'),
(79, 22, '188.47.125.213', '2022-11-27 18:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `idk` int(11) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `receipt` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`idk`, `datetime`, `message`, `user`, `receipt`, `url`) VALUES
(1, '2022-11-06 14:23:41', 'siemanko', 'nevermore', '', ''),
(2, '2022-11-06 20:28:23', '', '', '', 'users/user2//'),
(3, '2022-11-06 20:28:48', 'siema', 'user1', '', 'users/user2//firefox_GdMK0SXWkF.png'),
(4, '2022-11-06 20:31:13', 'asdasdas', 'user2', 'user1', 'users/user2//'),
(5, '2022-11-06 20:31:55', 'asdasd', 'user1', 'user2', 'users/user1//'),
(6, '2022-11-06 20:40:21', '', 'user1', 'essasito', 'users/user1//'),
(7, '2022-11-06 20:40:32', 'fghfgh', 'user1', 'dfgfg', 'users/user1//msedge_QCM98TApBQ.png'),
(8, '2022-11-06 20:52:16', 'fghfghfgh', 'user2', 'test2', 'users/user2//'),
(9, '2022-11-06 21:03:32', 'sdfsdfsdf', 'user2', 'user2', 'users/user2//firefox_GdMK0SXWkF.png'),
(10, '2022-11-07 12:25:12', 'essa', 'user2', 'all', 'users/user2//carina-stars-Aug-3.wav'),
(11, '2022-11-07 12:26:03', 'test dzwieku', 'user2', 'test5', 'users/user2//sample-9s.mp3'),
(12, '2022-11-07 12:26:17', 'test video', 'user2', 'all', 'users/user2//sample-5s.mp4'),
(13, '2022-11-07 13:09:13', 'kÄ…Å›Ä‡Å„Å‚Ã³ÅºÅ¼', 'grad', 'all', 'users/grad//'),
(14, '2022-11-07 13:09:36', '', 'grad', 'all', 'users/grad//anna.jpg'),
(15, '2022-11-07 13:09:44', '', 'grad', 'all', 'users/grad//gigi.jpg'),
(16, '2022-11-07 13:10:27', 'RE pit test1', 'grad2', 'grad', 'users/grad2//'),
(17, '2022-11-07 13:10:32', '', 'grad2', 'all', 'users/grad2//domek.jpg'),
(18, '2022-11-07 13:11:12', '', 'grad', 'all', 'users/grad//domek.jpg'),
(19, '2022-11-07 13:11:31', 'tylko do grad2', 'grad', 'grad2', 'users/grad//'),
(20, '2022-11-14 12:28:14', 'test grad3 to grad', 'grad3', 'grad', 'users/grad3//'),
(21, '2022-11-14 12:28:29', '', 'grad3', 'grad', 'users/grad3//anna.jpg'),
(22, '2022-11-14 12:29:39', '', 'grad', 'grad3', 'users/grad//cute_cheetah.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` smallint(6) NOT NULL,
  `username` varchar(128) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(128) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'user1', 'pass1'),
(2, 'user2', 'pass2'),
(12, 'grad', 'grad'),
(20, 'test1', 'test1'),
(22, 'test2', 'test2');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loginattempts`
--
ALTER TABLE `loginattempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Test` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`idk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginattempts`
--
ALTER TABLE `loginattempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `idk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `loginattempts`
--
ALTER TABLE `loginattempts`
  ADD CONSTRAINT `Test` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
