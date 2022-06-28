-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2021 at 09:55 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medibookings`
--
DROP DATABASE if exists `medibookings`;
CREATE DATABASE `medibookings`:
USE `medibookings`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(13) NOT NULL,
  `adminFirstName` varchar(25) NOT NULL,
  `adminLastName` varchar(25) NOT NULL,
  `adminPhoneNumber` varchar(12) NOT NULL,
  `adminEmail` varchar(50) NOT NULL,
  `adminPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `adminFirstName`, `adminLastName`, `adminPhoneNumber`, `adminEmail`, `adminPassword`) VALUES
('0001157634089', 'Mthokozisi', 'Mabunda', '0785453799', 'admin@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
('9404042345089', 'Mable', 'Freeman', '0606873542', 'mablefreeman@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
('9509081254082', 'Mncedisi', 'Sithole', '0723880963', 'mncedisi11@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
('9608275688084', 'Simphiwe', 'Machiye', '0793651446', 'Simphiw31@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99'),
('9911125829081', 'Phindile', ' Masemula', '0891934998', 'phindile@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appointment_ID` int(10) NOT NULL,
  `appointment_symptoms` varchar(150) NOT NULL,
  `appointment_status` varchar(20) NOT NULL,
  `appointment_diagnoses` varchar(500) NOT NULL,
  `appointment_clinicalNotes` varchar(500) NOT NULL,
  `appointment_type` varchar(50) NOT NULL,
  `patient_id` varchar(13) NOT NULL,
  `doctor_id` varchar(13) NOT NULL,
  `schedule_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appointment_ID`, `appointment_symptoms`, `appointment_status`, `appointment_diagnoses`, `appointment_clinicalNotes`, `appointment_type`, `patient_id`, `doctor_id`, `schedule_id`) VALUES
(1, 'Cough', 'missed', '', '', 'Consultation', '0102305688084', '7104305688085', 8),
(2, 'Headache,fever,vomiting ', 'Cancelled', '', '', 'Consultation', '9009135282086', '7104305688085', 1),
(3, 'Headache,fever,vomiting ', 'Attended', 'Lack of rest and imbalance sleeping routine is affecting your health.\r\nFlue ,Mini stroke', 'Drink 2 Panado\'s a day one in the morning one at night ,provided sleeping pills to adjust the sleeping routine ,Rest and have enought water ', 'Consultation', '9009135282086', '7104305688085', 2),
(4, 'None', 'Pending', '', '', 'Eye check up', '9608275688084', '7806265678084', 49),
(5, 'constipation', 'Cancelled', '', '', 'Consultation', '8908225677089', '7104305688085', 30),
(6, 'Fever', 'pending', '', '', 'Consultation', '9608275688084', '7806265678084', 55),
(7, 'require a pap test', 'pending', '', '', 'Pap test', '0112305687083', '9709031225088', 4),
(8, 'Headache ,dizziness', 'pending', 'Just a mild flue', 'A fruit a day keeps a doctor away', 'Consultation', '8908225677089', '9809084356', 25),
(9, 'Cold and Flue', 'Attended', 'Just a mild flue', 'A fruit a day keeps a doctor away', 'Consultation ', '8908225677089', '7806265678084', 8),
(10, 'Toothache', 'pending', '', '', 'Dental care', '9102145688089', '7808305688085', 13);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `cityZipCode` varchar(4) NOT NULL,
  `cityName` varchar(25) NOT NULL,
  `provinceZipCode` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`cityZipCode`, `cityName`, `provinceZipCode`) VALUES
('0002', 'Tshwane', '0001'),
('0012', 'Mamelodi', '0001'),
('0302', 'Northern Park', '0300'),
('0458', 'Kwagga', '1030'),
('0501', 'Leboa kgomo', '0699'),
('1022', 'KwaMhlanga', '1030'),
('1034', 'eMalahleni', '1030'),
('3202', 'Pietermaritzburg', '4500'),
('4734', 'Former Transkei', '4731'),
('8302', 'Gordonia Region', '8100'),
('9303', 'Bloefontein', '9300');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `doctor_id` varchar(13) NOT NULL,
  `doctorFirstName` varchar(25) NOT NULL,
  `doctorLastName` varchar(25) NOT NULL,
  `doctorSpecialty` varchar(30) NOT NULL,
  `doctorEmail` varchar(50) NOT NULL,
  `doctorPassord` varchar(50) NOT NULL,
  `admin_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`doctor_id`, `doctorFirstName`, `doctorLastName`, `doctorSpecialty`, `doctorEmail`, `doctorPassord`, `admin_id`) VALUES
('7104305688085', 'Given ', 'Mnguni', 'General Practitioner', 'Given29@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('7806265678084', 'Sipho', 'Ngobeni', 'Demetologist', 'doctor@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('7808305688085', 'Mncedisi', 'Sithole', 'Opthometrist', 'Mncedis@medibookings.co.za', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('7902025688085', 'Xolani ', 'Mahlangu', 'General Practitioner', 'MahlanguXol@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('7909075464088', 'Wandile', 'Mpholoni', 'Dentist', 'wandile@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('8908095478089', 'Sbusiso', 'Mkhephuli', 'Dietician', 'mkhephuli@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9203021871082', 'Emmanuel', 'Mahlangu', 'General Practitioner ', 'emmanuel@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9404046783089', 'Simphiwe ', 'Machiye', 'optometrist', 'simphiwe@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9609087675089', 'Phindile', 'Masimula', 'Neurologist', 'phindile@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9709031225088', 'Neliswa', 'Sithole', 'Gynacologist', 'neliswa@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9809082321088', 'Maxwell', 'Smith', 'Dentist', 'max123@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9809084356', 'Pertunia ', 'Senamela', ' Dietician', 'senamela@gmail.com ', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patient_id` varchar(13) NOT NULL,
  `patientFirstName` varchar(25) NOT NULL,
  `patientLastName` varchar(25) NOT NULL,
  `patientGender` varchar(6) NOT NULL,
  `patientStreetAddress` varchar(100) NOT NULL,
  `patientMaritialStatus` varchar(25) NOT NULL,
  `patientPhone` varchar(12) NOT NULL,
  `patientEmail` varchar(50) NOT NULL,
  `patientPassword` varchar(50) NOT NULL,
  `createdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `cityZipCode` varchar(4) NOT NULL,
  `provinceZipCode` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patient_id`, `patientFirstName`, `patientLastName`, `patientGender`, `patientStreetAddress`, `patientMaritialStatus`, `patientPhone`, `patientEmail`, `patientPassword`, `createdate`, `cityZipCode`, `provinceZipCode`) VALUES
('0102305688084', 'Kamo', 'Chilwane', 'Male', 'Refiloe East', '', '0661805432', 'KamoChilwane@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-15 07:02:28', '0012', '0001'),
('0112305687083', 'Julia', 'Erasmas', 'male', '15 langa cres\r\nzeekoewater', 'married', '0661805432', 'dd@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-21 11:32:56', '0501', '0699'),
('8212125884083', 'Ellias', 'Masango', 'Male', 'Bailey', '', '0860010111', 'Ellias@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-15 07:02:43', '9303', '9300'),
('8908225677089', 'Vusimuzi', 'Mthombeni', 'Male', '18 Bailey Street\r\n102 bleskok', '', '0768762233', 'Vusi@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-15 07:02:46', '0012', '0001'),
('9007085678085', 'Gracious', ' Mahlangu', 'Female', 'Eastern Park 1123', '', '0783115899', 'Simph@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-15 07:02:51', '4734', '4731'),
('9009135282086', 'Thobile ', 'Machiye', 'Female', 'HO5 Chris-Hani\r\nVezani Strees', '', '0783115899', 'patient@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-21 11:33:14', '1022', '1030'),
('9102145688089', 'Thoko ', 'Mnguni', 'Female', 'highveld view', '', '0879982301', 'thoko@high.ac.za', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-15 07:02:59', '8302', '8100'),
('9406165688084', 'Emmanuel', 'Ngobeni', 'Male', 'Nhlazatje', '', '0780055566', 'Emmanuel@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-15 07:03:04', '3202', '4500'),
('9608275688084', 'Simphiwe', 'Machiye', 'male', 'HO5 chris-hani\r\nVezani street', 'single', '0793651446', 'Simp@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-15 07:03:08', '1022', '1030'),
('9705145677082', 'Nkosinathi', 'Masilela', 'Male', 'Thembalethu', '', '0798321234', 'Nkosinathi@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-11-15 07:03:14', '4734', '4731');

-- --------------------------------------------------------

--
-- Table structure for table `province`
--

CREATE TABLE `province` (
  `provinceZipCode` varchar(4) NOT NULL,
  `provinceName` varchar(30) NOT NULL,
  `provinceCountry` varchar(30) NOT NULL DEFAULT 'South Africa'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `province`
--

INSERT INTO `province` (`provinceZipCode`, `provinceName`, `provinceCountry`) VALUES
('0001', 'Gauteng', 'South Africa'),
('0300', 'North West', 'South Africa'),
('0699', 'Limpopo', 'South Africa'),
('1030', 'Mpumalanga', 'South Africa'),
('4500', 'KwaZulu Natal', 'South Africa'),
('4731', 'Eastern Cape', 'South Africa'),
('6700', 'Western Cape', 'South Africa'),
('8100', 'Northern Cape', 'South Africa'),
('9300', 'Free State', 'South Africa');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `receptionist_id` varchar(13) NOT NULL,
  `receptionistFirstName` varchar(25) NOT NULL,
  `receptionistLastName` varchar(25) NOT NULL,
  `receptionistPhone` varchar(12) NOT NULL,
  `receptionistEmail` varchar(50) NOT NULL,
  `receptionistPassword` varchar(50) NOT NULL,
  `admin_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`receptionist_id`, `receptionistFirstName`, `receptionistLastName`, `receptionistPhone`, `receptionistEmail`, `receptionistPassword`, `admin_id`) VALUES
('0012015482086', 'Phindile', 'Masimula', '0783205460', 'receptionist@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('0012235682086', 'Pertunia', 'Senamela', '0799605460', 'Pertunia00@tut.ac.za', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('4345678909876', 'Simphiwe', 'Machiye', '0793651446', 'admin3@admin.com', 'password', '0001157634089'),
('9008235788084', 'Pretty', 'Mahlangu', '0662427459', 'pretty99@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9207125688084', 'Sbusiso', 'Mvundla', '0798865746', 'Sbu978@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9709083456081', 'Innocent ', 'Makua', '076044178', 'mahkua@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9821057898089', 'William ', 'Stains', '08234235799', 'William@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9876543212345', 'Simphiwe', 'Machiye', '0793651446', 'admin2@gmail.com', 'password', '0001157634089'),
('9908025252088', 'Duduzile', 'Msiza', '0823434599', 'duduzile12@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9908053556082', 'Mduduzi', 'Hlatshwayo', '08234356799', 'mduhlatshwayo@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9908125812082', 'Tracy', 'Seloma', '0783669858', 'tracy11@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084'),
('9908235788084', 'Martha', 'Mahlangu', '0662427459', 'martha99@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '9608275688084');

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `schedule_id` int(10) NOT NULL,
  `schedule_date` date NOT NULL,
  `schedule_startTime` time NOT NULL,
  `schedule_endTime` time NOT NULL,
  `schedule_status` varchar(20) NOT NULL,
  `receptionist_id` varchar(13) NOT NULL,
  `doctor_id` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`schedule_id`, `schedule_date`, `schedule_startTime`, `schedule_endTime`, `schedule_status`, `receptionist_id`, `doctor_id`) VALUES
(1, '2021-10-25', '09:00:00', '09:30:00', 'Available', '0012015482086', '7104305688085'),
(2, '2021-10-25', '09:30:00', '10:00:00', 'Available', '0012015482086', '7104305688085'),
(3, '2021-10-25', '10:00:00', '10:30:00', 'Available', '0012015482086', '7104305688085'),
(4, '2021-10-25', '10:30:00', '11:00:00', 'notAvailable', '0012015482086', '7104305688085'),
(5, '2021-10-25', '11:00:00', '11:30:00', 'Available', '0012015482086', '7104305688085'),
(6, '2021-10-25', '11:30:00', '12:00:00', 'notAvailable', '0012015482086', '7104305688085'),
(7, '2021-10-25', '12:00:00', '12:30:00', 'Available', '0012015482086', '7104305688085'),
(8, '2021-10-25', '13:30:00', '14:00:00', 'notAvailable', '0012015482086', '7104305688085'),
(9, '2021-10-25', '14:00:00', '14:30:00', 'Available', '0012015482086', '7104305688085'),
(10, '2021-10-25', '14:30:00', '15:00:00', 'Available', '0012015482086', '7104305688085'),
(11, '2021-10-25', '15:00:00', '15:30:00', 'Available', '0012015482086', '7104305688085'),
(12, '2021-10-25', '15:30:00', '16:00:00', 'Available', '0012015482086', '7104305688085'),
(13, '2021-10-26', '09:00:00', '09:30:00', 'notAvailable', '0012015482086', '7104305688085'),
(14, '2021-10-26', '09:30:00', '10:00:00', 'Available', '0012015482086', '7104305688085'),
(15, '2021-10-26', '10:00:00', '10:30:00', 'Available', '0012015482086', '7104305688085'),
(16, '2021-10-26', '10:30:00', '11:00:00', 'Available', '0012015482086', '7104305688085'),
(17, '2021-10-26', '11:00:00', '11:30:00', 'Available', '0012015482086', '7104305688085'),
(18, '2021-10-26', '11:30:00', '12:00:00', 'Available', '0012015482086', '7104305688085'),
(19, '2021-10-26', '12:00:00', '12:30:00', 'Available', '0012015482086', '7104305688085'),
(20, '2021-10-26', '13:30:00', '14:00:00', 'Available', '0012015482086', '7104305688085'),
(21, '2021-10-26', '14:00:00', '14:30:00', 'Available', '0012015482086', '7104305688085'),
(22, '2021-11-24', '14:30:00', '15:00:00', 'notAvailalable', '0012015482086', '7104305688085'),
(23, '2021-11-17', '15:00:00', '15:30:00', 'Available', '0012015482086', '7104305688085'),
(24, '2021-11-16', '15:30:00', '16:00:00', 'Available', '0012015482086', '7104305688085'),
(25, '2021-10-27', '09:00:00', '09:30:00', 'notAvailable', '0012015482086', '7104305688085'),
(26, '2021-10-27', '09:30:00', '10:00:00', 'Available', '0012015482086', '7104305688085'),
(27, '2021-10-27', '10:00:00', '10:30:00', 'Available', '0012015482086', '7104305688085'),
(28, '2021-10-27', '10:30:00', '11:00:00', 'Available', '0012015482086', '7104305688085'),
(29, '2021-10-27', '11:00:00', '11:30:00', 'Available', '0012015482086', '7104305688085'),
(30, '2021-10-27', '11:30:00', '12:00:00', 'Available', '0012015482086', '7104305688085'),
(31, '2021-10-27', '12:00:00', '12:30:00', 'Available', '0012015482086', '7104305688085'),
(32, '2021-10-27', '13:30:00', '14:00:00', 'Available', '0012015482086', '7104305688085'),
(33, '2021-10-27', '14:00:00', '14:30:00', 'Available', '0012015482086', '7104305688085'),
(34, '2021-10-27', '14:30:00', '15:00:00', 'Available', '0012015482086', '7104305688085'),
(35, '2021-10-27', '15:00:00', '15:30:00', 'Available', '0012015482086', '7104305688085'),
(36, '2021-10-27', '15:30:00', '16:00:00', 'notAvailable', '0012015482086', '7104305688085'),
(37, '2021-10-28', '09:00:00', '09:30:00', 'Available', '0012015482086', '7104305688085'),
(38, '2021-10-28', '09:30:00', '10:00:00', 'Available', '0012015482086', '7104305688085'),
(39, '2021-10-28', '10:00:00', '10:30:00', 'Available', '0012015482086', '7104305688085'),
(40, '2021-10-28', '10:30:00', '11:00:00', 'Available', '0012015482086', '7104305688085'),
(41, '2021-10-28', '11:00:00', '11:30:00', 'Available', '0012015482086', '7104305688085'),
(42, '2021-10-28', '11:30:00', '12:00:00', 'Available', '0012015482086', '7104305688085'),
(43, '2021-10-28', '12:00:00', '12:30:00', 'Available', '0012015482086', '7104305688085'),
(44, '2021-10-28', '13:30:00', '14:00:00', 'Available', '0012015482086', '7104305688085'),
(45, '2021-10-28', '14:00:00', '14:30:00', 'Available', '0012015482086', '7104305688085'),
(46, '2021-10-28', '14:30:00', '15:00:00', 'Available', '0012015482086', '7104305688085'),
(47, '2021-10-28', '15:00:00', '15:30:00', 'Available', '0012015482086', '7104305688085'),
(48, '2021-10-28', '15:30:00', '16:00:00', 'Available', '0012015482086', '7104305688085'),
(49, '2021-10-25', '09:00:00', '09:30:00', 'Available', '9008235788084', '7806265678084'),
(50, '2021-10-25', '09:30:00', '10:00:00', 'Available', '9008235788084', '7806265678084'),
(51, '2021-10-25', '10:00:00', '10:30:00', 'Available', '9008235788084', '7806265678084'),
(52, '2021-10-25', '10:30:00', '11:00:00', 'Available', '9008235788084', '7806265678084'),
(53, '2021-10-25', '11:30:00', '12:00:00', 'Available', '9008235788084', '7806265678084'),
(54, '2021-10-25', '12:00:00', '12:30:00', 'Available', '9008235788084', '7806265678084'),
(55, '2021-10-25', '12:30:00', '13:00:00', 'Available', '9008235788084', '7806265678084'),
(56, '2021-10-25', '14:00:00', '14:30:00', 'Available', '9008235788084', '7806265678084'),
(57, '2021-10-25', '14:30:00', '15:00:00', 'Available', '9008235788084', '7806265678084'),
(5388, '2021-11-24', '08:30:00', '09:00:00', 'notAvailalable', '0012015482086', '7806265678084'),
(5389, '2021-11-24', '09:00:00', '09:30:00', 'Available', '0012015482086', '7806265678084'),
(5390, '2021-11-25', '08:30:00', '09:00:00', 'Available', '0012015482086', '9203021871082'),
(5391, '2021-11-25', '09:00:00', '09:30:00', 'Available', '0012015482086', '9203021871082'),
(5392, '2021-11-25', '09:30:00', '10:00:00', 'Available', '0012015482086', '9203021871082'),
(5393, '2021-11-25', '10:00:00', '10:30:00', 'Available', '0012015482086', '9203021871082'),
(5394, '2021-11-25', '10:30:00', '11:00:00', 'Available', '0012015482086', '9203021871082'),
(5395, '2021-11-25', '11:00:00', '11:30:00', 'Available', '0012015482086', '9203021871082'),
(5396, '2021-11-25', '11:30:00', '12:00:00', 'Available', '0012015482086', '9203021871082'),
(5398, '2021-11-26', '08:30:00', '09:15:00', 'Available', '0012015482086', '9203021871082'),
(5399, '2021-11-26', '09:15:00', '10:00:00', 'Available', '0012015482086', '9203021871082'),
(5400, '2021-11-26', '10:00:00', '10:45:00', 'Available', '0012015482086', '9203021871082'),
(5401, '2021-11-26', '10:45:00', '11:30:00', 'Available', '0012015482086', '9203021871082'),
(5402, '2021-11-26', '11:30:00', '12:15:00', 'Available', '0012015482086', '9203021871082'),
(5403, '2021-11-26', '12:15:00', '13:00:00', 'Available', '0012015482086', '9203021871082'),
(5404, '2021-11-24', '01:00:00', '01:30:00', 'Available', '0012015482086', '7808305688085'),
(5405, '2021-11-24', '01:30:00', '02:00:00', 'Available', '0012015482086', '7808305688085'),
(5406, '2021-11-24', '02:00:00', '02:30:00', 'Available', '0012015482086', '7808305688085'),
(5407, '2021-11-24', '02:30:00', '03:00:00', 'Available', '0012015482086', '7808305688085'),
(5408, '2021-11-24', '03:00:00', '03:30:00', 'Available', '0012015482086', '7808305688085'),
(5409, '2021-11-24', '03:30:00', '04:00:00', 'Available', '0012015482086', '7808305688085'),
(5410, '2021-11-24', '04:00:00', '04:30:00', 'Available', '0012015482086', '7808305688085'),
(5411, '2021-11-24', '04:30:00', '05:00:00', 'Available', '0012015482086', '7808305688085'),
(5412, '2021-11-24', '05:00:00', '05:30:00', 'Available', '0012015482086', '7808305688085'),
(5413, '2021-11-24', '05:30:00', '06:00:00', 'Available', '0012015482086', '7808305688085'),
(5414, '2021-11-24', '06:00:00', '06:30:00', 'Available', '0012015482086', '7808305688085'),
(5415, '2021-11-24', '06:30:00', '07:00:00', 'Available', '0012015482086', '7808305688085'),
(5416, '2021-11-24', '07:00:00', '07:30:00', 'Available', '0012015482086', '7808305688085'),
(5417, '2021-11-24', '07:30:00', '08:00:00', 'Available', '0012015482086', '7808305688085'),
(5418, '2021-11-24', '08:00:00', '08:30:00', 'Available', '0012015482086', '7808305688085'),
(5419, '2021-11-24', '08:30:00', '09:00:00', 'Available', '0012015482086', '7808305688085'),
(5420, '2021-11-24', '09:00:00', '09:30:00', 'Available', '0012015482086', '7808305688085'),
(5421, '2021-11-24', '09:30:00', '10:00:00', 'Available', '0012015482086', '7808305688085'),
(5422, '2021-11-24', '10:00:00', '10:30:00', 'Available', '0012015482086', '7808305688085'),
(5423, '2021-11-24', '10:30:00', '11:00:00', 'Available', '0012015482086', '7808305688085'),
(5424, '2021-11-24', '11:00:00', '11:30:00', 'Available', '0012015482086', '7808305688085'),
(5425, '2021-11-24', '11:30:00', '12:00:00', 'Available', '0012015482086', '7808305688085'),
(5426, '2021-11-24', '12:00:00', '12:30:00', 'Available', '0012015482086', '7808305688085'),
(5427, '2021-11-24', '01:00:00', '01:30:00', 'Available', '0012015482086', '7909075464088'),
(5428, '2021-11-24', '01:30:00', '02:00:00', 'Available', '0012015482086', '7909075464088'),
(5429, '2021-11-24', '02:00:00', '02:30:00', 'Available', '0012015482086', '7909075464088'),
(5430, '2021-11-24', '02:30:00', '03:00:00', 'Available', '0012015482086', '7909075464088'),
(5431, '2021-11-24', '03:00:00', '03:30:00', 'Available', '0012015482086', '7909075464088'),
(5432, '2021-11-24', '03:30:00', '04:00:00', 'Available', '0012015482086', '7909075464088'),
(5433, '2021-11-24', '04:00:00', '04:30:00', 'Available', '0012015482086', '7909075464088'),
(5434, '2021-11-24', '04:30:00', '05:00:00', 'Available', '0012015482086', '7909075464088'),
(5435, '2021-11-24', '05:00:00', '05:30:00', 'Available', '0012015482086', '7909075464088'),
(5436, '2021-11-24', '05:30:00', '06:00:00', 'Available', '0012015482086', '7909075464088'),
(5437, '2021-11-24', '06:00:00', '06:30:00', 'Available', '0012015482086', '7909075464088'),
(5438, '2021-11-24', '06:30:00', '07:00:00', 'Available', '0012015482086', '7909075464088'),
(5439, '2021-11-24', '07:00:00', '07:30:00', 'Available', '0012015482086', '7909075464088'),
(5440, '2021-11-24', '07:30:00', '08:00:00', 'Available', '0012015482086', '7909075464088'),
(5441, '2021-11-24', '08:00:00', '08:30:00', 'Available', '0012015482086', '7909075464088'),
(5442, '2021-11-24', '08:30:00', '09:00:00', 'Available', '0012015482086', '7909075464088'),
(5443, '2021-11-24', '09:00:00', '09:30:00', 'Available', '0012015482086', '7909075464088'),
(5444, '2021-11-24', '09:30:00', '10:00:00', 'Available', '0012015482086', '7909075464088'),
(5445, '2021-11-24', '10:00:00', '10:30:00', 'Available', '0012015482086', '7909075464088'),
(5446, '2021-11-24', '10:30:00', '11:00:00', 'Available', '0012015482086', '7909075464088'),
(5447, '2021-11-24', '11:00:00', '11:30:00', 'Available', '0012015482086', '7909075464088');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `adminEmail` (`adminEmail`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appointment_ID`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `doctor_id` (`doctor_id`),
  ADD KEY `schedule_id` (`schedule_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`cityZipCode`,`provinceZipCode`),
  ADD KEY `City_ibfk_1` (`provinceZipCode`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`doctor_id`),
  ADD UNIQUE KEY `doctorEmail` (`doctorEmail`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patient_id`),
  ADD UNIQUE KEY `patientEmail` (`patientEmail`),
  ADD KEY `cityZipCode` (`cityZipCode`,`provinceZipCode`);

--
-- Indexes for table `province`
--
ALTER TABLE `province`
  ADD PRIMARY KEY (`provinceZipCode`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`receptionist_id`),
  ADD UNIQUE KEY `receptionistEmail` (`receptionistEmail`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `receptionist_id` (`receptionist_id`),
  ADD KEY `doctor_id` (`doctor_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `appointment_ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `schedule_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5448;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `Appointment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`patient_id`),
  ADD CONSTRAINT `Appointment_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`),
  ADD CONSTRAINT `Appointment_ibfk_3` FOREIGN KEY (`schedule_id`) REFERENCES `schedule` (`schedule_id`);

--
-- Constraints for table `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `City_ibfk_1` FOREIGN KEY (`provinceZipCode`) REFERENCES `province` (`provinceZipCode`);

--
-- Constraints for table `doctor`
--
ALTER TABLE `doctor`
  ADD CONSTRAINT `Doctor_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `Patient_ibfk_1` FOREIGN KEY (`cityZipCode`,`provinceZipCode`) REFERENCES `city` (`cityZipCode`, `provinceZipCode`);

--
-- Constraints for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD CONSTRAINT `Receptionist_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`);

--
-- Constraints for table `schedule`
--
ALTER TABLE `schedule`
  ADD CONSTRAINT `Schedule_ibfk_1` FOREIGN KEY (`receptionist_id`) REFERENCES `receptionist` (`receptionist_id`),
  ADD CONSTRAINT `Schedule_ibfk_2` FOREIGN KEY (`doctor_id`) REFERENCES `doctor` (`doctor_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
