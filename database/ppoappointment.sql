-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2026 at 06:10 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ppoappointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `faculty_id` int NOT NULL,
  `program_id` int NOT NULL,
  `appointment_id` int NOT NULL,
  `branch_id` int NOT NULL,
  `application_date` date NOT NULL,
  `phone` varchar(15) NOT NULL,
  `nric` varchar(12) NOT NULL,
  `matrix` varchar(10) NOT NULL,
  `pic_name` varchar(255) NOT NULL,
  `pic_email` varchar(255) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_street1` varchar(255) NOT NULL,
  `company_street2` varchar(255) NOT NULL,
  `company_postcode` varchar(10) NOT NULL,
  `company_city` varchar(255) NOT NULL,
  `company_state` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `cv` varchar(255) NOT NULL,
  `cv_dir` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `approval_name` varchar(255) NOT NULL,
  `approval_post` varchar(25) NOT NULL,
  `approval_status` int NOT NULL,
  `ref_no` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `user_id`, `faculty_id`, `program_id`, `appointment_id`, `branch_id`, `application_date`, `phone`, `nric`, `matrix`, `pic_name`, `pic_email`, `company_name`, `company_street1`, `company_street2`, `company_postcode`, `company_city`, `company_state`, `start_date`, `end_date`, `cv`, `cv_dir`, `status`, `approval_name`, `approval_post`, `approval_status`, `ref_no`, `created`, `modified`) VALUES
(1, 1, 1, 1, 2, 1, '2026-01-26', '0175595094', '123456789', '2025180137', 'Aisyah Nadhirah binti Ahamad Khairi', 'aisyahnadhiraha@gmail.com', 'Code The Pixel', '59 A,JALAN BELAKANG MASJID', 'KAMPUNG SELARONG', '33100', 'PENGKALAN HULU', 'Perak', '2026-03-01', '2026-08-31', 'AR GUIDE PUNCAK PERDANA.pdf', 'webroot\\files\\Applications\\cv\\', 0, '', '', 0, 'UiTM-S1(HEA-CDIM.CDIM262/1', '2026-01-26 17:24:29', '2026-01-28 00:48:03'),
(2, 1, 3, 2, 1, 2, '2026-01-27', '123456789', '023913738138', '2022463642', 'ahmad bin ali', 'aisyahnadhiraha@gmail.com', 'Code The Pixel', '59 A,JALAN BELAKANG MASJID', 'KAMPUNG SELARONG', '33100', 'PENGKALAN HULU', 'Perak', '2026-10-01', '2026-02-01', 'set 1.pdf', 'webroot\\files\\Applications\\cv\\', 0, '', '', 0, '', '2026-01-27 15:26:55', '2026-01-27 15:26:55'),
(4, 1, 1, 1, 1, 3, '2026-01-28', '0178990494', '023913738138', '2022463642', 'ahmad bin ali', 'aisyahnadhiraha@gmail.com', 'Code The Pixel', '59 A,JALAN BELAKANG MASJID', 'KAMPUNG SELARONG', '33100', 'PENGKALAN HULU', 'Perak', '2024-10-01', '2025-02-28', 'Surat_Tawaran_AISYAH_NADHIRAH_BINTI_AHAMAD_KHAIRI.pdf', 'webroot\\files\\Applications\\cv\\', 0, '', '', 0, 'UiTM-S3(HEA-CDIM.CDIM262/4', '2026-01-28 01:15:35', '2026-01-28 13:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int NOT NULL,
  `code` varchar(10) NOT NULL,
  `session` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `code`, `session`, `status`, `created`, `modified`) VALUES
(1, '20244', 'Oktober-Februari 2025', 1, '2026-01-26 07:18:05', '2026-01-26 07:18:05'),
(2, '20252', 'Mac-Ogos 2026', 1, '2026-01-26 07:19:07', '2026-01-28 00:50:24');

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` int UNSIGNED NOT NULL,
  `transaction` char(36) NOT NULL,
  `type` varchar(7) NOT NULL,
  `primary_key` int UNSIGNED DEFAULT NULL,
  `source` varchar(255) NOT NULL,
  `parent_source` varchar(255) DEFAULT NULL,
  `original` mediumtext,
  `changed` mediumtext,
  `meta` mediumtext,
  `status` int NOT NULL DEFAULT '1',
  `slug` varchar(255) DEFAULT NULL,
  `created` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `transaction`, `type`, `primary_key`, `source`, `parent_source`, `original`, `changed`, `meta`, `status`, `slug`, `created`) VALUES
(1, '377d06ec-9c50-4270-b6ac-0d0bfbafe07a', 'create', 1, 'applications', NULL, '[]', '{\"id\":1,\"faculty_id\":1,\"program_id\":1,\"appointment_id\":2,\"branch_id\":1,\"application_date\":\"2026-01-26\",\"phone\":\"0175595094\",\"nric\":\"123456789\",\"matrix\":\"2025180137\",\"pic_name\":\"Aisyah Nadhirah binti Ahamad Khairi\",\"pic_email\":\"aisyahnadhiraha@gmail.com\",\"company_name\":\"Code The Pixel\",\"company_street1\":\"59 A,JALAN BELAKANG MASJID\",\"company_street2\":\"KAMPUNG SELARONG\",\"company_postcode\":\"33100\",\"company_city\":\"PENGKALAN HULU\",\"company_state\":\"Perak\",\"start_date\":\"2026-03-01\",\"end_date\":\"2026-08-31\",\"cv\":\"AR GUIDE PUNCAK PERDANA.pdf\",\"cv_dir\":\"webroot\\\\files\\\\Applications\\\\cv\\\\\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-26 17:19:53'),
(2, '401e76b6-2559-414d-8c67-bffea98e38b5', 'create', 1, 'applications', NULL, '[]', '{\"id\":1,\"user_id\":1,\"faculty_id\":1,\"program_id\":1,\"appointment_id\":2,\"branch_id\":1,\"application_date\":\"2026-01-26\",\"phone\":\"0175595094\",\"nric\":\"123456789\",\"matrix\":\"2025180137\",\"pic_name\":\"Aisyah Nadhirah binti Ahamad Khairi\",\"pic_email\":\"aisyahnadhiraha@gmail.com\",\"company_name\":\"Code The Pixel\",\"company_street1\":\"59 A,JALAN BELAKANG MASJID\",\"company_street2\":\"KAMPUNG SELARONG\",\"company_postcode\":\"33100\",\"company_city\":\"PENGKALAN HULU\",\"company_state\":\"Perak\",\"start_date\":\"2026-03-01\",\"end_date\":\"2026-08-31\",\"cv\":\"AR GUIDE PUNCAK PERDANA.pdf\",\"cv_dir\":\"webroot\\\\files\\\\Applications\\\\cv\\\\\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-26 17:24:29'),
(3, '226c612c-c6d9-419d-956a-342c8cf6a29f', 'update', 1, 'users', NULL, '{\"fullname\":\"Administrator\"}', '{\"fullname\":\"Aisyah Nadhirah binti Ahamad Khairi\"}', '[]', 1, NULL, '2026-01-26 17:35:15'),
(4, '0c918f8d-d05d-4c2a-8817-23cfdb5db72d', 'create', 2, 'applications', NULL, '[]', '{\"id\":2,\"user_id\":1,\"faculty_id\":3,\"program_id\":2,\"appointment_id\":1,\"branch_id\":2,\"application_date\":\"2026-01-27\",\"phone\":\"123456789\",\"nric\":\"023913738138\",\"matrix\":\"2022463642\",\"pic_name\":\"ahmad bin ali\",\"pic_email\":\"aisyahnadhiraha@gmail.com\",\"company_name\":\"Code The Pixel\",\"company_street1\":\"59 A,JALAN BELAKANG MASJID\",\"company_street2\":\"KAMPUNG SELARONG\",\"company_postcode\":\"33100\",\"company_city\":\"PENGKALAN HULU\",\"company_state\":\"Perak\",\"start_date\":\"2026-10-01\",\"end_date\":\"2026-02-01\",\"cv\":\"set 1.pdf\",\"cv_dir\":\"webroot\\\\files\\\\Applications\\\\cv\\\\\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-27 15:26:57'),
(5, 'b25ee338-74d8-4627-b28d-540009b2235b', 'update', 1, 'applications', NULL, '{\"ref_no\":\"\"}', '{\"ref_no\":\"UiTM-S1(HEA-CDIM.CDIM262\\/1\"}', '[]', 1, NULL, '2026-01-27 18:04:46'),
(6, '86ae1009-bdf6-498f-805e-3d5b30932d84', 'create', 3, 'applications', NULL, '[]', '{\"id\":3,\"user_id\":1,\"faculty_id\":2,\"program_id\":2,\"appointment_id\":2,\"branch_id\":2,\"application_date\":\"2026-01-27\",\"phone\":\"547583485674386\",\"nric\":\"434554656765\",\"matrix\":\"3453455435\",\"pic_name\":\"syi\",\"pic_email\":\"utueryuetyuerytr@mail.com\",\"company_name\":\"o4w45uieu5iuri\",\"company_street1\":\"shfjisrgurgrdt\",\"company_street2\":\"sbfbhsrghuserygryure\",\"company_postcode\":\"33100\",\"company_city\":\"thruiyteutyuey\",\"company_state\":\"Sarawak\",\"start_date\":\"2025-03-29\",\"end_date\":\"2026-01-30\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-27 18:08:13'),
(7, '4c7ad0ed-759b-4957-abf6-10ba68e36a2f', 'update', 3, 'applications', NULL, '{\"ref_no\":\"\"}', '{\"ref_no\":\"UiTM-S2(HEA-BM.IM110\\/3\"}', '[]', 1, NULL, '2026-01-27 18:08:43'),
(8, '7ca4ce00-1e24-4098-8175-30d1b01a47fa', 'update', 1, 'applications', NULL, '{\"ref_no\":\"UiTM-S1(HEA-CDIM.CDIM262\\/1\"}', '{\"ref_no\":\"UiTM-S1(HEA-CDIM.CDIM262\\/1)\"}', '[]', 1, NULL, '2026-01-27 18:28:31'),
(9, '16d40e27-7b33-43ac-b03f-e8fd7a30d3a9', 'update', 1, 'applications', NULL, '{\"ref_no\":\"UiTM-S1(HEA-CDIM.CDIM262\\/1)\"}', '{\"ref_no\":\"UiTM-S1(HEA-CDIM.CDIM262\\/1\"}', '[]', 1, NULL, '2026-01-28 00:11:17'),
(10, '6fdcff36-8d37-4cd7-94cf-9f348589043e', 'delete', 3, 'applications', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/delete\\/3\",\"slug\":1}', 1, NULL, '2026-01-28 00:43:29'),
(11, '26c95759-342b-4e57-8f56-6eb0868f6e3e', 'update', 2, 'appointments', NULL, '{\"session\":\"Mac-Ogos 2025\"}', '{\"session\":\"Mac-Ogos 2026\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Appointments\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/appointments\\/edit\\/2\",\"slug\":1}', 1, NULL, '2026-01-28 00:50:24'),
(12, '21840d2a-0c8d-44c8-8f42-ea46821c5d5f', 'update', 1, 'users', NULL, '{\"fullname\":\"Aisyah Nadhirah binti Ahamad Khairi\",\"avatar\":\"\",\"avatar_dir\":\"\"}', '{\"fullname\":\"NURUL HANIM SYUHADA BINTI HAZMIRUDDIN SHAM\",\"avatar\":\"Screenshot 2026-01-28 010829.png\",\"avatar_dir\":\"webroot\\\\files\\\\Users\\\\avatar\\\\Administrator\"}', '[]', 1, NULL, '2026-01-28 01:10:38'),
(13, '9d9366af-78dc-4c8b-a3ff-e282eea3c850', 'delete', 1, 'branches', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Branches\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/branches\\/delete\\/1\",\"slug\":1}', 1, NULL, '2026-01-28 01:12:10'),
(14, '0fcd8885-4896-4921-a687-de1ec8494353', 'update', 2, 'branches', NULL, '{\"code\":\"S2\"}', '{\"code\":\"S1\"}', '{\"a_name\":\"Edit\",\"c_name\":\"Branches\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/branches\\/edit\\/2\",\"slug\":1}', 1, NULL, '2026-01-28 01:12:33'),
(15, 'd28dbecd-b8b9-493f-b1d5-34fbbed83630', 'delete', 2, 'branches', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Branches\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/branches\\/delete\\/2\",\"slug\":1}', 1, NULL, '2026-01-28 01:12:44'),
(16, '7c6b108e-cc0d-4157-a8b0-bc20880c3699', 'create', 3, 'branches', NULL, '[]', '{\"id\":3,\"code\":\"S3\",\"session\":\"UiTM Cawangan Kedah Kampus Merbok\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Branches\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/branches\\/add\",\"slug\":1}', 1, NULL, '2026-01-28 01:13:09'),
(17, 'a3f2380d-cac7-4d58-ba39-9f184643687a', 'create', 4, 'branches', NULL, '[]', '{\"id\":4,\"code\":\"S1\",\"session\":\"UiTM Cawangan Selangor Kampus Puncak Alam\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Branches\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/branches\\/add\",\"slug\":1}', 1, NULL, '2026-01-28 01:13:32'),
(18, '994574d8-9703-4f4f-a14b-63e6cac6514c', 'create', 4, 'applications', NULL, '[]', '{\"id\":4,\"user_id\":1,\"faculty_id\":1,\"program_id\":1,\"appointment_id\":1,\"branch_id\":3,\"application_date\":\"2026-01-28\",\"phone\":\"0178990494\",\"nric\":\"023913738138\",\"matrix\":\"2022463642\",\"pic_name\":\"ahmad bin ali\",\"pic_email\":\"aisyahnadhiraha@gmail.com\",\"company_name\":\"Code The Pixel\",\"company_street1\":\"59 A,JALAN BELAKANG MASJID\",\"company_street2\":\"KAMPUNG SELARONG\",\"company_postcode\":\"33100\",\"company_city\":\"PENGKALAN HULU\",\"company_state\":\"Perak\",\"start_date\":\"2024-10-01\",\"end_date\":\"2025-02-28\",\"cv\":\"Surat_Tawaran_AISYAH_NADHIRAH_BINTI_AHAMAD_KHAIRI.pdf\",\"cv_dir\":\"webroot\\\\files\\\\Applications\\\\cv\\\\\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-28 01:15:35'),
(19, '52f02822-04cd-427b-a203-bf52fa537c13', 'update', 4, 'applications', NULL, '{\"ref_no\":\"\"}', '{\"ref_no\":\"UiTM-S3(HEA-CDIM.CDIM262\\/4\"}', '[]', 1, NULL, '2026-01-28 01:15:52');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int NOT NULL,
  `code` varchar(10) NOT NULL,
  `session` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `code`, `session`, `status`, `created`, `modified`) VALUES
(3, 'S3', 'UiTM Cawangan Kedah Kampus Merbok', 1, '2026-01-28 01:13:09', '2026-01-28 01:13:09'),
(4, 'S1', 'UiTM Cawangan Selangor Kampus Puncak Alam', 1, '2026-01-28 01:13:32', '2026-01-28 01:13:32');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `ticket` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `notes` text NOT NULL,
  `note_admin` text,
  `ip` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '0',
  `is_replied` tinyint(1) NOT NULL,
  `respond_date_time` datetime DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `id` int NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`id`, `code`, `name`, `status`, `created`, `modified`) VALUES
(1, 'CDIM', 'Kolej Pengkomputeran Informatik dan Matematik', 1, '2026-01-26 07:15:25', '2026-01-26 07:15:25'),
(2, 'BM', 'Fakulti Pengurusan dan Perniagaan ', 1, '2026-01-26 07:15:54', '2026-01-26 07:15:54'),
(3, 'AC', 'Fakulti Perakaunan', 1, '2026-01-26 07:16:18', '2026-01-26 07:16:18');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` int NOT NULL,
  `category` varchar(100) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `category`, `question`, `answer`, `slug`, `status`, `created`, `modified`) VALUES
(1, 'General', 'General Questions 1', 'General Answer 1', 'General-Questions-1', 1, '2022-11-13 15:41:26', '2022-11-13 16:31:14'),
(2, 'Account', 'Account Questions 1', 'Account Answer 1', 'Account-Questions-1', 1, '2022-11-13 15:43:15', '2022-11-13 15:43:15'),
(3, 'Other', 'Other Questions 1', 'Other Answer 1', 'Other-Questions-1', 1, '2022-11-13 15:43:34', '2022-11-13 15:43:34'),
(6, 'General', 'General Questions 2', 'General Answer 2', 'General-Questions-2', 0, '2022-11-13 16:54:25', '2024-06-25 13:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `parent_id` int DEFAULT NULL,
  `lft` int DEFAULT NULL,
  `rght` int DEFAULT NULL,
  `level` int DEFAULT '0',
  `icon` varchar(255) DEFAULT NULL,
  `controller` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `auth` tinyint(1) DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT NULL,
  `divider_before` tinyint(1) DEFAULT '0',
  `parent_separator` tinyint(1) DEFAULT NULL,
  `division` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `parent_id`, `lft`, `rght`, `level`, `icon`, `controller`, `action`, `target`, `name`, `url`, `prefix`, `auth`, `admin`, `active`, `disabled`, `divider_before`, `parent_separator`, `division`) VALUES
(1, NULL, 1, 2, 0, '<i class=\"fa-solid fa-code\"></i>', 'Dashboards', 'Index', NULL, 'Dashboard', '', '', 1, 0, 1, 0, 0, 0, 0),
(2, NULL, 3, 4, 0, '<i class=\"fa-regular fa-circle-question\"></i>', 'Faqs', '', NULL, 'FAQs', '', '', 0, 0, 1, 0, 0, NULL, 0),
(3, NULL, 5, 6, 0, '<i class=\"fa-regular fa-message\"></i>', 'Contacts', 'Add', NULL, 'Contact Us', '', '', 0, 0, 1, NULL, 0, NULL, 0),
(4, NULL, 7, 14, 0, '<i class=\"fa-solid fa-circle-info\"></i>', 'Pages', 'manual', NULL, 'Documentation', '', '', 0, 0, 1, 0, 0, 1, 0),
(5, NULL, 15, 16, 0, '', '', '', NULL, 'Administrator', '', NULL, 0, 1, 1, NULL, 0, NULL, 1),
(6, NULL, 17, 18, 0, '<i class=\"fa-solid fa-gear\"></i>', 'Settings', 'Update', 'recrud', 'System Configuration', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(7, NULL, 19, 20, 0, '<i class=\"fa-solid fa-users-viewfinder\"></i>', 'Users', 'Index', NULL, 'User Management', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(8, NULL, 21, 22, 0, '<i class=\"fa-solid fa-bars\"></i>', 'Menus', 'Index', NULL, 'Menu Management', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(9, NULL, 23, 24, 0, '<i class=\"menu-icon fa-solid fa-list-check\"></i>', 'Todos', 'Index', NULL, 'Todo List', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(10, NULL, 25, 26, 0, '<i class=\"fa-regular fa-message\"></i>', 'Contacts', 'Index', NULL, 'Contact', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(11, NULL, 27, 28, 0, '<i class=\"menu-icon fa-solid fa-timeline\"></i>', 'AuditLogs', 'Index', NULL, 'Audit Trail', '', 'Admin', 1, 1, 1, NULL, 0, NULL, 0),
(12, NULL, 29, 30, 0, '<i class=\"menu-icon fa-regular fa-circle-question\"></i>', 'Faqs', 'Index', NULL, 'FAQs', '', 'Admin', 1, 1, 1, NULL, 0, 0, 0),
(13, 4, 10, 11, 1, '<i class=\"fa-solid fa-code\"></i>', '', '', NULL, 'Code The Pixel', 'https://codethepixel.com/', '', 0, 0, 1, NULL, 0, 0, 0),
(14, 4, 8, 9, 1, '<i class=\"fa-regular fa-file-code\"></i>', 'Pages', 'manual', NULL, 'User Manual', '', '', 0, 0, 1, NULL, 0, 0, 0),
(15, 4, 12, 13, 1, '<i class=\"fa-brands fa-github\"></i>', '', '', NULL, 'Re-CRUD Github', 'https://github.com/Asyraf-wa/recrud', '', 0, 0, 1, NULL, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phinxlog`
--

CREATE TABLE `phinxlog` (
  `version` bigint NOT NULL,
  `migration_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `breakpoint` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phinxlog`
--

INSERT INTO `phinxlog` (`version`, `migration_name`, `start_time`, `end_time`, `breakpoint`) VALUES
(20241029053753, 'Initial', '2026-01-26 07:27:59', '2026-01-26 07:28:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `programs`
--

CREATE TABLE `programs` (
  `id` int NOT NULL,
  `faculty_id` int NOT NULL,
  `code` varchar(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` int NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `programs`
--

INSERT INTO `programs` (`id`, `faculty_id`, `code`, `name`, `status`, `created`, `modified`) VALUES
(1, 1, 'CDIM262', 'Bachelor Degree of Science in Information Management', 1, '2026-01-26 07:16:44', '2026-01-26 07:16:44'),
(2, 1, 'IM110', 'Diploma in Information Management', 1, '2026-01-26 07:17:28', '2026-01-26 07:17:28');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` char(36) NOT NULL,
  `system_name` varchar(255) NOT NULL,
  `system_abbr` varchar(255) NOT NULL,
  `system_slogan` varchar(255) NOT NULL,
  `organization_name` varchar(255) NOT NULL,
  `domain_name` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notification_email` varchar(50) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_subject` varchar(255) NOT NULL,
  `meta_copyright` varchar(255) NOT NULL,
  `meta_desc` varchar(255) NOT NULL,
  `timezone` varchar(100) NOT NULL,
  `author` varchar(255) NOT NULL,
  `site_status` tinyint(1) NOT NULL,
  `user_reg` tinyint(1) NOT NULL,
  `config_2` tinyint(1) NOT NULL,
  `config_3` tinyint(1) NOT NULL,
  `version` varchar(255) NOT NULL,
  `private_key_from_recaptcha` varchar(255) DEFAULT NULL,
  `public_key_from_recaptcha` varchar(255) DEFAULT NULL,
  `banned_username` text,
  `telegram_bot_token` varchar(255) DEFAULT NULL,
  `telegram_chatid` varchar(255) DEFAULT NULL,
  `hcaptcha_sitekey` varchar(255) DEFAULT NULL,
  `hcaptcha_secretkey` varchar(255) DEFAULT NULL,
  `notification` text NOT NULL,
  `notification_status` tinyint(1) NOT NULL,
  `notification_date` date DEFAULT NULL,
  `ribbon_title` varchar(20) NOT NULL,
  `ribbon_link` varchar(255) NOT NULL,
  `ribbon_status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `system_name`, `system_abbr`, `system_slogan`, `organization_name`, `domain_name`, `email`, `notification_email`, `meta_title`, `meta_keyword`, `meta_subject`, `meta_copyright`, `meta_desc`, `timezone`, `author`, `site_status`, `user_reg`, `config_2`, `config_3`, `version`, `private_key_from_recaptcha`, `public_key_from_recaptcha`, `banned_username`, `telegram_bot_token`, `telegram_chatid`, `hcaptcha_sitekey`, `hcaptcha_secretkey`, `notification`, `notification_status`, `notification_date`, `ribbon_title`, `ribbon_link`, `ribbon_status`, `created`, `modified`) VALUES
('recrud', 'Program Professional Offered', 'PPOAPPOINTMENT UiTM', 'Code The Experiences', 'Code The Pixel Inc.', 'codethepixel.com', 'noreply@codethepixel.com', 'noreply@codethepixel.com', 'Re-CRUD', 'Re-CRUD, CakePHP, Learning, CRUD', 'Re-CRUD', 'Re-CRUD', 'Re-CRUD', 'Asia/Kuala_Lumpur', 'Re-CRUD', 0, 0, 0, 0, '1.1', '', '', NULL, '', '', '', '', '<p><strong>Server maintenance</strong> is scheduled to be executed on Jan 1, 2023, from 1.00 am to 4.00 am. An intermittent connection is expected during the server maintenance period.</p>', 0, '2022-11-07', 'Code The Pixel', 'https://codethepixel.com', 0, '2020-04-08 20:56:04', '2026-01-26 15:31:52');

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` char(36) NOT NULL,
  `user_id` char(36) NOT NULL,
  `urgency` varchar(255) NOT NULL COMMENT 'high, medium, low',
  `task` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `note` text NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'Pending' COMMENT 'Pending, In Progress, Completed, Canceled',
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `user_id`, `urgency`, `task`, `description`, `note`, `status`, `created`, `modified`) VALUES
('a02daac9-27e3-49ea-8090-927e60f9e255', '1', 'High', 'task 4 desc', '<p>task 4 desc</p>', '<p>task 4 desc</p>', 'In Progress', '2024-05-31 13:48:26', '2024-05-31 13:48:31'),
('a8618f9e-a3f7-4e7a-8a3f-05a5323cd5af', '1', 'High', 'task 1', '<p>task 1 desc</p>', '<p>task 1 desc</p>', 'Completed', '2024-05-31 13:45:22', '2024-05-31 13:45:40'),
('c892f026-c6f8-4353-82c2-75f49c0f5d6b', '1', 'Medium', 'Task 3 - Develop the To Do Task and render in Dashboard', '<p>task 3 desc</p>', '<p>task 3 desc</p>', 'Pending', '2024-05-31 13:48:06', '2024-05-31 13:48:06'),
('eda46e51-555a-4309-a28b-d0835bf4f4b2', '1', 'Low', 'task 2', '<p>task 2 desc</p>', '<p>task 2 desc</p>', 'Canceled', '2024-05-31 13:46:12', '2024-05-31 13:46:24');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `user_group_id` int DEFAULT '3',
  `fullname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `avatar_dir` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_created_at` datetime NOT NULL,
  `status` varchar(1) NOT NULL DEFAULT '0' COMMENT '	is_active',
  `is_email_verified` int NOT NULL DEFAULT '0',
  `last_login` datetime DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `created_by` int DEFAULT NULL COMMENT 'user_id',
  `modified_by` int DEFAULT NULL COMMENT 'user_id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_group_id`, `fullname`, `password`, `email`, `avatar`, `avatar_dir`, `token`, `token_created_at`, `status`, `is_email_verified`, `last_login`, `ip_address`, `slug`, `created`, `modified`, `created_by`, `modified_by`) VALUES
(1, 1, 'NURUL HANIM SYUHADA BINTI HAZMIRUDDIN SHAM', '$2y$10$OrUKHzNQUic6dFqSuG9QBeDzMbbwPz1BQXKgBKPcQyMTNdv3Z22xe', 'admin@localhost.com', 'Screenshot 2026-01-28 010829.png', 'webroot\\files\\Users\\avatar\\Administrator', NULL, '2024-07-10 20:30:04', '1', 1, '2026-01-27 15:15:53', '::1', 'Administrator', '2022-10-26 02:54:19', '2026-01-28 01:10:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_groups`
--

CREATE TABLE `user_groups` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `description` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_groups`
--

INSERT INTO `user_groups` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Admin', 'Admninistrator', '2021-01-23 13:21:29', '2021-01-23 13:21:29'),
(2, 'Mod', 'Moderator', '2021-01-23 13:21:29', '2021-01-23 13:21:29'),
(3, 'User', 'Normal User', '2021-01-23 13:21:29', '2021-01-23 13:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `user_logs`
--

CREATE TABLE `user_logs` (
  `id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `useragent` varchar(256) DEFAULT NULL,
  `os` varchar(255) DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  `host` varchar(255) DEFAULT NULL,
  `referrer` varchar(255) DEFAULT NULL,
  `status` int DEFAULT '1',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_logs`
--

INSERT INTO `user_logs` (`id`, `user_id`, `action`, `useragent`, `os`, `ip`, `host`, `referrer`, `status`, `created`, `modified`) VALUES
(1, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', NULL, 1, '2026-01-26 15:30:48', '2026-01-26 15:30:48'),
(2, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', NULL, 1, '2026-01-27 15:15:53', '2026-01-27 15:15:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction` (`transaction`),
  ADD KEY `type` (`type`),
  ADD KEY `primary_key` (`primary_key`),
  ADD KEY `source` (`source`),
  ADD KEY `parent_source` (`parent_source`),
  ADD KEY `created` (`created`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lft` (`lft`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `phinxlog`
--
ALTER TABLE `phinxlog`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `programs`
--
ALTER TABLE `programs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_groups`
--
ALTER TABLE `user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_logs`
--
ALTER TABLE `user_logs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `programs`
--
ALTER TABLE `programs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
