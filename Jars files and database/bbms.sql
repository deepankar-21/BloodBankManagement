-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.7.3-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for bloodbank_management
DROP DATABASE IF EXISTS `bloodbank_management`;
CREATE DATABASE IF NOT EXISTS `bloodbank_management` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `bloodbank_management`;

-- Dumping structure for table bloodbank_management.admin
DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pswd` bigint(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bloodbank_management.admin: ~0 rows (approximately)
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`id`, `email`, `pswd`) VALUES
	(1, 'ds@gmail.com', 12345);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- Dumping structure for table bloodbank_management.camp
DROP TABLE IF EXISTS `camp`;
CREATE TABLE IF NOT EXISTS `camp` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `camp_counter_name` varchar(50) DEFAULT NULL,
  `camp_date` date DEFAULT NULL,
  `tot_unit_don` int(11) DEFAULT NULL,
  `total_person` int(11) DEFAULT NULL,
  `camp_org_by` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table bloodbank_management.camp: ~1 rows (approximately)
/*!40000 ALTER TABLE `camp` DISABLE KEYS */;
INSERT INTO `camp` (`c_id`, `camp_counter_name`, `camp_date`, `tot_unit_don`, `total_person`, `camp_org_by`) VALUES
	(2, 'LU Camp', '2022-03-01', 50, 80, 'SKD');
/*!40000 ALTER TABLE `camp` ENABLE KEYS */;

-- Dumping structure for table bloodbank_management.contactus
DROP TABLE IF EXISTS `contactus`;
CREATE TABLE IF NOT EXISTS `contactus` (
  `c_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `message` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`c_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table bloodbank_management.contactus: ~1 rows (approximately)
/*!40000 ALTER TABLE `contactus` DISABLE KEYS */;
INSERT INTO `contactus` (`c_id`, `name`, `email`, `mobile`, `city`, `subject`, `message`, `status`) VALUES
	(2, 'Agniwesh', 'agniwesh@gmail.com', '7485415263', 'Baliya', 'sfsd', 'dgdfhgdfhdfhf', NULL);
/*!40000 ALTER TABLE `contactus` ENABLE KEYS */;

-- Dumping structure for table bloodbank_management.donateus
DROP TABLE IF EXISTS `donateus`;
CREATE TABLE IF NOT EXISTS `donateus` (
  `don_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`don_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- Dumping data for table bloodbank_management.donateus: ~2 rows (approximately)
/*!40000 ALTER TABLE `donateus` DISABLE KEYS */;
INSERT INTO `donateus` (`don_id`, `name`, `email`, `mobile`, `address`, `pincode`, `amount`) VALUES
	(2, 'deepankar', 'ds11@gmail.com', '4758691425', 'Kanpur', 253658, 500),
	(3, 'Agniwesh', 'agniwesh@gmail.com', '4758691425', 'Baliya', 475896, 500);
/*!40000 ALTER TABLE `donateus` ENABLE KEYS */;

-- Dumping structure for table bloodbank_management.doner
DROP TABLE IF EXISTS `doner`;
CREATE TABLE IF NOT EXISTS `doner` (
  `d_id` int(10) NOT NULL AUTO_INCREMENT,
  `doner_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `bloodgroup` varchar(20) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `last_donation` date DEFAULT NULL,
  `age` int(20) DEFAULT NULL,
  `weight` int(20) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table bloodbank_management.doner: ~3 rows (approximately)
/*!40000 ALTER TABLE `doner` DISABLE KEYS */;
INSERT INTO `doner` (`d_id`, `doner_name`, `email`, `password`, `mobile`, `bloodgroup`, `gender`, `last_donation`, `age`, `weight`, `city`, `state`, `pincode`) VALUES
	(1, 'Deepankar Singh', 'ds1@gmail.com', '12', '1425364758', 'B+', 'M', '2022-02-01', 24, 50, 'Lucknow', 'Uttar Pradesh', 226001),
	(4, 'Agniwesh', 'agniwesh@gmail.com', '123456', '7485964152', 'A+', 'male', '2022-03-10', 25, 78, 'ballia', 'Uttar Pradesh', 475896),
	(5, 'Shweta', 's@gmail.com', '123456', '9685744152', 'O+', 'female', '2022-03-02', 25, 40, 'ballia', 'Uttar Pradesh', 226024);
/*!40000 ALTER TABLE `doner` ENABLE KEYS */;

-- Dumping structure for table bloodbank_management.organization_details
DROP TABLE IF EXISTS `organization_details`;
CREATE TABLE IF NOT EXISTS `organization_details` (
  `org_id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `bld_compo_avail` varchar(50) DEFAULT NULL,
  `service_time` varchar(50) DEFAULT NULL,
  `license_numb` int(11) DEFAULT NULL,
  `license_date` date DEFAULT NULL,
  PRIMARY KEY (`org_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bloodbank_management.organization_details: ~0 rows (approximately)
/*!40000 ALTER TABLE `organization_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `organization_details` ENABLE KEYS */;

-- Dumping structure for table bloodbank_management.register_hospitals_bborganization
DROP TABLE IF EXISTS `register_hospitals_bborganization`;
CREATE TABLE IF NOT EXISTS `register_hospitals_bborganization` (
  `org_hosp_id` int(11) NOT NULL AUTO_INCREMENT,
  `org_hosp_name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `pincode` int(11) DEFAULT NULL,
  `bld_compo_avail` varchar(50) DEFAULT NULL,
  `service_time` varchar(50) DEFAULT NULL,
  `license_numb` varchar(50) DEFAULT NULL,
  `license_date` date DEFAULT NULL,
  PRIMARY KEY (`org_hosp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table bloodbank_management.register_hospitals_bborganization: ~1 rows (approximately)
/*!40000 ALTER TABLE `register_hospitals_bborganization` DISABLE KEYS */;
INSERT INTO `register_hospitals_bborganization` (`org_hosp_id`, `org_hosp_name`, `email`, `password`, `mobile`, `city`, `state`, `pincode`, `bld_compo_avail`, `service_time`, `license_numb`, `license_date`) VALUES
	(2, 'SKD', 'skd@gmail.com', '123456', '9685744152', 'Lucknow', 'Uttar Pradesh', 226021, 'Yes', '24Hr', 'skd123456', '2027-10-31');
/*!40000 ALTER TABLE `register_hospitals_bborganization` ENABLE KEYS */;

-- Dumping structure for table bloodbank_management.requestforblood
DROP TABLE IF EXISTS `requestforblood`;
CREATE TABLE IF NOT EXISTS `requestforblood` (
  `req_id` int(11) NOT NULL AUTO_INCREMENT,
  `patient_name` varchar(50) DEFAULT NULL,
  `doctor_name` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `hospital_name_address` varchar(50) DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `contact_name` varchar(50) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `priority_type` varchar(50) DEFAULT NULL,
  `date_when_needed` date DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `other_message` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`req_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table bloodbank_management.requestforblood: ~0 rows (approximately)
/*!40000 ALTER TABLE `requestforblood` DISABLE KEYS */;
/*!40000 ALTER TABLE `requestforblood` ENABLE KEYS */;

-- Dumping structure for table bloodbank_management.temp_doner
DROP TABLE IF EXISTS `temp_doner`;
CREATE TABLE IF NOT EXISTS `temp_doner` (
  `temp_d_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `blood_donate` varchar(50) DEFAULT NULL,
  `org_hosp_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`temp_d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- Dumping data for table bloodbank_management.temp_doner: ~1 rows (approximately)
/*!40000 ALTER TABLE `temp_doner` DISABLE KEYS */;
INSERT INTO `temp_doner` (`temp_d_id`, `name`, `email`, `mobile`, `blood_group`, `city`, `state`, `blood_donate`, `org_hosp_name`) VALUES
	(2, 'Agniwesh', 'agniwesh@gmail.com', '7485964152', 'A+', 'Baliya', 'Uttar Pradesh', '1 Unit', 'SKD');
/*!40000 ALTER TABLE `temp_doner` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
