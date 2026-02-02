-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 02, 2026 at 02:52 PM
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
(1, 1, 1, 1, 3, 1, '2026-02-02', '0178990494', '040823140888', '2025180137', 'Aisyah Nadhirah binti Ahamad Khairi', 'aisyahnadhiraha@gmail.com', 'UiTM Cawangan Selangor Kampus Puncak Perdana', 'Jalan Pulau Indah Au10/A', 'Puncak Perdana', '40150', 'Shah Alam', 'Selangor', '2026-03-01', '2026-08-31', 'FACULTY OF INFORMATION SCIENCE.pdf', 'webroot\\files\\Applications\\cv\\', 0, '', '', 1, 'UiTM-S1(HEA-AC.AC110/1', '2026-02-02 01:31:07', '2026-02-02 01:39:35'),
(2, 1, 2, 3, 6, 1, '2026-02-02', '0136485200', '040718048755', '2022463642', 'Muhammad Affif bin Asmad', 'affif@gmail.com', 'UiTM Cawangan Selangor Kampus Puncak Perdana', 'Jalan Pulau Indah Au10/A', 'Puncak Perdana', '40150', 'Shah Alam', 'Selangor', '2027-10-02', '2028-02-29', '', '', 0, '', '', 1, 'UiTM-S1(HEA-AD.AD111/2', '2026-02-02 01:38:54', '2026-02-02 04:32:38'),
(3, 1, 3, 11, 3, 1, '2026-02-02', '0179990989', '080923130899', '2025160789', 'ALIA BINTI AHMAD', 'alia@gmail.com', 'UiTM Cawangan Selangor Kampus Puncak Perdana', 'Jalan Pulau Indah Au10/A', 'Puncak Perdana', '40150', 'Shah Alam', 'Selangor', '2026-03-03', '2026-08-31', 'Note IMS566-Asyraf.pdf', 'webroot\\files\\Applications\\cv\\', 0, '', '', 1, 'UiTM-S1(HEA-FSPPP.AM110/3', '2026-02-02 04:12:50', '2026-02-02 04:13:58'),
(5, 1, 13, 74, 5, 2, '2026-02-02', '01356672653', '080223041688', '2025180177', 'Ali bin Ahmad', 'alia@gmail.com', 'UiTM Cawangan Selangor Kampus Shah Alam', 'Jalan Ilmu 1/1', 'Shah Alam', '40450 ', 'Shah Alam', 'Selangor', '2027-03-02', '2027-08-31', '', '', 0, '', '', 2, 'UiTM-S2(HEA-FSR.SR241/5', '2026-02-02 04:40:27', '2026-02-02 04:41:30'),
(6, 2, 8, 31, 4, 2, '2026-02-02', '0135643790', '011115010088', '2024156712', 'AINUL BINTI ZANIA', 'ainul@gmail.com', 'UiTM Cawangan Selangor Kampus Shah Alam', 'Jalan Ilmu 1/1', 'Shah Alam', '40450 ', 'Shah Alam', 'Selangor', '2026-10-02', '2027-02-02', '', '', 0, '', '', 0, '', '2026-02-02 21:25:42', '2026-02-02 21:25:58');

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
(1, '20251', 'Mac-Ogos 2025', 1, '2026-01-30 23:01:39', '2026-01-30 23:01:39'),
(2, '20252', 'Oktober-Februari 2025/2026', 1, '2026-01-30 23:01:39', '2026-01-30 23:01:39'),
(3, '20261', 'Mac-Ogos 2026', 1, '2026-01-30 23:01:39', '2026-01-30 23:01:39'),
(4, '20262', 'Oktober-Februari 2026/2027', 1, '2026-01-30 23:01:39', '2026-01-30 23:01:39'),
(5, '20271', 'Mac-Ogos 2027', 1, '2026-01-30 23:01:39', '2026-01-30 23:01:39'),
(6, '20272', 'Oktober-Februari 2027/2028', 1, '2026-01-30 23:01:39', '2026-01-30 23:01:39'),
(7, '20281', 'Mac-Ogos 2028', 1, '2026-01-30 23:01:39', '2026-01-30 23:01:39'),
(8, '20282', 'Oktober-Februari 2028/2029', 1, '2026-01-30 23:01:39', '2026-01-30 23:01:39'),
(9, '20291', 'Mac-Ogos 2029', 1, '2026-01-30 23:01:39', '2026-01-30 23:01:39'),
(10, '20292', 'Oktober-Februari 2029/2030', 1, '2026-01-30 23:01:39', '2026-01-30 23:01:39');

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
(19, '52f02822-04cd-427b-a203-bf52fa537c13', 'update', 4, 'applications', NULL, '{\"ref_no\":\"\"}', '{\"ref_no\":\"UiTM-S3(HEA-CDIM.CDIM262\\/4\"}', '[]', 1, NULL, '2026-01-28 01:15:52'),
(20, 'f83502f8-07d4-4518-bdde-4f62a9c6e62c', 'update', 4, 'applications', NULL, '{\"approval_status\":0,\"ref_no\":\"UiTM-S3(HEA-CDIM.CDIM262\\/4\"}', '{\"approval_status\":1,\"ref_no\":\"UiTM-S3(HEA-CDIM.CDIM262\\/4\"}', '[]', 1, NULL, '2026-01-30 11:52:32'),
(21, 'c3627072-f43c-4b9b-9cff-60dbeeb3d065', 'create', 5, 'applications', NULL, '[]', '{\"id\":5,\"user_id\":1,\"faculty_id\":2,\"program_id\":2,\"appointment_id\":1,\"branch_id\":3,\"application_date\":\"2026-01-30\",\"phone\":\"48948948242464i\",\"nric\":\"038904723462\",\"matrix\":\"2232862354\",\"pic_name\":\"hgfrtwrftfrwtrryfuerfhjg\",\"pic_email\":\"jhrjw4rgyuwrfyrfgeyfgefeu@gmail.com\",\"company_name\":\"kejwehruwegywufywferfhjrefbuehrb\",\"company_street1\":\"mfnrjfhergeyvbvgdbcdhnbdhvfdbvf\",\"company_street2\":\"nfbhegyerfgrwyfsdhfjebufvg\",\"company_postcode\":\"3427846756\",\"company_city\":\"dfdfgehfgerhffef\",\"company_state\":\"W.P. Putrajaya\",\"start_date\":\"2026-01-29\",\"end_date\":\"2027-01-16\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-30 12:43:15'),
(22, '8dbcf114-e64a-465d-ac19-155d5c344590', 'update', 5, 'applications', NULL, '{\"approval_status\":0,\"ref_no\":\"\"}', '{\"approval_status\":2,\"ref_no\":\"UiTM-S3(HEA-BM.IM110\\/5\"}', '[]', 1, NULL, '2026-01-30 12:45:18'),
(23, 'd49bfbf9-1df1-4990-bd38-1300cae1a27d', 'create', 6, 'applications', NULL, '[]', '{\"id\":6,\"faculty_id\":1,\"program_id\":1,\"appointment_id\":1,\"branch_id\":3,\"application_date\":\"2026-01-30\",\"phone\":\"089897988888888\",\"nric\":\"038904723462\",\"matrix\":\"2493284327\",\"pic_name\":\"hgfrtwrftfrwtrryfuerfhjg\",\"pic_email\":\"jhrjw4rgyuwrfyrfgeyfgefeu@gmail.com\",\"company_name\":\"UITM\",\"company_street1\":\"MMJH\",\"company_street2\":\"HFTFTF6\",\"company_postcode\":\"0000000000\",\"company_city\":\"BHJVVVVVVVVVVVVVVVVVV\",\"company_state\":\"W.P. Putrajaya\",\"start_date\":\"2026-02-20\",\"end_date\":\"2026-05-06\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-30 12:49:37'),
(24, '576f5ae5-f21e-4865-ac22-e7ff8d3625dd', 'create', 7, 'applications', NULL, '[]', '{\"id\":7,\"faculty_id\":1,\"program_id\":1,\"appointment_id\":1,\"branch_id\":3,\"application_date\":\"2026-01-30\",\"phone\":\"928378923876274\",\"nric\":\"883264276423\",\"matrix\":\"2025180127\",\"pic_name\":\"syi\",\"pic_email\":\"mmm@gmail.com\",\"company_name\":\"nebhgh\",\"company_street1\":\"9i9\",\"company_street2\":\"nfhhf\",\"company_postcode\":\"11000\",\"company_city\":\"ejhuhy\",\"company_state\":\"Sabah\",\"start_date\":\"2026-02-07\",\"end_date\":\"2026-03-26\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-30 12:51:40'),
(25, '4de5d15e-5362-48ef-866b-3eabb749667e', 'delete', 5, 'applications', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/delete\\/5\",\"slug\":1}', 1, NULL, '2026-01-30 12:55:24'),
(26, 'f3cc0e04-a377-4822-8cce-f898d747c738', 'create', 8, 'applications', NULL, '[]', '{\"id\":8,\"faculty_id\":1,\"program_id\":1,\"appointment_id\":2,\"branch_id\":3,\"application_date\":\"2026-01-30\",\"phone\":\"010088263726373\",\"nric\":\"92839237838\",\"matrix\":\"3363746263\",\"pic_name\":\"jkjhjkhhfghdffhfjd\",\"pic_email\":\"Mwggqdrtqdertqrcwed@gmail.com\",\"company_name\":\"UITM\",\"company_street1\":\"MMJH\",\"company_street2\":\"HFTFTF6\",\"company_postcode\":\"0000000000\",\"company_city\":\"BHJVVVVVVVVVVVVVVVVVV\",\"company_state\":\"Pulau Pinang\",\"start_date\":\"2026-02-07\",\"end_date\":\"2026-02-14\",\"approval_name\":\"\",\"approval_post\":\"\",\"approval_status\":0}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-30 12:58:29'),
(27, '8f46ec24-379e-432f-bae0-42dcaf6f7258', 'create', 9, 'applications', NULL, '[]', '{\"id\":9,\"user_id\":1,\"faculty_id\":2,\"program_id\":1,\"appointment_id\":1,\"branch_id\":3,\"application_date\":\"2026-01-30\",\"phone\":\"2889737814t3654\",\"nric\":\"2939786344\",\"matrix\":\"2025198763\",\"pic_name\":\"hgfrtwrftfrwtrryfuerfhjg\",\"pic_email\":\"jhrjw4rgyuwrfyrfgeyfgefeu@gmail.com\",\"company_name\":\"UITM\",\"company_street1\":\"MMJH\",\"company_street2\":\"HFTFTF6\",\"company_postcode\":\"0000000000\",\"company_city\":\"BHJVVVVVVVVVVVVVVVVVV\",\"company_state\":\"W.P. Labuan\",\"start_date\":\"2026-02-28\",\"end_date\":\"2026-03-07\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-30 13:02:23'),
(28, '0e8e7522-1baf-402d-80bb-83d3d6b1b62b', 'delete', 3, 'faculties', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Faculties\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/faculties\\/delete\\/3\",\"slug\":1}', 1, NULL, '2026-01-30 13:34:25'),
(29, '016eba62-37a6-47d3-9409-deff8f239a5a', 'delete', 1, 'applications', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/delete\\/1\",\"slug\":1}', 1, NULL, '2026-01-30 21:59:52'),
(30, '3825ed3c-680b-476f-b012-ff8adfc39609', 'delete', 9, 'applications', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/delete\\/9\",\"slug\":1}', 1, NULL, '2026-01-30 22:00:09'),
(31, '6c33d546-9f31-4fef-a49f-a57015ad66bf', 'delete', 4, 'applications', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/delete\\/4\",\"slug\":1}', 1, NULL, '2026-01-30 22:00:16'),
(32, 'a536c4b1-3cf1-464d-a21c-610bc3de949f', 'create', 1, 'applications', NULL, '[]', '{\"id\":1,\"user_id\":1,\"faculty_id\":1,\"program_id\":60,\"appointment_id\":2,\"branch_id\":1,\"application_date\":\"2026-01-30\",\"phone\":\"0135415238\",\"nric\":\"040523110396\",\"matrix\":\"2025118603\",\"pic_name\":\"PUAN AINI AISYAH BINTI ZHARIF ISKANDAR\",\"pic_email\":\"aini@gmail.com\",\"company_name\":\"UiTM Cawangan Kelantan Kampus Machang\",\"company_street1\":\"Kampung Belukar\",\"company_street2\":\"Bandar ,Machang\",\"company_postcode\":\"18500\",\"company_city\":\"Machang\",\"company_state\":\"Kelantan\",\"start_date\":\"2026-03-06\",\"end_date\":\"2026-08-31\",\"cv\":\"Receipt (1).pdf\",\"cv_dir\":\"webroot\\\\files\\\\Applications\\\\cv\\\\\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-30 22:36:37'),
(33, 'da9b8270-3b2f-4fcc-8706-8e535f52a21b', 'update', 1, 'applications', NULL, '{\"approval_status\":0,\"ref_no\":\"\"}', '{\"approval_status\":1,\"ref_no\":\"UiTM-S1(HEA-CDIM.CDIM262\\/1\"}', '[]', 1, NULL, '2026-01-30 22:36:48'),
(34, '55fa0ca7-123d-4978-ad27-f0aa4c1e32d5', 'delete', 1, 'applications', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/delete\\/1\",\"slug\":1}', 1, NULL, '2026-01-30 22:45:28'),
(35, '435cb534-7e63-4700-a439-39e40690b5aa', 'create', 2, 'applications', NULL, '[]', '{\"id\":2,\"user_id\":1,\"faculty_id\":1,\"program_id\":27,\"appointment_id\":2,\"branch_id\":2,\"application_date\":\"2026-01-30\",\"phone\":\"0135415238\",\"nric\":\"030567411567\",\"matrix\":\"2025117864\",\"pic_name\":\"PUAN AINI AISYAH BINTI ZHARIFF ISKANDAR\",\"pic_email\":\"ainiaisyah@gmial.com\",\"company_name\":\"UiTM Cawangan Kelantan Kampus Machang\",\"company_street1\":\"Kampung Belukar\",\"company_street2\":\"Bandar Machang\",\"company_postcode\":\"18500\",\"company_city\":\"Machang\",\"company_state\":\"Kelantan\",\"start_date\":\"2026-03-01\",\"end_date\":\"2026-08-31\",\"cv\":\"Receipt (1).pdf\",\"cv_dir\":\"webroot\\\\files\\\\Applications\\\\cv\\\\\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-30 22:51:57'),
(36, '99804d07-873f-4d5c-99ae-4a84da7950ae', 'update', 2, 'applications', NULL, '{\"approval_status\":0,\"ref_no\":\"\"}', '{\"approval_status\":1,\"ref_no\":\"UiTM-S2(HEA-CDIM.CDIM110\\/2\"}', '[]', 1, NULL, '2026-01-30 22:52:11'),
(37, '7b41aa59-3811-4832-a913-5be8a27f1777', 'delete', 2, 'applications', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/delete\\/2\",\"slug\":1}', 1, NULL, '2026-01-30 23:02:18'),
(38, '63a45bc8-e7ef-483a-8105-84e02cbeba3b', 'create', 76, 'programs', NULL, '[]', '{\"id\":76,\"faculty_id\":1,\"code\":\"ACC110\",\"name\":\"Diploma in Accountancy\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/programs\\/add\",\"slug\":1}', 1, NULL, '2026-01-31 00:54:47'),
(39, '6a8946a2-0d66-4b45-83ae-ce648d110c96', 'create', 77, 'programs', NULL, '[]', '{\"id\":77,\"faculty_id\":1,\"code\":\"AC110\",\"name\":\"Diploma in Accountancy\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/programs\\/add\",\"slug\":1}', 1, NULL, '2026-01-31 00:57:14'),
(40, '924fc2bb-64c7-49a6-9aab-6d4988558323', 'delete', 77, 'programs', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/programs\\/delete\\/77\",\"slug\":1}', 1, NULL, '2026-01-31 00:57:27'),
(41, '0299c4dd-f15f-413a-9a48-beac283f37bd', 'create', 1, 'programs', NULL, '[]', '{\"id\":1,\"faculty_id\":1,\"code\":\"ACC110\",\"name\":\"Diploma Perakaunan\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/programs\\/add\",\"slug\":1}', 1, NULL, '2026-01-31 00:59:33'),
(42, '0def3177-3d2a-4d37-bf80-bf1dad9a395a', 'create', 2, 'programs', NULL, '[]', '{\"id\":2,\"faculty_id\":1,\"code\":\"AC120\",\"name\":\"Diploma Sistem Maklumat Perakaunan\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/programs\\/add\",\"slug\":1}', 1, NULL, '2026-01-31 01:00:28'),
(43, '2bd802aa-4466-453b-af2a-9904734d4686', 'create', 3, 'programs', NULL, '[]', '{\"id\":3,\"faculty_id\":1,\"code\":\"AC240\",\"name\":\"Sarjana Muda Perakaunan (Kepujian)\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/programs\\/add\",\"slug\":1}', 1, NULL, '2026-01-31 01:01:13'),
(44, 'e6bc8e6a-e13e-4149-8301-1b6d61123259', 'create', 4, 'programs', NULL, '[]', '{\"id\":4,\"faculty_id\":2,\"code\":\"AD111\",\"name\":\"Diploma Seni Reka Grafik & Media Digital \",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/programs\\/add\",\"slug\":1}', 1, NULL, '2026-01-31 01:03:21'),
(45, '5254cc81-ef52-4765-82a3-a4025269fe31', 'delete', 2, 'programs', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/programs\\/delete\\/2\",\"slug\":1}', 1, NULL, '2026-01-31 01:08:44'),
(46, 'eb2033d0-0fff-41c0-b0f0-b6a919164b6d', 'delete', 3, 'programs', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/programs\\/delete\\/3\",\"slug\":1}', 1, NULL, '2026-01-31 01:08:48'),
(47, 'af10c444-2fb4-4937-abd2-aec4c039c857', 'delete', 4, 'programs', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Programs\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/programs\\/delete\\/4\",\"slug\":1}', 1, NULL, '2026-01-31 01:08:50'),
(48, '08ca5549-68d7-438c-a4e4-16851b49eea3', 'create', 3, 'applications', NULL, '[]', '{\"id\":3,\"user_id\":1,\"faculty_id\":1,\"program_id\":1,\"appointment_id\":2,\"branch_id\":1,\"application_date\":\"2026-01-31\",\"phone\":\"0178890494\",\"nric\":\"040823140888\",\"matrix\":\"2025180137\",\"pic_name\":\"AISYAH NADHIRAH BINTI AHAMAD KHAIRI \",\"pic_email\":\"aisyahnadhiraha@gmail.com\",\"company_name\":\"Cawangan Selangor Kampus Puncak Perdana\",\"company_street1\":\"Lot 6, Jalan Pulau Angsa U10\\/14\",\"company_street2\":\" Seksyen U10\",\"company_postcode\":\"40150\",\"company_city\":\"Shah Alam\",\"company_state\":\"Selangor\",\"start_date\":\"2025-10-03\",\"end_date\":\"2026-02-28\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-01-31 02:01:06'),
(49, '50d69981-466c-41fb-976d-441798f44ce9', 'update', 3, 'applications', NULL, '{\"approval_status\":0,\"ref_no\":\"\"}', '{\"approval_status\":1,\"ref_no\":\"UiTM-S1(HEA-AC.AC110\\/3\"}', '[]', 1, NULL, '2026-01-31 02:02:04'),
(50, '03f44717-7381-4c2c-9ab7-3e90905350a4', 'create', 1, 'applications', NULL, '[]', '{\"id\":1,\"user_id\":1,\"faculty_id\":1,\"program_id\":1,\"appointment_id\":3,\"branch_id\":1,\"application_date\":\"2026-02-02\",\"phone\":\"0178990494\",\"nric\":\"040823140888\",\"matrix\":\"2025180137\",\"pic_name\":\"Aisyah Nadhirah binti Ahamad Khairi\",\"pic_email\":\"aisyahnadhiraha@gmail.com\",\"company_name\":\"UiTM Cawangan Selangor Kampus Puncak Perdana\",\"company_street1\":\"Jalan Pulau Indah Au10\\/A\",\"company_street2\":\"Puncak Perdana\",\"company_postcode\":\"40150\",\"company_city\":\"Shah Alam\",\"company_state\":\"Selangor\",\"start_date\":\"2026-03-01\",\"end_date\":\"2026-08-31\",\"cv\":\"FACULTY OF INFORMATION SCIENCE.pdf\",\"cv_dir\":\"webroot\\\\files\\\\Applications\\\\cv\\\\\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-02-02 01:31:10'),
(51, 'd2cbe0cb-e1f4-4bbd-94a0-2a6c2e9ac38c', 'create', 25, 'branches', NULL, '[]', '{\"id\":25,\"code\":\"S3\",\"session\":\"UiTM Cawangan Selangor Kampus Puncak Alam\",\"status\":1}', '{\"a_name\":\"Add\",\"c_name\":\"Branches\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/branches\\/add\",\"slug\":1}', 1, NULL, '2026-02-02 01:34:39'),
(52, '687acdb3-d61a-453b-bd74-fc7d53c41fc4', 'create', 2, 'applications', NULL, '[]', '{\"id\":2,\"user_id\":1,\"faculty_id\":2,\"program_id\":3,\"appointment_id\":6,\"branch_id\":1,\"application_date\":\"2026-02-02\",\"phone\":\"0136485200\",\"nric\":\"040718048755\",\"matrix\":\"2022463642\",\"pic_name\":\"Muhammad Affif bin Asmad\",\"pic_email\":\"affif@gmail.com\",\"company_name\":\"UiTM Cawangan Selangor Kampus Puncak Perdana\",\"company_street1\":\"Jalan Pulau Indah Au10\\/A\",\"company_street2\":\"Puncak Perdana\",\"company_postcode\":\"40150\",\"company_city\":\"Shah Alam\",\"company_state\":\"Selangor\",\"start_date\":\"2027-10-02\",\"end_date\":\"2028-02-29\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-02-02 01:38:54'),
(53, '99f84dd5-4bc9-4cb1-98bd-b0967bbb400e', 'update', 1, 'applications', NULL, '{\"approval_status\":0,\"ref_no\":\"\"}', '{\"approval_status\":1,\"ref_no\":\"UiTM-S1(HEA-AC.AC110\\/1\"}', '[]', 1, NULL, '2026-02-02 01:39:35'),
(54, '9d7b840e-a539-4fe9-a3d0-f8ba948af5c4', 'update', 2, 'applications', NULL, '{\"approval_status\":0,\"ref_no\":\"\"}', '{\"approval_status\":2,\"ref_no\":\"UiTM-S1(HEA-AD.AD111\\/2\"}', '[]', 1, NULL, '2026-02-02 01:40:46'),
(55, 'eb83ab6f-f014-4c12-b4e1-bbbb9562be1a', 'create', 3, 'applications', NULL, '[]', '{\"id\":3,\"user_id\":1,\"faculty_id\":3,\"program_id\":11,\"appointment_id\":3,\"branch_id\":1,\"application_date\":\"2026-02-02\",\"phone\":\"0179990989\",\"nric\":\"080923130899\",\"matrix\":\"2025160789\",\"pic_name\":\"ALIA BINTI AHMAD\",\"pic_email\":\"alia@gmail.com\",\"company_name\":\"UiTM Cawangan Selangor Kampus Puncak Perdana\",\"company_street1\":\"Jalan Pulau Indah Au10\\/A\",\"company_street2\":\"Puncak Perdana\",\"company_postcode\":\"40150\",\"company_city\":\"Shah Alam\",\"company_state\":\"Selangor\",\"start_date\":\"2026-03-03\",\"end_date\":\"2026-08-31\",\"cv\":\"Note IMS566-Asyraf.pdf\",\"cv_dir\":\"webroot\\\\files\\\\Applications\\\\cv\\\\\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-02-02 04:12:53'),
(56, '65c40b7b-5a9b-4108-ba2c-bf17f25fd953', 'create', 4, 'applications', NULL, '[]', '{\"id\":4,\"user_id\":1,\"faculty_id\":3,\"program_id\":11,\"appointment_id\":3,\"branch_id\":1,\"application_date\":\"2026-02-02\",\"phone\":\"0179990989\",\"nric\":\"080923130899\",\"matrix\":\"2025160789\",\"pic_name\":\"ALIA BINTI AHMAD\",\"pic_email\":\"alia@gmail.com\",\"company_name\":\"UiTM Cawangan Selangor Kampus Puncak Perdana\",\"company_street1\":\"Jalan Pulau Indah Au10\\/A\",\"company_street2\":\"Puncak Perdana\",\"company_postcode\":\"40150\",\"company_city\":\"Shah Alam\",\"company_state\":\"Selangor\",\"start_date\":\"2026-03-03\",\"end_date\":\"2026-08-31\",\"cv\":\"Note IMS566-Asyraf.pdf\",\"cv_dir\":\"webroot\\\\files\\\\Applications\\\\cv\\\\\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-02-02 04:12:53'),
(57, '96e2da93-9fd2-4ac1-bc2d-d72731036f0b', 'delete', 4, 'applications', NULL, NULL, NULL, '{\"a_name\":\"Delete\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/delete\\/4\",\"slug\":1}', 1, NULL, '2026-02-02 04:13:25'),
(58, 'a4e3b2d4-0fd6-4b14-b7be-6b39dc8a7aef', 'update', 3, 'applications', NULL, '{\"approval_status\":0,\"ref_no\":\"\"}', '{\"approval_status\":1,\"ref_no\":\"UiTM-S1(HEA-FSPPP.AM110\\/3\"}', '[]', 1, NULL, '2026-02-02 04:13:58'),
(59, 'a849dc57-6275-42c8-ad21-5d53f4a508e8', 'update', 2, 'applications', NULL, '{\"approval_status\":2}', '{\"approval_status\":1}', '{\"a_name\":\"Edit\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/edit\\/2\",\"slug\":1}', 1, NULL, '2026-02-02 04:32:38'),
(60, '288eb59f-7939-4922-b27e-981f82b4b731', 'create', 5, 'applications', NULL, '[]', '{\"id\":5,\"user_id\":1,\"faculty_id\":13,\"program_id\":74,\"appointment_id\":5,\"branch_id\":2,\"application_date\":\"2026-02-02\",\"phone\":\"01356672653\",\"nric\":\"080223041688\",\"matrix\":\"2025180177\",\"pic_name\":\"Ali bin Ahmad\",\"pic_email\":\"alia@gmail.com\",\"company_name\":\"UiTM Cawangan Selangor Kampus Shah Alam\",\"company_street1\":\"Jalan Ilmu 1\\/1\",\"company_street2\":\"Shah Alam\",\"company_postcode\":\"40450 \",\"company_city\":\"Shah Alam\",\"company_state\":\"Selangor\",\"start_date\":\"2027-03-02\",\"end_date\":\"2027-08-31\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/admin\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-02-02 04:40:27'),
(61, '1dc2a16f-f507-4967-9c20-13af16ea370e', 'update', 5, 'applications', NULL, '{\"approval_status\":0,\"ref_no\":\"\"}', '{\"approval_status\":2,\"ref_no\":\"UiTM-S2(HEA-FSR.SR241\\/5\"}', '[]', 1, NULL, '2026-02-02 04:41:30'),
(62, 'c77c8641-d387-45d8-9c86-d59a1c34a532', 'create', 2, 'users', NULL, '[]', '{\"id\":2,\"fullname\":\"AISYAH NADHIRAH BINTI AHAMAD KHAIRI\",\"password\":\"$2y$10$kPuSBnw2zTu0au5SqVj3\\/O\\/uv8BvVGir3CRM1ihsGvBZ0HlJouSNa\",\"email\":\"aisyah@gmail.com\",\"slug\":\"AISYAH-NADHIRAH-BINTI-AHAMAD-KHAIRI\"}', '[]', 1, NULL, '2026-02-02 21:11:50'),
(63, 'a3411a06-13d7-418f-8488-2a57e1a3968d', 'update', 2, 'users', NULL, '{\"status\":\"0\"}', '{\"status\":1}', '[]', 1, NULL, '2026-02-02 21:12:10'),
(64, '05722849-b401-4ceb-80c0-e7b92f05cfec', 'update', 2, 'users', NULL, '{\"is_email_verified\":0}', '{\"is_email_verified\":1}', '[]', 1, NULL, '2026-02-02 21:12:18'),
(65, '43744b70-5458-41ec-b3e2-8e651266eab7', 'create', 6, 'applications', NULL, '[]', '{\"id\":6,\"user_id\":1,\"faculty_id\":8,\"program_id\":31,\"appointment_id\":4,\"branch_id\":2,\"application_date\":\"2026-02-02\",\"phone\":\"0135643790\",\"nric\":\"011115010088\",\"matrix\":\"2024156712\",\"pic_name\":\"AINUL BINTI ZANIA\",\"pic_email\":\"ainul@gmail.com\",\"company_name\":\"UiTM Cawangan Selangor Kampus Shah Alam\",\"company_street1\":\"Jalan Ilmu 1\\/1\",\"company_street2\":\"Shah Alam\",\"company_postcode\":\"40450 \",\"company_city\":\"Shah Alam\",\"company_state\":\"Selangor\",\"start_date\":\"2026-10-02\",\"end_date\":\"2027-02-02\"}', '{\"a_name\":\"Add\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/add\",\"slug\":1}', 1, NULL, '2026-02-02 21:25:42'),
(66, '22146c45-eb1d-4ac6-998f-e9d264e271a6', 'update', 6, 'applications', NULL, '{\"user_id\":1}', '{\"user_id\":2}', '{\"a_name\":\"Edit\",\"c_name\":\"Applications\",\"ip\":\"::1\",\"url\":\"http:\\/\\/localhost\\/ppoappointment\\/applications\\/edit\\/6\",\"slug\":1}', 1, NULL, '2026-02-02 21:25:58'),
(67, '1b9e993b-e2dc-4aba-9b4c-73d7f384d602', 'create', 3, 'users', NULL, '[]', '{\"id\":3,\"fullname\":\"MUHAMMAD ZHARIF HANAFI BIN ZULKIFLI\",\"password\":\"$2y$10$2qfomMFbW3YOICWsKLT1jOkpVL01HffxC5vC8CGkIMxS7le8kh8C2\",\"email\":\"zharif@gmail.com\",\"slug\":\"MUHAMMAD-ZHARIF-HANAFI-BIN-ZULKIFLI\"}', '[]', 1, NULL, '2026-02-02 21:27:37'),
(68, '5362e46c-b718-4124-b2e9-af49c44d37f5', 'update', 3, 'users', NULL, '{\"status\":\"0\"}', '{\"status\":1}', '[]', 1, NULL, '2026-02-02 21:28:25'),
(69, '910d809a-e5df-48a5-a676-8952550ba6fd', 'update', 3, 'users', NULL, '{\"is_email_verified\":0}', '{\"is_email_verified\":1}', '[]', 1, NULL, '2026-02-02 21:28:29'),
(70, '32274aaf-de9e-45b3-b715-d9b80cc07d34', 'create', 4, 'users', NULL, '[]', '{\"id\":4,\"fullname\":\"ISKANDAR ZULKARNAIN BIN AZMIR\",\"password\":\"$2y$10$TTh8fXwhQkDsbOs5e8aMluQ8ALpX5TpE5bokIXuS5vM9AMjjzEAOi\",\"email\":\"iskandar@gmail.com\",\"slug\":\"ISKANDAR-ZULKARNAIN-BIN-AZMIR\"}', '[]', 1, NULL, '2026-02-02 22:10:21'),
(71, '148e9a98-b41e-4a4f-a2c5-1a7b6944c52e', 'create', 5, 'users', NULL, '[]', '{\"id\":5,\"fullname\":\"NURQURRATU\'AINI BINTI MOHD ROSLAN\",\"password\":\"$2y$10$QQ0Xq5lKN.LYJfKnQ\\/y34.GnxjmnW8myLB3z7lEcrm7QZomEfNVmu\",\"email\":\"aini@gmail.com\",\"slug\":\"NURQURRATU-AINI-BINTI-MOHD-ROSLAN\"}', '[]', 1, NULL, '2026-02-02 22:11:12'),
(72, '6bf720a7-bd07-4caf-8e7a-414ca0efe027', 'update', 4, 'users', NULL, '{\"status\":\"0\"}', '{\"status\":1}', '[]', 1, NULL, '2026-02-02 22:11:31'),
(73, '03594ee9-e710-43fb-8464-6ec2c10b5dd9', 'update', 4, 'users', NULL, '{\"is_email_verified\":0}', '{\"is_email_verified\":1}', '[]', 1, NULL, '2026-02-02 22:11:35'),
(74, '6e6a3241-1fb0-46a7-bbf1-e873685c8679', 'update', 5, 'users', NULL, '{\"status\":\"0\"}', '{\"status\":1}', '[]', 1, NULL, '2026-02-02 22:11:46'),
(75, '6b65af31-fd51-4a74-ad4f-5b9826bf48a8', 'update', 5, 'users', NULL, '{\"is_email_verified\":0}', '{\"is_email_verified\":1}', '[]', 1, NULL, '2026-02-02 22:11:50');

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
(1, 'S1', 'UiTM Cawangan Selangor Kampus Puncak Perdana', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(2, 'S2', 'UiTM Cawangan Selangor Kampus Shah Alam', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(3, 'K1', 'UiTM Cawangan Kelantan Kampus Machang', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(4, 'K2', 'UiTM Cawangan Kelantan Kampus Kota Bharu', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(5, 'M1', 'UiTM Cawangan Melaka Kampus Alor Gajah', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(6, 'M2', 'UiTM Cawangan Melaka Kampus Bandaraya Melaka', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(7, 'N1', 'UiTM Cawangan Negeri Sembilan Kampus Seremban', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(8, 'N2', 'UiTM Cawangan Negeri Sembilan Kampus Kuala Pilah', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(9, 'N3', 'UiTM Cawangan Negeri Sembilan Kampus Rembau', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(10, 'P1', 'UiTM Cawangan Perak Kampus Seri Iskandar', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(11, 'P2', 'UiTM Cawangan Perak Kampus Tapah', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(12, 'PP1', 'UiTM Cawangan Pulau Pinang Kampus Permatang Pauh', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(13, 'PP2', 'UiTM Cawangan Pulau Pinang Kampus Bertam', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(14, 'PL1', 'UiTM Cawangan Perlis Kampus Arau', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(15, 'PH1', 'UiTM Cawangan Pahang Kampus Jengka', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(16, 'PH2', 'UiTM Cawangan Pahang Kampus Raub', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(17, 'J1', 'UiTM Cawangan Johor Kampus Segamat', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(18, 'J2', 'UiTM Cawangan Johor Kampus Pasir Gudang', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(19, 'SB1', 'UiTM Cawangan Sabah Kampus Kota Kinabalu', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(20, 'SB2', 'UiTM Cawangan Sabah Kampus Tawau', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(21, 'SW1', 'UiTM Cawangan Sarawak Kampus Samarahan', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(22, 'SW2', 'UiTM Cawangan Sarawak Kampus Mukah', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(23, 'T1', 'UiTM Cawangan Terengganu Kampus Kuala Terengganu', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(24, 'T2', 'UiTM Cawangan Terengganu Kampus Dungun', 1, '2026-01-30 20:12:17', '2026-01-30 20:12:17'),
(25, 'S3', 'UiTM Cawangan Selangor Kampus Puncak Alam', 1, '2026-02-02 01:34:38', '2026-02-02 01:34:38');

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
(1, 'AC', 'Fakulti Perakaunan', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(2, 'AD', 'Fakulti Seni Lukis & Seni Reka', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(3, 'FSPPP', 'Fakulti Sains Pentadbiran & Pengajian Polisi', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(4, 'FSPU', 'Fakulti Senibina, Perancangan & Ukur', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(5, 'FSG', 'Fakulti Sains Gunaan', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(6, 'FBM', 'Fakulti Pengurusan Perniagaan', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(7, 'FINFO', 'Fakulti Pengurusan Maklumat', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(8, 'FSKM', 'Fakulti Sains Komputer & Matematik', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(9, 'FKA', 'Fakulti Kejuruteraan Awam', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(10, 'FKE', 'Fakulti Kejuruteraan Elektrik', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(11, 'FKM', 'Fakulti Kejuruteraan Mekanikal', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(12, 'FSK', 'Fakulti Sains Kesihatan', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42'),
(13, 'FSR', 'Fakulti Sains Sukan & Rekreasi', 1, '2026-01-31 00:34:42', '2026-01-31 00:34:42');

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
(1, 1, 'AC110', 'Diploma in Accountancy', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(2, 1, 'AC120', 'Diploma in Accounting Information Systems', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(3, 2, 'AD111', 'Diploma in Fine Art and Design (Graphic Design & Digital Media)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(4, 2, 'AD112', 'Diploma in Fine Art and Design (Textile Design)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(5, 2, 'AD113', 'Diploma in Fine Art and Design (Fine Metal Design)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(6, 2, 'AD117', 'Diploma in Photography and Creative Imaging', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(7, 2, 'AD118', 'Diploma in Fine Art', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(8, 2, 'AD120', 'Diploma in Printing Technology', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(9, 2, 'AD126', 'Diploma in Fashion Design Technology', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(10, 2, 'AD127', 'Diploma in Animation', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(11, 3, 'AM110', 'Diploma in Public Administration', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(12, 4, 'AP111', 'Diploma in Town and Regional Planning', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(13, 4, 'AP112', 'Diploma in Quantity Surveying', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(14, 4, 'AP113', 'Diploma in Building Technology', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(15, 4, 'AP114', 'Diploma in Building Surveying', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(16, 4, 'AP115', 'Diploma in Landscape Architecture', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(17, 4, 'AP116', 'Diploma in Real Estate Management', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(18, 5, 'AS111', 'Diploma in Applied Sciences', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(19, 5, 'AS112', 'Diploma in Food Technology', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(20, 5, 'AS114', 'Diploma in Environmental Health', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(21, 6, 'BA111', 'Diploma in Business Studies', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(22, 6, 'BA118', 'Diploma in Office Management', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(23, 6, 'BA119', 'Diploma in Banking', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(24, 6, 'BA120', 'Diploma in Insurance', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(25, 6, 'BA121', 'Diploma in Investment Analysis', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(26, 6, 'BM111', 'Diploma in Muamalat', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(27, 7, 'CDIM110', 'Diploma in Information Management', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(28, 8, 'CS110', 'Diploma in Computer Science', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(29, 8, 'CS111', 'Diploma in Information Technology', 0, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(30, 8, 'CS113', 'Diploma in Statistics', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(31, 8, 'CS114', 'Diploma in Mathematical Sciences', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(32, 9, 'EC110', 'Diploma in Civil Engineering', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(33, 10, 'EE110', 'Diploma in Electrical Engineering', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(34, 10, 'EE111', 'Diploma in Electronic Engineering', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(35, 11, 'EM110', 'Diploma in Mechanical Engineering', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(36, 11, 'EM111', 'Diploma in Industrial Engineering', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(37, 6, 'HM111', 'Diploma in Halal Management', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(38, 12, 'HS110', 'Diploma in Nursing', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(39, 13, 'SR113', 'Diploma in Sports Studies', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(40, 1, 'AC240', 'Bachelor of Accountancy (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(41, 2, 'AD233', 'Bachelor of Creative Game Design (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(42, 2, 'AD234', 'Bachelor of Creative Motion Graphics (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(43, 2, 'AD248', 'Bachelor of Fine Art (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(44, 2, 'AD261', 'Bachelor of Graphic Design (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(45, 2, 'AD266', 'Bachelor of Fashion Design Technology (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(46, 2, 'AD267', 'Bachelor of Creative Photomedia (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(47, 6, 'BA242', 'Bachelor of Business Administration (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(48, 6, 'BA249', 'Bachelor of Banking (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(49, 6, 'BA250', 'Bachelor of Insurance (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(50, 6, 'BA252', 'Bachelor of Investment Management (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(51, 4, 'BE221', 'Bachelor of Town and Regional Planning (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(52, 4, 'BE243', 'Bachelor of Science (Hons) in Architecture', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(53, 4, 'BE246', 'Bachelor of Construction Management (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(54, 4, 'BE247', 'Bachelor of Interior Architecture (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(55, 4, 'BE248', 'Bachelor of Landscape Architecture (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(56, 4, 'BE249', 'Bachelor of Building Surveying (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(57, 4, 'BE254', 'Bachelor of Quantity Surveying (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(58, 4, 'BE255', 'Bachelor of Estate Management (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(59, 7, 'CDIM110', 'Diploma in Information Management', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(60, 7, 'CDIM120', 'Diploma in Library Management', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(61, 7, 'CDIM260', 'Bachelor of Information Science (Hons) Library Management', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(62, 7, 'CDIM261', 'Bachelor of Information Science (Hons) Records Management', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(63, 7, 'CDIM262', 'Bachelor of Information Science (Hons) Information Systems Management', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(64, 7, 'CDIM263', 'Bachelor of Information Science (Hons) Information Content Management', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(65, 8, 'CS230', 'Bachelor of Computer Science (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(66, 8, 'CS240', 'Bachelor of Information Technology (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(67, 8, 'CS245', 'Bachelor of Information Systems (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(68, 8, 'CS246', 'Bachelor of Data Science (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(69, 8, 'CS247', 'Bachelor of Mathematical Modelling and Analytics (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(70, 9, 'EC220', 'Bachelor of Civil Engineering (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(71, 10, 'EE220', 'Bachelor of Electrical Engineering (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(72, 11, 'EE221', 'Bachelor of Electronic Engineering (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(73, 11, 'EM220', 'Bachelor of Mechanical Engineering (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(74, 13, 'SR241', 'Bachelor of Sports Science (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(75, 13, 'SR243', 'Bachelor of Sports Management (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(76, 13, 'SR245', 'Bachelor of Coaching Science (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44'),
(77, 13, 'SR246', 'Bachelor of Recreation Management (Hons)', 1, '2026-01-31 01:14:44', '2026-01-31 01:14:44');

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
('recrud', 'Program Professional Offered', 'PPOAPPOINTMENT UiTM', 'Empowering UiTM’s professional programs through smart scheduling and seamless access', 'Universiti Teknologi Mara ', 'UiTM', 'support@uitm.edu.my', 'noreply@uitm.edu.my', 'Re-CRUD', 'Re-CRUD, CakePHP, Learning, CRUD', 'Re-CRUD', 'Re-CRUD', 'Re-CRUD', 'Asia/Kuala_Lumpur', 'Re-CRUD', 0, 0, 0, 0, '1.1', '', '', NULL, '', '', '', '', '<p><strong>Server maintenance</strong> is scheduled to be executed on Jan 1, 2023, from 1.00 am to 4.00 am. An intermittent connection is expected during the server maintenance period.</p>', 0, '2022-11-07', 'Code The Pixel', 'https://codethepixel.com', 0, '2020-04-08 20:56:04', '2026-02-02 21:18:37');

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
(1, 1, 'NURUL HANIM SYUHADA BINTI HAZMIRUDDIN SHAM', '$2y$10$OrUKHzNQUic6dFqSuG9QBeDzMbbwPz1BQXKgBKPcQyMTNdv3Z22xe', 'admin@localhost.com', 'Screenshot 2026-01-28 010829.png', 'webroot\\files\\Users\\avatar\\Administrator', NULL, '2024-07-10 20:30:04', '1', 1, '2026-02-02 22:24:04', '::1', 'Administrator', '2022-10-26 02:54:19', '2026-01-28 01:10:38', NULL, NULL),
(2, 3, 'AISYAH NADHIRAH BINTI AHAMAD KHAIRI', '$2y$10$kPuSBnw2zTu0au5SqVj3/O/uv8BvVGir3CRM1ihsGvBZ0HlJouSNa', 'aisyah@gmail.com', NULL, NULL, NULL, '0000-00-00 00:00:00', '1', 1, NULL, NULL, 'AISYAH-NADHIRAH-BINTI-AHAMAD-KHAIRI', '2026-02-02 21:11:50', '2026-02-02 21:12:18', NULL, NULL),
(3, 3, 'MUHAMMAD ZHARIF HANAFI BIN ZULKIFLI', '$2y$10$2qfomMFbW3YOICWsKLT1jOkpVL01HffxC5vC8CGkIMxS7le8kh8C2', 'zharif@gmail.com', NULL, NULL, NULL, '0000-00-00 00:00:00', '1', 1, NULL, NULL, 'MUHAMMAD-ZHARIF-HANAFI-BIN-ZULKIFLI', '2026-02-02 21:27:37', '2026-02-02 21:28:29', NULL, NULL),
(4, 3, 'ISKANDAR ZULKARNAIN BIN AZMIR', '$2y$10$TTh8fXwhQkDsbOs5e8aMluQ8ALpX5TpE5bokIXuS5vM9AMjjzEAOi', 'iskandar@gmail.com', NULL, NULL, NULL, '0000-00-00 00:00:00', '1', 1, NULL, NULL, 'ISKANDAR-ZULKARNAIN-BIN-AZMIR', '2026-02-02 22:10:21', '2026-02-02 22:11:35', NULL, NULL),
(5, 3, 'NURQURRATU\'AINI BINTI MOHD ROSLAN', '$2y$10$QQ0Xq5lKN.LYJfKnQ/y34.GnxjmnW8myLB3z7lEcrm7QZomEfNVmu', 'aini@gmail.com', NULL, NULL, NULL, '0000-00-00 00:00:00', '1', 1, '2026-02-02 22:35:43', '::1', 'NURQURRATU-AINI-BINTI-MOHD-ROSLAN', '2026-02-02 22:11:12', '2026-02-02 22:11:50', NULL, NULL);

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
(2, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', NULL, 1, '2026-01-27 15:15:53', '2026-01-27 15:15:53'),
(3, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', NULL, 1, '2026-02-02 01:23:47', '2026-02-02 01:23:47'),
(4, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', 'http://localhost/ppoappointment/dashboards/', 1, '2026-02-02 01:24:49', '2026-02-02 01:24:49'),
(5, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', NULL, 1, '2026-02-02 01:25:19', '2026-02-02 01:25:19'),
(6, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', NULL, 1, '2026-02-02 04:10:09', '2026-02-02 04:10:09'),
(7, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', 'http://localhost/ppoappointment/admin?redirect=%2Fusers%2Flogout', 1, '2026-02-02 04:10:10', '2026-02-02 04:10:10'),
(8, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', NULL, 1, '2026-02-02 04:10:18', '2026-02-02 04:10:18'),
(9, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', 'http://localhost/ppoappointment/applications/add', 1, '2026-02-02 22:16:18', '2026-02-02 22:16:18'),
(10, 5, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', NULL, 1, '2026-02-02 22:16:36', '2026-02-02 22:16:36'),
(11, 5, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', 'http://localhost/ppoappointment/applications', 1, '2026-02-02 22:19:07', '2026-02-02 22:19:07'),
(12, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', NULL, 1, '2026-02-02 22:19:13', '2026-02-02 22:19:13'),
(13, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', 'http://localhost/ppoappointment/admin/users/profile/Administrator', 1, '2026-02-02 22:21:02', '2026-02-02 22:21:02'),
(14, 1, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', NULL, 1, '2026-02-02 22:24:04', '2026-02-02 22:24:04'),
(15, 1, 'Logout', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', 'http://localhost/ppoappointment/dashboard', 1, '2026-02-02 22:27:27', '2026-02-02 22:27:27'),
(16, 5, 'Login', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36 Edg/144.0.0.0', 'build 26200 (Windows 11)', '::1', 'Eve', NULL, 1, '2026-02-02 22:35:43', '2026-02-02 22:35:43');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_groups`
--
ALTER TABLE `user_groups`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_logs`
--
ALTER TABLE `user_logs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
