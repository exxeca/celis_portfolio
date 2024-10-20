-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 20, 2024 at 10:00 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: keil_portfolio
--

-- --------------------------------------------------------

--
-- Table structure for table contact
--

DROP TABLE IF EXISTS contact;
CREATE TABLE IF NOT EXISTS contact (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  message varchar(1000) NOT NULL,
  f_name varchar(125) NOT NULL,
  l_name varchar(350) NOT NULL,
  email varchar(100) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table contact
--

INSERT INTO contact (id, message, f_name, l_name, email) VALUES
(1, 'hi how are you sir', 'kiel', 'celis', 'kielcelis@fanshaweonline.ca'),
(2, 'hi how are you sir', 'kiel', 'celis', 'kielcelis@fanshaweonline.ca'),
(3, 'hi how are you sir', 'kiel', 'celis', 'kielcelis@fanshaweonline.ca'),
(4, 'hi how are you sir', 'kiel', 'celis', 'kielcelis@fanshaweonline.ca'),
(5, 'hi how are you sir', 'kiel', 'celis', 'kielcelis@fanshaweonline.ca'),
(6, 'hi how are you sir', 'kiel', 'celis', 'kielcelis@fanshaweonline.ca');

-- --------------------------------------------------------

--
-- Table structure for table media
--

DROP TABLE IF EXISTS media;
CREATE TABLE IF NOT EXISTS media (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  project_id int UNSIGNED NOT NULL,
  images varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  video varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  type varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table media
--

INSERT INTO media (id, project_id, images, video, type) VALUES
(1, 0, 'image/banner.jpg', 'video/video.mp4', 'image'),
(2, 0, 'image/banner2.jpg', 'video/video3.mp4', 'video'),
(3, 0, 'image/banner4.jpg', 'video/video2.mp4', 'image'),
(4, 0, 'image/banner.jpg', 'video/video.mp4', 'image'),
(5, 0, 'image/banner2.jpg', 'video/video3.mp4', 'video'),
(6, 0, 'image/banner4.jpg', 'video/video2.mp4', 'image');

-- --------------------------------------------------------

--
-- Table structure for table projects
--

DROP TABLE IF EXISTS projects;
CREATE TABLE IF NOT EXISTS projects (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  title varchar(125) NOT NULL,
  description varchar(2000) NOT NULL,
  team varchar(350) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table projects
--

INSERT INTO projects (id, title, description, team) VALUES
(1, 'project1', ' lorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
(2, 'project2', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
(3, 'project3', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
(4, 'project1', ' lorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
(5, 'project2', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
(6, 'project3', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum');

-- --------------------------------------------------------

--
-- Table structure for table projects_tools
--

DROP TABLE IF EXISTS projects_tools;
CREATE TABLE IF NOT EXISTS projects_tools (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  projects_id int NOT NULL,
  tools_id int NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table projects_tools
--

INSERT INTO projects_tools (id, projects_id, tools_id) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 2, 1),
(4, 1, 2),
(5, 1, 3),
(6, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table tools
--

DROP TABLE IF EXISTS tools;
CREATE TABLE IF NOT EXISTS tools (
  id int UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(125) NOT NULL,
  description varchar(1500) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table tools
--

INSERT INTO tools (id, name, description) VALUES
(1, 'figma', 'to design the wirefrmaes'),
(2, 'html', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
(3, 'photoshop', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
(4, 'figma', 'to design the wirefrmaes'),
(5, 'html', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum'),
(6, 'photoshop', 'sumlorem ipsumlorem ipsumlorem ipsumlorem ipsumlorem ipsum');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
