-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 17, 2019 at 05:36 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `itfrevsc_billing_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_head`
--

CREATE TABLE IF NOT EXISTS `acc_head` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `head_desc` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `acc_head`
--

INSERT INTO `acc_head` (`id`, `user_id`, `head_desc`) VALUES
(1, 1, 'Assets Purchase\r\n'),
(2, 1, 'Bank Charges\r\n'),
(3, 1, 'Computer Rent \r\n'),
(4, 1, 'Drawings\r\n'),
(5, 1, 'Electricity Expenses\r\n'),
(6, 1, 'Event Expenses\r\n'),
(7, 1, 'Internet Expenses\r\n'),
(8, 1, 'Loan Repayment \r\n'),
(9, 1, 'Office Expenses\r\n'),
(10, 1, 'Office Rent\r\n'),
(11, 1, 'Printing & Stationery\r\n'),
(12, 1, 'Printing Job Expenses\r\n'),
(13, 1, 'Printing Purchase\r\n'),
(14, 1, 'Professional Fees\r\n'),
(15, 1, 'Recruitment Expenses\r\n'),
(16, 1, 'Refreshment Expenses\r\n'),
(17, 1, 'Repair & Maintainence\r\n'),
(18, 1, 'Salary\r\n'),
(19, 1, 'Tally Subscription \r\n'),
(20, 1, 'Taxes\r\n'),
(21, 1, 'Telephone Expenses\r\n'),
(22, 1, 'Travelling Expenses\r\n'),
(23, 1, 'Website Related\r\n'),
(24, 1, 'Personal EX.\r\n'),
(27, 17, 'card'),
(28, 17, 'mob'),
(30, 3, 'Purchase Electrical Material'),
(31, 3, 'Training fees'),
(32, 36, 'traveling'),
(34, 36, 'Petty Purchase'),
(35, 36, 'Entertainment'),
(36, 36, 'Bill Payment'),
(37, 37, 'PURCHASE ORDER'),
(38, 38, 'Rent'),
(39, 38, 'Salary'),
(40, 38, 'Refreshment Expenses'),
(41, 38, 'Travelling Expenses'),
(42, 38, 'Special Allowance'),
(43, 38, 'Electricity Expenses'),
(44, 38, 'Purchases Expenses'),
(45, 38, 'Telephone Expenses'),
(46, 38, 'Personal Expenses'),
(48, 42, 'Travelling'),
(49, 42, 'salary'),
(50, 42, 'Electricity bill'),
(51, 42, ''),
(52, 44, 'Travelling'),
(53, 44, 'DA'),
(54, 44, 'Salary'),
(55, 44, 'Internet Charges'),
(56, 44, 'Telephone'),
(57, 44, 'Purchase'),
(58, 45, 'SUNDRY CREDITOR'),
(59, 3, '3 Programming Development'),
(60, 38, 'LABOUR PAYMENTS'),
(61, 0, ''),
(62, 60, 'Purchase invoice'),
(63, 35, 'purchase invoice');

-- --------------------------------------------------------

--
-- Table structure for table `admin_city`
--

CREATE TABLE IF NOT EXISTS `admin_city` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_city`
--

INSERT INTO `admin_city` (`city_id`, `city_name`) VALUES
(1, 'Pune'),
(2, 'Mumbai'),
(3, 'Chennai'),
(4, 'Bangalore '),
(6, 'Surat'),
(7, 'Nagpur'),
(8, 'Indore'),
(9, 'Thane'),
(10, 'Bhopal'),
(11, 'Visakhapatnam'),
(12, 'Delhi'),
(13, 'Hyderabad'),
(14, 'Ahmedabad'),
(15, 'Kolkata'),
(16, 'Jaipur'),
(17, 'Lucknow'),
(18, 'Kanpur'),
(19, 'Pimpri & Chinchwad'),
(20, 'Patna'),
(21, 'Vadodara'),
(22, 'Ghaziabad'),
(23, 'Ludhiana'),
(24, 'Agra'),
(25, 'Nashik'),
(26, 'Faridabad'),
(27, 'Meerut'),
(28, 'Rajkot'),
(29, 'Kalyan & Dombivali'),
(30, 'Vasai Virar'),
(31, 'Varanasi'),
(32, 'Srinagar'),
(33, 'Aurangabad'),
(34, 'Dhanbad'),
(35, 'Amritsar'),
(36, 'Navi Mumbai'),
(37, 'Allahabad'),
(38, 'Ranchi'),
(39, 'Haora'),
(40, 'Coimbatore'),
(41, 'Jabalpur'),
(42, 'Gwalior'),
(43, 'Vijayawada'),
(44, 'Jodhpur'),
(45, 'Madurai'),
(46, 'Raipur'),
(47, 'Kota'),
(48, 'Guwahati'),
(49, 'Chandigarh'),
(50, 'Solapur'),
(51, 'Hubli and Dharwad'),
(52, 'Bareilly'),
(53, 'Moradabad'),
(54, 'Mysore'),
(55, 'Gurgaon'),
(56, 'Aligarh'),
(57, 'Jalandhar'),
(58, 'Tiruchirappalli'),
(59, 'Bhubaneswar'),
(60, 'Salem'),
(61, 'Moradabad'),
(62, 'Mysore'),
(63, 'Mira and Bhayander'),
(64, 'Thiruvananthapuram'),
(65, 'Bhiwandi'),
(66, 'Saharanpur'),
(67, 'Gorakhpur'),
(68, 'Guntur'),
(69, 'Bikaner'),
(70, 'Amravati'),
(71, 'Noida'),
(72, 'Jamshedpur'),
(73, 'Bhilai Nagar'),
(74, 'Warangal'),
(75, 'Cuttack'),
(76, 'Firozabad'),
(77, 'Kochi'),
(78, 'Bhavnagar'),
(79, 'Dehradun'),
(80, 'Durgapur'),
(81, 'Asansol'),
(82, 'Nanded Waghala'),
(83, 'Kolapur'),
(84, 'Ajmer'),
(85, 'Gulbarga'),
(86, 'Jamnagar'),
(87, 'Ujjain'),
(88, 'Loni'),
(89, 'Siliguri'),
(90, 'Jhansi'),
(91, 'Ulhasnagar'),
(92, 'Nellore'),
(93, 'Jammu'),
(94, 'Sangli Miraj Kupwad'),
(95, 'Belgaum'),
(96, 'Mangalore'),
(97, 'Ambattur'),
(98, 'Tirunelveli'),
(99, 'Malegoan'),
(100, 'Gaya'),
(101, 'Jalgaon'),
(102, 'Udaipur'),
(103, 'Maheshtala'),
(104, 'Ahmednagar'),
(105, 'Hossur'),
(106, 'Ernakulam'),
(107, 'Navsari'),
(108, 'Inphal'),
(109, 'Imphal'),
(110, '	Berhampur'),
(111, 'Buldhana'),
(112, 'Satara'),
(113, 'Shimoga'),
(114, 'Gandhidham'),
(115, 'Rajpura'),
(116, 'Kareli'),
(117, 'Kannur'),
(118, 'Raigadh'),
(119, 'Sonipat'),
(120, 'Osmanabad'),
(121, 'Goa'),
(122, 'Bhandara'),
(123, 'Kosi Kalan'),
(124, '	Wardha'),
(125, 'Dharwad'),
(126, 'Akola'),
(127, 'Koppal'),
(128, 'Mandavi'),
(129, 'Saraipali'),
(130, 'Tirupati'),
(131, 'Joda'),
(132, 'Panchkula'),
(133, 'Silvasa'),
(134, 'Rohtak'),
(135, 'Alwar'),
(136, 'Pithampur'),
(137, 'Rajahmundry'),
(138, 'Malur'),
(139, '	Hamirpur'),
(140, '	Dankuni'),
(141, 'Dahod'),
(142, 'Begusarai'),
(143, 'Chittorgarh'),
(144, 'Hooghly'),
(145, 'Deoria'),
(146, 'Dibrugarh'),
(147, 'Vapi'),
(148, 'Morbi'),
(149, 'Palakkad'),
(150, ' Ambala'),
(151, 'Bettiah'),
(152, 'Ramanathapuram'),
(153, 'Dewas'),
(154, 'Lingsugur'),
(155, 'Pathankot'),
(156, 'Sikar'),
(157, 'Bijapur'),
(158, 'Malappuram'),
(159, 'Doha'),
(160, 'Muzaffarnagar'),
(161, 'Jalna'),
(162, 'Satna'),
(163, 'Bardhaman'),
(164, 'Manapparai'),
(165, 'port Blair'),
(166, 'Port Blair'),
(167, 'Kathua'),
(168, 'Kozhikode'),
(169, 'Kudal'),
(170, 'Betul'),
(171, 'Vijayapura'),
(172, 'Suriapet'),
(173, 'Munnar'),
(174, 'Ankleshwar'),
(175, 'Vijaywada'),
(176, 'Tiruppur'),
(177, 'Bahadurgarh'),
(178, ' Manali'),
(179, 'Bidar'),
(180, 'Bharuch'),
(181, 'Una'),
(182, 'Jaunpur'),
(183, ' sangali'),
(184, ' cybarabad'),
(185, 'Chirala '),
(186, 'Ramanagaram'),
(187, 'Damoh'),
(188, 'Bhawanipatna'),
(189, 'Chalakudy'),
(190, 'Patiala');

-- --------------------------------------------------------

--
-- Table structure for table `admin_enquiry_status`
--

CREATE TABLE IF NOT EXISTS `admin_enquiry_status` (
  `enquiry_status_id` int(11) NOT NULL,
  `enquiry_status` varchar(255) NOT NULL,
  `sch_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_enquiry_status`
--

INSERT INTO `admin_enquiry_status` (`enquiry_status_id`, `enquiry_status`, `sch_id`, `user_id`) VALUES
(1, 'Call back', 1, 0),
(2, 'No Response', 3, 0),
(3, 'Not Interested', 7, 0),
(4, 'Not Related', 7, 0),
(5, 'Order Closed', 7, 0),
(6, 'Directly Forwarded ', 7, 0),
(7, 'Number Not Reachable ', 3, 0),
(70, 'site', 25, 35),
(71, 'drive', 26, 35),
(72, 'drive', 25, 35);

-- --------------------------------------------------------

--
-- Table structure for table `admin_source`
--

CREATE TABLE IF NOT EXISTS `admin_source` (
  `source_id` int(11) NOT NULL,
  `source_name` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_source`
--

INSERT INTO `admin_source` (`source_id`, `source_name`, `user_id`) VALUES
(1, 'Email', 0),
(2, 'India Mart', 0),
(3, 'Just Dial', 0),
(4, 'Online', 0),
(5, 'Reference ', 0),
(6, 'sulekha', 0),
(7, 'Trade India', 0),
(8, 'Offline', 0),
(9, 'Exp India', 0),
(10, 'Walk-in', 0),
(11, 'By Call', 0),
(14, 'email', 35),
(15, 'whatsapp', 35);

-- --------------------------------------------------------

--
-- Table structure for table `channel_partner`
--

CREATE TABLE IF NOT EXISTS `channel_partner` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `create-date` date NOT NULL,
  `update-date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `channel_partner`
--

INSERT INTO `channel_partner` (`id`, `name`, `email`, `mobile`, `photo`, `address`, `password`, `create-date`, `update-date`, `status`) VALUES
(3, 'Gurudatta Shahane', 'gurudatta@e-bc.in', '8308406968', 'img/EBC logo.jpg', 'Pune', 'guru@2018', '2018-04-24', '0000-00-00', 1),
(4, 'Anand Chitale', 'anand@aaradhyaenterprises.in', '9552777928', 'img/finallogo.png', 'Pune', 'anand@2018', '2018-04-24', '0000-00-00', 1),
(5, '', '', '', 'images/default.jpg', '', '', '2018-12-17', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE IF NOT EXISTS `commission` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `cpid` int(11) NOT NULL,
  `cpname` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `pack_amt` decimal(10,0) NOT NULL,
  `commission_per` varchar(20) NOT NULL,
  `total_comp_amt` decimal(53,2) NOT NULL,
  `comm_amount` decimal(53,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `commission`
--

INSERT INTO `commission` (`id`, `uid`, `cpid`, `cpname`, `date`, `pack_amt`, `commission_per`, `total_comp_amt`, `comm_amount`) VALUES
(9, 38, 4, 'Anand Chitale', '2018-06-19', '2999', '20', '2399.20', '599.80'),
(10, 35, 4, 'Anand Chitale', '2018-06-19', '2999', '20', '2399.20', '599.80'),
(11, 0, 0, '', '0000-00-00', '0', '', '0.00', '0.00');

-- --------------------------------------------------------

--
-- Table structure for table `common`
--

CREATE TABLE IF NOT EXISTS `common` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sub_user_id` int(11) NOT NULL,
  `series_id` varchar(255) DEFAULT NULL,
  `customer_id` bigint(20) DEFAULT NULL,
  `customer_name` varchar(100) DEFAULT NULL,
  `customer_identification` varchar(50) DEFAULT NULL,
  `customer_email` varchar(100) DEFAULT NULL,
  `invoice_state` varchar(255) NOT NULL,
  `in_state_code` varchar(255) NOT NULL,
  `ship_cont_person` varchar(255) NOT NULL,
  `ship_email` varchar(255) NOT NULL,
  `ship_state` varchar(255) NOT NULL,
  `ship_state_code` varchar(255) NOT NULL,
  `invoicing_address` longtext,
  `shipping_address` longtext,
  `contact_person` varchar(100) DEFAULT NULL,
  `cust_gst_no` varchar(255) DEFAULT NULL,
  `terms` longtext,
  `bank_details` varchar(255) NOT NULL,
  `notes` text,
  `base_amount` decimal(53,2) NOT NULL,
  `discount_amount` decimal(53,2) NOT NULL,
  `net_amount` decimal(53,2) NOT NULL,
  `gross_amount` decimal(53,2) NOT NULL,
  `amt_words` text NOT NULL,
  `paid_amount` decimal(53,2) NOT NULL,
  `due_amt` decimal(53,2) NOT NULL,
  `tax_amount` decimal(53,2) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `draft` tinyint(1) DEFAULT '1',
  `closed` tinyint(1) DEFAULT '0',
  `sent_by_email` tinyint(1) DEFAULT '0',
  `number` varchar(255) DEFAULT NULL,
  `recurring_invoice_id` bigint(20) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `days_to_due` mediumint(9) DEFAULT NULL,
  `enabled` tinyint(1) DEFAULT '0',
  `max_occurrences` int(11) DEFAULT NULL,
  `must_occurrences` int(11) DEFAULT NULL,
  `period` int(11) DEFAULT NULL,
  `period_type` varchar(8) DEFAULT NULL,
  `starting_date` date DEFAULT NULL,
  `finishing_date` date DEFAULT NULL,
  `last_execution_date` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `del_status` int(11) NOT NULL COMMENT '1-active 0-delete',
  `po_no` varchar(255) NOT NULL,
  `po_date` varchar(255) NOT NULL,
  `po_project_name` varchar(255) NOT NULL,
  `cmobile_no` varchar(15) NOT NULL,
  `csmobile_no` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=284 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `common`
--

INSERT INTO `common` (`id`, `user_id`, `sub_user_id`, `series_id`, `customer_id`, `customer_name`, `customer_identification`, `customer_email`, `invoice_state`, `in_state_code`, `ship_cont_person`, `ship_email`, `ship_state`, `ship_state_code`, `invoicing_address`, `shipping_address`, `contact_person`, `cust_gst_no`, `terms`, `bank_details`, `notes`, `base_amount`, `discount_amount`, `net_amount`, `gross_amount`, `amt_words`, `paid_amount`, `due_amt`, `tax_amount`, `status`, `type`, `draft`, `closed`, `sent_by_email`, `number`, `recurring_invoice_id`, `issue_date`, `due_date`, `days_to_due`, `enabled`, `max_occurrences`, `must_occurrences`, `period`, `period_type`, `starting_date`, `finishing_date`, `last_execution_date`, `created_at`, `updated_at`, `del_status`, `po_no`, `po_date`, `po_project_name`, `cmobile_no`, `csmobile_no`) VALUES
(1, 1, 0, '2', 1, 'RR Parkon', '', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Ashutosh Shirole', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Ashutosh Shirole', '27LJND15423DHB2', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', 'Thank You', '8998.00', '0.00', '8998.00', '11218.00', 'Eleven Thousand, Two Hundred and Eighteen', '0.00', '11218.00', '2219.54', 'Pending', 'Invoice', 1, 0, 0, 'DM-1', NULL, '2018-03-14', '2018-03-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 07:07:00', '2018-04-23 09:39:29', 0, '', '0000-00-00', '', '', ''),
(2, 1, 0, '1', 2, 'Tata Technologies', '', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Tejas Dixit', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Tejas Dixit', '27KJNH223BH21', 'All for testing EBC solutions pvt ltd.\r\n', 'SBI\r\nAccount No:068547202520\r\nIFSC:SBI0002018\r\nBranch: SBI, Pune', 'Thank You..', '950.00', '0.00', '950.00', '1064.00', 'One Thousand and Sixty-Four', '0.00', '0.00', '114.00', 'Pending', 'Estimate', 1, 0, 0, 'PR-1', NULL, '2018-03-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 07:32:25', '2018-03-14 07:52:45', 0, '', '0000-00-00', '', '', ''),
(3, 1, 0, '1', 2, 'Tata Technologies', '', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Tejas Dixit', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Tejas Dixit', '27KJNH223BH21', 'All for testing EBC solutions pvt ltd.\r\n', 'SBI\r\nAccount No:068547202520\r\nIFSC:SBI0002018\r\nBranch: SBI, Pune', 'Thank You..', '800.00', '0.00', '800.00', '896.00', 'Eight Hundred and Ninety-Six', '0.00', '896.00', '96.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'PR-1', NULL, '2018-03-14', '2018-03-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 07:35:29', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(4, 1, 0, '1', 2, 'Tata Technologies', '', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Tejas Dixit', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Tejas Dixit', '27KJNH223BH21', 'All for testing EBC solutions pvt ltd.\r\n', 'SBI\r\nAccount No:068547202520\r\nIFSC:SBI0002018\r\nBranch: SBI, Pune', 'Thank You..', '800.00', '0.00', '800.00', '896.00', 'Eight Hundred and Ninety-Six', '0.00', '896.00', '96.00', 'Pending', 'Invoice', 1, 0, 0, 'PR-1', NULL, '2018-03-14', '2018-03-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 07:36:32', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(5, 1, 0, '1', 2, 'Tata Technologies', '', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Tejas Dixit', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Tejas Dixit', '27KJNH223BH21', 'All for testing EBC solutions pvt ltd.\r\n', 'SBI\r\nAccount No:068547202520\r\nIFSC:SBI0002018\r\nBranch: SBI, Pune', 'Thank You..', '950.00', '0.00', '950.00', '1064.00', 'One Thousand and Sixty-Four', '0.00', '1064.00', '114.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'PR-2', NULL, '2018-03-14', '2018-03-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 07:52:57', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(6, 1, 2, '1', 3, 'TCS', '', 'gopal@gmail.com', 'Maharashtra', '27', 'Gopal ', 'gopal@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Gopal ', '27FDUB6732NJ2', 'All for testing EBC solutions pvt ltd.\r\n', 'SBI\r\nAccount No:068547202520\r\nIFSC:SBI0002018\r\nBranch: SBI, Pune', '', '750.00', '0.00', '750.00', '840.00', 'Eight Hundred and Forty', '500.00', '340.00', '90.00', 'Pending', 'Invoice', 1, 0, 0, 'PR-2', NULL, '2018-03-14', '2018-03-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 09:47:49', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(7, 2, 0, '3', 4, 'Arradhya Enterprises', '', 'mithun@gmail.com', 'Maharashtra', '27', 'Mithun Daa', 'mithun@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Mithun Daa', '27KJN232bHD2', 'Company 2nd', 'BOI\r\nAccount No:089745660022\r\nIFSC: BOI00002018', '', '2500.00', '0.00', '2500.00', '2800.00', 'Two Thousand, Eight Hundred', '1800.00', '1000.00', '300.00', 'Pending', 'Invoice', 1, 0, 0, 'WD-1', NULL, '2018-03-14', '2018-03-25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 10:20:13', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(8, 2, 3, '3', 4, 'Arradhya Enterprises', '', 'mithun@gmail.com', 'Maharashtra', '27', 'Mithun Daa', 'mithun@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Mithun Daa', '27KJN232bHD2', 'Company 2nd', 'BOI\r\nAccount No:089745660022\r\nIFSC: BOI00002018', '', '2999.00', '0.00', '2999.00', '3358.88', 'Three Thousand, Three Hundred and Fifty-Eight Rupees Eight Eight', '0.00', '3358.88', '359.88', 'Pending', 'Invoice', 1, 0, 0, 'WD-2', NULL, '2018-03-14', '2018-03-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 10:42:30', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(9, 2, 3, '3', 5, 'Tripolarcon', '', 'sanjay@gmail.com', 'Maharashtra', '27', 'Sanjay', 'sanjay@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Sanjay', '27LJDj232KND', 'Company 2nd', 'BOI\r\nAccount No:089745660022\r\nIFSC: BOI00002018', '', '2999.00', '0.00', '2999.00', '2999.00', 'Two Thousand, Nine Hundred and Ninety-Nine', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, 'WD-1', NULL, '2018-03-14', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 10:45:55', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(10, 2, 3, '3', 5, 'Tripolarcon', '', 'sanjay@gmail.com', 'Maharashtra', '27', 'Sanjay', 'sanjay@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Sanjay', '27LJDj232KND', 'Company 2nd', 'BOI\r\nAccount No:089745660022\r\nIFSC: BOI00002018', '', '2999.00', '0.00', '2999.00', '2999.00', 'Two Thousand, Nine Hundred and Ninety-Nine', '0.00', '2999.00', '0.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'WD-1', NULL, '2018-03-14', '2018-03-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 10:57:25', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(11, 2, 3, '3', 5, 'Tripolarcon', '', 'sanjay@gmail.com', 'Maharashtra', '27', 'Sanjay', 'sanjay@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Sanjay', '27LJDj232KND', 'Company 2nd', 'BOI\r\nAccount No:089745660022\r\nIFSC: BOI00002018', '', '2999.00', '0.00', '2999.00', '2999.00', 'Two Thousand, Nine Hundred and Ninety-Nine', '2999.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'WD-3', NULL, '2018-03-14', '2018-03-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 10:57:51', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(12, 2, 0, '3', 5, 'Tripolarcon', '', 'sanjay@gmail.com', 'Maharashtra', '27', 'Sanjay', 'sanjay@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Sanjay', '27LJDj232KND', 'Company 2nd', 'BOI\r\nAccount No:089745660022\r\nIFSC: BOI00002018', '', '2999.00', '0.00', '2999.00', '2999.00', 'Two Thousand, Nine Hundred and Ninety-Nine', '0.00', '2999.00', '0.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'WD-2', NULL, '2018-03-14', '2018-03-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 11:17:01', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(13, 2, 0, '3', 5, 'Tripolarcon', '', 'sanjay@gmail.com', 'Maharashtra', '27', 'Sanjay', 'sanjay@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Sanjay', '27LJDj232KND', 'Company 2nd', 'BOI\r\nAccount No:089745660022\r\nIFSC: BOI00002018', '', '2999.00', '0.00', '2999.00', '2999.00', 'Two Thousand, Nine Hundred and Ninety-Nine', '0.00', '2999.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, 'WD-4', NULL, '2018-03-14', '2018-03-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-14 11:21:42', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(16, 3, 0, '4', 7, 'Tech Mahindra', '', 'nishant@gmail.com', 'Maharashtra', '27', 'Nishant Shinde ', 'nishant@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Nishant Shinde ', '27JDJO322KFl3', 'Company 3rd', 'ICICI\r\nAccount No:0254681545210\r\nIFSC:ICICI0002018', '', '675.00', '0.00', '675.00', '796.50', 'Seven Hundred and Ninety-Six Rupees Five Zero', '0.00', '796.50', '121.50', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'SP-1', NULL, '2018-03-15', '2018-03-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-15 07:28:36', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(17, 15, 0, '', 8, 'Nandakumar Gokhale', 'AGMPG8060C', 'nandakumar.gokhale@gmail.com', 'Maharashtra', 'Maharashtra', 'Nandakumar Gokhale', 'nandakumar.gokhale@gmail.com', 'Maharashtra', 'Maharashtra', 'Pune', 'Pune', 'Nandakumar Gokhale', '27AGMPG8060C2ZG', '', '', '', '4000.00', '0.00', '4000.00', '4720.00', 'Four Thousand, Seven Hundred and Twenty', '0.00', '4720.00', '720.00', 'Pending', 'Invoice', 1, 0, 0, '', NULL, '2018-03-20', '2018-03-20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-20 10:33:07', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(18, 17, 0, '8', 14, 'Nilam', 'dcdfd', 'pune@gmail.com', '', '', '', '', '', '', 'pune', 'pune', 'nilam', '456657676', '', 'hdfc', '', '13000.00', '0.00', '13000.00', '13650.00', 'Thirteen Thousand, Six Hundred and Fifty', '0.00', '0.00', '650.00', 'Pending', 'Estimate', 1, 0, 0, 'mb1', NULL, '2018-03-06', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 06:26:46', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(19, 17, 0, '8', 14, 'Nilam', '225s2s5', 'hinjewadi', 'Maharashtra', '27', 'Nishant Shinde ', 'nishant@gmail.com', 'Maharashtra', '27', 'hinjewadi', 'jdklsajlk', 'mahindra', '27/4645', '', 'hdfc', '', '45000.00', '9000.00', '36000.00', '42480.00', 'Forty-Two Thousand, Four Hundred and Eighty', '85960.00', '-1000.00', '6480.00', 'Pending', 'Invoice', 1, 0, 0, 'mb1', NULL, '2018-03-01', '2018-03-03', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 06:36:49', '2018-03-21 09:34:48', 0, '', '0000-00-00', '', '', ''),
(20, 17, 0, '8', 14, 'Nilam', 'dcdfd', 'pune@gmail.com', '', '', '', '', '', '', 'pune', 'pune', 'nilam', '456657676', '', 'hdfc', '', '22000.00', '4500.00', '17500.00', '18960.00', 'Eighteen Thousand, Nine Hundred and Sixty', '0.00', '18960.00', '1460.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'mb0', NULL, '2018-03-06', '2018-03-06', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-21 12:25:47', '0000-00-00 00:00:00', 1, '', '0000-00-00', '', '', ''),
(21, 11, 0, '10', 16, 'KIMI', '', 'aab@gmail.com', 'MAHARASHTRA', 'MAHARASHTRA', '', '', 'MAHARASHTRA', '411015', 'YERWADA\r\nPUNE', 'YERWADA\r\nPUNE', 'MAHESH', '', '', '', '', '0.00', '0.00', '0.00', '0.00', 'Zero', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, 'SER-1', NULL, '2018-03-26', '2018-03-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-26 09:43:53', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(22, 27, 0, '', 17, 'Brandonimics', '', 'bhargavee@gmail.com', 'Maharashtra', 'Maharashtra', '', '', 'near gangadhar mithaiwala', 'near gangadhar mithaiwala', 'kala govind , plot no - 129 , snehawardhan society, sahakar nagar no - 1, pune - 411009', 'kala govind , plot no - 129 , snehawardhan society, sahakar nagar no - 1, pune - 411009', 'bhrgavee', '', '', '', '', '25000.00', '0.00', '25000.00', '29500.00', 'Twenty-Nine Thousand, Five Hundred', '0.00', '0.00', '4500.00', 'Pending', 'Estimate', 1, 0, 0, '', NULL, '2018-03-27', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-27 06:47:28', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(23, 32, 0, '', 18, 'XZ Enterprises', '', 'rakesh@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Pune', 'Pune', 'Rakesh', '', '', '', '', '7000.00', '0.00', '7000.00', '7000.00', 'Seven Thousand', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, '', NULL, '2018-03-30', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-30 09:28:31', '2018-03-30 10:15:18', 0, '', '0000-00-00', '', '', ''),
(24, 32, 0, '', 18, 'XZ Enterprises', '', 'rakesh@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Pune', 'Pune', 'Rakesh', '', '', '', '', '7000.00', '0.00', '7000.00', '7000.00', 'Seven Thousand', '0.00', '7000.00', '0.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, '', NULL, '2018-03-30', '2018-03-03', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-30 10:17:11', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(25, 32, 0, '', 18, 'XZ Enterprises', '', 'rakesh@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Pune', 'Pune', 'Rakesh', '', '', '', '', '7000.00', '0.00', '7000.00', '7000.00', 'Seven Thousand', '7000.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, '', NULL, '2018-03-30', '2018-03-03', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-30 10:18:28', '2018-03-30 10:26:49', 0, '', '0000-00-00', '', '', ''),
(26, 32, 0, '', 20, 'ABC', '', 'sachin@gmail.com', 'Sachin', '', 'Sachin', '', 'Sachin', '', 'Pune', 'Pune', 'Sachin', '', '', '', '', '12460.00', '0.00', '12460.00', '14416.00', 'Fourteen Thousand, Four Hundred and Sixteen', '0.00', '0.00', '1956.00', 'Pending', 'Estimate', 1, 0, 0, '', NULL, '2018-03-30', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-30 10:28:48', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(27, 32, 0, '', 20, 'ABC', '', 'sachin@gmail.com', 'Sachin', '', 'Sachin', '', 'Sachin', '', 'Pune', 'Pune', 'Sachin', '', '', '', '', '12460.00', '0.00', '12460.00', '14416.00', 'Fourteen Thousand, Four Hundred and Sixteen', '0.00', '14416.00', '1956.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, '', NULL, '2018-03-30', '2018-03-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-30 10:32:18', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(28, 32, 0, '', 20, 'ABC', '', 'sachin@gmail.com', 'Sachin', '', 'Sachin', '', 'Sachin', '', 'Pune', 'Pune', 'Sachin', '', '', '', '', '12460.00', '0.00', '12460.00', '14416.00', 'Fourteen Thousand, Four Hundred and Sixteen', '14416.00', '0.00', '1956.00', 'Closed', 'Invoice', 1, 0, 0, '', NULL, '2018-03-30', '2018-03-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-03-30 10:32:40', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(29, 33, 0, '', 21, 'Gondawale Devasthan', '', 'vishrampathak@gmail.com', 'Maharashtra', 'Maharashtra', 'Mr Vishram Pathak', 'vishrampathak@gmail.com', 'Maharashtra', 'Maharashtra', 'Gondawale', 'Gondawale', 'Mr Vishram Pathak', '', '', '', '', '250000.00', '0.00', '250000.00', '295000.00', 'Two Hundred and Ninety-Five Thousand', '0.00', '0.00', '45000.00', 'Pending', 'Estimate', 1, 0, 0, '', NULL, '2018-04-06', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-06 04:53:50', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(30, 33, 0, '', 22, 'KTR Couplings India Pvt Ltd', '', 'a.solapure@ktr.com', 'Maharashtra', 'Maharashtra', 'Mr Abhishek Solapure', 'a.solapure@ktr.com', 'Maharashtra', 'Maharashtra', 'KTR Couplings India Pvt Ltd,\r\nT-36,37,38,39,Bhosari MIDC\r\nPune-26', 'KTR Couplings India Pvt Ltd,\nT-36,37,38,39,Bhosari MIDC\nPune-26', 'Mr Abhishek Solapure', '', '', '', 'Terms and Conditions:\r\nâ€¢	Price basis: Ex works Pune.\r\nâ€¢	Delivery: Ex-stock / 5-6 weeks from date of purchase order.\r\nâ€¢	Packing: Standard corrugated packing included.\r\nâ€¢	GST: 18% Extra.\r\nâ€¢	Freight: Extra at actual in your scope from our Pune works to your destination.\r\nâ€¢	Loading/Unloading: Material unloading will be in your scope.\r\nâ€¢	Insurance: In your scope.\r\nâ€¢	Payment Terms: 50% advance. Balance against Proforma Invoice prior to dispatch. \r\nâ€¢	Offer Validity: 30 Days.\r\nâ€¢	Any fabrication required along with boom-lift/scissor-lift/scaffolding is in customer scope. \r\nâ€¢	Cabling from location of panel up to point of installation is in customer scope. \r\nâ€¢	Standard Terms and Conditions Enclosed\r\n', '260000.00', '0.00', '260000.00', '306800.00', 'Three Hundred and Six Thousand, Eight Hundred', '0.00', '0.00', '46800.00', 'Pending', 'Estimate', 1, 0, 0, '', NULL, '2018-04-06', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-06 06:43:59', '2018-04-06 06:49:34', 0, '', '0000-00-00', '', '', ''),
(31, 33, 0, '', 22, 'KTR Couplings India Pvt Ltd', '', 'a.solapure@ktr.com', 'Maharashtra', 'Maharashtra', 'Mr Abhishek Solapure', 'a.solapure@ktr.com', 'Maharashtra', 'Maharashtra', 'KTR Couplings India Pvt Ltd,\r\nT-36,37,38,39,Bhosari MIDC\r\nPune-26', 'KTR Couplings India Pvt Ltd,\r\nT-36,37,38,39,Bhosari MIDC\r\nPune-26', 'Mr Abhishek Solapure', '', '', '', 'Terms and Conditions:\r\nâ€¢	Price basis: Ex works Pune.\r\nâ€¢	Delivery: Ex-stock / 5-6 weeks from date of purchase order.\r\nâ€¢	Packing: Standard corrugated packing included.\r\nâ€¢	GST: 18% Extra.\r\nâ€¢	Freight: Extra at actual in your scope from our Pune works to your destination.\r\nâ€¢	Loading/Unloading: Material unloading will be in your scope.\r\nâ€¢	Insurance: In your scope.\r\nâ€¢	Payment Terms: 50% advance. Balance against Proforma Invoice prior to dispatch. \r\nâ€¢	Offer Validity: 30 Days.\r\nâ€¢	Any fabrication required along with boom-lift/scissor-lift/scaffolding is in customer scope. \r\nâ€¢	Cabling from location of panel up to point of installation is in customer scope. \r\nâ€¢	Standard Terms and Conditions Enclosed\r\n', '260000.00', '0.00', '260000.00', '306800.00', 'Three Hundred and Six Thousand, Eight Hundred', '0.00', '306800.00', '46800.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, '', NULL, '2018-04-06', '2018-04-08', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-06 06:51:16', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(32, 33, 0, '', 22, 'KTR Couplings India Pvt Ltd', '', 'a.solapure@ktr.com', 'Maharashtra', 'Maharashtra', 'Mr Abhishek Solapure', 'a.solapure@ktr.com', 'Maharashtra', 'Maharashtra', 'KTR Couplings India Pvt Ltd,\r\nT-36,37,38,39,Bhosari MIDC\r\nPune-26', 'KTR Couplings India Pvt Ltd,\r\nT-36,37,38,39,Bhosari MIDC\r\nPune-26', 'Mr Abhishek Solapure', '', '', '', 'Terms and Conditions:\r\nâ€¢	Price basis: Ex works Pune.\r\nâ€¢	Delivery: Ex-stock / 5-6 weeks from date of purchase order.\r\nâ€¢	Packing: Standard corrugated packing included.\r\nâ€¢	GST: 18% Extra.\r\nâ€¢	Freight: Extra at actual in your scope from our Pune works to your destination.\r\nâ€¢	Loading/Unloading: Material unloading will be in your scope.\r\nâ€¢	Insurance: In your scope.\r\nâ€¢	Payment Terms: 50% advance. Balance against Proforma Invoice prior to dispatch. \r\nâ€¢	Offer Validity: 30 Days.\r\nâ€¢	Any fabrication required along with boom-lift/scissor-lift/scaffolding is in customer scope. \r\nâ€¢	Cabling from location of panel up to point of installation is in customer scope. \r\nâ€¢	Standard Terms and Conditions Enclosed\r\n', '260000.00', '0.00', '260000.00', '306800.00', 'Three Hundred and Six Thousand, Eight Hundred', '0.00', '306800.00', '46800.00', 'Pending', 'Invoice', 1, 0, 0, '', NULL, '2018-04-06', '2018-04-08', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-06 06:52:24', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(33, 1, 0, '1', 1, 'RR Parkon', '', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Ashutosh Shirole', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Ashutosh Shirole', '27LJND15423DHB2', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '2000.00', '0.00', '2000.00', '2360.00', 'Two Thousand, Three Hundred and Sixty', '0.00', '0.00', '360.00', 'Pending', 'Estimate', 1, 0, 0, 'PR-2', NULL, '2018-04-07', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-19 07:27:39', '2018-04-25 10:17:34', 0, 'WO-2', '2018-04-25', 'Printing', '', ''),
(34, 1, 0, '1', 1, 'RR Parkon', '', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Ashutosh Shirole', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Ashutosh Shirole', '27LJND15423DHB2', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '2000.00', '0.00', '2000.00', '2360.00', 'Two Thousand, Three Hundred and Sixty', '0.00', '2360.00', '360.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'PR-3', NULL, '2018-04-07', '2018-04-27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-19 07:35:26', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(35, 1, 0, '1', 1, 'RR Parkon', '', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Ashutosh Shirole', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Ashutosh Shirole', '27LJND15423DHB2', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '6000.00', '80.00', '5920.00', '6986.00', 'Six Thousand, Nine Hundred and Eighty-Six', '2000.00', '6986.00', '1065.60', 'Pending', 'Invoice', 1, 0, 0, 'PR-3', NULL, '2018-04-07', '2018-04-27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-19 07:35:57', '2018-05-02 10:27:59', 0, '', '0000-00-00', '', '', ''),
(36, 1, 0, '1', 1, 'RR Parkon', '', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Ashutosh Shirole', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Ashutosh Shirole', '27LJND15423DHB2', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '2000.00', '0.00', '2000.00', '2360.00', 'Two Thousand, Three Hundred and Sixty', '0.00', '2360.00', '360.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'PR-4', NULL, '2018-04-07', '2018-04-19', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-19 11:33:13', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(37, 1, 0, '1', 1, 'RR Parkon', '', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Ashutosh Shirole', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Ashutosh Shirole', '27LJND15423DHB2', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '2000.00', '0.00', '2000.00', '2360.00', 'Two Thousand, Three Hundred and Sixty', '0.00', '2360.00', '360.00', 'Pending', 'Invoice', 1, 0, 0, 'PR-4', NULL, '2018-04-07', '2018-04-19', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-19 11:33:41', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(38, 1, 0, '2', 23, 'Corbital', '', 'Test@gmail.com', 'Himachal Pradesh', '2', 'Test', 'Test@gmail.com', 'Himachal Pradesh', '2', 'Testing', 'Testing', 'Test', '', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '2000.00', '0.00', '2000.00', '2240.00', 'Two Thousand, Two Hundred and Forty', '4480.00', '0.00', '240.00', 'Closed', 'Invoice', 1, 0, 0, 'DM-2', NULL, '2018-04-20', '2018-04-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-20 12:44:31', '2018-04-23 09:37:50', 0, '', '0000-00-00', '', '', ''),
(41, 3, 0, '18', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog ', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'SP infosity Fursungi Hadapsar Pune', 'Yatin Jog', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon as the goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nAccount No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460\r\nAccount Type : Current', 'Warranty - 2 Years \r\nMake - cosmo', '23800.00', '0.00', '23800.00', '26656.00', 'Twenty-Six Thousand, Six Hundred and Fifty-Six', '26656.00', '0.00', '2856.00', 'Pending', 'Invoice', 1, 0, 0, 'AE18191', NULL, '2018-04-03', '2018-05-04', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-23 09:03:56', '2018-04-26 13:01:03', 0, 'Mail Confirmation', '2018-04-28', 'Sp infocity pune', '', ''),
(42, 1, 0, '1', 1, 'RR Parkon', '', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Ashutosh Shirole', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Ashutosh Shirole', '27LJND15423DHB2', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '2000.00', '0.00', '2000.00', '2360.00', 'Two Thousand, Three Hundred and Sixty', '0.00', '2360.00', '360.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'PR-5', NULL, '2018-04-07', '2018-04-23', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-23 09:54:27', '2018-06-18 09:10:23', 1, 'WO-301', '2018-05-17', 'Printing of Domain ', '', ''),
(43, 1, 0, '1', 2, 'Tata Technologies', '', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Tejas Dixit', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Tejas Dixit', '27KJNH223BH21', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', 'Thank You..', '950.00', '0.00', '950.00', '1064.00', 'One Thousand and Sixty-Four', '1064.00', '0.00', '114.00', 'Closed', 'Invoice', 1, 0, 0, 'PR-5', NULL, '2018-03-14', '2018-03-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-23 09:56:26', '2018-04-25 10:13:43', 0, 'PO-12', '2018-04-25', 'Printing', '', ''),
(44, 35, 0, '17', 24, 'Manohar Mangal Karyalaya', '', 'ranjitmehendale@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Manohar Mangal Karyalaya 31/1 Erandawana, Mehendale Garage, Pune- 411004', '', 'Ranjit Mehendale', '27AABCM2450L1ZG', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ state bank of india\r\nCC Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch.', '', '100891.00', '0.00', '100891.00', '129140.00', 'One Hundred and Twenty-Nine Thousand, One Hundred and Forty', '387420.00', '0.00', '28249.48', 'Closed', 'Invoice', 1, 0, 0, '18-19/2', NULL, '2018-04-02', '2018-04-18', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-23 14:12:50', '2018-05-10 13:30:20', 0, '', '0000-00-00', '', '', ''),
(45, 35, 0, '', 27, 'Phoenix Solar Systems PVT LTD', '', 'md@phoenixsolar.co.in', 'Maharashtra', '27', '', '', '', '', 'Phoenix, 51, Deshmukh Colony, Satara 415001', '', 'Dhananjay Kadam', '', '1. Ducting work charges as per actual\r\n2. Use only Soft water\r\n3. Unloading in your scope\r\n4. Any Mathadi union charges will be extra if applicable\r\n5. Payment 100% before Dispatch   ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-operative Bank\r\nCC Account â€“ 1003103000202\r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch.', 'MIG 18 Transport Ex Pune\r\nMIG 21 Plus Transport Ex Indore', '110000.00', '5500.00', '104500.00', '123310.00', 'One Hundred and Twenty-Three Thousand, Three Hundred and Ten', '0.00', '0.00', '18810.00', 'Pending', 'Estimate', 1, 0, 0, '', NULL, '2018-04-25', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-25 08:11:44', '2018-04-25 08:24:18', 0, '', '0000-00-00', '', '', ''),
(46, 1, 0, '1', 1, 'RR Parkon', '', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Ashutosh Shirole', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Ashutosh Shirole', '27LJND15423DHB2', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '2000.00', '0.00', '2000.00', '2360.00', 'Two Thousand, Three Hundred and Sixty', '0.00', '2360.00', '360.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'PR-6', NULL, '2018-04-07', '2018-04-25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-25 10:20:49', '0000-00-00 00:00:00', 0, 'WO-2', '2018-04-25', 'Printing', '', ''),
(47, 1, 0, '1', 1, 'RR Parkon', '', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Ashutosh Shirole', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Ashutosh Shirole', '27LJND15423DHB2', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '3500.00', '0.00', '3500.00', '4040.00', 'Four Thousand and Forty', '2360.00', '1680.00', '540.00', 'Pending', 'Invoice', 1, 0, 0, 'PR-6', NULL, '2018-05-16', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-25 10:25:02', '2018-05-21 09:09:36', 0, 'WO-2', '2018-05-16', 'Printing', '', ''),
(48, 35, 0, '17', 28, 'Kirloskar Oil Engines Limited ', '', 'Nitin.Kulkarni@kirloskar.com', 'Maharashtra', '27', '', '', '', '', 'D1 5 Star MIDC, Kagal Kolhapur,Maharashtra ', '', 'Nitin Kulkarni', '27AADCK5714H1ZK', '1. Ducting work charges as per actual\r\n2. Use only Soft water\r\n3. Unloading in your scope\r\n4. Any Mathadi union charges will be extra if applicable\r\n5. Payment 100% before Dispatch   \r\n6. MIG 18 Transport Ex Pune\r\n7. MIG 21 Plus Transport Ex Indore', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-operative Bank\r\nCC Account â€“ 1003103000202\r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch.', '', '12400.00', '0.00', '12400.00', '15022.00', 'Fifteen Thousand and Twenty-Two', '0.00', '0.00', '2622.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/0', NULL, '2018-04-26', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-04-26 06:04:13', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(49, 35, 0, '17', 29, 'Aroma Restaurant ', '', 'vaibs11w@rediffmail.com', 'Maharashtra', '27', '', '', '', '', 'Ward No 1/114,Opp Datta Mandir, Khardekar Road,Vengurla-416516 ', '', 'Vaibhav Walawalkar', '', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-operative Bank\r\nCC Account â€“ 1003103000202\r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch.', '', '26271.00', '0.00', '26271.00', '31000.00', 'Thirty-One Thousand', '31000.00', '0.00', '4728.78', 'Closed', 'Invoice', 1, 0, 0, '18-19/3', NULL, '2018-04-04', '2018-04-04', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-01 06:42:19', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(50, 35, 0, '17', 30, 'Model Developers & Builders', '', 'sales@sgps.co.in', 'Maharashtra', '27', '', '', '', '', 'Site - Amrutwell  254 Bhavani peth Satara-415002', '', 'SANJAY SANKPAL', '27AAZFM3947R1ZY', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-operative Bank\r\nCC Account â€“ 1003103000202\r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch.', '', '31000.00', '0.00', '31000.00', '34720.00', 'Thirty-Four Thousand, Seven Hundred and Twenty', '34720.00', '0.00', '3720.00', 'Closed', 'Invoice', 1, 0, 0, '18-19/4', NULL, '2018-04-04', '2018-04-20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-01 07:05:26', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(51, 35, 0, '17', 31, 'Snigdha Mishra ', '', 'sales@sgps.co.in', 'Maharashtra', '27', '', '', '', '', 'Model Colony Pune', '', 'Snigdha Mishra ', '', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-operative Bank\r\nCC Account â€“ 1003103000202\r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch.', '', '18007.81', '0.00', '18007.81', '22500.00', 'Twenty-Two Thousand, Five Hundred', '22500.00', '0.00', '4492.19', 'Closed', 'Invoice', 1, 0, 0, '18-19/5', NULL, '2018-04-15', '2018-04-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-01 07:32:05', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(53, 35, 0, '17', 32, ' Manas Family Resto & Lounge', '', 'sanjaysmanas5@gmail.com', 'Maharashtra', '27', '', '', '', '', 'plot no 517 infront of  hotel Akash , varye NH4 satara', '', 'sanjay manas', '27AIUPK5828J1ZJ', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ state bank of india\r\nCC Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch.\r\n    \r\n     ', '', '296610.16', '0.00', '296610.16', '350000.00', 'Three Hundred and Fifty Thousand', '659000.00', '41000.00', '53389.83', 'Pending', 'Invoice', 1, 0, 0, '18-19/6', NULL, '2018-04-20', '2018-04-20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-02 05:54:47', '2018-05-19 08:52:16', 0, '', '', '', '', ''),
(54, 35, 0, '17', 33, 'Hotel Nisarg', '', 'prashantpawar2051@gmail.com', 'Maharashtra', '27', '', '', '', '', 'NH4 highway majgaon phata at post atit tal & dis satara', '', 'prashant pawar', '', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-operative Bank\r\nCC Account â€“ 1003103000202\r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch.', '', '131355.93', '0.00', '131355.93', '155000.00', 'One Hundred and Fifty-Five Thousand', '155000.00', '0.00', '23644.07', 'Closed', 'Invoice', 1, 0, 0, '18-19/7', NULL, '2018-04-20', '2018-04-20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-02 08:13:34', '0000-00-00 00:00:00', 0, '', '0000-00-00', '', '', ''),
(55, 35, 0, '17', 34, 'Mono Engineers', '', 'harmesh7056@gmail.com', 'Maharashtra', '27', '', '', '', '', 'pune', '', 'Harmesh', '27AABFM9313P1ZU', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ karad urban co operative\r\nCC Account â€“ 1003103000202\r\nIFSC Code â€“ KUCB0488003\r\nsatara city  Branch.\r\n     ', '', '389830.50', '0.00', '389830.50', '460000.00', 'Four Hundred and Sixty Thousand', '460000.00', '0.00', '70169.49', 'Pending', 'Invoice', 1, 0, 0, '18-19/8', NULL, '2018-04-21', '2018-04-21', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-02 08:32:08', '2018-05-22 07:38:10', 0, '', '', '', '', ''),
(57, 3, 0, '24', 36, 'Ujwal Udyog, Pune', '', 'NA', 'Maharashtra', '27', 'Mr. Shirke - 9422012130', 'NA', 'Maharashtra', '27', 'Ujwal Udyog, ground floor Sr. No43, Krishma Complex, Pune', 'Ujwal Udyog, ground floor Sr. No43, Krishma Complex, Pune', 'Mr. Shirke - 9422012130', '27AZLPS5211M1ZV', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nAccount No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '2600.00', '0.00', '2600.00', '3068.00', 'Three Thousand and Sixty-Eight', '3068.00', '0.00', '468.00', 'Closed', 'Invoice', 1, 0, 0, 'AE18192', NULL, '2018-04-05', '2018-04-05', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-03 10:24:24', '2018-05-07 05:44:13', 0, 'Verbal confirmation', '2018-03-25', 'Ujwal Udyog', '', ''),
(58, 3, 0, '24', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog ', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'SPinfocity Fursungi Pune', 'Yatin Jog ', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon as the goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nAccount No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460\r\nAccount Type : Current', 'Warranty - 2 Years \r\nMake - Cosmo', '36000.00', '0.00', '36000.00', '40440.00', 'Forty Thousand, Four Hundred and Forty', '40440.00', '0.00', '4440.00', 'Closed', 'Invoice', 1, 0, 0, 'AE18193', NULL, '2018-04-30', '2018-05-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-03 10:33:10', '0000-00-00 00:00:00', 0, 'Verbal confirmation', '2018-03-28', 'SP infocity ', '', ''),
(60, 3, 0, '25', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog ', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'ID Medical - 303-305 Kharadi WTC', 'Yatin Jog ', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon as the goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nAccount No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460\r\nAccount Type : Current', '', '48665.00', '0.00', '48665.00', '54526.00', 'Fifty-Four Thousand, Five Hundred and Twenty-Six', '0.00', '54526.00', '5860.80', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'AEQ18190', NULL, '2018-05-05', '2018-06-05', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-05 07:52:37', '0000-00-00 00:00:00', 1, '', '0000-00-00', '', '', ''),
(61, 3, 0, '25', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog ', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'ID Medical - 303-305 Kharadi WTC', 'Yatin Jog ', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon as the goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nAccount No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '48665.00', '0.00', '48665.00', '54526.00', 'Fifty-Four Thousand, Five Hundred and Twenty-Six', '0.00', '0.00', '5860.80', 'Pending', 'Estimate', 1, 0, 0, 'AEQ18191', NULL, '2018-05-05', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-05 07:57:26', '2018-05-05 08:15:26', 0, '', '0000-00-00', '', '', ''),
(62, 3, 0, '24', 35, 'Anmol Heights Co - Operative Housing Society Ltd Karvenagar , Pune', '', 'NA', 'Maharashtra', '27', 'MR. Ponshe - 9422406932', 'NA', 'Maharashtra', '27', 'Plot no 3/4 S.no 37/1/3 (M), Karve Nagar, Hingane (Bk) Pune -411052', 'Plot no 3/4 S.no 37/1/3 (M), Karve Nagar, Hingane (Bk) Pune -411052', 'MR. Ponshe - 9422406932', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nAccount No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '2 Years Warranty ', '3640.00', '0.00', '3640.00', '4077.00', 'Four Thousand and Seventy-Seven', '4077.00', '0.00', '436.80', 'Closed', 'Invoice', 1, 0, 0, 'AE18194', NULL, '2018-05-05', '2018-05-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-05 09:11:28', '0000-00-00 00:00:00', 0, 'Verbal Communication', '2018-05-01', '', '', ''),
(64, 3, 0, '25', 37, 'Awakeningjagriti.org.in', 'NA', 'sucheta.bhosale@Awakeningjagriti.Org.In', 'Maharashtra', '27', '', '', '', '', 'NA', '', 'Bhosale Sucheta -9527995054', 'NA', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nAccount No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', 'Quote is valid for next 2 weeks ', '452000.00', '0.00', '452000.00', '482010.00', 'Four Hundred and Eighty-Two Thousand and Ten', '0.00', '0.00', '30010.00', 'Pending', 'Estimate', 1, 0, 0, 'AEQ18192', NULL, '2018-05-07', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-07 04:42:28', '2018-05-09 07:26:52', 0, '', '0000-00-00', '', '', ''),
(65, 1, 0, '2', 38, 'RR Cables', '2348239', 'a@gmail.com', 'Maharashtra', '27', 'avi', 'a@gmail.com', 'Maharashtra', '27', 'pune', 'pune', 'avi', '234823904', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '24047.00', '0.00', '24047.00', '28375.00', 'Twenty-Eight Thousand, Three Hundred and Seventy-Five', '0.00', '0.00', '4328.46', 'Pending', 'Estimate', 1, 0, 0, 'DM-1', NULL, '2018-05-16', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-07 09:59:19', '2018-05-16 09:31:05', 0, '', '0000-00-00', '', '', ''),
(66, 3, 0, '24', 39, 'Deoghar, Pune', '', 'Devghar.pune@gmail.com M- 7030877881', 'Maharashtra', '27', 'Mandar Marathe -', 'Devghar.pune@gmail.com M- 7030877881', 'Maharashtra', '27', 'Devghar Shop No 4, Bhansali Tower, Near hotel Janjira, LBS road, Ganjawe chowk, Navipeth, Pune -411030', 'Devghar Shop No 4, Bhansali Tower, Near hotel Janjira, LBS road, Ganjawe chowk, Navipeth, Pune -411030', 'Mandar Marathe -', '27AQAPM8938M1Z6', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nAccount No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', 'Devine Product ', '5400.00', '0.00', '5400.00', '6048.00', 'Six Thousand and Forty-Eight', '6048.00', '0.00', '648.00', 'Closed', 'Invoice', 1, 0, 0, 'AE18195', NULL, '2018-05-09', '2018-06-09', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-09 09:09:03', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-05-08', 'Deoghar Project', '', ''),
(67, 35, 0, '17', 26, 'Chirps International Pune', '', 'rajiv@chirps.in', 'Maharashtra', '27', '', '', '', '', '78, Hills & Dales Society, Undri Pune 411060', '', 'Rajiv Chibber', '27ABTPC15501ZT', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ state bank of india\r\nCC Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch.', '', '20625.00', '0.00', '20625.00', '26400.00', 'Twenty-Six Thousand, Four Hundred', '26400.00', '0.00', '5775.00', 'Closed', 'Invoice', 1, 0, 0, '18-19/9', NULL, '2018-04-26', '2018-04-26', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-10 13:27:51', '2018-05-12 11:13:02', 0, '', '0000-00-00', '', '', ''),
(68, 3, 0, '24', 40, 'Boom Age Engineering Solutions Pvt Ltd', '', 'bgk@boomagesystems.com 9011001616', 'Maharashtra', '27', 'Prasad Kolhatkar', 'bgk@boomagesystems.com 9011001616', 'Maharashtra', '27', 'Boom Age Engineering Solutions Pvt Ltd Office No 1,2 & 3 arvind apt, opp mantri hospital, Near Mhatre bridge ,94 Erandwane, Pune - 411004', 'Boom Age Engineering Solutions Pvt Ltd Office No 1,2 & 3 arvind apt, opp mantri hospital, Near Mhatre bridge ,94 Erandwane, Pune - 411004', 'Prasad Kolhatkar', '27AAECB6173C1ZV', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nAccount No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '3500.00', '0.00', '3500.00', '4130.00', 'Four Thousand, One Hundred and Thirty', '4130.00', '0.00', '630.00', 'Closed', 'Invoice', 1, 0, 0, 'AE18196', NULL, '2018-05-10', '2018-05-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-11 08:20:31', '0000-00-00 00:00:00', 0, 'Verbal communications ', '2018-05-07', '', '', ''),
(69, 35, 0, '17', 28, 'Kirloskar Oil Engines Limited ', '', 'Nitin.Kulkarni@kirloskar.com', 'Maharashtra', '27', '', '', '', '', 'D1 5 Star MIDC, Kagal Kolhapur,Maharashtra ', '', 'Nitin Kulkarni', '27AADCK5714H1ZK', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-operative Bank\r\nCC Account â€“ 1003103000202 \r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch.', '', '187850.00', '0.00', '187850.00', '221663.00', 'Two Hundred and Twenty-One Thousand, Six Hundred and Sixty-Three', '221663.00', '0.00', '33813.00', 'Closed', 'Invoice', 1, 0, 0, '18-19/10', NULL, '2018-05-14', '2018-06-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-14 05:24:50', '0000-00-00 00:00:00', 0, '7018034384', '2018-01-15', 'Vaayu Project', '', ''),
(70, 35, 0, '17', 28, 'Kirloskar Oil Engines Limited ', '', 'Nitin.Kulkarni@kirloskar.com', 'Maharashtra', '27', '', '', '', '', 'D1 5 Star MIDC, Kagal Kolhapur,Maharashtra ', '', 'Nitin Kulkarni', '27AADCK5714H1ZK', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-operative Bank\r\nCC Account â€“ 1003103000202 \r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch.', '', '12400.00', '0.00', '12400.00', '15022.00', 'Fifteen Thousand and Twenty-Two', '15022.00', '0.00', '2622.00', 'Closed', 'Invoice', 1, 0, 0, '18-19/11', NULL, '2018-05-14', '2018-06-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-14 05:30:32', '0000-00-00 00:00:00', 0, '7019005283', '2018-05-10', 'Vaayu Project', '', ''),
(71, 35, 0, '17', 41, 'M/s Kam Avida Enviro Engineers Pvt Ltd,', '', 'purchase1@kam-avida.com', 'Maharashtra', '27', '', '', '', '', 'Plot No 2,Survey No 255/1,Hinjewadi Tal Mulshi,Dist Pune', '', 'kishor sonone', '27AABCK2355G1ZP', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ state bank of india\r\nCC Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch.\r\n    ', '', '18152.54', '0.00', '18152.54', '21420.00', 'Twenty-One Thousand, Four Hundred and Twenty', '85680.00', '0.00', '3267.46', 'Closed', 'Invoice', 1, 0, 0, '18-19/12', NULL, '2018-05-18', '2018-05-20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 11:10:28', '2018-05-18 12:42:40', 0, '1171802606', '2018-03-31', '', '', '');
INSERT INTO `common` (`id`, `user_id`, `sub_user_id`, `series_id`, `customer_id`, `customer_name`, `customer_identification`, `customer_email`, `invoice_state`, `in_state_code`, `ship_cont_person`, `ship_email`, `ship_state`, `ship_state_code`, `invoicing_address`, `shipping_address`, `contact_person`, `cust_gst_no`, `terms`, `bank_details`, `notes`, `base_amount`, `discount_amount`, `net_amount`, `gross_amount`, `amt_words`, `paid_amount`, `due_amt`, `tax_amount`, `status`, `type`, `draft`, `closed`, `sent_by_email`, `number`, `recurring_invoice_id`, `issue_date`, `due_date`, `days_to_due`, `enabled`, `max_occurrences`, `must_occurrences`, `period`, `period_type`, `starting_date`, `finishing_date`, `last_execution_date`, `created_at`, `updated_at`, `del_status`, `po_no`, `po_date`, `po_project_name`, `cmobile_no`, `csmobile_no`) VALUES
(72, 3, 0, '24', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog ', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'ID Medical - 303-305 Kharadi WTC', 'Yatin Jog ', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nAccount No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', 'Product Warranty - 2 Years ', '49465.00', '0.00', '49465.00', '55470.00', 'Fifty-Five Thousand, Four Hundred and Seventy', '55470.00', '0.00', '6004.80', 'Closed', 'Invoice', 1, 0, 0, 'AE18197', NULL, '2018-05-16', '2018-06-18', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 11:24:29', '2018-05-18 11:50:02', 0, 'PBSPL/LLIGHTS/ID MEDICAL 303-305/7', '2018-05-09', 'ID MEDICAL', '', ''),
(73, 1, 0, '2', 2, 'Tata Technologies', '', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Tejas Dixit', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Tejas Dixit', '27KJNH223BH21', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '8046.00', '80.00', '7966.00', '9400.00', 'Nine Thousand, Four Hundred', '0.00', '0.00', '1433.88', 'Pending', 'Estimate', 1, 0, 0, 'DM-2', NULL, '2018-05-10', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 13:18:29', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(74, 1, 0, '2', 2, 'Tata Technologies', '', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Tejas Dixit', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Tejas Dixit', '27KJNH223BH21', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '8046.00', '80.00', '7966.00', '9400.00', 'Nine Thousand, Four Hundred', '0.00', '9400.00', '1433.88', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'DM-1', NULL, '2018-05-10', '2018-05-25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 13:20:45', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(75, 1, 0, '2', 2, 'Tata Technologies', '', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Tejas Dixit', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Tejas Dixit', '27KJNH223BH21', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '105196.00', '0.00', '105196.00', '57654757.00', 'Fifty-Seven Million, Six Hundred and Fifty-Four Thousand, Seven Hundred and Fifty-Seven', '120000.00', '57534757.00', '18935.28', 'Pending', 'Invoice', 1, 0, 0, 'DM-3', NULL, '2018-05-10', '2018-05-25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-18 13:21:21', '2018-06-07 09:56:21', 0, '', '', '', '', ''),
(76, 3, 0, '25', 42, 'Sharadha Construction ', '', 'abhay200966@yahoo.co.in', 'Maharashtra', '27', 'Abhay Bhairat 9767897904', 'abhay200966@yahoo.co.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Abhay Bhairat 9767897904', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', 'Brand - Cosmo \r\nWarranty - 2 years', '4915.00', '0.00', '4915.00', '5505.00', 'Five Thousand, Five Hundred and Five', '0.00', '0.00', '589.80', 'Pending', 'Estimate', 1, 0, 0, 'AEQ18193', NULL, '2018-05-23', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-23 12:55:40', '2018-05-30 11:18:46', 0, '', '', '', '', ''),
(77, 35, 0, '17', 43, 'Pranav Gurav', '', 'pranavpgurav@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Office No-201, Siddharth Towers, Building No- 1, Opposite Sangam Press, Near Karishma Society, Kothrud Pune 411038', '', 'Pranav Gurav', '', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ state bank of india\r\nCC Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch.\r\n    ', '', '72300.00', '0.00', '72300.00', '92544.00', 'Ninety-Two Thousand, Five Hundred and Forty-Four', '0.00', '0.00', '20244.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/1', NULL, '2018-05-24', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-24 11:13:57', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(78, 3, 0, '24', 44, 'Nea Co Operative Housing Society ', 'NA', 'jayrajvh@gmail.com', 'Maharashtra', '27', 'Ajit Borate 9970747431', '', 'Maharashtra', '27', 'Survey No. 41/2/3 To 13 & 15, Sus, Tal: Mulshi, Dist: Pune\r\nRegistration Number: PNA/MSI/HSG/TC/10917/12', 'Survey No. 41/2/3 To 13 & 15, Sus, Tal: Mulshi, Dist: Pune\r\nRegistration Number: PNA/MSI/HSG/TC/10917/12', 'Jayraj Hegde 7507552331', 'NA', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '232100.00', '0.00', '232100.00', '273878.00', 'Two Hundred and Seventy-Three Thousand, Eight Hundred and Seventy-Eight', '273878.00', '0.00', '41778.00', 'Closed', 'Invoice', 1, 0, 0, 'AE18198', NULL, '2018-05-25', '2018-05-05', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-25 06:27:31', '2018-05-30 12:42:18', 0, '2018_04_23', '2018-04-23', 'Nea Co Operative Housing Society', '', ''),
(79, 35, 0, '17', 43, 'Pranav Gurav', '', 'pranavpgurav@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Office No-201, Siddharth Towers, Building No- 1, Opposite Sangam Press, Near Karishma Society, Kothrud Pune 411038', '', 'Pranav Gurav', '', '1. 100% Advance required before dispatch\r\n2. Prices Include Standard Fitting\r\n3. Core Cutting if required will be extra\r\n4. Outdoor Stand if required will be extra\r\n ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ state bank of india\r\nCC Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch.\r\n    ', '', '80950.00', '0.00', '80950.00', '103616.00', 'One Hundred and Three Thousand, Six Hundred and Sixteen', '0.00', '0.00', '22666.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/2', NULL, '2018-05-25', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-25 10:10:06', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(80, 3, 0, '25', 45, 'Dr. Tatyasaheb Jadhav', 'NA', 'admin@cuboid9.com', 'Maharashtra', '27', 'Sangram Patil - 8554959600', 'admin@cuboid9.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Sangram Patil - 8554959600', 'NA', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '8340.00', '0.00', '8340.00', '9404.00', 'Nine Thousand, Four Hundred and Four', '0.00', '0.00', '1063.80', 'Pending', 'Estimate', 1, 0, 0, 'AEQ18194', NULL, '2018-05-26', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-26 14:30:17', '2018-05-26 14:37:50', 0, '', '', '', '', ''),
(81, 35, 0, '17', 43, 'Pranav Gurav', '', 'pranavpgurav@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Office No-201, Siddharth Towers, Building No- 1, Opposite Sangam Press, Near Karishma Society, Kothrud Pune 411038', '', 'Pranav Gurav', '', '1. 100% Advance required before dispatch\r\n2. Prices Include Standard Fitting\r\n3. Core Cutting if required will be extra\r\n4. Outdoor Stand if required will be extra\r\n ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ state bank of india\r\nCC Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch.\r\n    ', '', '80950.00', '0.00', '80950.00', '103616.00', 'One Hundred and Three Thousand, Six Hundred and Sixteen', '0.00', '103616.00', '22666.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, '18-19/0', NULL, '2018-05-25', '2018-05-29', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-27 10:59:35', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(82, 3, 0, '25', 46, 'Lucian Lighting', '', 'n.vaidya@lucian.in', 'Maharashtra', '27', 'Nachiket Vaidya 9822424420', 'n.vaidya@lucian.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Nachiket Vaidya 9822424420', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ceases as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '168750.00', '0.00', '168750.00', '192750.00', 'One Hundred and Ninety-Two Thousand, Seven Hundred and Fifty', '0.00', '0.00', '24000.00', 'Pending', 'Estimate', 1, 0, 0, 'AEQ18195', NULL, '2018-05-28', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-28 09:47:17', '2018-05-28 09:53:54', 0, '', '', '', '', ''),
(83, 36, 0, '27', 47, 'Manoj', '', 'patwardhanmanoj@yahoo.com', 'MAHARASHTRA', '27', 'patwardhan', 'patwardhanmanoj@yahoo.com', 'MAHARASHTRA', '27', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'patwardhan', '', '', '', '', '58500.00', '5000.00', '58500.00', '58500.00', 'Fifty-Eight Thousand, Five Hundred', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, 'e11', NULL, '1970-01-01', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-28 14:20:53', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(84, 36, 0, '27', 47, 'Manoj', '', 'patwardhanmanoj@yahoo.com', 'MAHARASHTRA', '27', 'patwardhan', 'patwardhanmanoj@yahoo.com', 'MAHARASHTRA', '27', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'patwardhan', '', '', '', '', '58500.00', '0.00', '58500.00', '58500.00', 'Fifty-Eight Thousand, Five Hundred', '0.00', '58500.00', '0.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'e11', NULL, '1970-01-21', '2018-05-27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-29 01:32:48', '0000-00-00 00:00:00', 0, 'patwardhan1', '2018-05-24', '', '', ''),
(85, 36, 0, '27', 47, 'Manoj', '', 'patwardhanmanoj@yahoo.com', 'MAHARASHTRA', '27', 'patwardhan', 'patwardhanmanoj@yahoo.com', 'MAHARASHTRA', '27', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'patwardhan', '', '', '', '', '58500.00', '0.00', '58500.00', '58500.00', 'Fifty-Eight Thousand, Five Hundred', '58500.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'e10', NULL, '1970-01-21', '2018-05-27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-29 01:35:53', '0000-00-00 00:00:00', 0, 'patwardhan1', '2018-05-24', '', '', ''),
(86, 36, 0, '27', 48, 'Parag Joshi', '', 'niranjan.vmulay@gmail.com', 'MAHARASHTRA', '', 'Parag', 'niranjan.vmulay@gmail.com', 'MAHARASHTRA', 'MAHARASHTRA', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'Parag', '', '', '', '', '58500.00', '0.00', '58500.00', '58500.00', 'Fifty-Eight Thousand, Five Hundred', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, 'e12', NULL, '1970-01-01', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-29 02:18:12', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(87, 36, 0, '27', 48, 'Parag Joshi', '', 'niranjan.vmulay@gmail.com', 'MAHARASHTRA', '', 'Parag', 'niranjan.vmulay@gmail.com', 'MAHARASHTRA', '', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'Parag', '', '', '', '', '58500.00', '0.00', '58500.00', '58500.00', 'Fifty-Eight Thousand, Five Hundred', '0.00', '58500.00', '0.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'e12', NULL, '1970-01-01', '2018-05-25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-29 02:19:34', '0000-00-00 00:00:00', 0, 'parag1', '', '', '', ''),
(88, 36, 0, '27', 48, 'Parag Joshi', '', 'niranjan.vmulay@gmail.com', 'MAHARASHTRA', '', 'Parag', 'niranjan.vmulay@gmail.com', 'MAHARASHTRA', '', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'b11 Vatsalyanagari, GuruGanesh Nagaer, Kothrud\r\nKothrud', 'Parag', '', '', '', '', '58500.00', '0.00', '58500.00', '58500.00', 'Fifty-Eight Thousand, Five Hundred', '58500.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'e11', NULL, '1970-01-01', '2018-05-25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-05-29 02:20:19', '0000-00-00 00:00:00', 0, 'parag1', '', '', '', ''),
(89, 35, 0, '17', 50, 'Janata Sahakari Bank', '', 'dpmdevyani@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Janata Sahakari Bank, Sinhgad Road Branch', '', 'Devyani Tamboli', '', '1. 100% Advance required before dispatch\r\n2. Prices Include Standard Fitting\r\n3. Core Cutting if required will be extra\r\n4. Outdoor Stand if required will be extra\r\n ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ state bank of india\r\nCC Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch.\r\n    ', '', '117188.00', '0.00', '117188.00', '150001.00', 'One Hundred and Fifty Thousand and One', '0.00', '0.00', '32812.64', 'Pending', 'Estimate', 1, 0, 0, '18-19/3', NULL, '2018-06-01', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-02 11:02:18', '2018-06-02 11:06:18', 0, '', '', '', '', ''),
(90, 35, 0, '17', 49, 'Prasanna Pedgaonkar', '', 'pgpedgaonkar@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Aradhana, Plot No-55, Aamchi Colony, Lane No-5, Bavdhan Pune ', '', 'Prasanna Pedgaonkar', '', '1. 100% Advance required before dispatch\r\n2. Prices Include Standard Fitting\r\n3. Core Cutting if required will be extra\r\n4. Outdoor Stand if required will be extra\r\n ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ state bank of india\r\nCC Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch.\r\n    ', '', '195700.00', '0.00', '195700.00', '250496.00', 'Two Hundred and Fifty Thousand, Four Hundred and Ninety-Six', '0.00', '0.00', '54796.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/4', NULL, '2018-06-02', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-02 11:05:11', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(91, 37, 0, '31', 51, 'KAMLESH MEDICAL', '', 'KM@GMAIL.COM', 'Maharashtra', '27', '8625899996', 'KM@GMAIL.COM', 'Maharashtra', '27', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', '8625899996', '', '', '', '', '310.00', '0.00', '310.00', '310.00', 'Three Hundred and Ten', '310.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, '0.001', NULL, '2018-06-03', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-03 09:02:49', '0000-00-00 00:00:00', 0, '1', '', '', '', ''),
(92, 37, 0, '31', 51, 'KAMLESH MEDICAL', '', 'KM@GMAIL.COM', 'Maharashtra', '27', '8625899996', 'KM@GMAIL.COM', 'Maharashtra', '27', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', '8625899996', '', '', '', '', '850.00', '0.00', '850.00', '850.00', 'Eight Hundred and Fifty', '0.00', '850.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '0.002', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-03 09:05:29', '0000-00-00 00:00:00', 0, '', '2018-06-02', '', '', ''),
(93, 37, 0, '31', 51, 'KAMLESH MEDICAL', '', 'KM@GMAIL.COM', 'Maharashtra', '27', '8625899996', 'KM@GMAIL.COM', 'Maharashtra', '27', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', '8625899996', '', '', '', '', '0.00', '0.00', '0.00', '0.00', 'Zero', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '0.003', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-03 12:44:28', '2018-06-03 13:08:51', 0, '', '2018-06-03', '', '', ''),
(94, 37, 0, '31', 51, 'KAMLESH MEDICAL', '', 'KM@GMAIL.COM', 'Maharashtra', '27', '8625899996', 'KM@GMAIL.COM', 'Maharashtra', '27', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', '8625899996', '', '', '', '', '1850.00', '0.00', '1850.00', '1850.00', 'One Thousand, Eight Hundred and Fifty', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, '0.000', NULL, '1970-01-01', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-03 13:17:29', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(95, 3, 0, '24', 46, 'Lucian Lighting ', '', 'n.vaidya@lucian.in', 'Maharashtra', '27', 'Nachiket Vaidya 9822424420', 'n.vaidya@lucian.in', 'Maharashtra', '27', 'Vasant /baug , S No 74/4, Prayeja City road, wadgaon Bk, Pune 411041', 'Vasant /baug , S No 74/4, Prayeja City road, wadgaon Bk, Pune 411041', 'Nachiket Vaidya 9822424420', '27AAGCT6392K1ZP', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '6750.00', '0.00', '6750.00', '7710.00', 'Seven Thousand, Seven Hundred and Ten', '7710.00', '0.00', '960.00', 'Closed', 'Invoice', 1, 0, 0, 'AE18199', NULL, '2018-06-04', '2018-07-05', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-04 03:02:25', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-06-02', 'NA', '', ''),
(96, 37, 0, '31', 51, 'KAMLESH MEDICAL', '', 'KM@GMAIL.COM', 'Maharashtra', '27', '8625899996', 'KM@GMAIL.COM', 'Maharashtra', '27', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', '8625899996', '', '', '', '', '850.00', '0.00', '850.00', '850.00', 'Eight Hundred and Fifty', '850.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, '0.004', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-04 06:37:56', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(97, 37, 0, '31', 52, 'DHAYGUDE MEDICAL', '', 'KK@GMAIL.COM', 'Maharashtra', '27', '7620992991', 'KK@GMAIL.COM', 'Maharashtra', '27', 'RAJWADA SATARA', 'RAJWADA SATARA', '7620992991', '', '', '', '', '700.00', '0.00', '700.00', '700.00', 'Seven Hundred', '700.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, '0.005', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-04 06:47:09', '2018-06-04 06:57:04', 0, '', '', '', '', ''),
(98, 37, 0, '31', 52, 'DHAYGUDE MEDICAL', '', 'KK@GMAIL.COM', 'Maharashtra', '27', '7620992991', 'KK@GMAIL.COM', 'Maharashtra', '27', 'RAJWADA SATARA', 'RAJWADA SATARA', '7620992991', '', '', '', '', '350.00', '100.00', '250.00', '250.00', 'Two Hundred and Fifty', '0.00', '250.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '0.006', NULL, '2018-06-04', '2018-06-04', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-04 07:18:24', '2018-06-04 07:24:23', 0, '', '', '', '', ''),
(99, 37, 0, '31', 51, 'KAMLESH MEDICAL', '', 'KM@GMAIL.COM', 'Maharashtra', '27', '8625899996', 'KM@GMAIL.COM', 'Maharashtra', '27', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', 'BHAVANI PETH,MANGALWAR TALE ROAD SATARA', '8625899996', '', '', '', '', '3000.00', '0.00', '3000.00', '3000.00', 'Three Thousand', '3000.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, '0.007', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-04 07:33:53', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(100, 3, 0, '24', 42, 'Sharadha Construction ', 'NA', 'abhay200966@yahoo.co.in', 'Maharashtra', '27', 'Abhay Bhairat 9767897904', 'abhay200966@yahoo.co.in', 'Maharashtra', '27', 'Bhosale Heights, Office No: 9, FC Rd, Sud Nagar, Shivajinagar, Pune, Maharashtra 411004', 'Bhosale Heights, Office No: 9, FC Rd, Sud Nagar, Shivajinagar, Pune, Maharashtra 411004', 'Abhay Bhairat 9767897904', '27ABCFS8948N1ZA', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '6805.00', '0.00', '6805.00', '7803.00', 'Seven Thousand, Eight Hundred and Three', '7803.00', '0.00', '998.10', 'Pending', 'Invoice', 1, 0, 0, 'AE181910', NULL, '2018-06-05', '2018-06-19', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-05 09:34:42', '2018-07-30 10:46:52', 0, 'Verbal Confirmation', '2018-06-05', 'Kondhawa Project', '', ''),
(101, 1, 0, '1', 53, 'Rana', '764466', 'amit@e-bc.in', 'Maharashtra', '27', 'AMIT', 'amit@e-bc.in', 'Maharashtra', '27', 'pune', 'pune', 'AMIT', '4674646', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '3045.00', '60.00', '2985.00', '3514.00', 'Three Thousand, Five Hundred and Fourteen', '0.00', '0.00', '529.20', 'Pending', 'Estimate', 1, 0, 0, 'PR-3', NULL, '2018-06-07', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 11:36:58', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(102, 1, 0, '1', 53, 'Rana', '764466', 'amit@e-bc.in', 'Maharashtra', '27', 'AMIT', 'amit@e-bc.in', 'Maharashtra', '27', 'pune', 'pune', 'AMIT', '4674646', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '3045.00', '60.00', '2985.00', '3514.00', 'Three Thousand, Five Hundred and Fourteen', '0.00', '3514.00', '529.20', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'PR-7', NULL, '2018-06-07', '2018-06-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 11:40:12', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(103, 1, 0, '1', 53, 'Rana', '764466', 'amit@e-bc.in', 'Maharashtra', '27', 'AMIT', 'amit@e-bc.in', 'Maharashtra', '27', 'pune', 'pune', 'AMIT', '4674646', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '3045.00', '60.00', '2985.00', '3514.00', 'Three Thousand, Five Hundred and Fourteen', '3514.00', '0.00', '529.20', 'Closed', 'Invoice', 1, 0, 0, 'PR-7', NULL, '2018-06-07', '2018-06-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-07 11:40:56', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(104, 1, 0, '1', 53, 'Rana', '764466', 'amit@e-bc.in', 'Maharashtra', '27', 'AMIT hvghfyj', 'amit@e-bc.in', 'Maharashtra', '27', 'punebcgfhfhj', 'punebcgfhfhj', 'AMIT hvghfyj', '4674646', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '20000.00', '400.00', '19600.00', '23128.00', 'Twenty-Three Thousand, One Hundred and Twenty-Eight', '0.00', '0.00', '3528.00', 'Pending', 'Estimate', 1, 0, 0, 'PR-4', NULL, '2018-06-06', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-11 11:20:40', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(105, 1, 0, '1', 53, 'Rana', '764466', 'amit@e-bc.in', 'Maharashtra', '27', 'AMIT hvghfyj', 'amit@e-bc.in', 'Maharashtra', '27', 'punebcgfhfhj', 'punebcgfhfhj', 'AMIT hvghfyj', '4674646', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '20000.00', '400.00', '19600.00', '23128.00', 'Twenty-Three Thousand, One Hundred and Twenty-Eight', '0.00', '23128.00', '3528.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'PR-8', NULL, '2018-06-06', '2018-06-22', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-11 11:23:50', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(106, 1, 0, '1', 53, 'Rana', '764466', 'amit@e-bc.in', 'Maharashtra', '27', 'AMIT hvghfyj', 'amit@e-bc.in', 'Maharashtra', '27', 'punebcgfhfhj', 'punebcgfhfhj', 'AMIT hvghfyj', '4674646', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '20000.00', '400.00', '19600.00', '23128.00', 'Twenty-Three Thousand, One Hundred and Twenty-Eight', '500.00', '22628.00', '3528.00', 'Pending', 'Invoice', 1, 0, 0, 'PR-8', NULL, '2018-06-06', '2018-06-22', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-11 11:24:27', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(107, 38, 0, '34', 54, 'Radhika Kulkarni', '', 'radhesham1209@gmail.com', 'Maharashtra', '27', '9011086142', 'radhesham1209@gmail.com', 'Maharashtra', '27', '14 Madhusanchay Society, Karvenagar Pune', '14 Madhusanchay Society, Karvenagar Pune', '9011086142', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '5700.00', '0.00', '5700.00', '5700.00', 'Five Thousand, Seven Hundred', '5700.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, 'SE/17/18/1', NULL, '2017-07-20', '2017-07-20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-12 11:55:59', '2018-06-12 12:02:07', 0, '01', '2017-07-20', '', '', ''),
(108, 35, 0, '17', 55, 'Spark Laboratories', '', 'sparklab273@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Shop No 10,Samruddhi Park,Sadar Bazar,Satara', '', 'Mr Amit Natu', '27ADSPN0615P1ZY', '1. 100% Advance required before dispatch\r\n\r\n', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Cooperative Bank Ltd\r\nCC Account â€“ 1003103000202\r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch\r\n    ', '', '261865.00', '0.00', '261865.00', '309001.00', 'Three Hundred and Nine Thousand and One', '309001.00', '0.00', '47135.70', 'Closed', 'Invoice', 1, 0, 0, '18-19/13', NULL, '2018-05-20', '2018-05-20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-13 07:46:40', '2018-06-13 07:50:35', 0, '', '', '', '', ''),
(109, 1, 0, '1', 2, 'Tata Technologies', '', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Tejas Dixit', 'tejas.ebc@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'Tejas Dixit', '27KJNH223BH21', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '3000.00', '0.00', '3000.00', '3540.00', 'Three Thousand, Five Hundred and Forty', '0.00', '3540.00', '540.00', 'Pending', 'Invoice', 1, 0, 0, 'PR-9', NULL, '2018-06-13', '2018-06-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-13 07:48:11', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(110, 1, 0, '2', 56, 'Planora', '', 'test@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Pune', '', 'test', '', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '1500.00', '0.00', '1500.00', '1500.00', 'One Thousand, Five Hundred', '0.00', '1500.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, 'DM-4', NULL, '2018-06-13', '2018-06-13', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-13 08:00:56', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(111, 3, 0, '24', 46, 'Lucian Lighting ', '', 'n.vaidya@lucian.in', 'Maharashtra', '27', 'Nachiket Vaidya 9822424420', 'n.vaidya@lucian.in', 'Maharashtra', '27', 'Vasant /baug , S No 74/4, Prayeja City road, wadgaon Bk, Pune 411041', 'Vasant /baug , S No 74/4, Prayeja City road, wadgaon Bk, Pune 411041', 'Nachiket Vaidya 9822424420', '27AAGCT6392K1ZP', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '2700.00', '0.00', '2700.00', '3084.00', 'Three Thousand and Eighty-Four', '3084.00', '0.00', '384.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181911', NULL, '2018-06-13', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-13 09:42:49', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-06-13', '', '', ''),
(112, 38, 0, '33', 57, 'Sathe Prafulla', '', 'kanchan.deo75@gmail.com', 'Maharashtra', '27', '', '', '', '', 'padmavati', '', '9422085904', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '18500.00', '0.00', '18500.00', '18500.00', 'Eighteen Thousand, Five Hundred', '18500.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/1', NULL, '2018-04-02', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-13 11:09:59', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(113, 35, 0, '17', 43, 'PVG Enterprises', '', 'pranavpgurav@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Office No-201, Siddharth Towers, Building No- 1, Opposite Sangam Press, Near Karishma Society, Kothrud Pune 411038', '', 'Pranav Gurav', '27AGUPG3274A1ZF', '1. 100% Advance required before dispatch\r\n\r\n', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank of India\r\nCURRENT Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud City Branch\r\n    ', '', '80950.00', '0.00', '80950.00', '103616.00', 'One Hundred and Three Thousand, Six Hundred and Sixteen', '103616.00', '0.00', '22666.00', 'Pending', 'Invoice', 1, 0, 0, '18-19/14', NULL, '2018-05-30', '2018-05-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-13 11:47:23', '2018-06-13 12:19:55', 0, '', '', '', '', ''),
(114, 3, 0, '24', 58, 'A SQUARE REALTY ', '', '9823198980', 'Maharashtra', '27', 'SHILA MADAM 7757888229', 'shilpa@asquarerealty.com', 'Maharashtra', '27', '404 4TH FLOOR, BHAKTI PLAZA, AUNDH PUNE -411007', '404 4TH FLOOR, BHAKTI PLAZA, AUNDH PUNE -411007', 'ATUL LUNKAD', '27AAOFA1494J1Z3', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '10200.00', '0.00', '10200.00', '11424.00', 'Eleven Thousand, Four Hundred and Twenty-Four', '11424.00', '0.00', '1224.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181912', NULL, '2018-06-15', '2018-06-19', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-14 13:10:47', '2018-06-14 13:24:34', 0, 'VERBAL CONFIRMATION', '2018-06-14', 'AUNDH ', '', ''),
(115, 3, 0, '24', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog ', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'Yatin Jog ', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '5340.00', '0.00', '5340.00', '5999.00', 'Five Thousand, Nine Hundred and Ninety-Nine', '5999.00', '0.00', '658.80', 'Closed', 'Invoice', 1, 0, 0, 'AE181913', NULL, '2018-06-14', '2018-07-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-14 14:05:32', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-06-14', 'Prabhavee Techpark Baner', '', ''),
(116, 1, 0, '2', 53, 'Rana', '764466', 'amit@e-bc.in', 'Maharashtra', '27', 'AMIT hvghfyj', 'amit@e-bc.in', 'Maharashtra', '27', 'punebcgfhfhj', 'punebcgfhfhj', 'AMIT hvghfyj', '4674646', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '2000.00', '0.00', '2000.00', '2360.00', 'Two Thousand, Three Hundred and Sixty', '0.00', '0.00', '360.00', 'Pending', 'Estimate', 1, 0, 0, 'DM-3', NULL, '2018-06-01', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 06:00:44', '2018-07-11 09:29:26', 0, '', '', '', '', ''),
(117, 1, 0, '2', 53, 'Rana', '764466', 'amit@e-bc.in', 'Maharashtra', '27', 'AMIT hvghfyj', 'amit@e-bc.in', 'Maharashtra', '27', 'punebcgfhfhj', 'punebcgfhfhj', 'AMIT hvghfyj', '4674646', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '2000.00', '0.00', '2000.00', '2240.00', 'Two Thousand, Two Hundred and Forty', '0.00', '2240.00', '240.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'DM-2', NULL, '2018-06-01', '2018-06-13', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 06:03:10', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(118, 1, 0, '2', 53, 'Rana', '764466', 'amit@e-bc.in', 'Maharashtra', '27', 'AMIT hvghfyj', 'amit@e-bc.in', 'Maharashtra', '27', 'punebcgfhfhj', 'punebcgfhfhj', 'AMIT hvghfyj', '4674646', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '2000.00', '0.00', '2000.00', '2240.00', 'Two Thousand, Two Hundred and Forty', '2240.00', '0.00', '240.00', 'Closed', 'Invoice', 1, 0, 0, 'DM-5', NULL, '2018-06-01', '2018-06-13', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-15 06:03:58', '2018-06-15 07:33:33', 0, '', '', '', '', ''),
(119, 1, 0, '2', 23, 'Corbital', '', 'Test@gmail.com', 'Himachal Pradesh', '2', 'Test', 'Test@gmail.com', 'Himachal Pradesh', '2', 'Test', 'Test', 'Test', '', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '2000.00', '0.00', '2000.00', '2360.00', 'Two Thousand, Three Hundred and Sixty', '1760.00', '600.00', '360.00', 'Pending', 'Invoice', 1, 0, 0, 'DM-6', NULL, '2018-06-18', '2018-06-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 07:25:47', '2018-06-18 09:09:25', 0, '', '', '', '', ''),
(120, 35, 0, '17', 59, 'Finolex Industries Ltd', '', 'vss@finolexind.com', 'Maharashtra', '27', 'Mr Vinod Surve', 'vss@finolexind.com', 'Maharashtra', '27', 'GAT NO 399,VILLAGE-URSE,TAL-MAVAL,PUNE-410506', 'GAT NO 399,VILLAGE-URSE,TAL-MAVAL,PUNE-410506', 'Mr Vinod Surve', '27AAACF2634A1Z9', '\r\n\r\n', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank of India \r\nCurrent Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456 \r\nKothrud Branch. \r\n    ', '', '6000.00', '0.00', '6000.00', '7680.00', 'Seven Thousand, Six Hundred and Eighty', '7680.00', '0.00', '1680.00', 'Closed', 'Invoice', 1, 0, 0, '18-19/15', NULL, '2018-06-15', '2018-06-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 08:01:23', '2018-06-18 09:22:38', 0, '1/3000/ZSPD/VSS/1800052802', '2018-04-18', '', '', ''),
(121, 35, 0, '17', 59, 'Finolex Industries Ltd', 'AAACF2634A', 'vss@finolexind.com', 'Maharashtra', '27', 'Mr Vinod Surve', 'vss@finolexind.com', 'Maharashtra', '27', 'GAT NO 399,VILLAGE-URSE,TAL-MAVAL,PUNE-410506', 'GAT NO 399,VILLAGE-URSE,TAL-MAVAL,PUNE-410506', 'Mr Vinod Surve', '27AAACF2634A1Z9', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank of India \r\nCurrent Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456 \r\nKothrud Branch. \r\n    ', '', '14100.00', '1410.00', '12690.00', '16243.00', 'Sixteen Thousand, Two Hundred and Forty-Three', '16243.00', '0.00', '3553.20', 'Closed', 'Invoice', 1, 0, 0, '18-19/16', NULL, '2018-06-18', '2018-06-18', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-18 08:11:40', '0000-00-00 00:00:00', 0, '1/3000/ZSPD/VSS/1800053316', '2018-05-18', '', '', ''),
(122, 3, 0, '24', 39, 'Deoghar, Pune', '', 'Devghar.pune@gmail.com M- 7030877881', 'Maharashtra', '27', 'Mandar Marathe -', 'Devghar.pune@gmail.com M- 7030877881', 'Maharashtra', '27', 'Devghar Shop No 4, Bhansali Tower, Near hotel Janjira, LBS road, Ganjawe chowk, Navipeth, Pune -411030', 'Devghar Shop No 4, Bhansali Tower, Near hotel Janjira, LBS road, Ganjawe chowk, Navipeth, Pune -411030', 'Mandar Marathe - 7030877881', '27AQAPM8938M1Z6', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '5400.00', '0.00', '5400.00', '6048.00', 'Six Thousand and Forty-Eight', '6048.00', '0.00', '648.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181914', NULL, '2018-06-25', '2018-07-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-25 11:18:39', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '', '', '', ''),
(123, 35, 0, '17', 60, 'Hotel Anil Lunch', '', 'sales@sgps.co.in', 'Maharashtra', '27', '', '', '', '', 'Hotel Anil Lunch, Next to Govind Milk Dairy, Phaltan Baramati Road, Phaltan 415523', '', 'Dasbhau Sargar', '27AVIPS1028F1ZM', '', 'Account Name -  Shree Generators & Power Solutions\r\nBank Name - Karad Urban Co-op Bank\r\nCC Account - 1003103000202\r\nIFSC Code - KUCB0488003 \r\nSatara City Branch. \r\n    ', '', '250848.00', '0.00', '250848.00', '296001.00', 'Two Hundred and Ninety-Six Thousand and One', '296001.00', '0.00', '45152.64', 'Pending', 'Invoice', 1, 0, 0, '18-19/17', NULL, '2018-06-22', '2018-06-26', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-26 06:25:36', '2018-06-26 06:31:49', 0, '', '', '', '', ''),
(124, 3, 0, '25', 62, 'SEVA SAHAYOG FOUNDATION ', '', 'ravi.gokhale@sevasahayog.com', 'Maharashtra', '27', 'Ravi Gokhale 9763704763', 'ravi.gokhale@sevasahayog.com', 'Maharashtra', '27', '18 Vrundavan Society, Pathik Bungalow, Near Shri Shri Ravi Shankar Vidya Mandir, Off, Mhatre Bridge, Navi Peth, Pune, Maharashtra 411030', '18 Vrundavan Society, Pathik Bungalow, Near Shri Shri Ravi Shankar Vidya Mandir, Off, Mhatre Bridge, Navi Peth, Pune, Maharashtra 411030', 'Ravi Gokhale 9763704763', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '41250.00', '0.00', '41250.00', '48675.00', 'Forty-Eight Thousand, Six Hundred and Seventy-Five', '0.00', '0.00', '7425.00', 'Pending', 'Estimate', 1, 0, 0, 'AEQ18196', NULL, '2018-06-29', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-28 04:43:10', '2018-07-02 11:36:17', 0, '', '', '', '', ''),
(125, 3, 0, '24', 63, 'Dcap-Solutions ', '', 'shireesh joshi <shireesh.joshi@dcap-solutions.com>', 'Maharashtra', '27', 'Sanjay Pataskar 9850047898', 'shireesh joshi <shireesh.joshi@dcap-solutions.com>', 'Maharashtra', '27', 'Shireesh Joshi\r\nDcap-Solutions\r\n44/8 Anand Nav Sahyari Society\r\nKarvenagar\r\nPune 411052\r\nIndia\r\n+91 9822012941\r\nwww.dcap-solutions.com', 'Shireesh Joshi\r\nDcap-Solutions\r\n44/8 Anand Nav Sahyari Society\r\nKarvenagar\r\nPune 411052\r\nIndia\r\n+91 9822012941\r\nwww.dcap-solutions.com', 'Sanjay Pataskar 9850047898', '27AALFD5448G1Z8', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '12000.00', '0.00', '12000.00', '14160.00', 'Fourteen Thousand, One Hundred and Sixty', '14160.00', '0.00', '2160.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181915', NULL, '2018-06-29', '2018-06-05', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-29 10:55:08', '2018-06-29 10:58:25', 0, 'Verbal Confirmation', '2018-06-22', 'Srilanka Project', '', ''),
(126, 3, 0, '24', 64, 'Anish Associates ', 'AALFA7113M', 'Mailabhijeet23@gmail.com', 'Maharashtra', '27', 'Abhijeet Deshpande - 98222309551', 'Mailabhijeet23@gmail.com', 'Maharashtra', '27', '6, nishi gandh appt, Suvarnabag colony, kothrud, Pune 38', '6, nishi gandh appt, Suvarnabag colony, kothrud, Pune 38', 'Abhijeet Deshpande - 98222309551', '27AALFA7113M1Z8', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '3600.00', '0.00', '3600.00', '4032.00', 'Four Thousand and Thirty-Two', '4032.00', '0.00', '432.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181916', NULL, '2018-06-29', '2018-06-29', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-29 11:13:23', '2018-06-29 11:15:53', 0, 'Verbal Confirmation', '2018-06-28', '', '', ''),
(127, 1, 0, '1', 38, 'RR Cables', '2348239', 'a@gmail.com', 'Maharashtra', '27', 'avi', 'a@gmail.com', 'Maharashtra', '27', 'pune', 'pune', 'avi', '234823904', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '13842.90', '0.00', '13842.90', '15756.00', 'Fifteen Thousand, Seven Hundred and Fifty-Six', '0.00', '15756.00', '1913.15', 'Pending', 'Invoice', 1, 0, 0, 'PR-10', NULL, '2018-06-29', '2018-06-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-29 11:27:25', '2018-09-24 10:23:53', 0, '', '', '', '', ''),
(128, 3, 0, '24', 65, 'Zenith Construxive & Interior Associate', 'AACFZ0672K', 'amitaphatak@gmail.com', 'Maharashtra', '27', 'Amit Phatak 9850810362', 'amitaphatak@gmail.com', 'Maharashtra', '27', '474, Ghorpade peth, Near Swargate PMT Depot, Pune 411042', '474, Ghorpade peth, Near Swargate PMT Depot, Pune 411042', 'Amit Phatak 9850810362', '27AACFZ0672K1ZU', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '13542.90', '0.00', '13542.90', '15402.00', 'Fifteen Thousand, Four Hundred and Two', '15402.00', '0.00', '1859.15', 'Pending', 'Invoice', 1, 0, 0, 'AE181917', NULL, '2018-06-29', '2018-07-29', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-29 11:29:14', '2018-09-17 09:58:21', 0, 'Verbal Confirmation', '2018-06-24', '', '', '');
INSERT INTO `common` (`id`, `user_id`, `sub_user_id`, `series_id`, `customer_id`, `customer_name`, `customer_identification`, `customer_email`, `invoice_state`, `in_state_code`, `ship_cont_person`, `ship_email`, `ship_state`, `ship_state_code`, `invoicing_address`, `shipping_address`, `contact_person`, `cust_gst_no`, `terms`, `bank_details`, `notes`, `base_amount`, `discount_amount`, `net_amount`, `gross_amount`, `amt_words`, `paid_amount`, `due_amt`, `tax_amount`, `status`, `type`, `draft`, `closed`, `sent_by_email`, `number`, `recurring_invoice_id`, `issue_date`, `due_date`, `days_to_due`, `enabled`, `max_occurrences`, `must_occurrences`, `period`, `period_type`, `starting_date`, `finishing_date`, `last_execution_date`, `created_at`, `updated_at`, `del_status`, `po_no`, `po_date`, `po_project_name`, `cmobile_no`, `csmobile_no`) VALUES
(129, 1, 0, '2', 1, 'RR Parkon', '', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Ashutosh Shirole', 'ashutosh@e-bc.in', 'Maharashtra', '27', 'Pune', 'Pune', 'Ashutosh Shirole', '27LJND15423DHB2', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '0.00', '0.00', '0.00', '0.00', 'Zero', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, 'DM-7', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-29 11:39:24', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(130, 1, 1, '1', 38, 'RR Cables', '2348239', 'a@gmail.com', 'Maharashtra', '27', 'avi', 'a@gmail.com', 'Maharashtra', '27', 'pune', 'pune', 'avi 3453657', '234823904', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '4750.00', '0.00', '4750.00', '5605.00', 'Five Thousand, Six Hundred and Five', '882.00', '4723.00', '855.00', 'Pending', 'Invoice', 1, 0, 0, 'PR-11', NULL, '2018-06-29', '1970-01-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-06-29 11:49:29', '2018-12-26 06:51:06', 0, '', '', '', '', ''),
(131, 3, 0, '24', 58, 'A SQUARE REALITY ', '', '9823198980', 'Maharashtra', '27', 'ATUL LUNKAD', '9823198980', 'Maharashtra', '27', '404 4TH FLOOR, BHAKTI PLAZA, AUNDH PUNE -411007', '404 4TH FLOOR, BHAKTI PLAZA, AUNDH PUNE -411007', 'ATUL LUNKAD', '27AAOFA1494J1Z3', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '3400.00', '0.00', '3400.00', '3808.00', 'Three Thousand, Eight Hundred and Eight', '3808.00', '0.00', '408.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181918', NULL, '2018-07-02', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-02 04:38:25', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-06-30', '', '', ''),
(132, 44, 0, '38', 66, 'Kalpataru', 'ABDFA8503G', 'abc@abc.com', 'Maharashtra', '27', 'DEEPAK', 'DEEPAK@DEEPAK.COM', 'Maharashtra', '27', 'Bandra', 'bandra', 'Rajan', '27ABDFA8503G1ZV', 'ADVANCE PAYMENT\r\nDELIVERY IN 5 DAYS\r\nTRANSPORTATION EXTRA', 'HDFC BANK', '', '42000.00', '0.00', '42000.00', '49560.00', 'Forty-Nine Thousand, Five Hundred and Sixty', '0.00', '0.00', '7560.00', 'Pending', 'Estimate', 1, 0, 0, '10', NULL, '2018-07-03', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-02 19:02:22', '2018-07-06 20:06:14', 0, '', '', '', '', ''),
(133, 3, 0, '25', 68, 'The Principal, Govt.College Of Engineering, Jalgaon. Maharashtra', '', 'NA', 'Maharashtra', '27', 'The Principal', '', 'Maharashtra', '27', 'Jalgaon Pune', 'Jalgaon Pune', 'The Principal', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '12600.00', '0.00', '12600.00', '14868.00', 'Fourteen Thousand, Eight Hundred and Sixty-Eight', '0.00', '0.00', '2268.00', 'Pending', 'Estimate', 1, 0, 0, 'AEQ18197', NULL, '2018-07-03', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-03 09:40:28', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(134, 35, 0, '17', 69, 'AMEYA Lasers', '', 'ameyalaserssatara01@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Satara', '', 'Mr. Jadhav', '', '1. This price includes only labor charges. Any other spares, consumables will be at extra cost\r\n2. 100% advance payment required.\r\n3. Service would be conducted once in a month.', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-op Bank\r\nCC Account â€“ 1003103000202\r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch. \r\n    ', '', '8500.00', '0.00', '8500.00', '10030.00', 'Ten Thousand and Thirty', '0.00', '0.00', '1530.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/5', NULL, '2018-07-04', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-04 05:30:18', '2018-07-04 05:30:59', 0, '', '', '', '', ''),
(135, 35, 0, '17', 70, 'Mahendra More', '', 'sales@sgps.co.in', 'Maharashtra', '27', '', '', '', '', 'At Bunglow. Panchgani Mahableshwar road, Bhilar', '', 'Mahendra More', '', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-op Bank\r\nCC Account â€“ 1003103000202\r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch. \r\n    ', '', '135593.50', '0.00', '135593.50', '160000.00', 'One Hundred and Sixty Thousand', '160000.00', '0.00', '24406.83', 'Pending', 'Invoice', 1, 0, 0, '18-19/18', NULL, '2018-06-29', '2018-07-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-04 12:27:35', '2018-08-02 12:13:31', 0, '', '', '', '', ''),
(136, 35, 0, '17', 71, 'EK Electronics', '', 'sachin@eksgpl.com', 'Maharashtra', '27', '', '', '', '', ' E-64 MIDC  Industrial Area , Ranjangaon Tal Shirur Dist. Pune-412 220 ', '', 'Mr. Sachin Patil', '27AACCE3429L1ZI', '1. Price basis: Ex works Pune. \r\n2. Delivery: Ex-stock / 5-6 weeks from date of purchase order. \r\n3. Packing: Standard corrugated packing included. \r\n4. GST: 18% Extra. \r\n5. Freight: Extra at actual in your scope from our Pune works to your destination. \r\n6. Loading/Unloading: Material unloading will be in your scope. \r\n7. Insurance: In your scope. \r\n8. Payment Terms: 50% advance. Balance against Proforma Invoice prior to dispatch.  9. Offer Validity: 30 Days. \r\n10. Any fabrication required along with boom-lift/scissor-lift/scaffolding is in customer scope.  \r\n11. Cabling from location of panel up to point of installation is in customer scope.', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank Of India\r\nCurrent Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456 \r\nKothrud Branch. \r\n    ', '', '245000.00', '0.00', '245000.00', '289100.00', 'Two Hundred and Eighty-Nine Thousand, One Hundred', '289100.00', '0.00', '44100.00', 'Closed', 'Invoice', 1, 0, 0, '18-19/19', NULL, '2018-07-06', '2018-07-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-05 15:34:28', '2018-09-29 03:55:26', 0, '22', '2018-04-27', 'HVLS Fan 24FT', '', ''),
(137, 3, 0, '24', 72, 'Dcap Solutions ', '', 'shireesh joshi <shireesh.joshi@dcap-solutions.com>', 'Maharashtra', '27', 'Sanjay Pataskar 9850047898', 'shireesh joshi <shireesh.joshi@dcap-solutions.com>', 'Maharashtra', '27', 'Shireesh Joshi\r\nDcap-Solutions\r\n44/8 Anand Nav Sahyari Society\r\nKarvenagar\r\nPune 411052\r\nIndia\r\n+91 9822012941\r\nwww.dcap-solutions.com', 'Shireesh Joshi\r\nDcap-Solutions\r\nDynamic House, Warje Pune\r\nIndia\r\n+91 9822012941\r\nwww.dcap-solutions.com', 'Sanjay Pataskar 9850047898', '27AALFD5448G1Z8', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '9635.00', '0.00', '9635.00', '10791.00', 'Ten Thousand, Seven Hundred and Ninety-One', '10791.00', '0.00', '1156.20', 'Closed', 'Invoice', 1, 0, 0, 'AE181919', NULL, '2018-07-06', '2018-08-07', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-06 07:52:15', '2018-08-07 08:59:59', 0, 'Verbal confirmation', '2018-07-02', 'Dcap House', '', ''),
(138, 44, 0, '38', 66, 'Kalpataru', 'ABDFA8503G', 'abc@abc.com', 'Maharashtra', '27', 'DEEPAK', 'DEEPAK@DEEPAK.COM', 'Maharashtra', '27', 'Bandra', 'bandra', 'Rajan', '27ABDFA8503G1ZV', 'ADVANCE PAYMENT\r\nDELIVERY IN 5 DAYS\r\nTRANSPORTATION EXTRA', 'HDFC BANK', '', '73250.00', '0.00', '73250.00', '86435.00', 'Eighty-Six Thousand, Four Hundred and Thirty-Five', '0.00', '86435.00', '13185.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, '10', NULL, '2018-07-07', '2018-07-21', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-06 20:08:42', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(139, 44, 0, '38', 66, 'Kalpataru', 'ABDFA8503G', 'abc@abc.com', 'Maharashtra', '27', 'DEEPAK', 'DEEPAK@DEEPAK.COM', 'Maharashtra', '27', 'Bandra', 'bandra', 'Rajan', '27ABDFA8503G1ZV', 'ADVANCE PAYMENT\r\nDELIVERY IN 5 DAYS\r\nTRANSPORTATION EXTRA', 'HDFC BANK', '', '95750.00', '0.00', '95750.00', '112985.00', 'One Hundred and Twelve Thousand, Nine Hundred and Eighty-Five', '0.00', '112985.00', '17235.00', 'Pending', 'Invoice', 1, 0, 0, '10', NULL, '2018-07-07', '2018-07-21', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-06 20:15:57', '2018-07-06 20:17:57', 0, '', '', '', '', ''),
(140, 3, 0, '25', 73, 'Silver Leaf Society Internal Road Model Colony Pune ', '', 'NA@com', 'Maharashtra', '27', 'Prashant Deshpande', '', 'Maharashtra', '27', 'Silver Leaf Society Internal Road Model Colony Pune ', 'Silver Leaf Society Internal Road Model Colony Pune ', 'Prashant Deshpande', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '12800.00', '0.00', '12800.00', '15104.00', 'Fifteen Thousand, One Hundred and Four', '0.00', '0.00', '2304.00', 'Pending', 'Estimate', 1, 0, 0, 'AEQ18198', NULL, '2018-09-18', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-11 09:32:32', '2018-09-18 10:48:19', 0, '', '', '', '', ''),
(141, 3, 0, '25', 74, 'Topaz Society Model Colony Pune ', '', 'krnadgir@gmail.com', 'Maharashtra', '27', 'Mr. Nadgir', '', 'Maharashtra', '27', 'Model Colony Pune ', 'Model Colony Pune ', 'Mr. Nadgir', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '3500.00', '0.00', '3500.00', '4130.00', 'Four Thousand, One Hundred and Thirty', '0.00', '0.00', '630.00', 'Pending', 'Estimate', 1, 0, 0, 'AEQ18199', NULL, '2018-07-11', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-11 09:54:13', '2018-07-30 11:59:18', 0, '', '', '', '', ''),
(142, 3, 0, '24', 72, 'Dcap Solutions ', '', 'shireesh joshi <shireesh.joshi@dcap-solutions.com>', 'Maharashtra', '27', 'Sanjay Pataskar 9850047898', 'shireesh joshi <shireesh.joshi@dcap-solutions.com>', 'Maharashtra', '27', 'Shireesh Joshi\r\nDcap-Solutions\r\n44/8 Anand Nav Sahyari Society\r\nKarvenagar\r\nPune 411052\r\nIndia\r\n+91 9822012941\r\nwww.dcap-solutions.com', 'Shireesh Joshi\r\nDcap-Solutions\r\n44/8 Anand Nav Sahyari Society\r\nKarvenagar\r\nPune 411052\r\nIndia\r\n+91 9822012941\r\nwww.dcap-solutions.com', 'Sanjay Pataskar 9850047898', '27AALFD5448G1Z8', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '10000.00', '0.00', '10000.00', '11800.00', 'Eleven Thousand, Eight Hundred', '11800.00', '0.00', '1800.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181920', NULL, '2018-07-17', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-17 04:31:07', '2018-07-17 07:41:56', 0, 'Verbal Confirmation', '2018-07-10', 'Borosil Project', '', ''),
(143, 3, 0, '24', 75, 'Vishwakarma Enterprises', '', 'gurudatta@e-bc.in', 'Maharashtra', '27', 'Gurudatta Shahane - 8308406968', 'gurudatta@e-bc.in', 'Maharashtra', '27', 'At Post Sasewadi, Gat No 57, Near Kalpana Glass Tal Bhor Dist Pune', 'At Post Sasewadi, Gat No 57, Near Kalpana Glass Tal Bhor Dist Pune', 'Gurudatta Shahane - 8308406968', '27ADHPS1932K1Z8', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '21000.00', '0.00', '21000.00', '23520.00', 'Twenty-Three Thousand, Five Hundred and Twenty', '23520.00', '0.00', '2520.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181921', NULL, '2018-07-17', '2018-07-14', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-17 07:11:58', '2018-07-17 07:17:21', 0, 'Verbal Confirmation', '2018-07-10', 'NA', '', ''),
(144, 3, 0, '24', 63, 'Dcap-Solutions ', '', 'shireesh.joshi@dcap-solutions.com', 'Maharashtra', '27', 'Sanjay Pataskar 9850047898', 'hireesh.joshi@dcap-solutions.com', 'Maharashtra', '27', 'Shireesh Joshi\r\nDcap-Solutions\r\n44/8 Anand Nav Sahyari Society\r\nKarvenagar\r\nPune 411052\r\nIndia\r\n+91 9822012941\r\nwww.dcap-solutions.com', 'Shireesh Joshi\r\nDcap-Solutions\r\n44/8 Anand Nav Sahyari Society\r\nKarvenagar\r\nPune 411052\r\nIndia\r\n+91 9822012941\r\nwww.dcap-solutions.com', 'Sanjay Pataskar 9850047898', '27AALFD5448G1Z8', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '10000.00', '0.00', '10000.00', '11800.00', 'Eleven Thousand, Eight Hundred', '11800.00', '0.00', '1800.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181922', NULL, '2018-07-21', '2018-08-21', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-21 04:39:57', '2018-07-21 09:38:03', 0, 'Verbal confirmation', '2018-07-18', 'Dcap Office', '', ''),
(145, 3, 0, '24', 78, 'Abhay Bahirat Pune', '', 'abhay@gmail.com', 'Maharashtra', '27', 'abhay', 'abhay@gmail.com', 'Maharashtra', '27', 'Pune', 'Pune', 'abhay', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '1500.00', '0.00', '1500.00', '1680.00', 'One Thousand, Six Hundred and Eighty', '1680.00', '0.00', '180.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181923', NULL, '2018-07-31', '2018-08-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-30 10:50:41', '2018-08-18 09:39:42', 0, 'Verbal Confirmation', '2018-07-25', '', '', ''),
(146, 3, 0, '24', 74, 'Topaz Society Model Colony Pune ', '', 'krnadgir@gmail.com', 'Maharashtra', '27', 'Mr. Nadgir', 'krnadgir@gmail.com', 'Maharashtra', '27', 'Model Colony Pune ', 'Model Colony Pune ', 'Mr. Nadgir', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '4500.00', '0.00', '4500.00', '5310.00', 'Five Thousand, Three Hundred and Ten', '5310.00', '0.00', '810.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181924', NULL, '2018-07-31', '2018-08-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-07-30 11:25:21', '2018-07-31 12:44:33', 0, 'Verbal Confirmation', '2018-07-30', 'Topaz Society', '', ''),
(147, 35, 0, '17', 77, 'Peppercorn Hotels India', '', 'shiv.ashtekar@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Shop No-17, Mukta Mathwad Prangan, ShivtirthNagar Paud Road, Pune 411038', '', 'Shiva Ashtekar', '27AAVFP8990M1ZW', '1. Price basis: Ex works Pune. \r\n2. Delivery: Ex-stock / 5-6 weeks from date of purchase order. \r\n3. Packing: Standard corrugated packing included. \r\n4. GST: 18% Extra. \r\n5. Freight: Extra at actual in your scope from our Pune works to your destination. 6. Loading/Unloading: Material unloading will be in your scope. \r\n7. Insurance: In your scope. \r\n8. Payment Terms: 50% advance. Balance against Proforma Invoice prior to dispatch.  \r\n9. Offer Validity: 30 Days. \r\n10. Any fabrication required along with boom-lift/scissor-lift/scaffolding is in customer scope.  \r\n11. Cabling from location of panel up to point of installation is in customer scope.', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank Of India\r\nCurrent Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456 \r\nKothrud Branch\r\n    ', '', '268813.50', '0.00', '268813.50', '317200.00', 'Three Hundred and Seventeen Thousand, Two Hundred', '317200.00', '0.00', '48386.43', 'Closed', 'Invoice', 1, 0, 0, '18-19/20', NULL, '2018-07-10', '2018-07-11', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-02 10:36:53', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(148, 35, 0, '17', 79, 'SwapnaNagri Kaas Hill Resort', '', 'vijaymane@gmail.com', 'Maharashtra', '27', '', '', '', '', 'AT. PO. Anawale, Yes. Corner, \r\nKas Road, Satara', '', 'Mr. Vijay Mane', '', '', 'Account Name Ã¢â‚¬â€œ Shree Generators & Power Solutions\r\nBank Name Ã¢â‚¬â€œ Karad Urban Co-op Bank \r\nCC Account Ã¢â‚¬â€œ  1003103000202\r\nIFSC Code Ã¢â‚¬â€œ KUCB0488003  \r\nSatara City Branch.\r\n    ', '', '237288.20', '0.00', '237288.20', '280000.00', 'Two Hundred and Eighty Thousand', '280000.00', '0.00', '42711.88', 'Pending', 'Invoice', 1, 0, 0, '18-19/21', NULL, '2018-07-18', '2018-07-19', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-02 11:13:01', '2018-08-10 11:47:36', 0, '', '', '', '', ''),
(150, 35, 0, '17', 80, 'Prabhu Srushti Agri Tourism Center', '', 'Ku9alg@Gmail.Com', 'Maharashtra', '27', '', '', '', '', 'Kas Road, Yavateshwar, Satara 415002', '', 'Omkar Ghodke', '27AMDPG7439C1Z8', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-op Bank\r\nCC Account â€“ 1003103000202\r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch\r\n    ', '', '245763.00', '0.00', '245763.00', '290000.00', 'Two Hundred and Ninety Thousand', '290000.00', '0.00', '44237.34', 'Pending', 'Invoice', 1, 0, 0, '18-19/23', NULL, '2018-07-18', '2018-07-19', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-02 11:33:14', '2018-10-28 06:18:29', 0, '', '', '', '', ''),
(151, 35, 0, '17', 76, 'The Prime Power Solutions', '', 'sales@sgps.co.in', 'Maharashtra', '27', '', '', '', '', 'B wing Gat No- 162, Flat No-604, Amulyam Society, Dudulgaon, Moshi Pune - 412105', '', 'Hanumant Chachar', '27ANNPC4131A1ZL', '1. Price basis: Ex works Pune. \r\n2. Delivery: Ex-stock / 5-6 weeks from date of purchase order. \r\n3. Packing: Standard corrugated packing included. \r\n4. GST: 18% Extra. \r\n5. Freight: Extra at actual in your scope from our Pune works to your destination. 6. Loading/Unloading: Material unloading will be in your scope. \r\n7. Insurance: In your scope. \r\n8. Payment Terms: 50% advance. Balance against Proforma Invoice prior to dispatch.  \r\n9. Offer Validity: 30 Days. \r\n10. Any fabrication required along with boom-lift/scissor-lift/scaffolding is in customer scope.  \r\n11. Cabling from location of panel up to point of installation is in customer scope.', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“  State Bank of India \r\nCurrent Account â€“ 32446057747 \r\nIFSC Code â€“ SBIN0030456  \r\nKothrud Branch.\r\n    ', '', '285000.00', '0.00', '285000.00', '336300.00', 'Three Hundred and Thirty-Six Thousand, Three Hundred', '336300.00', '0.00', '51300.00', 'Pending', 'Invoice', 1, 0, 0, '18-19/24', NULL, '2018-07-20', '2018-07-21', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-02 11:37:07', '2018-08-10 11:41:19', 0, '', '', '', '', ''),
(152, 3, 0, '24', 64, 'Vertices Consultants Pvt Ltd', 'AACCV6103E', 'Mailabhijeet23@gmail.com', 'Maharashtra', '27', 'Abhijeet Deshpande - 98222309551', 'Mailabhijeet23@gmail.com', 'Maharashtra', '27', '6, nishi gandh appt, Suvarnabag colony, kothrud, Pune 38', '6, nishi gandh appt, Suvarnabag colony, kothrud, Pune 38', 'Abhijeet Deshpande - 98222309551', '27AACCV6103E1ZN', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '3000.00', '0.00', '3000.00', '3360.00', 'Three Thousand, Three Hundred and Sixty', '3360.00', '0.00', '360.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181925', NULL, '2018-08-04', '2018-08-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-07 09:08:55', '2018-08-11 05:27:01', 0, 'Verbal Confirmation', '2018-08-03', '', '', ''),
(153, 35, 0, '17', 83, 'Artur Schade Steel Products India PVT.LTD', '', 'edp@schade-India.com', 'Maharashtra', '27', '', '', '', '', 'Gat No- 1073/6, Village Pirangut, Taluka Mulshi, Dist. Pune 412108', '', 'Sachin Patil', '', '1. Price basis: Ex works Pune. \r\n2. Delivery: Ex-stock / 6-7 weeks from date of purchase order. \r\n3. Packing: Standard corrugated packing included. \r\n4. GST: 18% Extra. \r\n5. Freight: Extra at actual in your scope from our Pune works to your destination. 6. Loading/Unloading: Material unloading will be in your scope. \r\n7. Payment Terms: 50% advance. Balance against Proforma Invoice prior to dispatch.  \r\n', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank of India  \r\nCurrent Account â€“ 32446057747 \r\nIFSC Code â€“ SBIN0030456  \r\nKothrud Branch.  \r\n    ', '', '491526.00', '0.00', '491526.00', '580001.00', 'Five Hundred and Eighty Thousand and One', '0.00', '0.00', '88474.68', 'Pending', 'Estimate', 1, 0, 0, '18-19/6', NULL, '2018-08-13', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-13 08:09:38', '2018-08-13 08:15:18', 0, '', '', '', '', ''),
(154, 35, 0, '17', 84, 'Kohinoor Group Of Hotels', '', 'sudhakar311089@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Vittal Kamat Restaurant, Bangalore Mumbai Highway, Khandala, Satara 412802', '', 'Mr. Alankar Pawar', '27AASFK4691D1ZX', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Co-op Bank \r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch.\r\n    ', '', '217450.00', '0.00', '217450.00', '256591.00', 'Two Hundred and Fifty-Six Thousand, Five Hundred and Ninety-One', '256591.00', '0.00', '39141.00', 'Closed', 'Invoice', 1, 0, 0, '18-19/25', NULL, '2018-08-16', '2018-08-16', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-16 05:05:55', '2018-09-05 05:35:35', 0, '', '', '', '', ''),
(155, 3, 0, '24', 62, 'SEVA SAHAYOG FOUNDATION ', '', 'gokhale.ravi@gmail.com', 'Maharashtra', '27', 'Ravi Gokhale 9763704763', 'gokhale.ravi@gmail.com', 'Maharashtra', '27', '18 Vrundavan Society, Pathik Bungalow, Near Shri Shri Ravi Shankar Vidya Mandir, Off, Mhatre Bridge, Navi Peth, Pune, Maharashtra 411030', '18 Vrundavan Society, Pathik Bungalow, Near Shri Shri Ravi Shankar Vidya Mandir, Off, Mhatre Bridge, Navi Peth, Pune, Maharashtra 411030', 'Ravi Gokhale 9763704763', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '2350.00', '0.00', '2350.00', '2632.00', 'Two Thousand, Six Hundred and Thirty-Two', '2632.00', '0.00', '282.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181926', NULL, '2018-08-18', '2018-08-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-18 09:05:49', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(156, 3, 0, '24', 85, 'SHREE AUTOMATION', ' AKLPA5525F', 'amey.apte@gmail.com', 'Maharashtra', '27', 'Amey Apte 07709183232 ', 'amey.apte@gmail.com', 'Maharashtra', '27', '6/83, Kamda Housing Society\r\nNear Hindustan Bakery, Chapekar Chowk.\r\nChinchwad, Pune 411 033', '6/83, Kamda Housing Society\r\nNear Hindustan Bakery, Chapekar Chowk.\r\nChinchwad, Pune 411 033', 'Amey Apte 07709183232 ', '27AKLPA5525F1ZD', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '5350.00', '0.00', '5350.00', '6313.00', 'Six Thousand, Three Hundred and Thirteen', '6313.00', '0.00', '963.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181927', NULL, '2018-08-20', '2018-08-26', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-19 11:46:42', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-08-01', 'Indore Project', '', ''),
(157, 35, 0, '17', 28, 'Kirloskar Oil Engines Limited ', '', 'Nitin.Kulkarni@kirloskar.com', 'Maharashtra', '27', '', '', '', '', 'D1 5 Star MIDC, Kagal Kolhapur,Maharashtra ', '', 'Nitin Kulkarni', '27AADCK5714H1ZK', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch.\r\n    ', '', '25000.00', '0.00', '25000.00', '29500.00', 'Twenty-Nine Thousand, Five Hundred', '0.00', '0.00', '4500.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/7', NULL, '2018-08-21', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-21 04:53:12', '2018-08-21 04:55:07', 0, '', '', '', '', ''),
(158, 3, 0, '24', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog ', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'Yatin Jog ', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '5280.00', '0.00', '5280.00', '5914.00', 'Five Thousand, Nine Hundred and Fourteen', '5914.00', '0.00', '633.60', 'Closed', 'Invoice', 1, 0, 0, 'AE181928', NULL, '2018-08-22', '2018-08-23', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-22 09:45:08', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-08-20', 'NA', '', ''),
(159, 3, 0, '24', 86, 'SHRIDHAR MUKUND TAMBEKAR', '', 'S. M. Tambekar <smt@snehabearings.com>', 'Maharashtra', '27', 'S. M. Tambekar 91-9823014888', 'S. M. Tambekar <smt@snehabearings.com>', 'Maharashtra', '27', 'C-403, Regulus Apt, Dasara Chowk, Balewadi, Pune- 411045', '|Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,\r\nErandwane, Pune - 411004. Phone : 02025434352', 'S. M. Tambekar 91-9823014888', '27AAGPT3497C1ZF', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '44655.00', '0.00', '44655.00', '50014.00', 'Fifty Thousand and Fourteen', '50014.00', '0.00', '5358.60', 'Closed', 'Invoice', 1, 0, 0, 'AE181929', NULL, '2018-08-27', '2018-09-27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-26 12:22:28', '2018-08-31 12:35:38', 0, 'SMT/LIGHTFITTINGS/DIVEAGAR/03', '2018-08-22', 'Diveagar Project', '', ''),
(160, 35, 0, '17', 87, 'Rohinton Darbary', '', 'darbary@gmail.com', 'Maharashtra', '27', '', '', '', '', 'C90, HN041, Nandanwan Colony, Panchgani Mahableshwar Road, Mahableshwar 412805', '', 'Rohinton Darbary', '', '100% Advance before dispatch', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202\r\nIFSC Code â€“ KUCB0488003\r\nSatara City Branch.\r\n    ', '', '88983.10', '0.00', '88983.10', '105000.00', 'One Hundred and Five Thousand', '105000.00', '0.00', '16016.96', 'Closed', 'Invoice', 1, 0, 0, '18-19/26', NULL, '2018-08-28', '2018-08-28', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-08-29 06:56:13', '2018-08-29 06:58:32', 0, '', '', '', '', ''),
(161, 35, 0, '17', 88, 'Hotel Shreyas', '', 'info@hotelshreyas.in', 'Maharashtra', '27', '', '', '', '', 'No. 1242 B, Apte Rd, Deccan Gymkhana, Pune, Maharashtra 411004', '', 'Mr. Mandar Chitale', '', '1. Prices include Standard Installation\r\n2. Core Cutting if applicable will be extra\r\n3. Outdoor Stand if required will be extra\r\n4. 100% advance for machines prior to dispatch', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank of India \r\nCurrent  Account â€“  32446057747 \r\nIFSC Code â€“ SBIN0030456 \r\nKothrud Branch.\r\n    ', '', '391132.00', '0.00', '391132.00', '500649.00', 'Five Hundred Thousand, Six Hundred and Forty-Nine', '0.00', '0.00', '109516.96', 'Pending', 'Estimate', 1, 0, 0, '18-19/8', NULL, '2018-09-03', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-03 08:25:46', '2018-09-04 04:02:38', 0, '', '', '', '', ''),
(162, 35, 0, '17', 88, 'Hotel Shreyas', '', 'mandar@hotelshreyas.in', 'Maharashtra', '27', '', '', '', '', 'No. 1242 B, Apte Rd, Deccan Gymkhana, Pune, Maharashtra 411004', '', 'Mr. Mandar Chitale', '', '1. Prices include Standard Installation\r\n2. Core Cutting if applicable will be extra\r\n3. Outdoor Stand if required will be extra\r\n4. 100% advance for machines prior to dispatch', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank of India \r\nCurrent  Account â€“  32446057747 \r\nIFSC Code â€“ SBIN0030456 \r\nKothrud Branch.\r\n    ', '', '486500.00', '0.00', '486500.00', '622720.00', 'Six Hundred and Twenty-Two Thousand, Seven Hundred and Twenty', '0.00', '0.00', '136220.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/9', NULL, '2018-09-03', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-03 09:18:04', '2018-09-06 06:32:08', 0, '', '', '', '', ''),
(163, 35, 0, '17', 84, 'Kohinoor Group Of Hotels', '', 'sudhakar311089@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Vittal Kamat Restaurant, Bangalore Mumbai Highway, Khandala, Satara 412802', '', 'Mr. Alankar Pawar', '27AASFK4691D1ZX', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch', '', '251348.00', '0.00', '251348.00', '296591.00', 'Two Hundred and Ninety-Six Thousand, Five Hundred and Ninety-One', '96591.00', '200000.00', '45242.64', 'Pending', 'Invoice', 1, 0, 0, '18-19/27', NULL, '2018-09-03', '2018-09-03', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-05 05:44:05', '2018-10-28 06:38:41', 0, '', '', '', '', ''),
(164, 35, 0, '17', 89, 'Hotel Dongarmatha', '', 'amol4190.aj@gmail.com', 'Maharashtra', '27', '', '', '', '', 'At Post Anawale, Near S Corner, Kaas Road, Satara 415002', '', 'Mr. Ajit Mane', '', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch\r\n    ', '', '246610.50', '0.00', '246610.50', '291000.00', 'Two Hundred and Ninety-One Thousand', '291000.00', '0.00', '44389.89', 'Closed', 'Invoice', 1, 0, 0, '18-19/28', NULL, '2018-09-04', '2018-09-04', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-05 11:36:58', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(165, 3, 0, '24', 86, 'SHRIDHAR MUKUND TAMBEKAR', '', 'S. M. Tambekar <smt@snehabearings.com>', 'Maharashtra', '27', 'S. M. Tambekar 91-9823014888', 'S. M. Tambekar <smt@snehabearings.com>', 'Maharashtra', '27', 'C-403, Regulus Apt, Dasara Chowk, Balewadi, Pune- 411045', '|Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,\r\nErandwane, Pune - 411004. Phone : 02025434352', 'S. M. Tambekar 91-9823014888', '27AAGPT3497C1ZF', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '2080.00', '0.00', '2080.00', '2330.00', 'Two Thousand, Three Hundred and Thirty', '2330.00', '0.00', '249.60', 'Closed', 'Invoice', 1, 0, 0, 'AE181930', NULL, '2018-09-08', '2018-09-26', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-08 03:42:25', '2018-11-16 09:12:22', 0, 'SMT/LIGHTFITTINGS/DIVEAGAR/03', '2018-08-22', 'Diveagar Project', '', ''),
(166, 3, 0, '24', 39, 'Deoghar, Pune', '', 'Devghar.pune@gmail.com M- 7030877881', 'Maharashtra', '27', 'Mandar Marathe - 7030877881', 'Devghar.pune@gmail.com M- 7030877881', 'Maharashtra', '27', 'Devghar Shop No 4, Bhansali Tower, Near hotel Janjira, LBS road, Ganjawe chowk, Navipeth, Pune -411030', 'Devghar Shop No 4, Bhansali Tower, Near hotel Janjira, LBS road, Ganjawe chowk, Navipeth, Pune -411030', 'Mandar Marathe - 7030877881', '27AQAPM8938M1Z6', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '5400.00', '0.00', '5400.00', '6048.00', 'Six Thousand and Forty-Eight', '6048.00', '0.00', '648.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181931', NULL, '2018-09-08', '2018-09-29', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-08 03:50:02', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-09-05', 'Project Deoghar', '', ''),
(167, 35, 0, '17', 24, 'Manohar Mangal Karyalaya', '', 'ranjitmehendale@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Manohar Mangal Karyalaya 31/1 Erandawana, Mehendale Garage, Pune- 411004', '', 'Ranjit Mehendale', '27AABCM2450L1ZG', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank Of India\r\nCurrent Account â€“  32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch\r\n    ', '', '41550.00', '0.00', '41550.00', '41550.00', 'Forty-One Thousand, Five Hundred and Fifty', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/10', NULL, '2018-09-15', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-15 04:20:39', '2018-09-15 04:23:19', 0, '', '', '', '', ''),
(169, 3, 0, '24', 91, 'Manas Construction ', '', '9665013100', 'Maharashtra', '27', 'Rajesh Joshi', '9665013100', 'Maharashtra', '27', 'Kothrud Pune ', 'Kothrud Pune ', 'Rajesh Joshi', '27AAWFM2728H1ZT', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '8790.00', '0.00', '8790.00', '9845.00', 'Nine Thousand, Eight Hundred and Forty-Five', '9845.00', '0.00', '1054.80', 'Closed', 'Invoice', 1, 0, 0, 'AE181932', NULL, '2018-09-18', '2018-10-18', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-18 09:59:07', '2018-09-26 07:56:14', 0, 'Verbal Confirmation', '2018-09-12', 'Deccan Site', '', ''),
(170, 3, 0, '24', 90, 'Zenith Construxive & Interior Associate', 'AACFZ0672K', 'amitaphatak@gmail.com', 'Maharashtra', '27', 'Amit Phatak 9850810362', 'amitaphatak@gmail.com', 'Maharashtra', '27', '474, Ghorpade peth, Near Swargate PMT Depot, Pune 411042', '474, Ghorpade peth, Near Swargate PMT Depot, Pune 411042', 'Amit Phatak 9850810362', '27AACFZ0672K1ZU', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '4500.00', '0.00', '4500.00', '5310.00', 'Five Thousand, Three Hundred and Ten', '5310.00', '0.00', '810.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181933', NULL, '2018-09-18', '2018-10-19', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-18 10:13:13', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-09-12', 'Viman nagar Project', '', ''),
(171, 3, 0, '24', 86, 'SHRIDHAR MUKUND TAMBEKAR', '', 'S. M. Tambekar <smt@snehabearings.com>', 'Maharashtra', '27', 'S. M. Tambekar 91-9823014888', 'S. M. Tambekar <smt@snehabearings.com>', 'Maharashtra', '27', 'C-403, Regulus Apt, Dasara Chowk, Balewadi, Pune- 411045', 'C-403, Regulus Apt, Dasara Chowk, Balewadi, Pune- 411045', 'S. M. Tambekar 91-9823014888', '27AAGPT3497C1ZF', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '8780.00', '0.00', '8780.00', '9834.00', 'Nine Thousand, Eight Hundred and Thirty-Four', '9834.00', '0.00', '1053.60', 'Closed', 'Invoice', 1, 0, 0, 'AE181934', NULL, '2018-09-20', '2018-10-29', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 05:13:46', '0000-00-00 00:00:00', 0, 'Verbal confirmation', '2018-09-19', 'Divyagar project', '', ''),
(172, 35, 0, '17', 93, 'Hotel Sagar ', '', 'hotelsagarkrd@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Hotel Sagar, At Karad, Mumbai-Bangalore Highway, Karad', '', 'Mr. Sarjerao Patil', '27AADFH3861R1ZS', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch\r\n    ', '', '225322.00', '0.00', '225322.00', '265880.00', 'Two Hundred and Sixty-Five Thousand, Eight Hundred and Eighty', '265880.00', '0.00', '40557.96', 'Closed', 'Invoice', 1, 0, 0, '18-19/29', NULL, '2018-09-02', '2018-09-02', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 05:39:09', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(173, 35, 0, '17', 94, 'Gangar Opticians Private. Limited', 'AABCG2214N', 'admin.ho@gangar.in', 'Maharashtra', '27', 'Mr. Amit Utekar', 'admin.ho@gangar.in', 'Maharashtra', '27', 'Plot No. 112, Sion â€“ Koliwada Rd, Sion (East), Mumbai â€“ 400 022', 'Gangar Opticians Private. Limited\r\nShop No 8 & 9, Plot No- 178, Seven Star Multiplex Complex, Raviwar Peth, Satara - 415002', 'Mr. Amit Utekar', '27AABCG2214N1ZO', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch\r\n    ', '', '142000.00', '0.00', '142000.00', '167560.00', 'One Hundred and Sixty-Seven Thousand, Five Hundred and Sixty', '167560.00', '0.00', '25560.00', 'Closed', 'Invoice', 1, 0, 0, '18-19/30', NULL, '2018-09-09', '2018-09-09', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 05:47:51', '0000-00-00 00:00:00', 0, 'GOP/531/SEP/18', '2018-09-05', '5KVA Generator Purchase', '', ''),
(174, 35, 0, '17', 95, 'PANGAT FAMILY RESTAURANT', '', 'pangatfamilyresto@gmail.com', 'Maharashtra', '27', '', '', '', '', 'Jihe, Rahimatpur Rd, Satara, Maharashtra 415004', '', 'Avinash Desai', '27AAZFM1828K1ZK', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch\r\n    ', '', '252542.00', '0.00', '252542.00', '298000.00', 'Two Hundred and Ninety-Eight Thousand', '298000.00', '0.00', '45457.56', 'Closed', 'Invoice', 1, 0, 0, '18-19/31', NULL, '2018-09-10', '2018-09-10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-20 06:22:43', '2018-09-21 08:13:17', 0, '', '', '', '', ''),
(175, 35, 0, '17', 96, 'Futuring Design Pvt.Ltd', '', 'chandrashekhar@futuringdesign.com', 'Maharashtra', '27', '', '', '', '', 'Futuring Design Pvt.Ltd\r\nA/77, H Block, MIDC, Pimpri Pune 411018', '', 'Chandrashehar Wyawahare', '', '100% Advance Payment before dispatch\r\nCrane and cabling in your scope\r\nTransportation Charges to your site will be extra', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank Of India\r\nCurrent  Account â€“  32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch\r\n    ', '', '275000.00', '0.00', '275000.00', '321800.00', 'Three Hundred and Twenty-One Thousand, Eight Hundred', '0.00', '0.00', '46800.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/11', NULL, '2018-09-25', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-25 03:12:57', '2018-09-25 03:25:56', 0, '', '', '', '', ''),
(176, 35, 0, '17', 96, 'FOMO', '', 'chandrashekhar@futuringdesign.com', 'Maharashtra', '27', 'Chandrashehar Wyawahare', 'chandrashekhar@futuringdesign.com', 'Maharashtra', '27', 'FOMO\r\nA41. Suvarnayug, New DP Road, Aundh, Pune 411007', 'A-77, H-Block, Precision Industries Compound, MIDC, Pimpri, Pune 411018.', 'Chandrashehar Wyawahare', '27AABFF4547L1Z7', '100% Advance Payment before dispatch\r\nCrane and cabling in your scope\r\nTransportation Charges to your site included', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank Of India\r\nCurrent  Account â€“  32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch\r\n    ', '', '307500.00', '0.00', '307500.00', '362850.00', 'Three Hundred and Sixty-Two Thousand, Eight Hundred and Fifty', '0.00', '0.00', '55350.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/12', NULL, '2018-09-25', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-25 03:23:45', '2018-12-01 03:52:18', 0, '', '', '', '', ''),
(177, 3, 0, '24', 97, 'Krishna Kewal Township ', 'NA', '9822666355', 'Maharashtra', '27', 'Biman Gandhi ', '9822666355', 'Maharashtra', '27', 'Krishna Kewal Township \r\nCO Op housing society Ho 8, K Building , NIBM Road Pune', 'Krishna Kewal Township \r\nCO Op housing society Ho 8, K Building , NIBM Road Pune', 'Biman Gandhi ', 'NA', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '1700.00', '0.00', '1700.00', '1904.00', 'One Thousand, Nine Hundred and Four', '1904.00', '0.00', '204.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181935', NULL, '2018-09-25', '2018-09-26', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-25 09:33:50', '2018-09-25 09:46:21', 0, 'Verbal Confirmation', '2018-09-23', 'NIBM ROAD', '', '');
INSERT INTO `common` (`id`, `user_id`, `sub_user_id`, `series_id`, `customer_id`, `customer_name`, `customer_identification`, `customer_email`, `invoice_state`, `in_state_code`, `ship_cont_person`, `ship_email`, `ship_state`, `ship_state_code`, `invoicing_address`, `shipping_address`, `contact_person`, `cust_gst_no`, `terms`, `bank_details`, `notes`, `base_amount`, `discount_amount`, `net_amount`, `gross_amount`, `amt_words`, `paid_amount`, `due_amt`, `tax_amount`, `status`, `type`, `draft`, `closed`, `sent_by_email`, `number`, `recurring_invoice_id`, `issue_date`, `due_date`, `days_to_due`, `enabled`, `max_occurrences`, `must_occurrences`, `period`, `period_type`, `starting_date`, `finishing_date`, `last_execution_date`, `created_at`, `updated_at`, `del_status`, `po_no`, `po_date`, `po_project_name`, `cmobile_no`, `csmobile_no`) VALUES
(178, 3, 0, '24', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog ', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'Yatin Jog ', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '5060.00', '0.00', '5060.00', '5667.00', 'Five Thousand, Six Hundred and Sixty-Seven', '5667.00', '0.00', '607.20', 'Closed', 'Invoice', 1, 0, 0, 'AE181936', NULL, '2018-09-27', '2018-10-29', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-26 08:51:42', '2018-09-27 07:26:52', 0, 'Verbal Confirmation', '2018-09-26', 'Office Project', '', ''),
(179, 3, 0, '24', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog ', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'Yatin Jog ', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '2975.00', '0.00', '2975.00', '3332.00', 'Three Thousand, Three Hundred and Thirty-Two', '3332.00', '0.00', '357.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181937', NULL, '2018-09-27', '2018-10-27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-27 07:29:16', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-09-27', 'OFFICE project', '', ''),
(180, 38, 0, '33', 98, 'Keskar Chaitanya', '', 'keskar@gmail.com', 'Maharashtra', '27', 'keskar', '', 'Maharashtra', '27', 'opp.vitthal mandir navipeth pune', '', 'keskar sir', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', 'advance recd rs.40000...bal amt 45000', '85000.00', '0.00', '85000.00', '85000.00', 'Eighty-Five Thousand', '85000.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/2', NULL, '2018-09-27', '2018-09-27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-27 16:21:29', '2018-09-27 16:26:51', 0, '', '', '', '', ''),
(181, 38, 0, '33', 99, 'Kulkarni Pankaj', '', 'pankaj@gmail.com', 'Maharashtra', '27', 'kulkarni pankaj', '', 'Maharashtra', '', 'opp.axis bank sinhagad road pune', '', 'pankaj', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '1700.00', '0.00', '1700.00', '1700.00', 'One Thousand, Seven Hundred', '1700.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/3', NULL, '2018-09-09', '2018-09-09', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-27 17:15:47', '0000-00-00 00:00:00', 0, '', '', 'waterproofing works', '', ''),
(182, 38, 0, '33', 100, 'Mulay Suyog', '', 'mulay@gmail.com', 'Maharashtra', '27', '', '', '', '', 'abc square near nmv school pune', '', 'suyog', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '30500.00', '0.00', '30500.00', '30500.00', 'Thirty Thousand, Five Hundred', '30500.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/4', NULL, '2018-08-12', '2018-08-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-27 17:43:53', '0000-00-00 00:00:00', 0, '', '2018-08-12', 'fabrication & plumbing works', '', ''),
(183, 38, 0, '33', 101, 'Godbole Geeta', '', 'geeta@gmail.com', 'Maharashtra', '27', '', '', '', '', 'b-45 vasant vihar near nanded city khadakwasla rd pune', '', '9767078984', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '4800.00', '0.00', '4800.00', '4800.00', 'Four Thousand, Eight Hundred', '4800.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/5', NULL, '2018-08-09', '2018-08-09', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-27 18:03:22', '0000-00-00 00:00:00', 0, '', '2018-08-09', 'carpentry works', '', ''),
(184, 38, 0, '33', 102, 'Corpage', '', 'raghav@gmail.com', 'Maharashtra', '27', '', '', '', '', 'muktai apts,shivtirthnagar pune', '', 'raghavendra kulkarni', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '19700.00', '0.00', '19700.00', '19700.00', 'Nineteen Thousand, Seven Hundred', '19700.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/6', NULL, '2018-07-13', '2018-07-13', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-29 12:16:43', '0000-00-00 00:00:00', 0, '64', '2018-07-13', 'aluminium works', '', ''),
(185, 38, 0, '33', 103, 'DAATE ROHINI', '', 'date@gmail.com', 'Maharashtra', '27', '', '', '', '', '2nd floor,dream residency aundh pune', '', '7016733168', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '59060.00', '0.00', '59060.00', '59060.00', 'Fifty-Nine Thousand and Sixty', '59060.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/7', NULL, '2018-07-01', '2018-07-06', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-29 13:05:14', '2018-09-29 13:17:34', 0, '63', '2018-07-06', 'painting works', '', ''),
(186, 38, 0, '33', 62, 'SEVA SAHAYOG FOUNDATION', '', 'seva@gmail.com', 'Maharashtra', '27', '', '', '', '', 'vrundavan soc.mhatre bridge navipeth', '', 'RAVI GOKHALE-9763704763', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '1700.00', '0.00', '1700.00', '1700.00', 'One Thousand, Seven Hundred', '1700.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/8', NULL, '2018-07-06', '2018-07-06', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-29 13:25:17', '0000-00-00 00:00:00', 0, '62', '2018-07-06', 'civil works', '', ''),
(187, 38, 0, '33', 104, 'Joshi Sachin', '', 'sachin@gmail.com', 'Maharashtra', '27', '', '', '', '', 'B K AVENUE OPP.PARANJPE SCHOOL KOTHRUD PUNE', '', 'sachin-9172562387', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '60000.00', '0.00', '60000.00', '60000.00', 'Sixty Thousand', '60000.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/9', NULL, '2018-06-10', '2018-06-20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-29 14:08:14', '0000-00-00 00:00:00', 0, '61', '2018-06-20', 'CIVIL WORKS', '', ''),
(188, 38, 0, '33', 105, 'KADAK ZATKA', '', 'kadakzatka@gmail.com', 'Maharashtra', '27', '', '', '', '', 'baner balewadi link road', '', 'NISHIKANT PATIL-9923616611', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '11154.00', '0.00', '11154.00', '11154.00', 'Eleven Thousand, One Hundred and Fifty-Four', '11154.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/10', NULL, '2018-06-01', '2018-06-07', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-29 14:35:51', '0000-00-00 00:00:00', 0, '59', '2018-06-07', 'painting works', '', ''),
(189, 38, 0, '33', 106, 'Nilakhe Saurabh', '', 'saurabh@gmail.com', 'Maharashtra', '27', '', '', '', '', 'tambe buwa narayanpeth', '', 'saurabh-8698369996', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '2400.00', '0.00', '2400.00', '2400.00', 'Two Thousand, Four Hundred', '2400.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/11', NULL, '2018-06-20', '2018-06-20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-29 14:49:18', '0000-00-00 00:00:00', 0, '058', '2018-06-20', 'aluminium works', '', ''),
(190, 38, 0, '33', 107, 'GODSE RUTUJA', '', 'rutuja@gmail.com', 'Maharashtra', '27', '', '', '', '', 'fusion city kondwedhawade pune', '', 'RUTUJA-7757006905', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '12000.00', '0.00', '12000.00', '12000.00', 'Twelve Thousand', '12000.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/12', NULL, '2018-06-10', '2018-06-10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-09-29 14:54:48', '0000-00-00 00:00:00', 0, '057', '2018-06-10', 'fabrication works', '', ''),
(191, 38, 0, '33', 108, 'GOKHALE SACHIN', '', 'TILAK RD SITE', 'Maharashtra', '27', '', '', '', '', 'TILAK ROAD SITE ', '', 'SACHIN-', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '7000.00', '0.00', '7000.00', '7000.00', 'Seven Thousand', '7000.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/13', NULL, '2018-05-25', '2018-05-28', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-02 15:57:29', '0000-00-00 00:00:00', 0, '044', '2018-05-28', 'CIVIL WORKS', '', ''),
(192, 3, 0, '24', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog ', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'Yatin Jog ', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '1525.00', '0.00', '1525.00', '1708.00', 'One Thousand, Seven Hundred and Eight', '1708.00', '0.00', '183.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181938', NULL, '2018-10-03', '2018-11-03', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-03 09:24:48', '2018-10-04 03:35:27', 0, 'Verbal Confirmation', '2018-10-03', 'World Trade Centre', '', ''),
(193, 35, 0, '17', 92, 'Tej Enterprises', '', 'cpurandarrao@gmail.com', 'Maharashtra', '27', '', '', '', '', '501/AF-5, 1st Floor, ST Stand Sadar Bazaar, Satara 415002', '', 'Mr. Purandar 243234', '27AANPC4242M1ZJ', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch\r\n    ', '', '115851.50', '0.00', '115851.50', '136705.00', 'One Hundred and Thirty-Six Thousand, Seven Hundred and Five', '1212.00', '135493.00', '20853.27', 'Pending', 'Invoice', 1, 0, 0, '18-19/32', NULL, '2018-10-02', '2018-10-02', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-04 10:42:54', '2018-12-26 07:12:05', 0, '', '', '', '', ''),
(194, 38, 0, '33', 109, 'Bangale Rajendra', '', '9850971926', 'Maharashtra', '27', '', '', '', '', 'C-2-203,prayeja city nanded city road wadgaon warje', '', 'rajendra', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '40480.00', '0.00', '40480.00', '40480.00', 'Forty Thousand, Four Hundred and Eighty', '40480.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/14', NULL, '2018-09-26', '2018-10-06', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-07 15:12:11', '2018-10-30 15:56:07', 0, '72', '2018-09-26', 'painting works', '', ''),
(195, 3, 0, '24', 110, 'Siddhivinayak Infinite Furnitures PVT Ltd', '', '9822176664', 'Maharashtra', '27', 'Anand Dave', '9822176664', 'Maharashtra', '27', 'Siddhivinayak Infinite Furnitures PVT Ltd, 484/10 Mitramandal colony , Next to lokmanya Hospital, Parvati, Pune 411009', 'Siddhivinayak Infinite Furnitures PVT Ltd, 484/10 Mitramandal colony , Next to lokmanya Hospital, Parvati, Pune 411009', 'Anand Dave', '27AECPD3228B2Z7', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '4950.00', '0.00', '4950.00', '5544.00', 'Five Thousand, Five Hundred and Forty-Four', '5544.00', '0.00', '594.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181939', NULL, '2018-10-09', '2018-10-23', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-09 16:49:28', '2018-10-31 08:50:05', 0, 'Verbal Confirmation', '2018-10-09', 'Parvati Pune', '', ''),
(196, 38, 0, '33', 111, 'Damle', '', '9922817100', 'Maharashtra', '27', '', '', '', '', 'c-65,5th floor,srishti,near mhada,karvenagar,pune\r\n', '', 'damle', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '9340.00', '0.00', '9340.00', '9340.00', 'Nine Thousand, Three Hundred and Forty', '9340.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/15', NULL, '2018-10-04', '2018-10-09', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-11 07:15:47', '0000-00-00 00:00:00', 0, '73', '2018-10-09', 'aluminium works', '', ''),
(197, 49, 0, '42', 112, 'PRAKASH DHANGAR', '', 'rohinicablenetwork18@gmail.com', 'MAHARASHTRA', '', 'PRAKASH DHANGAR', 'rohonicablenetwork18@gmail.com', '', '', 'Survey No.- 102, Vaiduwadi, Pune - 411016', 'Survey No.- 102, Vaiduwadi, Pune - 411016', 'PRAKASH DHANGAR', '', 'Note:\r\n1) All cheque should be in favoour of Rohini Cable Network.\r\n2) Please send TDS certificate to Rohini Cable Network office.\r\n3) Outstation cheques will not be accepted.\r\n4) Contents of this invoice with outstanding amount due shall be considered as \r\n    correct,\r\n    if no  descipency is reported within 7 days of the reciept of invoice.\r\n5) All disputes are subject to PUNE Jurisdiction.\r\n6) This invoice is issued without any prejudice to our rights to claim previous \r\n    outstanding  if any .\r\n7) This is a computer generated invoice and does not require a signature.\r\nE & OE\r\nRegistration Address : S 2953 / 102 / 16, Vaiduwadi, Nr Chaturshingi Mandir, Pune, Maharashtra, 411016', 'AXIS BANK Ltd.\r\nA/C No.-  912010055542116\r\nIFSC -     UTIB0000037', '', '254.24', '0.00', '254.24', '300.00', 'Three Hundred', '0.00', '300.00', '45.76', 'Pending', 'Invoice', 1, 0, 0, 'RCN-101', NULL, '2018-10-01', '2018-10-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-11 07:36:26', '2018-10-18 11:03:35', 0, '000084903772', '2018-10-01', 'CABLE TV PACKAGE RENEWAL', '', ''),
(198, 49, 0, '42', 113, 'PRAKASH SHAH', '', 'rohinicablenetwork18@gmail.com', 'MAHARASHTRA', '', 'PRAKASH SHAH', 'rohinicablenetwork18@gmail.com', 'MAHARASHTRA', 'MAHARASHTRA', 'Survey no- 102, Vaiduwadi, Pune - 16', 'Survey no- 102, Vaiduwadi, Pune - 16', 'PRAKASH SHAH', '', 'Note:\r\n1) All cheque should be in favoour of Rohini Cable Network.\r\n2) Outstation cheques will not be accepted.\r\n3) Contents of this invoice with outstanding amount due shall be considered as \r\n    correct, if no  descipency is reported within 7 days of the reciept of invoice.\r\n4) All disputes are subject to PUNE Jurisdiction.', 'AXIS BANK Ltd.\r\nA/C No.-  912010055542116\r\nIFSC -     UTIB0000037', '', '254.24', '0.00', '254.24', '300.00', 'Three Hundred', '0.00', '300.00', '45.76', 'Pending', 'Invoice', 1, 0, 0, 'RCN-102', NULL, '2018-10-01', '2018-10-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-11 07:54:27', '2018-10-18 10:55:47', 0, '000112768494/5945038216702008', '2018-10-11', 'HATHWAY DIGITAL PVT LTD', '', ''),
(199, 38, 0, '33', 114, 'Corpage India Advisors Pvt Ltd', '', 'corpage@gmail.com', 'Maharashtra', '27', '', '', '', '', 'muktai apts,shivtirthnagar,pune', '', 'mr.kulkarni-9970804956', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '53730.00', '0.00', '53730.00', '53730.00', 'Fifty-Three Thousand, Seven Hundred and Thirty', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, 'SE/18/19/1', NULL, '2018-10-12', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-12 12:10:33', '2018-10-13 15:19:25', 0, '', '', '', '', ''),
(200, 49, 0, '42', 112, 'MATHILAL MISTRI', '', 'rohinicablenetwork18@gmail.com', 'MAHARASHTRA', '', 'MATHILAL MISTRI', 'rohonicablenetwork18@gmail.com', '', '27', 'Survey No.- 102, Vaiduwadi, Pune - 411016', 'Survey No.- 102, Vaiduwadi, Pune - 411016', 'MATHILAL MISTRI', '', 'Note:\r\n1) All cheque should be in favoour of Rohini Cable Network.\r\n2) Outstation cheques will not be accepted.\r\n3) Contents of this invoice with outstanding amount due shall be considered as \r\n    correct, if no  descipency is reported within 7 days of the reciept of invoice.\r\n4) All disputes are subject to PUNE Jurisdiction.', 'AXIS BANK Ltd.\r\nA/C No.-  912010055542116\r\nIFSC -     UTIB0000037', '', '254.24', '0.00', '254.24', '300.00', 'Three Hundred', '0.00', '300.00', '45.76', 'Pending', 'Invoice', 1, 0, 0, 'RCN-103', NULL, '2018-10-01', '2018-10-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-18 11:17:49', '2018-10-18 11:19:58', 0, '112768387', '2018-10-01', 'CABLE TV PACKAGE RENEWAL', '', ''),
(201, 38, 0, '33', 115, 'Kulkarni Anuja', '', '9921420200', 'Maharashtra', '27', '', '', '', '', 'row houses baner near hi-street,behind cummins co.', '', 'anuja madam', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '121750.00', '0.00', '121750.00', '121750.00', 'One Hundred and Twenty-One Thousand, Seven Hundred and Fifty', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, 'SE/18/19/2', NULL, '2018-10-20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-20 09:59:39', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(202, 38, 0, '33', 116, 'Dr.rutuja Dental Clinic', '', '9552690200', 'Maharashtra', '27', '', '', '', '', 'opp.vandevi temple ,warje road,pune', '', 'Dr.Rutuja', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '10400.00', '0.00', '10400.00', '10400.00', 'Ten Thousand, Four Hundred', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, 'SE/18/19/3', NULL, '2018-10-20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-20 10:24:08', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(203, 3, 0, '24', 73, 'Silver Leaf Society Internal Road Model Colony Pune ', 'NA', 'aceprashaant@gmail.com', 'Maharashtra', '27', 'Prashant Deshpande 9766541055', 'aceprashaant@gmail.com', 'Maharashtra', '27', 'Silver Leaf Society Internal Road Model Colony Pune ', 'Silver Leaf Society Internal Road Model Colony Pune ', 'Prashant Deshpande 9766541055', 'NA', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '13550.00', '0.00', '13550.00', '15989.00', 'Fifteen Thousand, Nine Hundred and Eighty-Nine', '15989.00', '0.00', '2439.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181940', NULL, '2018-10-22', '2018-10-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-22 03:10:29', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-10-16', 'Silver Leaf Society', '', ''),
(204, 3, 0, '25', 117, 'Kumar Park Co Op Housing Society Ltd', 'NA', 'kumarparkchs@yahoo.com', 'Maharashtra', '27', 'Ravi Gokahle 9763704763', 'kumarparkchs@yahoo.com', 'Maharashtra', '27', 'Girija Shankar Vihar, Ganesh Nagar, Karve Nagar, Pune, Maharashtra 411052', 'Girija Shankar Vihar, Ganesh Nagar, Karve Nagar, Pune, Maharashtra 411052', 'Ravi Gokahle 9763704763', '27AAAAK2503P1ZL', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '21186.44', '0.00', '21186.44', '25000.00', 'Twenty-Five Thousand', '0.00', '0.00', '3813.56', 'Pending', 'Estimate', 1, 0, 0, 'AEQ181910', NULL, '2018-10-22', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-22 11:44:49', '2018-10-23 13:10:56', 0, '', '', '', '', ''),
(205, 38, 0, '33', 119, 'Ashish Phuse', '', 'ashish@gmail.com', 'Maharashtra', '27', '', '', '', '', 'behind rudra hotel,2nd floor,karvenagar,pune', '', 'ashish-8390980888', '', '1)50%advance.\r\n2)above cost includes material+labour.\r\n3)work will take 22/25 days.\r\n4)all rada to be removed by us.', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '50% advance.\r\nabove calculation includes materials cost.\r\nall rada to be removed by our side.\r\nwork will be completed in 22/25 days.', '124550.00', '0.00', '124550.00', '124550.00', 'One Hundred and Twenty-Four Thousand, Five Hundred and Fifty', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, 'SE/18/19/4', NULL, '2018-10-22', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-22 12:30:56', '2018-10-22 12:37:42', 0, '', '', '', '', ''),
(206, 3, 0, '24', 121, 'Kumar Park Co Op Housing Society Ltd', '', 'kumarparkchs@yahoo.com', 'Maharashtra', '27', 'Ravi Gokahle 9763704763', 'kumarparkchs@yahoo.com', 'Maharashtra', '27', 'Girija Shankar Vihar, Ganesh Nagar, Karve Nagar, Pune, Maharashtra 411052', 'Girija Shankar Vihar, Ganesh Nagar, Karve Nagar, Pune, Maharashtra 411052', 'Ravi Gokahle 9763704763', '27AAAAK2503P1ZL', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '3000.00', '0.00', '3000.00', '3360.00', 'Three Thousand, Three Hundred and Sixty', '3360.00', '0.00', '360.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181941', NULL, '2018-10-23', '2018-10-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-23 13:21:31', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-10-23', 'Girija Shankar Vihar,', '', ''),
(207, 3, 0, '24', 122, 'Convenience & Care ', 'NA', 'Na', 'Maharashtra', '27', 'Suhas Bapat 9405877223', 'Na', 'Maharashtra', '27', 'Shewatambari Shop no 17, Navshya maruti patisar Pune', 'Shewatambari Shop no 17, Navshya maruti patisar Pune', 'Suhas Bapat 9405877223', '27AJKPB4518M1Z1', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '8650.00', '0.00', '8650.00', '9688.00', 'Nine Thousand, Six Hundred and Eighty-Eight', '9688.00', '0.00', '1038.00', 'Pending', 'Invoice', 1, 0, 0, 'AE181942', NULL, '2018-10-24', '2018-10-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-24 10:33:20', '2018-12-03 05:55:27', 0, 'Verbal Confirmation', '', 'NA', '', ''),
(208, 35, 0, '17', 123, 'Shri Sai Baba Sansthan Trust , Shirdi', '', 'electrical.dept@sai.org.in', 'Maharashtra', '27', 'Mr. Rohomare', 'electrical.dept@sai.org.in', 'Maharashtra', '27', 'Post Shirdi, Taluka Rahata, District Ahmednagar 423109', 'Post Shirdi, Taluka Rahata, District Ahmednagar 423109', 'Mr. Rohomare', '', '1. Transportation & Installation Included\r\n2. Crane and Cabling in your scope', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank Of India\r\nCurrent  Account â€“  32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch\r\n    ', '', '295000.00', '0.00', '295000.00', '348100.00', 'Three Hundred and Forty-Eight Thousand, One Hundred', '0.00', '0.00', '53100.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/13', NULL, '2018-10-24', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-24 12:25:23', '2018-10-24 12:30:58', 0, '', '', '', '', ''),
(209, 38, 0, '33', 124, 'Mr.murkute..(pp.bangale Rajendra )', '', '9850971926', 'Maharashtra', '27', '', '', '', '', '27,snehanand apts,happy colony,pune', '', 'rajendra bangale', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '30002.00', '0.00', '30002.00', '30002.00', 'Thirty Thousand and Two', '0.00', '30002.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, 'SE/18/19/16', NULL, '2018-10-17', '2018-10-24', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-27 10:51:06', '2018-10-27 11:08:49', 0, '30', '2018-10-24', 'painting works', '', ''),
(210, 38, 0, '33', 125, 'C A-badwe & Associates', '', '808779657', 'Maharashtra', '27', '', '', '', '', 'flat no 5,arunali apts,near chaitanya health club,mit college rd,kothrud,pune', '', 'hrishikesh', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '1700.00', '0.00', '1700.00', '1700.00', 'One Thousand, Seven Hundred', '1700.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/17', NULL, '2018-10-25', '2018-10-25', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-27 11:21:42', '0000-00-00 00:00:00', 0, '31', '2018-10-25', 'carpentry repairs', '', ''),
(211, 38, 0, '33', 126, 'Dr.varadpande Rutuja (dental Clinic )', '', '9552680200', 'Maharashtra', '27', '', '', '', '', 'opp.vandevi temple,karvenagar pune', '', 'dr.rutuja', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '7800.00', '0.00', '7800.00', '7800.00', 'Seven Thousand, Eight Hundred', '7800.00', '0.00', '0.00', 'Closed', 'Invoice', 1, 0, 0, 'SE/18/19/18', NULL, '2018-10-25', '2018-10-28', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-28 16:27:38', '0000-00-00 00:00:00', 0, '32', '2018-10-28', 'painting works', '', ''),
(212, 35, 0, '17', 127, 'Exotech Zanini', '', 'shinde.gajanan@exotechzanini.com', 'Maharashtra', '27', '', '', '', '', 'Ranjangaon MIDC Phase 2', '', 'Mr. Gajanan Shinde', '', '1. Transport upto your site is included\r\n2. 100% before dispatch\r\n3. Delivery - 1 week', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank Of India\r\nCurrent Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch', '', '754535.00', '75397.50', '679137.50', '801281.00', 'Eight Hundred and One Thousand, Two Hundred and Eighty-One', '0.00', '0.00', '122143.95', 'Pending', 'Estimate', 1, 0, 0, '18-19/14', NULL, '2018-10-30', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-30 09:53:28', '2018-10-30 10:01:17', 0, '', '', '', '', ''),
(213, 38, 0, '33', 128, 'Paradkar Shirish', '', 'shirish@gmail.com', 'Maharashtra', '27', '', '', '', '', 'soba apts,right bhusari colony paud road kothrud pune', '', 'paradkar', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '6300.00', '0.00', '6300.00', '6300.00', 'Six Thousand, Three Hundred', '0.00', '6300.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, 'SE/18/19/19', NULL, '2018-10-25', '2018-10-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-30 16:30:44', '0000-00-00 00:00:00', 0, '76', '2018-10-30', 'painting works', '', ''),
(214, 35, 0, '17', 120, 'Ajinkyatara Multispeciality Hospital Pvt. Ltd.', 'AAQCA6457Q', 'ajinkyatarahospital@gmail.com', 'Maharashtra', '27', '', '', '', '', 'S.No 500/A/8, Opposite Civil Hospital, Sadar Bazaar, Satara 415001', '', 'Mr. Sachin Gurav', '', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch\r\n    ', '', '515000.00', '0.00', '515000.00', '607700.00', 'Six Hundred and Seven Thousand, Seven Hundred', '0.00', '607700.00', '92700.00', 'Pending', 'Invoice', 1, 0, 0, '18-19/33', NULL, '2018-10-20', '2018-10-20', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-31 07:28:45', '2018-10-31 07:34:25', 0, 'Ajinkya/2018-19/01', '2018-07-26', '', '', ''),
(215, 35, 0, '17', 130, 'Vedant Dryfruits & Company', '', 'shivendrapatil9922', 'Maharashtra', '27', '', '', '', '', 'Grampanchayat Milkat 701 Saidapur, Karad 415124', '', 'Shivendra Patil', '27CFUPP6896N1ZX', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch\r\n    ', '', '415254.24', '0.00', '415254.24', '490000.00', 'Four Hundred and Ninety Thousand', '0.00', '490000.00', '74745.76', 'Pending', 'Invoice', 1, 0, 0, '18-19/34', NULL, '2018-10-26', '2018-10-26', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-31 07:51:01', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(216, 3, 0, '24', 121, 'Kumar Park Co Op Housing Society Ltd', '', 'kumarparkchs@yahoo.com', 'Maharashtra', '27', 'Ravi Gokahle 9763704763', 'kumarparkchs@yahoo.com', 'Maharashtra', '27', 'Girija Shankar Vihar, Ganesh Nagar, Karve Nagar, Pune, Maharashtra 411052', 'Girija Shankar Vihar, Ganesh Nagar, Karve Nagar, Pune, Maharashtra 411052', 'Ravi Gokahle 9763704763', '27AAAAK2503P1ZL', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '21186.44', '0.00', '21186.44', '25000.00', 'Twenty-Five Thousand', '25000.00', '0.00', '3813.56', 'Closed', 'Invoice', 1, 0, 0, 'AE181943', NULL, '2018-11-01', '2018-10-10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-10-31 09:12:10', '0000-00-00 00:00:00', 0, 'Verbal confirmation', '2018-10-23', 'Electrical Panel Inspection', '', ''),
(217, 3, 0, '25', 121, 'Kumar Park Co Op Housing Society Ltd', '', 'kumarparkchs@yahoo.com', 'Maharashtra', '27', 'Ravi Gokahle 9763704763', 'kumarparkchs@yahoo.com', 'Maharashtra', '27', 'Girija Shankar Vihar, Ganesh Nagar, Karve Nagar, Pune, Maharashtra 411052', 'Girija Shankar Vihar, Ganesh Nagar, Karve Nagar, Pune, Maharashtra 411052', 'Ravi Gokahle 9763704763', '27AAAAK2503P1ZL', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '23500.00', '0.00', '23500.00', '27730.00', 'Twenty-Seven Thousand, Seven Hundred and Thirty', '0.00', '0.00', '4230.00', 'Pending', 'Estimate', 1, 0, 0, 'AEQ181911', NULL, '2018-11-02', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-02 09:26:14', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(218, 3, 0, '24', 86, 'SHRIDHAR MUKUND TAMBEKAR', '', 'S. M. Tambekar <smt@snehabearings.com>', 'Maharashtra', '27', 'S. M. Tambekar 91-9823014888', 'S. M. Tambekar <smt@snehabearings.com>', 'Maharashtra', '27', 'C-403, Regulus Apt, Dasara Chowk, Balewadi, Pune- 411045', 'C-403, Regulus Apt, Dasara Chowk, Balewadi, Pune- 411045', 'S. M. Tambekar 91-9823014888', '27AAGPT3497C1ZF', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '1230.00', '0.00', '1230.00', '1378.00', 'One Thousand, Three Hundred and Seventy-Eight', '1378.00', '0.00', '147.60', 'Closed', 'Invoice', 1, 0, 0, 'AE181944', NULL, '2018-11-03', '2018-11-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-03 09:14:12', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-10-31', 'divyagar Project', '', ''),
(219, 38, 0, '33', 131, 'Joshi Rahul', '', 'rahul-9823277691@gmail.com', 'Maharashtra', '27', '', '', '', '', 'a-304,sun orion apts,wadgaon ,near navale bridge pune', '', 'rahul', '', '1.35%advance\r\n2.work will take approx 45/50 days\r\n3.carpentry works-bed-1,wardrobe,loft,double bed,study,bookshelf\r\n                              bed-2,wardrobe,loft,study,bookshelf\r\n                              hall-  ,tv unit\r\n4.aluminium windows to be shifted,and new bay(french) window of ply box to be made qty 3\r\n5.1 designed glass at the side of temple.\r\n6.all our scrap to be removed by us\r\n7.painting works,safety door,hall,dining,passage,bath+toilet,kitchen,bedroom (2),and balcony', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '1.35% advance\r\n2.work will take approx 45/50 days\r\n3.above carpentry works includes,tvunit,bedroom (1)wardrobe loft,study,bookshelf,double bedroom(2) wardrobe,loft,study,bookshelf,windows qty 3 aluminium panel shifting,new bay window box of  plywood \r\n4.scrap of our material to be removed by us.', '432250.00', '0.00', '432250.00', '432250.00', 'Four Hundred and Thirty-Two Thousand, Two Hundred and Fifty', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, 'SE/18/19/5', NULL, '2018-11-07', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-08 09:39:18', '2018-11-08 09:47:34', 0, '', '', '', '', ''),
(220, 3, 0, '24', 39, 'Deoghar, Pune', '', 'Devghar.pune@gmail.com M- 7030877881', 'Maharashtra', '27', 'Mandar Marathe - 7030877881', 'Devghar.pune@gmail.com M- 7030877881', 'Maharashtra', '27', 'Devghar Shop No 4, Bhansali Tower, Near hotel Janjira, LBS road, Ganjawe chowk, Navipeth, Pune -411030', 'Devghar Shop No 4, Bhansali Tower, Near hotel Janjira, LBS road, Ganjawe chowk, Navipeth, Pune -411030', 'Mandar Marathe - 7030877881', '27AQAPM8938M1Z6', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '5400.00', '0.00', '5400.00', '6048.00', 'Six Thousand and Forty-Eight', '0.00', '6048.00', '648.00', 'Pending', 'Invoice', 1, 0, 0, 'AE181945', NULL, '2018-11-14', '2018-12-18', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-14 09:36:13', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-11-12', 'Deoghar,', '', ''),
(221, 35, 0, '17', 132, 'Ecorea & Kuroda Electric India Pvt.Ltd', '', 'rahulkumars@eki.co.in', 'Maharashtra', '27', 'Rahul Kumar Singh', 'rahulkumars@eki.co.in', 'Maharashtra', '27', 'Plot No-H-1, Ranjangaon MIDC, Taluka Shirur, District Pune 412220', 'Plot No-H-1, Ranjangaon MIDC, Taluka Shirur, District Pune 412220', 'Rahul Kumar Singh', '', 'Note : As it is a non conventional device, it qualifies for accelerated depreciation 80% as per the section 32 of Indian Income Tax Act.\r\n1. Rates quoted is for minimum quantity mentioned above ex- works\r\n2. All Material will be supplied in seaworthy corrugated boxes\r\n3. Installation charges included for single location and one time Basis.\r\nAny civil work/modification/repairing work in your scope\r\n4. Insurance : Extra at actual to customerÃ¢â‚¬â„¢s account\r\n5. Octroi / Entry Tax : Extra at actual to customerÃ¢â‚¬â„¢s account\r\n6. Freight : Extra at actual to customerÃ¢â‚¬â„¢s account\r\n7. Dispatch Date : Within 5 to 6 weeks from the receipt date of roofing sheet, profile/sample. (Please confirm delivery time before placing an order)\r\n8. 50% advance along with confirm PO and balance against Installation.\r\n9. P.O. shall be raised on Shree Generators & Power Solutions\r\n10. 30 Days, any fluctuations in taxes will lead us to change the prices', 'Account Name Ã¢â‚¬â€œ Shree Generators & Power Solutions\r\nBank Name Ã¢â‚¬â€œ State Bank Of India\r\nCurrent Account Ã¢â‚¬â€œ 32446057747\r\nIFSC Code Ã¢â‚¬â€œ SBIN0030456\r\nKothrud Branch\r\n    ', 'Note : As it is a non conventional device, it qualifies for accelerated depreciation 80% as\r\nper the section 32 of Indian Income Tax Act.', '656000.00', '0.00', '656000.00', '774080.00', 'Seven Hundred and Seventy-Four Thousand and Eighty', '0.00', '0.00', '118080.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/15', NULL, '2018-11-16', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-16 09:47:42', '2018-11-16 09:57:26', 0, '', '', '', '', ''),
(222, 1, 0, '1', 133, '7 Mentor', '', 'ranjit@gmail.com', 'Maharashtra', '27', 'Ranjit', 'ranjit@gmail.com', 'Maharashtra', '27', 'pune', 'pune', 'Ranjit', '', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '40.00', '0.00', '40.00', '40.00', 'Forty', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, 'PR-5', NULL, '2018-11-17', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-17 10:50:06', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(223, 3, 0, '24', 134, 'Abhiyanta Structure ', '', 'abhiyantastructure@gmail.com', 'Maharashtra', '27', 'Nilesh Pimple', 'abhiyantastructure@gmail.com', 'Maharashtra', '27', 'No 966/B/4 Shanta Society, Near Nerlekar Hospital, Shivaji nagar, Pune- 411016', 'No 966/B/4 Shanta Society, Near Nerlekar Hospital, Shivaji nagar, Pune- 411016', 'Nilesh Pimple', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '850.00', '0.00', '850.00', '952.00', 'Nine Hundred and Fifty-Two', '0.00', '952.00', '102.00', 'Pending', 'Invoice', 1, 0, 0, 'AE181946', NULL, '2018-11-19', '2018-11-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-19 06:41:14', '0000-00-00 00:00:00', 0, 'Verbal confirmation', '2018-11-15', 'NA', '', ''),
(224, 35, 0, '17', 135, 'Suhas Pandharinath Jadhav', '', 'sales@sgps.co.in', 'Maharashtra', '27', 'Suhas Jadhav', 'sales@sgps.co.in', 'Maharashtra', '27', 'Hotel Fauji Dhaba, Vathar Station, Taluka Koregaon, Satara', 'Hotel Fauji Dhaba, Vathar Station, Taluka Koregaon, Satara', 'Suhas Jadhav', '27AKAPJ4975H1Z2', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch\r\n    ', '', '258474.60', '0.00', '258474.60', '305000.00', 'Three Hundred and Five Thousand', '0.00', '305000.00', '46525.43', 'Pending', 'Invoice', 1, 0, 0, '18-19/35', NULL, '2018-11-05', '2018-11-05', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-19 10:34:44', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(225, 35, 0, '17', 132, 'Ecorea & Kuroda Electric India Pvt.Ltd', '', 'rahulkumars@eki.co.in', 'Maharashtra', '27', 'Rahul Kumar Singh', 'rahulkumars@eki.co.in', 'Maharashtra', '27', 'Plot No-H-1, Ranjangaon MIDC, Taluka Shirur, District Pune 412220', 'Plot No-H-1, Ranjangaon MIDC, Taluka Shirur, District Pune 412220', 'Rahul Kumar Singh', '', '1. Transport at actual to your account\r\n2. Price basis: Ex works Pune.\r\n3. Delivery: Ex-stock / 6-7 weeks from date of purchase\r\norder.\r\n4. Packing: Standard corrugated packing included ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank of India\r\nCurrent Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch', '', '290000.00', '0.00', '290000.00', '342200.00', 'Three Hundred and Forty-Two Thousand, Two Hundred', '0.00', '0.00', '52200.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/16', NULL, '2018-11-20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-20 11:07:11', '2018-11-20 11:17:04', 0, '', '', '', '', ''),
(226, 35, 0, '17', 132, 'Ecorea & Kuroda Electric India Pvt.Ltd', '', 'rahulkumars@eki.co.in', 'Maharashtra', '27', 'Rahul Kumar Singh', 'rahulkumars@eki.co.in', 'Maharashtra', '27', 'Plot No-H-1, Ranjangaon MIDC, Taluka Shirur, District Pune 412220', 'Plot No-H-1, Ranjangaon MIDC, Taluka Shirur, District Pune 412220', 'Rahul Kumar Singh', '', '1. Transport at actual to your account\r\n2. Price basis: Ex works Pune.\r\n3. Delivery: Ex-stock / 6-7 weeks from date of purchase\r\norder.\r\n4. Packing: Standard corrugated packing included ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank of India\r\nCurrent Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch.', '', '1530000.00', '0.00', '1530000.00', '1805400.00', 'One Million, Eight Hundred and Five Thousand, Four Hundred', '0.00', '0.00', '275400.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/17', NULL, '2018-11-20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-20 11:12:47', '2018-11-20 11:17:27', 0, '', '', '', '', ''),
(227, 35, 0, '17', 24, 'Manohar Mangal Karyalaya', '', 'ranjitmehendale@gmail.com', 'Maharashtra', '27', 'Ranjit Mehendale', 'ranjitmehendale@gmail.com', 'Maharashtra', '27', 'Manohar Mangal Karyalaya 31/1 Erandawana, Mehendale Garage, Pune- 411004', 'Manohar Mangal Karyalaya 31/1 Erandawana, Mehendale Garage, Pune- 411004', 'Ranjit Mehendale', '27AABCM2450L1ZG', '1. Transport Included\r\n2. Warranty 1 Year\r\n3. Payment Terms: 100 Percent Advance', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank of India\r\nCurrent Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch.\r\n    ', '', '67500.00', '5500.00', '62000.00', '70910.00', 'Seventy Thousand, Nine Hundred and Ten', '0.00', '0.00', '8910.00', 'Pending', 'Estimate', 1, 0, 0, '18-19/18', NULL, '2018-11-20', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-20 12:12:01', '2018-11-20 12:15:48', 0, '', '', '', '', ''),
(228, 3, 0, '25', 136, 'M/S  Jupiter Infotech Plot No. 37 MIDC,RGIP, PHASE II ', '', 'NA', 'Maharashtra', '', 'Mr. Deshpande', '', 'Maharashtra', '', 'M/S  Jupiter Infotech Plot no. 37 MIDC,RGIP, PHASE II , Hinjewadi Pune', 'M/S  Jupiter Infotech Plot no. 37 MIDC,RGIP, PHASE II , Hinjewadi Pune', 'Mr. Deshpande', '', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '37600000.00', '0.00', '37600000.00', '44368000.00', 'Forty-Four Million, Three Hundred and Sixty-Eight Thousand', '0.00', '0.00', '6768000.00', 'Pending', 'Estimate', 1, 0, 0, 'AEQ181912', NULL, '2018-11-25', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-25 11:02:22', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(229, 3, 0, '25', 97, 'Krishna Kewal Township ', 'NA', 'biman@neelman.in', 'Maharashtra', '27', 'Biman Gandhi 9822666355', 'biman@neelman.in', 'Maharashtra', '27', 'Krishna Kewal Township \r\nCO Op housing society Ho 8, NIBM Road Pune', 'Krishna Kewal Township \r\nCO Op housing society Ho 8, NIBM Road Pune', 'Biman Gandhi 9822666355', 'NA', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '0.00', '0.00', '0.00', '0.00', 'Zero', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, 'AEQ18191', NULL, '2018-11-26', '2018-11-30', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-26 02:12:12', '2018-11-26 02:15:30', 0, 'Verbal Confirmation', '2018-11-26', 'Society work', '', '');
INSERT INTO `common` (`id`, `user_id`, `sub_user_id`, `series_id`, `customer_id`, `customer_name`, `customer_identification`, `customer_email`, `invoice_state`, `in_state_code`, `ship_cont_person`, `ship_email`, `ship_state`, `ship_state_code`, `invoicing_address`, `shipping_address`, `contact_person`, `cust_gst_no`, `terms`, `bank_details`, `notes`, `base_amount`, `discount_amount`, `net_amount`, `gross_amount`, `amt_words`, `paid_amount`, `due_amt`, `tax_amount`, `status`, `type`, `draft`, `closed`, `sent_by_email`, `number`, `recurring_invoice_id`, `issue_date`, `due_date`, `days_to_due`, `enabled`, `max_occurrences`, `must_occurrences`, `period`, `period_type`, `starting_date`, `finishing_date`, `last_execution_date`, `created_at`, `updated_at`, `del_status`, `po_no`, `po_date`, `po_project_name`, `cmobile_no`, `csmobile_no`) VALUES
(230, 3, 0, '24', 97, 'Krishna Kewal Township ', 'NA', 'biman@neelman.in', 'Maharashtra', '27', 'Biman Gandhi 9822666355', 'biman@neelman.in', 'Maharashtra', '27', 'Krishna Kewal Township \r\nCO Op housing society Ho 8, NIBM Road Pune', 'Krishna Kewal Township \r\nCO Op housing society Ho 8, NIBM Road Pune', 'Biman Gandhi 9822666355', 'NA', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '2500.00', '0.00', '2500.00', '2800.00', 'Two Thousand, Eight Hundred', '2800.00', '0.00', '300.00', 'Closed', 'Invoice', 1, 0, 0, 'AE181947', NULL, '2018-11-26', '2018-11-28', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-26 02:15:12', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-11-26', 'Society', '', ''),
(231, 38, 0, '33', 105, 'KADAK ZATKA', '', 'kadakzatka@gmail.com', 'Maharashtra', '27', '', '', '', '', 'baner balewadi link road', '', 'NISHIKANT PATIL-9923616611', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '85575.00', '0.00', '85575.00', '85575.00', 'Eighty-Five Thousand, Five Hundred and Seventy-Five', '0.00', '85575.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, 'SE/18/19/20', NULL, '2018-11-01', '2018-11-26', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-26 07:39:17', '2018-11-26 16:46:07', 0, '78', '2018-11-26', 'hatti ganpati opp.bhave school', '', ''),
(232, 38, 0, '33', 137, 'Manman Innovations Pvt.ltd', '', 'info@manmanindia.com', 'Maharashtra', '27', '', '', '', '', '1157,sadashivpeth,opp.bhave school,perugate,pune', '', 'manman 3456435643', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '6664.00', '0.00', '6664.00', '6664.00', 'Six Thousand, Six Hundred and Sixty-Four', '0.00', '6664.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, 'SE/18/19/21', NULL, '2018-11-23', '2018-11-27', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-28 09:05:32', '2018-12-29 08:06:12', 0, '79', '2018-11-27', 'painting works', '', ''),
(233, 38, 0, '33', 138, 'Mr.kulkarni', '', '8600775908@gmail.com', 'Maharashtra', '27', '', '', '', '', 'sun orion crest,kokane square,pimple saudagar.pune', '', 'nikita joshi', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '143000.00', '0.00', '143000.00', '143000.00', 'One Hundred and Forty-Three Thousand', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, 'SE/18/19/6', NULL, '2018-11-30', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-11-30 02:34:04', '2018-11-30 02:36:33', 0, '', '', '', '', ''),
(234, 35, 0, '17', 96, 'FOMO', '', 'chandrashekhar@futuringdesign.com', 'Maharashtra', '27', 'Chandrashehar Wyawahare', 'chandrashekhar@futuringdesign.com', 'Maharashtra', '27', 'FOMO\r\nA41. Suvarnayug, New DP Road, Aundh, Pune 411007', 'A-77, H-Block, Precision Industries Compound, MIDC, Pimpri, Pune 411018.', 'Chandrashehar Wyawahare', '27AABFF4547L1Z7', '1. 50% Advance & Remaining 50% before delivery.\r\n2. Transport included', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank Of India\r\nCurrent  Account â€“  32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch', '', '307500.00', '0.00', '307500.00', '362850.00', 'Three Hundred and Sixty-Two Thousand, Eight Hundred and Fifty', '0.00', '362850.00', '55350.00', 'Pending', 'Invoice', 1, 0, 0, '18-19/36', NULL, '2018-12-01', '2018-12-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-01 03:48:14', '2018-12-14 13:59:54', 0, 'PO/011/2018-19', '2018-10-30', 'HVLS Fan Installation', '', ''),
(235, 35, 0, '17', 139, 'Chitale Bandhu Mithaiwale', '', 'shashank.joshi@chitalegroup.in', 'Maharashtra', '27', 'Mr. Shashank Joshi', 'shashank.joshi@chitalegroup.in', 'Maharashtra', '27', 'GAT 107, Ranje Village, Shivapur Kondhanpur road, Pune 412206', 'GAT 107, Ranje Village, Shivapur Kondhanpur road, Pune 412206', 'Mr. Shashank Joshi', '27AAAFC5288N1ZZ', '1. Transport and Installation included', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank Of India\r\nCurrent Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch', '', '70000.00', '4900.00', '65100.00', '76818.00', 'Seventy-Six Thousand, Eight Hundred and Eighteen', '0.00', '76818.00', '11718.00', 'Pending', 'Invoice', 1, 0, 0, '18-19/37', NULL, '2018-12-03', '2018-12-03', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-03 12:14:34', '2018-12-03 12:25:46', 0, '', '', '', '', ''),
(236, 3, 0, '24', 140, 'Mr. Bhide', 'NA', '''bhide_atul@yahoo.com''', 'Maharashtra', '27', '9922419677', '''bhide_atul@yahoo.com''', 'Maharashtra', '27', 'Karve Road Pune', 'Karve Road Pune', '9922419677', 'NA', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '8455.00', '0.00', '8455.00', '9470.00', 'Nine Thousand, Four Hundred and Seventy', '0.00', '9470.00', '1014.60', 'Pending', 'Invoice', 1, 0, 0, 'AE181948', NULL, '2018-12-04', '2018-12-11', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-04 10:51:17', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '', '', '', ''),
(237, 35, 0, '17', 76, 'The Prime Power Solutions', '', 'sales@sgps.co.in', 'Maharashtra', '27', '', '', '', '', 'B wing Gat No- 162, Flat No-604, Amulyam Society, Dudulgaon, Moshi Pune - 412105', '', 'Hanumant Chachar', '27ANNPC4131A1ZL', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch\r\n    ', '', '237000.00', '0.00', '237000.00', '279660.00', 'Two Hundred and Seventy-Nine Thousand, Six Hundred and Sixty', '0.00', '279660.00', '42660.00', 'Pending', 'Invoice', 1, 0, 0, '18-19/38', NULL, '2018-12-04', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-05 12:13:22', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(238, 35, 0, '17', 141, 'M/S FINOLEX INDUSTRIES LIMITED', '', 'vss@finolexind.com', 'Maharashtra', '27', 'MR VINOD SURVE', 'vss@finolexind.com', 'Maharashtra', '27', 'GAT NO 399,VILLAGE URSE,TAL-MAVAL PUNE-410506', 'GAT NO 399,VILLAGE URSE,TAL-MAVAL PUNE-410506', 'MR VINOD SURVE', '27AAACF2634A1Z9', '', 'Shree Generators and Power Solutions\r\nCurrent Account No:- 32446057747\r\nBank:-State Bank of India\r\nBranch:-Kothrud\r\nIFSC Code:-SBIN0030456', '', '9780.00', '978.00', '8802.00', '11267.00', 'Eleven Thousand, Two Hundred and Sixty-Seven', '0.00', '11267.00', '2464.56', 'Pending', 'Invoice', 1, 0, 0, '18-19/39', NULL, '2018-12-07', '2018-12-07', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-07 02:57:33', '2018-12-07 06:29:27', 0, '1/3000/ZDOM/D62/4100002784', '', '', '', ''),
(239, 38, 0, '33', 114, 'Corpage India Advisors Pvt Ltd', '', '9970804956', 'Maharashtra', '27', '', '', '', '', 'muktai apts,shivtirthnagar,pune', '', 'mr.kulkarni', '', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', '', '20000.00', '0.00', '20000.00', '20000.00', 'Twenty Thousand', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, 'SE/18/19/7', NULL, '2018-12-07', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-07 07:50:06', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(240, 3, 0, '24', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog ', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'Yatin Jog ', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '3740.00', '0.00', '3740.00', '4189.00', 'Four Thousand, One Hundred and Eighty-Nine', '0.00', '4189.00', '448.80', 'Pending', 'Invoice', 1, 0, 0, 'AE181949', NULL, '2018-12-08', '2019-01-10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-07 11:25:52', '0000-00-00 00:00:00', 0, 'Verbal Confirmation', '2018-12-08', 'NA', '', ''),
(241, 3, 0, '24', 25, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', '', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'Yatin Jog 9545593625', 'yatin.jog@paradigmbuildsol.in', 'Maharashtra', '27', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'To, Paradium Building Solution Sr. No. 20/21, Plot No. 39/1,\r\nSampada Bunglow, Ground Floor, Patwardhan Baug,Erandwane, Pune - 411004. Phone : 02025434352', 'Yatin Jog 9545593625', '27AAFCP6444D1ZG', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', '', '26618.00', '0.00', '26618.00', '29845.00', 'Twenty-Nine Thousand, Eight Hundred and Forty-Five', '0.00', '29845.00', '3227.16', 'Pending', 'Invoice', 1, 0, 0, 'AE181950', NULL, '2018-12-09', '2019-01-10', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-09 09:38:19', '2018-12-09 09:40:05', 0, 'Verbal confirmation', '2018-12-06', 'Bhosari Project', '', ''),
(242, 1, 0, '2', 53, 'Rana', '764466', 'amit@e-bc.in', 'Maharashtra', '27', 'AMIT hvghfyj', 'amit@e-bc.in', 'Maharashtra', '27', 'punebcgfhfhj', 'punebcgfhfhj', 'AMIT hvghfyj', '4674646', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', '', '4000.00', '0.00', '4000.00', '4480.00', 'Four Thousand, Four Hundred and Eighty', '0.00', '0.00', '480.00', 'Pending', 'Estimate', 1, 0, 0, 'DM-4', NULL, '2018-12-10', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-10 07:18:58', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(243, 35, 0, '17', 142, 'Sathe Multi Speciality Hospital', '', 'swaraj.sathe@gmail.com', 'Maharashtra', '27', 'Dr. Swaraj Sathe', 'swaraj.sathe@gmail.com', 'Maharashtra', '27', '85/1 Shri Sanker Nagri, B Building, Ground Floor, Landmark: Next to Vanaz Company, Pune 411038', '85/1 Shri Sanker Nagri, B Building, Ground Floor, Landmark: Next to Vanaz Company, Pune 411038', 'Dr. Swaraj Sathe', '', '', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ State Bank Of India\r\nCurrent Account â€“ 32446057747\r\nIFSC Code â€“ SBIN0030456\r\nKothrud Branch', '', '111016.90', '0.00', '111016.90', '131000.00', 'One Hundred and Thirty-One Thousand', '0.00', '131000.00', '19983.04', 'Pending', 'Invoice', 1, 0, 0, '18-19/40', NULL, '2018-12-08', '2018-12-08', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-10 12:12:38', '2018-12-10 12:16:30', 0, '', '', '', '', ''),
(244, 3, 0, '24', 143, 'Vijay', 'AOKPH123', 'ak@gmail.com', 'Maharashtra', '27', '9075609580', 'ak@gmail.com', 'Maharashtra', '27', 'Wadgaon bk pune-41', 'Wadgaon bk pune-41', '9075609580', '1212', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', 'We provide good products at low price .we want to make good relationship with you for further order', '3100.00', '0.00', '3100.00', '3255.00', 'Three Thousand, Two Hundred and Fifty-Five', '0.00', '3255.00', '155.00', 'Pending', 'Invoice', 1, 0, 0, 'AE181951', NULL, '2018-12-12', '2019-01-15', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-12 08:34:07', '2018-12-12 09:31:51', 0, '130', '2018-12-12', 'Develop.1', '', ''),
(246, 35, 0, '17', 144, 'Ram.softTech', '', 'h.@gmail.com', 'Maharashtra', '27', '9075609580', 'h', 'Maharashtra', '27', 'Wadgaon bk pune -411010', 'Wadgaon bk pune -411010', '9075609580', '', '100% Advance before dispatch', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Branch\r\n    ', '', '0.00', '0.00', '0.00', '0.00', 'Zero', '622881.00', '-622881.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '18-19/42', NULL, '2018-12-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-12 11:30:02', '2018-12-26 06:57:19', 0, '', '', '', '', ''),
(247, 35, 0, '43', 0, 'Scos Mgmt ', '', 'a@gmail.com', 'Maharashtra', '27', '253245', 'a@gmail.com', 'Maharashtra', '27', 'rewefew', 'rewefew', 'akshay - 253245', '', '1.Replacement of product is not allowed after the product is buy.', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '5055084.50', '180000.00', '4875084.50', '5091085.00', 'Five Million and Ninety-One Thousand and Eighty-Five', '5091085.00', '0.00', '216000.00', 'Closed', 'Invoice', 1, 0, 0, '23523523523', NULL, '2018-11-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 12:14:08', '2018-12-26 07:38:40', 0, '', '', '', '9075609580', '9075609580'),
(248, 35, 0, '43', 145, 'Capegemini', '', 'a@gmail.com', 'Maharashtra', '27', '253245', 'a@gmail.com', 'Maharashtra', '27', 'rewefew', 'rewefew', '253245', '', '1.Replacement of product is not allowed after the product is buy.', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '0.00', '0.00', '0.00', '0.00', 'Zero', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '23523523524', NULL, '2018-11-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 12:14:09', '2018-12-26 06:56:02', 0, '', '', '', '', ''),
(249, 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 13:02:20', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(250, 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 13:03:07', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(251, 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 13:03:33', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(252, 0, 0, '', 146, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Estimate', 1, 0, 0, '', NULL, '1970-01-01', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 13:04:46', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(253, 0, 0, '', 146, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Challan', 1, 0, 0, '', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 13:06:34', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(254, 0, 0, '', 146, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 13:06:54', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(255, 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, '', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 13:07:34', '0000-00-00 00:00:00', 1, '', '', '', '', ''),
(256, 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, '', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 13:08:10', '0000-00-00 00:00:00', 1, '', '', '', '', ''),
(257, 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, '', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 13:08:12', '0000-00-00 00:00:00', 1, '', '', '', '', ''),
(258, 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, '', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 13:08:36', '0000-00-00 00:00:00', 1, '', '', '', '', ''),
(259, 0, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, '', NULL, '1970-01-01', '1970-01-01', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-15 13:09:00', '0000-00-00 00:00:00', 1, '', '', '', '', ''),
(260, 0, 0, '', 146, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '0.00', '0.00', '0.00', 'Pending', 'Recurring', 1, 0, 0, '', NULL, '1970-01-01', '1970-01-01', NULL, 0, 0, NULL, 0, '', '1970-01-01', '1970-01-01', NULL, '2018-12-15 13:13:08', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(261, 35, 0, '43', 143, 'Ak Soft Pvt Ltd', '', 'h@gmail.com', 'Maharashtra', '27', '6436346346', 'h@gmail.com', 'Maharashtra', '27', 'fghreagherth', 'fghreagherth', '6436346346', '', '1.Replacement of product is not allowed after the product is buy.', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '0.00', '0.00', '0.00', '0.00', 'Zero', '1656864.00', '-1656864.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '23523523525', NULL, '2018-12-12', '2019-12-11', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-17 06:34:04', '2018-12-26 06:55:36', 0, '', '', '', '', ''),
(264, 35, 0, '43', 0, 'Cognizent', '', 'd@gmail.com', 'Maharashtra', '27', '6464646464', 'd@gmail.com', 'Maharashtra', '27', 'Wadgaon bk', 'Wadgaon bk', '6464646464', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '0.00', '0.00', '0.00', '0.00', 'Zero', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '23523523526', NULL, '2018-12-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-17 07:28:38', '2018-12-26 06:55:02', 0, '', '', '', '', ''),
(265, 35, 0, '43', 148, 'Telecom.infotech Pvt Ltd', '', 'd@gmail.com', 'Maharashtra', '27', '6464646464', 'd@gmail.com', 'Maharashtra', '27', 'Wadgaon bk', 'Wadgaon bk', '6464646464', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '0.00', '0.00', '0.00', '0.00', 'Zero', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '23523523527', NULL, '2018-12-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-17 07:28:43', '2018-12-26 06:54:27', 0, '', '', '', '', ''),
(267, 35, 0, '43', 150, 'Data Service', '', 'b@gmail.com', 'Maharashtra', '27', '6546547457', 'b@gmail.com', 'Maharashtra', '27', 'fregfregh', 'fregfregh', '6546547457', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '0.00', '0.00', '0.00', '0.00', 'Zero', '0.00', '0.00', '0.00', 'Pending', 'Invoice', 1, 0, 0, '23523523529', NULL, '2018-12-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-17 07:36:21', '2018-12-26 06:53:50', 0, '', '', '', '', ''),
(268, 1, 0, '43', 149, 'Akshay', '', 'h@gmail.com', 'Maharashtra', '27', '465654776', 'h@gmail.com', 'Maharashtra', '27', 'hthteht', 'hthteht', '465654776', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '1483050.80', '741525.40', '741525.40', '778602.00', 'Seven Hundred and Seventy-Eight Thousand, Six Hundred and Two', '778602.00', '0.00', '37076.27', 'Pending', 'Invoice', 1, 0, 0, '23523523530', NULL, '2018-12-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-21 07:55:24', '2018-12-22 08:48:59', 0, '', '', '', '', ''),
(269, 35, 0, '43', 150, 'AK PVT LTD', '', 'a@gmail.com', 'Maharashtra', '27', 'Vijay', 'a@gmail.com', 'Maharashtra', '27', 'wadgaon', 'wadgaon', 'Vijay 453466456', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '1483050.80', '741525.40', '741525.40', '778602.00', 'Seven Hundred and Seventy-Eight Thousand, Six Hundred and Two', '590000.00', '188602.00', '37076.27', 'Pending', 'Invoice', 1, 0, 0, '23523523531', NULL, '2018-12-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-24 06:45:38', '2018-12-26 07:35:24', 0, '', '', '', '', ''),
(270, 35, 0, '43', 152, 'UK', '', 'U@gmail.com', 'Maharashtra', '27', 'umesh', 'U@gmail.com', 'Maharashtra', '27', 'wadgaon', 'wadgaon', 'umesh', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '1483050.80', '0.00', '1483050.80', '1557203.00', 'One Million, Five Hundred and Fifty-Seven Thousand, Two Hundred and Three', '1557203.00', '0.00', '74152.54', 'Closed', 'Invoice', 1, 0, 0, '23523523532', NULL, '2018-11-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-24 07:58:22', '2018-12-24 08:54:44', 0, '', '', '', '90755754411', '90755754411'),
(271, 35, 0, '43', 59, 'Finolex Industries Ltd', 'AAACF2634A', 'vss@finolexind.com', 'Maharashtra', '27', 'Mr Vinod Surve', 'vss@finolexind.com', 'Maharashtra', '27', 'GAT NO 399,VILLAGE-URSE,TAL-MAVAL,PUNE-410506', 'GAT NO 399,VILLAGE-URSE,TAL-MAVAL,PUNE-410506', 'Mr Vinod Surve 9099080', '27AAACF2634A1Z9', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '2000.00', '40.00', '1960.00', '2195.00', 'Two Thousand, One Hundred and Ninety-Five', '2195.00', '0.00', '235.20', 'Closed', 'Invoice', 1, 0, 0, '23523523533', NULL, '2018-12-01', '2018-12-07', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-24 13:12:14', '2018-12-26 06:50:28', 0, '', '', '', '', ''),
(272, 35, 0, '43', 155, 'Ak Properties', '', 'ak@gmail.com', 'Maharashtra', '27', 'akshay hanamghar', 'ak@gmail.com', 'Maharashtra', '27', 'Wadgaon pune', 'Wadgaon pune', 'akshay hanamghar', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '572665.50', '0.00', '572665.50', '637868.00', 'Six Hundred and Thirty-Seven Thousand, Eight Hundred and Sixty-Eight', '581068.00', '56800.00', '65202.36', 'Pending', 'Invoice', 1, 0, 0, '23523523535', NULL, '2018-12-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-27 06:03:41', '2018-12-27 06:06:39', 0, '', '', '', '', ''),
(273, 35, 0, '43', 155, 'Ak Properties', '', 'ak@gmail.com', 'Maharashtra', '27', 'akshay hanamghar', 'ak@gmail.com', 'Maharashtra', '27', 'Wadgaon pune', 'Wadgaon pune', 'akshay hanamghar', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '50000.00', '0.00', '50000.00', '52500.00', 'Fifty-Two Thousand, Five Hundred', '0.00', '52500.00', '2500.00', 'Pending', 'Invoice', 1, 0, 0, '23523523536', NULL, '2018-12-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-27 06:16:26', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(274, 35, 0, '43', 155, 'Ak Properties', '', 'ak@gmail.com', 'Maharashtra', '27', 'akshay hanamghar', 'ak@gmail.com', 'Maharashtra', '27', 'Wadgaon pune', 'Wadgaon pune', 'akshay hanamghar', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '484915.50', '0.00', '484915.50', '540305.00', 'Five Hundred and Forty Thousand, Three Hundred and Five', '0.00', '540305.00', '55389.86', 'Pending', 'Invoice', 1, 0, 0, '23523523537', NULL, '2018-12-12', '2019-12-12', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-27 07:27:40', '2018-12-27 10:49:37', 0, '', '', '', '', ''),
(275, 60, 0, '46', 155, 'AK Properties', '786786757', 'h@gmail.com', 'Maharashtra', '27', 'akshay 9075609580', 'h@gmail.com', 'Maharashtra', '27', 'pune', 'pune', 'akshay 9075609580', '32423543', 'ghjhgghhhhhhhhhh\r\nghjhjhjghghg\r\nffg\r\nhfghffjfgffh', 'gdfgdfgdg\r\ndfg\r\ndyhf\r\ngghhgjgh', '', '100.00', '0.00', '100.00', '105.00', 'One Hundred and Five', '0.00', '0.00', '5.00', 'Pending', 'Estimate', 1, 0, 0, 'ser/1', NULL, '2018-12-29', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-29 10:05:25', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(276, 60, 0, '46', 155, 'AK Properties', '786786757', 'h@gmail.com', 'Maharashtra', '27', 'akshay 9075609580', 'h@gmail.com', 'Maharashtra', '27', 'pune', 'pune', 'akshay 9075609580', '32423543', 'ghjhgghhhhhhhhhh\r\nghjhjhjghghg\r\nffg\r\nhfghffjfgffh', 'gdfgdfgdg\r\ndfg\r\ndyhf\r\ngghhgjgh', '', '100.00', '0.00', '100.00', '105.00', 'One Hundred and Five', '0.00', '105.00', '5.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'ser/1', NULL, '2018-12-29', '2018-12-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-29 10:06:11', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(277, 60, 0, '46', 155, 'AK Properties', '786786757', 'h@gmail.com', 'Maharashtra', '27', 'akshay 9075609580', 'h@gmail.com', 'Maharashtra', '27', 'pune', 'pune', 'akshay 9075609580', '32423543', 'ghjhgghhhhhhhhhh\r\nghjhjhjghghg\r\nffg\r\nhfghffjfgffh', 'gdfgdfgdg\r\ndfg\r\ndyhf\r\ngghhgjgh', '', '100.00', '0.00', '100.00', '105.00', 'One Hundred and Five', '105.00', '0.00', '5.00', 'Closed', 'Invoice', 1, 0, 0, 'ser/1', NULL, '2018-12-29', '2018-12-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-29 10:06:50', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(278, 60, 0, '46', 157, 'AK Properties2', '4354354', 'v@gmail.com', 'Maharashtra', '27', 'vivek', 'v@gmail.com', 'Maharashtra', '27', 'pune', 'pune', 'vivek', '3242345', 'ghjhgghhhhhhhhhh\r\nghjhjhjghghg\r\nffg\r\nhfghffjfgffh', 'gdfgdfgdg\r\ndfg\r\ndyhf\r\ngghhgjgh', '', '1000.00', '0.00', '1000.00', '1050.00', 'One Thousand and Fifty', '0.00', '0.00', '50.00', 'Pending', 'Estimate', 1, 0, 0, 'ser/2', NULL, '2018-12-29', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-29 10:39:34', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(279, 60, 0, '46', 157, 'AK Properties2', '4354354', 'v@gmail.com', 'Maharashtra', '27', 'vivek', 'v@gmail.com', 'Maharashtra', '27', 'pune', 'pune', 'vivek', '3242345', 'ghjhgghhhhhhhhhh\r\nghjhjhjghghg\r\nffg\r\nhfghffjfgffh', 'gdfgdfgdg\r\ndfg\r\ndyhf\r\ngghhgjgh', '', '1000.00', '0.00', '1000.00', '1050.00', 'One Thousand and Fifty', '0.00', '1050.00', '50.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, 'ser/2', NULL, '2018-12-29', '2018-12-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-29 10:39:48', '2018-12-29 10:40:16', 0, '', '', '', '', ''),
(280, 60, 0, '46', 157, 'AK Properties2', '4354354', 'v@gmail.com', 'Maharashtra', '27', 'vivek', 'v@gmail.com', 'Maharashtra', '27', 'pune', 'pune', 'vivek', '3242345', 'ghjhgghhhhhhhhhh\r\nghjhjhjghghg\r\nffg\r\nhfghffjfgffh', 'gdfgdfgdg\r\ndfg\r\ndyhf\r\ngghhgjgh', '', '1000.00', '0.00', '1000.00', '1050.00', 'One Thousand and Fifty', '100.00', '950.00', '50.00', 'Pending', 'Invoice', 1, 0, 0, 'ser/2', NULL, '2018-12-29', '2018-12-31', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2018-12-29 10:40:28', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(281, 35, 0, '43', 159, 'Ebc', '', 'a@ebc.com', 'Maharashtra', '27', 'xyz', 'a@ebc.com', 'Maharashtra', '27', 'dhayari', 'dhayari', 'xyz', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '50000.00', '0.00', '50000.00', '52500.00', 'Fifty-Two Thousand, Five Hundred', '0.00', '0.00', '2500.00', 'Pending', 'Estimate', 1, 0, 0, '23523523523', NULL, '2019-01-04', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-04 12:31:36', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(282, 35, 0, '43', 159, 'Ebc', '', 'a@ebc.com', 'Maharashtra', '27', 'xyz', 'a@ebc.com', 'Maharashtra', '27', 'dhayari', 'dhayari', 'xyz', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '50000.00', '0.00', '50000.00', '52500.00', 'Fifty-Two Thousand, Five Hundred', '0.00', '52500.00', '2500.00', 'Pending', 'Profarma-Invoice', 1, 0, 0, '2352353523', NULL, '2019-01-04', '2019-01-09', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-04 12:33:44', '0000-00-00 00:00:00', 0, '', '', '', '', ''),
(283, 35, 0, '43', 159, 'Ebc', '', 'a@ebc.com', 'Maharashtra', '27', 'xyz', 'a@ebc.com', 'Maharashtra', '27', 'dhayari', 'dhayari', 'xyz', '', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. ', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', '', '50000.00', '0.00', '50000.00', '52500.00', 'Fifty-Two Thousand, Five Hundred', '30000.00', '22500.00', '2500.00', 'Pending', 'Invoice', 1, 0, 0, '23523523538', NULL, '2019-01-04', '2019-01-09', NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-04 12:34:13', '0000-00-00 00:00:00', 0, '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE IF NOT EXISTS `company` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_phone` varchar(255) NOT NULL,
  `gst_no` varchar(255) NOT NULL,
  `pan_no` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `state_code` int(11) NOT NULL,
  `company_url` varchar(100) NOT NULL,
  `company_address` varchar(500) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `terms` text NOT NULL,
  `bank_details` text NOT NULL,
  `cutomers` enum('No','Yes') NOT NULL DEFAULT 'Yes',
  `estimates` enum('No','Yes') NOT NULL DEFAULT 'Yes',
  `course` enum('No','Yes') NOT NULL DEFAULT 'Yes',
  `voucher` enum('No','Yes') NOT NULL DEFAULT 'Yes',
  `get_purchase` enum('No','Yes') NOT NULL DEFAULT 'Yes',
  `print_temp` varchar(50) NOT NULL DEFAULT 'temp2',
  `sales` enum('No','Yes') NOT NULL,
  `pinvoice` enum('No','Yes') NOT NULL,
  `invoice` enum('No','Yes') NOT NULL,
  `report` enum('No','Yes') NOT NULL,
  `director` enum('No','Yes') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `user_id`, `company_name`, `company_email`, `company_phone`, `gst_no`, `pan_no`, `state`, `state_code`, `company_url`, `company_address`, `logo`, `terms`, `bank_details`, `cutomers`, `estimates`, `course`, `voucher`, `get_purchase`, `print_temp`, `sales`, `pinvoice`, `invoice`, `report`, `director`) VALUES
(2, 1, 'EBC Solutions Pvt. Ltd.', 'admin@e-bc.in', '9632587410', '27CHJPS3320M1ZY', '', 'Maharashtra', 27, 'www.e-bc.in', 'Flat No.3, Vishnu Complex,1st Floor, Sinhagad Road, Pune', 'img/e-bc_logo.png', '1. Please pay your invoice within seven daysÂ \r\n2. Cheque and DDâ€™s to be drawn on â€˜E Business Canvasâ€™Â \r\n3. Subject to Pune Jurisdiction\r\n\r\n\r\nThank you for your business', 'E Business Canvas\r\nBranch Name : Anand Nagar,Sinhgad Road\r\nA/C No.:0641102000016737\r\nBank.: IDBI Bank\r\nIFSC code:IBKL0000641', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(8, 14, 'Rana', 'amit@e-bc.in', '8087587553', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(9, 15, 'Eco-Clean Hygiene Services', 'nandakumar.gokhale@gmail.com', '08550990095', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(10, 16, 'EBC pvt', 'swapnil.jagtap07@gmail.com', '8087600784', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(14, 20, 'MNPL', 'phatakms77@yahoo.com', '9819759758', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(15, 21, 'MI', 'manavinstruments@gmail.com', '9819759758', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(20, 26, 'Ams systems & solutions', 'info@shreeav.com', '9823049462', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(21, 11, 'K & K company', 'krutika.joshi2013@gmail.com', '8928503829', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(22, 6, 'Eydentity Brand Solutions', 'deepak@eydentitybs.com', '9167213142', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(23, 3, 'Aaradhya  Enterprises', 'anand@aaradhyaenterprises.in', '9552777928', '27AIEPC2511J1ZP', 'AIEPC2511J', 'Maharashtra', 27, 'www.aaradhyaenterprises.in', 'A Wing - Radhika Apartment, Sarita Nagari Phase 2, Sinhagad Road, Pune- 411030', 'img/logo1.png', '1. Goods once sold will not be taken back.\r\n2. No warranty for burnt or physically damaged or seal broken\r\n3. INR 500/- will be charged for bounced chequeâ€™s.\r\n4. Our responsibility ends as soon goods leave our premises\r\n5. INTEREST 3% PER MONTH IN CASE OF DELAY\r\n6. Transportation Extra & at Actual', 'Company Name : Aaradhya Enterprises\r\nIDBI Bank Account No : 0460102000007795\r\nBranch : LBS Road, Navipeth, Lokmanya Nagar, Pune\r\nIFSC Code : IBKL0000460  Account Type : Current', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(24, 27, 'taj services', 'tejasjosh01@gmail.com', '09011309309', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(25, 28, 'Shree Enterprises', 'kanchan.deo75@gmail.com', '07030708328', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(26, 29, 'Shubhra Enterprises', 'shubhra1716@gmail.com', '9552189552', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(27, 30, 'Shrudha Varities', 'sachinbelurgikar@gmail.com', '9422176907', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(28, 31, 'credence business services', 'anirudha235@gmail.com', '9405456172', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(29, 32, 'Green Pumps & Equipments Pvt. Ltd.', 'prasad@greenpumps.co.in', '9422776152', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(30, 33, 'Shree Generators & Power Solutions', 'vaj@sgps.co.in', '9922222362', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(31, 34, '', '', '', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(32, 35, 'Agro Farm Tech', 'sales@sgps.co.in', '8888888888', '27ACEFS1967Q1ZB', 'ACEFS1967Q', 'Maharashtra', 27, 'www.sgps.co.in', 'WADGAON BK PUNE-411041', 'img/Desert.jpg', '1.Replacement of product is not allowed after the product is buy.\r\n2.Do not buy product before you check. \r\n3', 'Account Name â€“ Shree Generators & Power Solutions\r\nBank Name â€“ Karad Urban Bank\r\nCC  Account â€“  1003103000202 \r\nIFSC Code â€“ KUCB0488003 \r\nSatara City Bank', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp1', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes'),
(33, 36, 'xyz', 'cs@e-bc.in', '8087587553', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(34, 36, 'Axiom Supercon Pvt Ltd', 'niranjan.vmulay@gmail.com', '07720004341', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(35, 37, 'NETWORLD ENTERPRISES', 'networld972@gmail.com', '9921811763', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(36, 38, 'Shree Enterprises', 'shreeenterprises0606@gmail.com', '9373417289 / 7030708328', '', 'ABLPD6034D', 'Maharashtra', 27, 'not available', 'Lane No 5, Parijat Colony, Karvenagar, Pune 411052', 'img/shree.jpg', '', 'Bank Name : Saraswat Bank\r\nAccount No : 091100102705234\r\nAccount Type : Current\r\nIFSC Code : SRCB0000091\r\nBranch Name : Ganesh Nagar', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(37, 39, 'Rashmi', 'tushardeo@gmail.com', '07030708328', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(38, 40, 'Abc', 'rashmisonawane8@gmail.com', '8482859255', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(39, 41, 'Sante Remedies', 'kbinojnair@gmail.com', '9930585292', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(40, 42, 'ebc solutions pvt.ltd', 'tanujadhage30@gmail.com', '8381044814', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(41, 43, 'Priya K', 'priyakhardakar123@gmail.com', '7350411144', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(42, 44, 'XYZ', 'nkchtk@gmail.com', '9819759758', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp1', 'No', 'No', 'No', 'No', 'No'),
(43, 45, 'KK Trading Corporation', 'kktc@rediffmail.com', '9049987672', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(44, 5, 'amit', 'phatak@gmail.com', '78368768713', '4353463', '34534', 'Maharashtra', 27, 'www.phatak', 'pune', 'img/decision_logo1.png', 'ws', 'pp', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(45, 46, 'ebc', 'poojakhambe1996@gmail.com', '8380932112', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(46, 47, 'MAPBrainnovations', 'getbrainnovations@gmail.com', '9764000262', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(47, 48, 'Omnes Law Private Limited', 'gurbans.chatwal@omneslaw.com', '09822502818', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(48, 49, 'Rohini Cable Network', 'rohinicablenetwork18@gmail.com', '9359259624', '27ARKPP7746D1ZE', 'ARKPP7746D', 'MAHARASHTRA', 27, '', 'S 2953 / 102 / 16, Vaiduwadi, Nr Chaturshingi Mandir, Pune, Maharashtra, 411016', 'img/logo2.png', 'Note:\r\n1) All cheque should be in favoour of Rohini Cable Network.\r\n2) Outstation cheques will not be accepted.\r\n3) Contents of this invoice with outstanding amount due shall be considered as \r\n    correct, if no  descipency is reported within 7 days of the reciept of invoice.\r\n4) All disputes are subject to PUNE Jurisdiction.', 'AXIS BANK Ltd.\r\nA/C No.-  912010055542116\r\nIFSC -     UTIB0000037', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp1', 'No', 'No', 'No', 'No', 'No'),
(49, 50, 'LOTUSKRAFTS', 'lotuskrafts@gmail.com', '9920589741', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(50, 51, 'Microcodex', 'microcodex@gmail.com', '9158129585', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(51, 52, 'EBC Testing ', 'shyam@e-bc.in', '9623511059', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(52, 53, 'Narendra Keskar & co', 'canarendrakeskar@gmail.com', '8087611949', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(53, 54, 'Vouchers code', 'info@getrestra.com', '8600832338', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(54, 55, 'Ebc Solutions Pvt Ltd', 'anaghak1008@gmail.com', '7719084688', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(55, 56, 'indyafest', 'neelimashahane@gmail.com', '8308404455', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(56, 57, 'Ambika enterprises', 'kyogi027@gmail.com', '9011851999', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(57, 58, 'ak', 'ytjZ@gmail.com', '9075609580', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(58, 0, '', '', '', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', '', 'No', 'No', 'No', 'No', 'No'),
(59, 0, '', '', '', '', '', '', 0, '', '', '', '', '', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No'),
(60, 60, 'Rana Industries', 'amit@e-bc.in', '8087587553', '321465', '46545465465', 'Maharashtra', 27, '', 'pune', 'img/Penguins.jpg', 'ghjhgghhhhhhhhhh\r\nghjhjhjghghg\r\nffg\r\nhfghffjfgffh', 'gdfgdfgdg\r\ndfg\r\ndyhf\r\ngghhgjgh', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'temp2', 'No', 'No', 'No', 'No', 'No');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sub_user_id` int(11) NOT NULL,
  `course` varchar(100) NOT NULL,
  `ccode` varchar(255) NOT NULL,
  `description` longtext,
  `base_price` decimal(53,2) NOT NULL,
  `units` int(11) DEFAULT NULL,
  `sold` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `session` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `user_id`, `sub_user_id`, `course`, `ccode`, `description`, `base_price`, `units`, `sold`, `created_at`, `updated_at`, `session`, `department`) VALUES
(1, 1, 0, 'Domain ', '578411', 'Hosting and maintainance', '2000.00', NULL, 4, '2018-03-14 07:05:37', '2018-12-10 07:18:48', '2018-12-0001739-STO', ''),
(2, 1, 0, 'Printing', '8974511', 'I-Cards', '15.00', NULL, 273, '2018-03-14 11:55:46', '2018-06-29 11:49:21', '2018-06-0001457-STO', ''),
(3, 2, 3, 'Software', '879411', 'CRM and Invoice', '2999.00', NULL, 1, '2018-03-14 10:18:57', '2018-03-14 10:45:49', '2018-03-0001092-STO', ''),
(5, 16, 0, 'service', '', 'net service', '2500.00', NULL, NULL, '2018-03-20 10:30:14', '0000-00-00 00:00:00', '', ''),
(6, 15, 0, 'House cleaning services', '', '998533', '4.00', NULL, 0, '2018-03-20 10:31:34', '0000-00-00 00:00:00', '2018-03-0001120-STO', ''),
(7, 0, 0, '', '', '', '0.00', NULL, 0, '2018-03-20 10:32:33', '2018-04-20 14:36:16', '', ''),
(8, 15, 0, 'Housekeeping Services', '998533', 'House cleaning services', '4.00', NULL, 1000, '2018-03-20 10:37:37', '0000-00-00 00:00:00', '2018-03-0001120-STO', ''),
(9, 17, 0, 'kashmiri mitha', 'd44r5', 'soap', '1.00', NULL, NULL, '2018-03-20 11:59:29', '2018-03-21 06:31:53', '', ''),
(10, 18, 0, 'soap', '0567', 'y', '50.00', NULL, NULL, '2018-03-20 12:01:19', '0000-00-00 00:00:00', '', ''),
(11, 17, 0, 'hero honda', 'hbsjx', 'bike', '70000.00', NULL, NULL, '2018-03-21 05:31:25', '0000-00-00 00:00:00', '', ''),
(12, 17, 0, 'mb', 'fgf', 'sony', '45000.00', NULL, 2, '2018-03-21 06:21:08', '2018-03-21 06:36:37', '2018-03-0001141-STO', ''),
(13, 17, 0, 'mo', 'llk11', 'lenovo', '13000.00', NULL, 1, '2018-03-21 06:26:30', '0000-00-00 00:00:00', '2018-03-0001138-STO', ''),
(14, 17, 0, 'gdf', '', '', '0.00', NULL, NULL, '2018-03-21 09:37:06', '0000-00-00 00:00:00', '', ''),
(15, 17, 0, '', '', '', '0.00', NULL, NULL, '2018-03-21 09:37:18', '0000-00-00 00:00:00', '', ''),
(16, 17, 0, 'iphone', '6', 'apple', '78000.00', NULL, 1, '2018-03-21 12:23:22', '0000-00-00 00:00:00', '2018-03-0001141-STO', ''),
(17, 17, 0, '', '', '', '0.00', NULL, NULL, '2018-03-21 12:48:32', '0000-00-00 00:00:00', '', ''),
(18, 17, 0, '', '', '', '0.00', NULL, NULL, '2018-03-22 05:19:10', '0000-00-00 00:00:00', '', ''),
(19, 11, 0, 'XYZ', '', '', '0.00', NULL, 12, '2018-03-26 09:43:04', '2018-03-26 09:43:17', '2018-03-0001152-STO', ''),
(20, 27, 0, 'logo designing ', '', 'brand development ', '1.00', NULL, NULL, '2018-03-27 06:46:04', '2018-03-27 06:47:05', '2018-03-0001154-STO', ''),
(21, 32, 0, 'GSW 3T', '84137096', 'Submersible Sewage Pump 3 HP THree Phase ', '5000.00', NULL, 1, '2018-03-30 09:28:16', '2018-03-30 10:25:13', '2018-03-0001180-STO', ''),
(22, 32, 0, 'KDS 128', '84137010', 'Kirloskar Make Monobloc Pump 1 hp THree Phase ', '2000.00', NULL, 1, '2018-03-30 10:07:03', '2018-03-30 10:26:03', '2018-03-0001180-STO', ''),
(23, 32, 0, 'kds225', '84137010', 'pump', '45000.00', NULL, NULL, '2018-03-30 10:10:41', '0000-00-00 00:00:00', '', ''),
(24, 32, 0, 'KDS 335', '84137010', 'Kirloskar Make Monobloc Pump', '4780.00', NULL, 1, '2018-03-30 10:27:19', '0000-00-00 00:00:00', '2018-03-0001183-STO', ''),
(25, 32, 0, 'GSW 5T', '84137096', 'Submersible Sewage Pump 5 HP Three Phase', '7680.00', NULL, 1, '2018-03-30 10:28:39', '0000-00-00 00:00:00', '2018-03-0001183-STO', ''),
(26, 33, 0, 'HVLS Fans', '', '24 feet', '260000.00', NULL, NULL, '2018-04-06 04:53:38', '2018-04-06 05:25:43', '2018-04-0001197-STO', ''),
(27, 33, 0, '24 ft Patented Profile HVLS Fan', '', 'Size	24 feet (7.32 meter) Model	F24 Blade MOC	Magnelium Alloy with PVC Profile Motor Make	Tsubaki Japan VFD Make	Lenze/Yaskawa Maximum Speed	57 RPM Motor Power	1.4 kW Current	6.3 amps Airflow	187 m3/s (3,97,701 ft3/min) Coverage Area	2322 m2 (25000 ft2) Coverage Radius	50 m (164 ft) Weight	158 kg Sound 	65 dBA', '260000.00', NULL, 1, '2018-04-06 05:19:11', '2018-04-06 06:49:13', '2018-04-0001193-STO', ''),
(32, 3, 0, '12W Slim / Down Light ', '94054090', 'Sqaure - 6000K', '330.00', NULL, 145, '2018-04-23 09:00:41', '2018-10-09 16:49:12', '2018-10-0001619-STO', ''),
(41, 3, 0, 'Transportation ', '', 'One way Trip', '550.00', NULL, 5, '2018-05-01 16:17:33', '2018-12-09 09:38:07', '2018-12-0001737-STO', ''),
(45, 3, 0, '36 WATT LED SKY STREET LIGHT', '94054090', 'Street Light - 6000K', '1550.00', NULL, 6, '2018-05-03 09:31:47', '2018-12-12 09:31:23', '', ''),
(46, 3, 0, '8W Surface Light', '94054090', 'Surface light -6000K', '270.00', NULL, 4, '2018-05-03 09:32:56', '2018-05-05 09:10:53', '2018-05-0001282-STO', ''),
(47, 3, 0, '18 W LED Driver', '8504', 'Driver for COB', '650.00', NULL, 8, '2018-05-03 10:24:13', '2018-12-12 08:35:10', '2018-12-0001752-STO', ''),
(48, 3, 0, '36 W 2*2 Slim Panel ', '94054090', '6000K - White', '1650.00', NULL, 56, '2018-05-05 07:44:28', '2018-12-07 11:24:24', '2018-12-0001735-STO', ''),
(49, 3, 0, 'LED STRIP', '94054090', '5 Meter LED strip', '85.00', NULL, 150, '2018-05-05 07:45:59', '2018-10-24 10:32:40', '2018-10-0001657-STO', ''),
(50, 3, 0, '2A LED Driver ', '9405', '2A ', '250.00', NULL, 22, '2018-05-05 07:46:47', '2018-12-12 08:31:12', '2018-12-0001752-STO', ''),
(51, 3, 0, 'LED Driver ', '9405', '3A ', '350.00', NULL, NULL, '2018-05-05 08:04:01', '2018-09-18 10:37:50', '2018-05-0001279-STO', ''),
(52, 3, 0, '15W Solar Light with all assembly', '', '15 W Solar LED Light, 75am Battery -Excide , Battery box,85W Panel, 17feet pole, Cable', '19750.00', NULL, NULL, '2018-05-07 04:25:58', '2018-05-12 12:41:01', '2018-05-0001287-STO', ''),
(53, 3, 0, 'Installation ', '', 'Labour cost, Electrical wiring', '2500.00', NULL, NULL, '2018-05-07 04:27:23', '2018-05-09 07:25:29', '2018-05-0001287-STO', ''),
(54, 1, 0, 'godaady', '01', 'abc', '20001.00', NULL, NULL, '2018-05-07 09:58:37', '0000-00-00 00:00:00', '2018-05-0001292-STO', ''),
(55, 1, 0, 'webgator', '0132', 'abc', '2023.00', NULL, 52, '2018-05-07 09:59:13', '2018-05-26 06:03:53', '2018-05-0001315-STO313994', ''),
(56, 3, 0, '3W Surface LED Light ', '9405', 'Round - 3000K WW', '180.00', NULL, 120, '2018-05-09 09:08:39', '2018-11-14 09:36:09', '2018-11-0001685-STO', ''),
(57, 3, 0, 'Electrical Installation ', '995461', 'services including Electrical wiring & fitting services', '3500.00', NULL, 1, '2018-05-11 08:20:20', '0000-00-00 00:00:00', '2018-05-0001300-STO', ''),
(62, 3, 0, '3A LED Driver ', '8504', '3A ', '350.00', NULL, 1, '2018-05-18 11:15:52', '2018-05-26 14:37:38', '2018-05-0001335-STO', ''),
(64, 3, 0, '60 W flood Light ', '94054090', 'Marvel Plus -White', '2350.00', NULL, 3, '2018-05-23 12:49:38', '2018-08-18 09:05:33', '2018-08-0001522-STO', ''),
(65, 3, 0, '100W Flood Light ', '94054090', 'Marvel Plus -White', '3025.00', NULL, 1, '2018-05-23 12:50:32', '2018-06-05 09:29:58', '2018-06-0001384-STO', ''),
(66, 3, 0, '150W Flood Light ', '94054090', 'Marvel Plus -White', '1.00', NULL, NULL, '2018-05-23 12:53:04', '2018-09-18 10:37:33', '2018-05-0001324-STO', ''),
(67, 3, 0, 'Supply & Installation of 3 phase meter box', '995461', 'Meter box, cable, termination, 4 Pole MCB, On off Switch, Change Over, Indication lamp, Panel wiring, Earthing connection work & installation test report', '34500.00', NULL, 6, '2018-05-25 06:23:36', '2018-05-30 12:33:17', '2018-05-0001330-STO', ''),
(68, 3, 0, 'ELCB ', '85362040', '63 A 100 mA Sencitivity', '3850.00', NULL, 6, '2018-05-25 06:26:05', '2018-05-30 12:33:50', '2018-05-0001330-STO', ''),
(71, 3, 0, 'Traspotation', '', '', '2000.00', NULL, 0, '2018-05-25 11:34:59', '0000-00-00 00:00:00', '2018-05-0001330-STO', ''),
(72, 36, 0, 'House renovation', '', 'House painting Luster paint', '26.00', NULL, 2250, '2018-05-28 11:54:01', '2018-05-28 14:20:24', '2018-05-0001350-STO', ''),
(73, 36, 0, 'House renovation', '', 'House painting Oil Bond', '18.00', NULL, NULL, '2018-05-28 11:55:31', '0000-00-00 00:00:00', '', ''),
(74, 36, 0, 'Maintenance- Tiles', '', 'flooring renovation', '130.00', NULL, 450, '2018-05-29 02:11:32', '2018-05-29 02:17:53', '2018-05-0001354-STO', ''),
(75, 36, 0, 'maintenance - flush system', '', 'Maintenance of  toilet', '12000.00', NULL, NULL, '2018-05-29 02:13:16', '0000-00-00 00:00:00', '', ''),
(76, 36, 0, 'leakage', '', 'terrece leakage', '120.00', NULL, NULL, '2018-05-29 02:13:58', '0000-00-00 00:00:00', '', ''),
(77, 36, 0, 'House renovation', '', 'house painting distamper', '12.00', NULL, NULL, '2018-05-29 02:14:04', '2018-05-29 02:15:33', '', ''),
(78, 3, 0, 'Transpotation', '', '', '2000.00', NULL, 1, '2018-05-30 12:34:32', '0000-00-00 00:00:00', '2018-05-0001330-STO', ''),
(80, 37, 0, 'ORCHID PACKET', '', '', '25.00', NULL, 24, '2018-06-03 08:38:02', '2018-06-04 07:01:29', '', ''),
(81, 37, 0, 'SCHOCH WISKY PACKET', '', '', '25.00', NULL, 10, '2018-06-03 08:38:45', '2018-06-07 13:59:59', '2018-06-0001382-STO', ''),
(82, 37, 0, 'JASMIN PACKET', '', '', '25.00', NULL, 0, '2018-06-03 08:39:16', '2018-06-04 06:45:28', '2018-06-0001378-STO', ''),
(83, 37, 0, 'STRAWBERRY PACKET', '', '', '25.00', NULL, 24, '2018-06-03 08:39:51', '2018-06-04 07:15:02', '2018-06-0001380-STO', ''),
(84, 37, 0, 'ORCHID BOX', '', '', '60.00', NULL, 0, '2018-06-03 08:43:11', '2018-06-04 06:44:30', '2018-06-0001378-STO', ''),
(85, 37, 0, 'SCHOCH WISKY BOX	', '', '', '60.00', NULL, 11, '2018-06-03 08:43:29', '2018-06-04 06:37:49', '2018-06-0001376-STO', ''),
(86, 37, 0, 'JASMIN BOX', '', '', '60.00', NULL, 0, '2018-06-03 08:43:46', '2018-06-03 12:42:07', '2018-06-0001369-STO', ''),
(87, 37, 0, 'STRAWBERRY BOX', '', '', '60.00', NULL, 50, '2018-06-03 08:44:14', '2018-06-04 07:33:48', '2018-06-0001382-STO', ''),
(88, 1, 0, 'ID Card', '97547', '200 GSM', '20.00', NULL, 1000, '2018-06-11 11:19:43', '2018-12-17 07:17:18', '2018-12-0006-STO', ''),
(89, 38, 0, 'Fabrication Work', '', 'kitchen stand', '13500.00', NULL, 153, '2018-06-12 11:55:25', '2019-01-05 11:28:19', '2018-11-0001709-STO', ''),
(92, 38, 0, 'aluminium works', '', 'panel door ', '210.00', NULL, 78, '2018-06-13 11:07:43', '2018-10-12 12:07:06', '2018-10-0001636-STO', ''),
(93, 38, 0, 'furniture works', '', 'table,,frame,counter', '17500.00', NULL, 0, '2018-06-14 05:05:33', '2018-11-26 07:36:58', '2018-11-0001709-STO', ''),
(94, 38, 0, 'painting works', '', 'oilpaint', '14.00', NULL, 8149, '2018-06-14 05:07:25', '2018-11-28 09:05:11', '2018-11-0001715-STO', ''),
(95, 38, 0, 'plumbing works', '', 'waterpump,tank,repairs', '6500.00', NULL, 3, '2018-06-14 05:12:13', '2018-11-26 16:39:33', '2018-11-0001709-STO', ''),
(96, 38, 0, 'civil works', '', 'kadappa,misc', '6500.00', NULL, 3, '2018-06-14 05:16:07', '2018-11-26 07:35:10', '2018-11-0001709-STO', ''),
(97, 3, 0, '24 W STREET LIGHT ', '9405', 'White Street Light', '850.00', NULL, 26, '2018-06-14 13:10:11', '2018-11-19 06:41:04', '2018-11-0001692-STO', ''),
(98, 3, 0, '15 W Slim / Down Light ', '94054090', 'Round Panel - 6000K ', '420.00', NULL, 20, '2018-06-14 14:04:35', '2018-09-27 06:50:36', '2018-09-0001579-STO', ''),
(101, 42, 0, 'prnting,cloth', '', '', '50.00', NULL, 20, '2018-06-26 06:51:44', '2018-06-26 07:18:15', '2018-06-0001440-STO', ''),
(102, 42, 0, 'Cloth', '65211', 'pr', '60.00', NULL, NULL, '2018-06-26 07:19:34', '2018-06-26 08:20:57', '2018-06-0001443-STO', ''),
(103, 42, 0, 'Printing', '12365', 'cloth', '50.00', NULL, NULL, '2018-06-26 07:47:21', '0000-00-00 00:00:00', '', ''),
(104, 42, 0, 'Printing', '12355', 'cloth', '100.00', NULL, NULL, '2018-06-26 08:05:14', '0000-00-00 00:00:00', '', ''),
(105, 3, 0, 'Fabrication of Shade ', '7301', 'Area  Approx- 330 sq meter', '125.00', NULL, NULL, '2018-06-28 04:43:00', '2018-07-02 11:35:46', '2018-06-0001440-STO', ''),
(106, 3, 0, 'Software Development & Services', '998314', 'PLC programming site visit at inodore', '5350.00', NULL, 3, '2018-06-29 10:54:48', '2018-08-19 11:46:26', '2018-08-0001524-STO', ''),
(107, 3, 0, '18W LED Tube light ', '9405', '6000K T5 LED Tube light ', '250.00', NULL, 313, '2018-06-29 11:13:11', '2018-12-04 10:47:33', '2018-12-0001726-STO', ''),
(108, 3, 0, 'Light installation & Rewiring ', '995461', 'Rewiring Work', '3900.00', NULL, 2, '2018-06-29 11:25:00', '2018-06-29 11:31:10', '', ''),
(109, 44, 0, 'Coupler 16MM', '3456', 'Rebar Coupler 16MM', '40.00', NULL, 300, '2018-07-02 18:45:12', '2018-07-06 20:02:44', '2018-07-0001462-STO', ''),
(110, 44, 0, 'Coupler 20MM', '3456', 'Rebar Couplers 20MM', '75.00', NULL, 400, '2018-07-02 18:49:00', '2018-07-06 19:59:10', '2018-07-0001462-STO', ''),
(111, 44, 0, 'Coupler 25MM', '3456', 'Rebar Coupler 25MM', '125.00', NULL, 250, '2018-07-02 18:49:36', '2018-07-06 20:08:26', '2018-07-0001462-STO', ''),
(112, 44, 0, 'Coupler 32MM', '3456', 'Rebar Coupler 32 MM', '150.00', NULL, 150, '2018-07-02 18:50:06', '2018-07-06 20:17:16', '2018-07-0001462-STO459116', ''),
(113, 3, 0, 'Soft skill Development', '', 'Quotation for soft skill-cum-aptitude training to students / Day', '12600.00', NULL, NULL, '2018-07-03 09:40:22', '0000-00-00 00:00:00', '2018-07-0001464-STO', ''),
(117, 3, 0, '6W LED Panel Light ', '9405', 'Round  White', '230.00', NULL, 44, '2018-07-06 07:51:17', '2018-12-04 10:49:48', '2018-12-0001726-STO', ''),
(118, 45, 0, 'Angular stop cock', '8481', 'DE04CPFL', '690.00', NULL, NULL, '2018-07-09 08:12:18', '0000-00-00 00:00:00', '', ''),
(119, 45, 0, 'UPPER CSC15MM', '8481', 'DE332CPFL', '732.00', NULL, NULL, '2018-07-09 08:15:11', '2018-07-09 08:26:05', '', ''),
(120, 45, 0, 'BODY FOR C.S.C.15MM', '8481', 'E221', '700.00', NULL, NULL, '2018-07-09 08:23:43', '0000-00-00 00:00:00', '', ''),
(121, 45, 0, 'FLISH VALVE METROPOLE 1.5"', '8481', 'E251BCPFL', '3020.00', NULL, NULL, '2018-07-09 08:34:46', '0000-00-00 00:00:00', '', ''),
(122, 45, 0, 'FLUSH VALVE METROPOLE 1.25', '	8481', 'E251BCPFL', '2840.00', NULL, NULL, '2018-07-09 08:36:37', '0000-00-00 00:00:00', '', ''),
(123, 45, 0, 'WASTE COUPLING 1.25FT', '8481', 'C230F', '330.00', NULL, NULL, '2018-07-09 08:38:01', '2018-07-09 08:40:23', '', ''),
(124, 45, 0, 'UPPER SLCD HIGH FLOW ', '8481', 'AHDV202UCPFL', '1300.00', NULL, NULL, '2018-07-09 08:44:51', '0000-00-00 00:00:00', '', ''),
(125, 45, 0, 'BODY SLCD HF 40MM', '8481', 'E224NCPFL', '3300.00', NULL, NULL, '2018-07-09 08:46:59', '0000-00-00 00:00:00', '', ''),
(126, 3, 0, ' Patti wiring ', '', 'Point wiring for Street Light installation', '60.00', NULL, NULL, '2018-07-11 09:29:47', '0000-00-00 00:00:00', '2018-07-0001480-STO', ''),
(127, 3, 0, 'Labour Work', '', 'Parking wiring checking & Fault finding  ', '2000.00', NULL, NULL, '2018-07-11 09:30:57', '0000-00-00 00:00:00', '2018-07-0001480-STO', ''),
(128, 3, 0, '12 W LED Bulb ', '', '2 Years warranty with installation', '160.00', NULL, NULL, '2018-07-11 09:32:00', '2018-07-11 09:32:06', '2018-07-0001480-STO', ''),
(129, 3, 0, '30 W Flood Light with installation ', '995461', 'Light installation ', '1600.00', NULL, 3, '2018-07-11 09:51:22', '2018-10-22 03:04:20', '2018-10-0001647-STO', ''),
(130, 3, 0, 'Timer unit, box, Single Pole MSCB ', '', 'Wiring, fitting with installation ', '3500.00', NULL, NULL, '2018-07-11 09:52:57', '0000-00-00 00:00:00', '2018-07-0001482-STO', ''),
(131, 3, 0, '1 Sq mm Cable Wiring ', '', 'Patti Wiring', '60.00', NULL, NULL, '2018-07-11 09:53:43', '0000-00-00 00:00:00', '2018-07-0001482-STO', ''),
(132, 3, 0, 'Crompton Fan', '84149030', 'Cool Breeze - 900 mm', '1250.00', NULL, 8, '2018-07-21 04:38:50', '2018-07-21 09:37:15', '2018-07-0001491-STO', ''),
(133, 3, 0, 'Timer unit, box', '91070000', 'Settable Timer Wiring, fitting with installation ', '2250.00', NULL, 2, '2018-07-26 10:46:41', '2018-07-30 11:23:49', '2018-07-0001501-STO', ''),
(134, 3, 0, '2 0W tube light ', '9405', 't5 led tube light', '400.00', NULL, 0, '2018-07-30 10:50:30', '0000-00-00 00:00:00', '2018-07-0001499-STO', ''),
(135, 3, 0, 'Timer unit auto manual work', '91070000', 'auto / Manual operation with MCB operated, 6 Module box with installation', '1750.00', NULL, NULL, '2018-07-30 11:58:19', '0000-00-00 00:00:00', '', ''),
(149, 3, 0, '37W Philips LED Panel', '9405', '2*2 panel  RC375B', '2200.00', NULL, 2, '2018-08-22 09:42:17', '0000-00-00 00:00:00', '2018-08-0001528-STO', ''),
(150, 3, 0, '3W COB Round', '9405', 'White COB lights - Jaguar', '220.00', NULL, 5, '2018-08-22 09:43:36', '2018-12-09 09:36:34', '2018-12-0001737-STO', ''),
(151, 3, 0, 'LED DOWNLIGHTER - 15W - 6000K - Circular - Cosmo ', '9405', 'Round Light', '410.00', NULL, 36, '2018-08-26 12:13:54', '0000-00-00 00:00:00', '2018-08-0001531-STO', ''),
(152, 3, 0, 'LED DOWNLIGHTER - 15W - 4000K - Circular - Cosmo', '9405', 'Round Light', '410.00', NULL, 22, '2018-08-26 12:14:36', '2018-09-08 03:39:21', '2018-09-0001544-STO', ''),
(153, 3, 0, 'LED DOWNLIGHTER - 9W - 6000K - Circular - Cosmo', '9405', 'Round Light', '280.00', NULL, 5, '2018-08-26 12:15:51', '0000-00-00 00:00:00', '2018-08-0001531-STO', ''),
(154, 3, 0, 'LED DOWNLIGHTER - 3W - 3000K - ', '9405', 'Round Light', '180.00', NULL, 50, '2018-08-26 12:18:24', '2018-09-20 05:13:28', '2018-09-0001562-STO', ''),
(155, 3, 0, 'LED DOWNLIGHTER - 1W - 3000K', '9405', 'Round Light', '140.00', NULL, 12, '2018-08-26 12:19:36', '0000-00-00 00:00:00', '2018-08-0001531-STO', ''),
(156, 3, 0, 'LED STRIP - GOLD Medel', '9405', '3000K 4 W per meter', '85.00', NULL, 120, '2018-08-26 12:20:55', '2018-12-04 10:44:57', '2018-12-0001726-STO', ''),
(157, 3, 0, '6A LED Driver', '9405', '', '620.00', NULL, 9, '2018-08-26 12:21:54', '0000-00-00 00:00:00', '2018-08-0001531-STO', ''),
(164, 3, 0, '5A Light point installation', '995461', 'Half Light Point', '300.00', NULL, 16, '2018-09-17 10:03:18', '2018-09-18 10:13:00', '2018-09-0001555-STO', ''),
(165, 3, 0, '18 W SLIM PANEL', '9405', 'Square White Panel', '520.00', NULL, 19, '2018-09-18 09:57:58', '2018-12-04 10:42:41', '2018-12-0001726-STO', ''),
(166, 3, 0, '3W SLIM PANEL ', '9405', 'Round Warm White ', '180.00', NULL, 9, '2018-09-18 09:59:02', '2018-12-04 10:48:08', '2018-12-0001726-STO', ''),
(167, 3, 0, 'LED DOWNLIGHTER - 15W - 3000K - Circular - Cosmo ', '9405', 'Round Light', '410.00', NULL, 10, '2018-09-20 05:13:10', '0000-00-00 00:00:00', '2018-09-0001562-STO', ''),
(173, 3, 0, 'LED STRIP GOLD MEDAL', '94054090', '3000K 4 W per meter', '85.00', NULL, 50, '2018-09-27 07:29:10', '2018-10-03 09:24:03', '2018-10-0001611-STO', ''),
(174, 38, 0, 'carpentry works', '', 'table in conference room', '20000.00', NULL, 5, '2018-09-27 16:05:39', '2018-12-07 07:49:59', '2018-12-0001733-STO', ''),
(175, 38, 0, 'waterproofing works', '', 'regular chemical pasting', '1700.00', NULL, 1, '2018-09-27 17:15:28', '0000-00-00 00:00:00', '2018-09-0001586-STO', ''),
(176, 38, 0, 'electrical works', '', 'hall,dining,tv unit', '25000.00', NULL, 1, '2018-09-29 13:05:02', '2018-11-08 09:27:16', '2018-11-0001681-STO', ''),
(184, 49, 0, 'Digital', '', '1-10-18 to 31-10-18', '300.00', NULL, 0, '2018-10-11 07:36:16', '0000-00-00 00:00:00', '2018-10-0001628-STO', ''),
(185, 49, 0, 'Digital Pack', '9984', '1-10-2018 31-10-2018', '300.00', NULL, 0, '2018-10-11 07:53:27', '2018-10-18 10:46:52', '2018-10-0001631-STO', ''),
(186, 49, 0, 'VC/MAC ID 000112768494', '9984', '1-10-2018 TO 31-10-2018', '254.24', NULL, 1, '2018-10-18 10:32:50', '2018-10-18 10:45:41', '', ''),
(187, 49, 0, '000112768494', '9984', '01-10-2018 TO 31-10-2018', '254.24', NULL, 0, '2018-10-18 10:41:26', '0000-00-00 00:00:00', '', ''),
(188, 49, 0, 'WEST ROYAL SP 1M', '9984', '1-10-2018 TO 31-10-2018', '296.61', NULL, 1, '2018-10-18 11:00:29', '2018-10-18 11:10:50', '2018-10-0001628-STO', ''),
(189, 49, 0, 'WEST PRIMR SP 1M', '9984', '1-10-2018 TO 312-10-2018', '254.24', NULL, 1, '2018-10-18 11:19:50', '0000-00-00 00:00:00', '', ''),
(190, 3, 0, '24 W STREET LIGHT with installation', '995461', ' Light Installation', '1200.00', NULL, 4, '2018-10-22 03:03:03', '0000-00-00 00:00:00', '2018-10-0001647-STO', ''),
(191, 3, 0, '20 W 0 W Flood Light with installation', '995461', 'Light installation', '950.00', NULL, 1, '2018-10-22 03:05:06', '2018-10-22 03:07:02', '2018-10-0001647-STO', ''),
(192, 3, 0, '4 Switch Socket Point', '995461', 'Light point Installation', '120.00', NULL, 4, '2018-10-22 03:07:53', '0000-00-00 00:00:00', '2018-10-0001647-STO', ''),
(193, 3, 0, '1Sqmm Patti wiring ', '995461', 'wiring for Lights', '60.00', NULL, 42, '2018-10-22 03:09:20', '0000-00-00 00:00:00', '2018-10-0001647-STO', ''),
(194, 49, 0, 'prime pack', '9984', '1-10-2018 to 31-10-2018', '254.24', NULL, 1, '2018-10-22 05:07:07', '0000-00-00 00:00:00', '', ''),
(195, 3, 0, 'Electrical Panel Inspection & report Submission ', '998331', ' Panels report with conclusion', '21186.44', NULL, 1, '2018-10-22 11:44:37', '2018-10-31 09:12:05', '2018-10-0001675-STO', ''),
(196, 50, 0, 'shirts ', '62052000', 'SHIRT', '501.00', NULL, NULL, '2018-10-22 12:16:49', '0000-00-00 00:00:00', '', ''),
(197, 38, 0, 'falls ceiling', '', 'pop of hall,dining', '25000.00', NULL, NULL, '2018-10-22 12:28:20', '2018-11-08 09:26:26', '2018-11-0001681-STO', ''),
(198, 3, 0, '10 A LED Driver', '9405', 'LED Driver for strip', '900.00', NULL, 3, '2018-10-24 10:33:15', '0000-00-00 00:00:00', '2018-10-0001657-STO', ''),
(211, 3, 0, 'Motor Panel with installation', '', '3 starters, MCB, Fabricated panel, wiring & hardware ', '23500.00', NULL, NULL, '2018-11-02 09:26:07', '0000-00-00 00:00:00', '2018-11-0001677-STO', ''),
(212, 3, 0, 'LED DOWNLIGHTER - 15W - 6000K - Circular -', '9405', 'Round Light', '410.00', NULL, 3, '2018-11-03 09:14:07', '0000-00-00 00:00:00', '2018-11-0001679-STO', ''),
(222, 3, 0, 'Supply &  Erection of Two Pole Structrure with RSJ 100mm x 116 mm  11 Mtr. Long pole of 22 KV Bus & ', '', '2 Years warranty with installation', '160.00', NULL, NULL, '2018-11-25 11:02:08', '0000-00-00 00:00:00', '2018-11-0001702-STO', ''),
(223, 3, 0, '36 WATT LED LIGHT', '94054090', 'Street Light - 6000K', '1250.00', NULL, 2, '2018-11-26 02:11:51', '2018-11-26 02:15:03', '2018-11-0001706-STO', ''),
(226, 3, 0, '12W Slim panel Light ', '94054090', 'Sqaure - 6000K', '350.00', NULL, 3, '2018-12-04 10:44:18', '0000-00-00 00:00:00', '2018-12-0001726-STO', ''),
(227, 3, 0, '10 W T Bulb ', '9505', '', '200.00', NULL, 1, '2018-12-04 10:48:51', '0000-00-00 00:00:00', '2018-12-0001726-STO', ''),
(228, 3, 0, '6W Surface Panel', '9405', 'White Round', '290.00', NULL, 3, '2018-12-04 10:50:28', '2018-12-06 12:12:52', '2018-12-0001726-STO', ''),
(233, 3, 0, '3W Spot Light', '94054090', '6000K - White', '220.00', NULL, 2, '2018-12-07 11:25:29', '0000-00-00 00:00:00', '2018-12-0001735-STO', ''),
(234, 3, 0, '20 COB Down Light ', '9405', 'White , Cylindrical & Round', '1588.00', NULL, 16, '2018-12-09 09:34:58', '2018-12-09 09:35:18', '2018-12-0001737-STO', ''),
(238, 0, 0, '', '', '', '0.00', NULL, NULL, '2018-12-15 17:29:06', '0000-00-00 00:00:00', '', ''),
(239, 0, 0, '', '', '', '0.00', NULL, NULL, '2018-12-15 17:29:59', '0000-00-00 00:00:00', '', ''),
(244, 60, 0, 'KOAL', '123/123', 'Good', '100.00', NULL, 1, '2018-12-29 10:05:19', '0000-00-00 00:00:00', '2018-12-000126-STO', ''),
(245, 60, 0, 'KOAL 1.1', '123/124', 'Good', '200.00', NULL, 5, '2018-12-29 14:39:25', '2018-12-29 10:39:31', '2018-12-000131-STO', ''),
(246, 38, 0, 'php', '104', 'Web Dev', '1000.00', NULL, NULL, '2019-01-05 12:44:45', '2019-01-05 17:13:49', '', ''),
(247, 38, 0, 'JavaDe', '106', 'app dev', '3000.00', NULL, NULL, '2019-01-05 13:25:59', '2019-01-05 13:35:21', '', ''),
(249, 35, 0, 'php', '101', 'Web Dev', '1000.00', NULL, NULL, '2019-01-08 15:40:42', '2019-01-14 12:48:36', '', 'science'),
(250, 35, 0, 'Java', '102', 'App Dev', '2000.00', NULL, NULL, '2019-01-08 15:41:02', '2019-01-14 12:48:45', '', 'commerce'),
(251, 35, 0, 'Android', '1034', 'App Dev', '3000.00', NULL, NULL, '2019-01-08 15:59:21', '2019-01-14 12:49:25', '', 'commerce'),
(252, 35, 0, 'Xml', '133', 'dynamic', '3000.00', NULL, NULL, '2019-01-14 11:50:16', '2019-01-14 11:50:52', '', '1'),
(253, 35, 0, 'aa', '11', 'sdasd', '1231.00', NULL, NULL, '2019-01-14 11:51:12', '2019-01-14 12:48:28', '', 'science');

-- --------------------------------------------------------

--
-- Table structure for table `currency`
--

CREATE TABLE IF NOT EXISTS `currency` (
  `id` int(11) NOT NULL,
  `symbol` varchar(255) NOT NULL,
  `price` decimal(53,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `degree`
--

CREATE TABLE IF NOT EXISTS `degree` (
  `id` int(11) NOT NULL,
  `degree` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `degree`
--

INSERT INTO `degree` (`id`, `degree`, `user_id`) VALUES
(1, 'Graduate', 0),
(2, 'PostGraduate', 0);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `user_id`) VALUES
(1, 'science', 0),
(2, 'commerce', 0);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sub_user_id` int(11) NOT NULL,
  `invoice_no` varchar(255) NOT NULL,
  `pur_date` date NOT NULL,
  `perticular` varchar(255) NOT NULL,
  `party_name` varchar(255) NOT NULL,
  `gst_no` varchar(255) NOT NULL,
  `proj_client` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `state_code` varchar(20) NOT NULL,
  `hsn_code` varchar(255) NOT NULL,
  `basic_amt` decimal(53,2) NOT NULL,
  `tax_amt` decimal(53,2) NOT NULL,
  `total_amt` decimal(53,2) NOT NULL,
  `created_at` date NOT NULL,
  `acc_head_id` int(11) NOT NULL,
  `mode_id` int(11) NOT NULL,
  `cheque_no` varchar(50) NOT NULL,
  `cheque_date` date NOT NULL,
  `voucher_no` varchar(100) NOT NULL,
  `is_return` enum('No','Yes') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `user_id`, `sub_user_id`, `invoice_no`, `pur_date`, `perticular`, `party_name`, `gst_no`, `proj_client`, `state`, `state_code`, `hsn_code`, `basic_amt`, `tax_amt`, `total_amt`, `created_at`, `acc_head_id`, `mode_id`, `cheque_no`, `cheque_date`, `voucher_no`, `is_return`) VALUES
(1, 1, 0, '', '2018-03-20', 'Paid to Amit Ranawade', '', '', 'EBC Solutions Pvt Ltd', 'Maharashtra', '27', '', '100.00', '12.00', '112.00', '2018-03-30', 22, 2, '', '1970-01-01', '001', 'No'),
(2, 1, 0, 'PR-12', '2018-03-22', 'Purchase', 'EBC Services', '27MH123DJ231', 'EBC Services', 'Maharashtra', '27', '54611', '2500.00', '450.00', '2950.00', '2018-03-30', 12, 3, '00021020', '2018-03-30', '002', 'Yes'),
(3, 1, 0, 'PUR-2', '2018-04-24', 'Purchase', 'EBC ', '', '', 'Maharashtra', '27', '', '4500.00', '540.00', '5040.00', '2018-04-24', 1, 7, '', '1970-01-01', '001', 'Yes'),
(5, 35, 0, 'MFG/18-19/107', '2018-04-13', 'KOEL GENSET 30 KVA WATER COOLED 3R1040T G1 ENG NO 3H.8407/1821000', 'kala genset pvt ltd', '27AAACK6784C1ZH', '', 'Maharashtra', '', '85021100', '278450.00', '50121.00', '328571.00', '2018-04-25', 29, 19, 'KUCBH18102000927', '2018-04-12', 'MFG/18-19/107', 'Yes'),
(6, 35, 0, 'MFG/18-19/148', '2018-04-17', 'KOEL GREEN 5 KVA CHHOTA CHILLI 1 PHASE GENSET  MODEL - CC1.4007', 'KALA GENSET PVT LTD', '27AAACK6784C1ZH', '', 'Maharashtra', '', '85021100', '123700.00', '22266.00', '145966.00', '2018-04-25', 29, 19, 'KUCBH18106001356', '2018-04-16', 'MFG/18-19/148', 'Yes'),
(7, 3, 0, 'SKC/141', '2018-04-16', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'SP infocity', 'Maharashtra', '27', '94054090', '19625.20', '2355.02', '21980.22', '2018-04-26', 30, 18, '', '1970-01-01', '001', 'Yes'),
(8, 3, 0, '04CF1819SL000013', '2018-04-17', 'INDO GERMAN TRAINING FEE', 'CONFEDERATION OF INDIAN INDUSTRY', '04AAATC0188R2ZG', 'INDO GERMAN TRAINING', 'Delhi', '7', '9992', '5000.00', '900.00', '5900.00', '2018-04-29', 31, 18, '--', '2018-04-17', '--', 'Yes'),
(9, 35, 0, 'CrM/18-19/11', '2018-04-04', '1)wall 44 orient sr no-119445 104895 2) poly1 sq mm hw  3) 12 m plate vin 4)12m sur  box 5) 6A switch vin 6) 6A socket vin 7) adora blank plate vin 8) mylinc 6A skt leg 675550', 'devi Electricals', '27AATPD4173A1ZV', '', 'Maharashtra', '27', '84145190 ,85446090 8538 ,8538,8536,8536, 8538, 8536', '3868.15', '696.27', '4564.42', '2018-04-30', 29, 19, '296745', '2018-04-06', 'CrM/18-19/11', 'Yes'),
(10, 35, 0, 'CrM/18-19/25', '2018-04-06', '1) Polycab alu arm 50*3.5 2)  polycab cu arm cable 2.5 * 4 3) 23*23 casting plate 4) GI strip 5) steelgrip tape 7 mtr 6) rawal plug 7) DMI Alu lg 50 mm 8)DMI Alu lg 25 mm 9) 35*8  srew box 10) 10 mm ring lugs 11) 1" saddle 12) 5/8" saddle 13) 21*21 castin', 'Devi Electricals', '27AATPD4173A1ZV', '', 'Maharashtra', '27', '85446090, 85446090 ,7325, 7212, 8545, 5609, 85369090, 85369090 , 73181200, 85369090 , 73072200, 73072200, 7325', '21300.63', '3834.11', '25134.74', '2018-04-30', 29, 19, '296746', '2018-04-22', 'CrM/18-19/25', 'Yes'),
(11, 35, 0, '18-19/217', '2018-04-09', '1) polycab single core cu flex cable 10 sqmm black 2) 10 mm cu ring lug ars - 7121', 'Devi Electricals', '27AATPD4173A1ZV', '', 'Maharashtra', '27', '85446090 , 85369090', '376.85', '67.83', '444.68', '2018-04-30', 29, 19, 'cash', '2018-04-09', '18-19/217', 'Yes'),
(12, 35, 0, '18/19GST0069', '2018-04-10', 'LA 13 A30 - B LLOYD', 'Shah radio & electricals ', '27ADXPS3509G1Z0', '', 'Maharashtra', '27', '84151090', '18359.38', '5140.63', '23500.01', '2018-04-30', 29, 19, '296748', '2018-04-10', '18/19GST0069', 'Yes'),
(13, 35, 0, '020', '2018-04-11', '1) UPS 1115 VA Microtek S/W model no - 1115 E2 s/w SR no - 17HEOHGAU065331 ', 'Opel Electronics', '27AAAFO7124K1Z6', '', 'Maharashtra', '27', '8504', '5084.74', '915.25', '5999.99', '2018-04-30', 29, 19, '', '1970-01-01', '020', 'Yes'),
(14, 35, 0, '020', '2018-04-11', 'Battery 150 AH 12 V Luminous ILT18030 Tubular SR no 6CH358F1008125', 'Opel Electronics', '27AAAFO7124K1Z6	', '', 'Maharashtra', '27', '85072000', '10156.25', '2843.75', '2843.75', '2018-04-30', 29, 19, '', '1970-01-01', '020', 'Yes'),
(15, 35, 0, 'MFG/18-19/144', '2018-04-17', 'KOEL GENSET 62.5  KVA WATER COOLED 4R810TA G1 THREE PHASE  ENG NO - T4.8907/1820833', 'KALA GENSET PVT LTD', '27AAACK6784C1ZH	', '', 'Maharashtra', '27', '85021100', '380000.00', '68400.00', '448400.00', '2018-04-30', 29, 19, '296751', '2018-04-16', 'MFG/18-19/144', 'Yes'),
(16, 35, 0, 'CrM/18-19/81', '2018-04-19', 'Ravi 63A Busbar Regular', 'Devi Electricals', '27AATPD4173A1ZV	', '', 'Maharashtra', '27', '8536', '1186.50', '213.57', '1400.07', '2018-04-30', 29, 19, 'cash', '2018-04-19', 'CrM/18-19/81', 'Yes'),
(17, 35, 0, '18-19/840	', '2018-04-27', ' vinay spike guard', 'Devi Electricals', '27AATPD4173A1ZV', '', 'Maharashtra', '27', '8536', '313.58', '56.44', '370.02', '2018-04-30', 29, 19, 'cash', '2018-04-27', '18-19/840', 'Yes'),
(20, 35, 0, 'SH-117', '2018-05-11', '3 KVA upf Altornater', 'Ashwini Enterprises', '27AAIFA3115C1Z2', '', 'Maharashtra', '27', '85016100', '14406.78', '2593.22', '17000.00', '2018-05-16', 29, 19, '', '1970-01-01', 'SH-117', 'Yes'),
(21, 35, 0, '1005', '2018-04-17', 'TRANSPORT CHARGES', 'MANISH ROADLINES', '', '', 'Maharashtra', '27', '', '5500.00', '0.00', '5500.00', '2018-05-16', 29, 19, '296767', '2018-05-07', '1005', 'No'),
(23, 35, 0, '160', '2018-05-16', 'Installation charges', 'Sharada Electric', '27ABXPI1443H1ZF', '', 'Maharashtra', '27', '', '350.00', '0.00', '350.00', '2018-05-17', 29, 19, '', '1970-01-01', '160', 'No'),
(24, 35, 0, '221', '2018-05-12', 'Laxmi 0.5 openwell motor', 'Sharada Electric', '27ABXPI1443H1ZF', '', 'Maharashtra', '27', '', '3600.00', '432.00', '4032.00', '2018-05-17', 29, 19, '', '1970-01-01', '221', 'Yes'),
(25, 3, 0, 'SKC/0018', '2018-04-03', 'LUMINOUS FAN 1200MM', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', '402 -A WING', 'Maharashtra', '27', '84145120', '1356.00', '244.08', '1600.08', '2018-05-19', 30, 18, 'NEFT ON 050518', '2018-05-05', '106', 'Yes'),
(27, 3, 0, '002', '2018-04-04', '18 W LED DRIVER', 'NINEDOTS ENTERPRISES', '27AAKFN3167H1Z1', 'UJWAL UDYOG', 'Maharashtra', '27', '9405', '1400.00', '168.00', '1568.00', '2018-05-19', 30, 18, '', '2018-04-16', 'VERBAL', 'Yes'),
(28, 3, 0, 'SKC/0106', '2018-04-14', '900MM FAN SURYA', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Housekeeping Owner', 'Maharashtra', '27', '84145120', '2034.00', '366.12', '2400.12', '2018-05-19', 30, 18, '', '2018-05-05', '129', 'Yes'),
(30, 36, 0, '', '2018-05-21', 'to bibwewadi', 'Niranjan', '', '', 'MAHARASHTRA', '', '', '212.00', '0.00', '212.00', '2018-05-28', 32, 20, '', '1970-01-01', '1', 'No'),
(31, 36, 0, '', '2018-05-22', 'tiles purchase', 'Vilas Joshi', '', '', 'MAHARASHTRA', '', '', '48000.00', '0.00', '48000.00', '2018-05-29', 36, 21, '', '2018-05-22', '1', 'No'),
(32, 36, 0, '', '2018-05-23', 'paint and thinners', 'Vilas Joshi', '', 'patvardhan', 'MAHARASHTRA', '', '', '42000.00', '0.00', '42000.00', '2018-05-29', 36, 21, 'xxx', '1970-01-01', '2', 'No'),
(33, 36, 0, '', '2018-05-28', 'furniture', 'Aditya Mulay', '', '', 'MAHARASHTRA', '', '', '19300.00', '0.00', '19300.00', '2018-05-29', 34, 21, '', '2018-05-28', '4', 'No'),
(34, 36, 0, '', '2018-05-29', 'furniture', 'Aditya Mulay', '', '', 'MAHARASHTRA', '', '', '5488.00', '0.00', '5488.00', '2018-05-29', 34, 21, '', '1970-01-01', '5', 'No'),
(36, 3, 0, 'SKC/0547', '2018-05-24', '36"-ARTIC/PEAK AIR-BROWN-ORIENT', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Tilak road', 'Maharashtra', '27', '84145120', '1101.75', '198.31', '1300.00', '2018-05-30', 30, 18, '', '1970-01-01', 'NA', 'Yes'),
(37, 3, 0, 'SKC/0517', '2018-05-23', '36"-ARTIC/PEAK AIR-BROWN-ORIENT', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Tilak road', 'Maharashtra', '27', '84145120 ', '2203.50', '396.63', '2600.00', '2018-05-30', 30, 18, '', '1970-01-01', 'NA ', 'Yes'),
(38, 3, 0, 'SKC/0456', '2018-05-17', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Wakad Project', 'Maharashtra', '27', '94054090', '3923.27', '470.79', '4394.06', '2018-05-30', 30, 18, '', '1970-01-01', '147', 'Yes'),
(39, 3, 0, 'SKC/0456', '2018-05-17', 'Vishal 16 Sq.mm x 4 Core Alu.Armd.Cable', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Wakad Project', 'Maharashtra', '27', '85446090', '10389.00', '1870.02', '12259.00', '2018-05-30', 30, 18, '', '1970-01-01', '147', 'Yes'),
(40, 37, 0, '', '2018-06-01', 'GOODS', 'INDIA PVT LTD', '', '', 'MAHARASHTRA', '', '', '60000.00', '0.00', '60000.00', '2018-06-04', 37, 23, '', '2018-06-01', '1', 'No'),
(41, 3, 0, 'SE069', '2018-05-31', 'METER INSTALLATION', 'SHREEKRISHNA ENTERPRISES', '27AUFPB0681B1Z7', 'NEA CHASA', 'Maharashtra', '27', '995461', '79380.00', '14288.40', '93668.40', '2018-06-04', 30, 18, 'RTGS', '2018-06-05', 'VERBAL ', 'Yes'),
(42, 3, 0, '20180604083529-954656984', '2018-06-04', 'Quick Heal Antivirus Pro 2018 1 PC - 1 Year', 'Kondhwa.com', '27BKUPS0050B1Z7', 'Antivirous', 'Maharashtra', '27', '', '380.00', '68.40', '448.40', '2018-06-04', 31, 18, 'NA', '2018-06-04', 'NA', 'Yes'),
(43, 3, 0, 'SKC/0576', '2018-05-24', 'Vishal 16 Sq.mm x 4 Core Alu.Armd.Cable ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Wakad Project', 'Maharashtra', '27', '85446090 ', '2721.36', '489.84', '3211.20', '2018-06-06', 30, 18, 'NEFT', '2018-06-05', '364', 'Yes'),
(44, 3, 0, 'SKC/315', '2018-04-30', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'SP INFOCITY', 'Maharashtra', '27', '94054090', '30846.72', '3701.61', '34548.33', '2018-06-12', 30, 18, 'NA', '1970-01-01', '81', 'Yes'),
(45, 3, 0, '502', '2018-05-26', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'TILAK ROAD', 'Maharashtra', '27', '9405', '1162.38', '139.49', '1301.87', '2018-06-12', 30, 18, 'NA', '1970-01-01', 'NA', 'Yes'),
(46, 3, 0, '539', '2018-05-31', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'TILAK ROAD', 'Maharashtra', '27', '9405', '5477.31', '657.28', '6134.59', '2018-06-12', 30, 18, 'NA', '1970-01-01', 'NA', 'Yes'),
(47, 3, 0, 'GST/18-19/0835', '2018-05-31', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '85381090', '104.00', '18.72', '122.72', '2018-06-12', 30, 18, 'NA', '1970-01-01', '21863', 'Yes'),
(48, 3, 0, 'GST/18-19/0835', '2018-05-31', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra.', '27', '8538', '88.00', '15.84', '103.84', '2018-06-12', 30, 18, 'NA', '1970-01-01', '21863', 'Yes'),
(49, 3, 0, 'GST/18-19/0835', '2018-05-31', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8536', '146.00', '26.28', '172.28', '2018-06-12', 30, 18, 'NA', '1970-01-01', '21863', 'Yes'),
(50, 3, 0, 'GST/18-19/0835', '2018-05-31', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8546', '42.50', '7.65', '50.15', '2018-06-12', 30, 18, 'NA', '1970-01-01', '21863', 'Yes'),
(51, 3, 0, 'SKC/0497', '2018-05-22', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '9405', '6898.84', '827.86', '7726.70', '2018-06-12', 30, 18, 'NA', '1970-01-01', '0109,0141,95', 'Yes'),
(52, 3, 0, 'SKC/0497', '2018-05-22', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '84145190', '16400.00', '2952.00', '19352.00', '2018-06-12', 30, 18, 'NA', '1970-01-01', '109,141,95', 'Yes'),
(53, 3, 0, 'SKC/0497', '2018-05-22', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8405', '1453.34', '261.60', '1714.94', '2018-06-12', 30, 18, 'NA', '1970-01-01', '109,141,95', 'Yes'),
(54, 3, 0, 'GST/18-19/0592', '2018-05-19', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE ROAD', 'Maharashtra', '27', '', '872.00', '156.96', '1028.96', '2018-06-12', 30, 18, '', '1970-01-01', '21641', 'Yes'),
(55, 3, 0, 'GST/18-19/0534', '2018-05-17', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '', '2110.00', '379.80', '2489.80', '2018-06-12', 30, 18, '', '1970-01-01', '21583', 'Yes'),
(56, 3, 0, '18-19/12303', '2018-05-11', 'SWITCHGEAR', 'OMKAR ENTERPRISES', '27ABDPG3392F1ZT', 'WAKAD SITE', 'Maharashtra', '27', '85362040', '10345.50', '1862.19', '12207.69', '2018-06-12', 30, 17, 'NA', '1970-01-01', 'VERBAL ', 'Yes'),
(57, 3, 0, '18-19/12303', '2018-05-11', 'SWITCHGEAR', 'OMKAR ENTERPRISES', '27ABDPG3392F1ZT', 'WAKAD SITE', 'Maharashtra', '27', '85362030', '4589.20', '826.06', '5415.26', '2018-06-12', 30, 17, 'NA', '1970-01-01', 'VERBAL', 'Yes'),
(58, 3, 0, '18-19/12303', '2018-05-11', 'SWITCHGEAR', 'OMKAR ENTERPRISES', '27ABDPG3392F1ZT', 'WAKAD PROJECT', 'Maharashtra', '27', '85381010', '4083.75', '735.07', '4818.82', '2018-06-12', 30, 17, 'NA', '1970-01-01', 'VERBAL', 'Yes'),
(59, 3, 0, '18-19/12303', '2018-05-11', 'SWITCHGEAR', 'OMKAR ENTERPRISES', '27ABDPG3392F1ZT', 'WAKAD PROJECT', 'Maharashtra', '27', '85369090', '7535.00', '1356.30', '8891.30', '2018-06-12', 30, 17, 'NA', '1970-01-01', 'VERBAL', 'Yes'),
(60, 3, 0, '18-19/12302', '2018-05-11', 'SWITCHGEAR', 'OMKAR ENTERPRISES', '27ABDPG3392F1ZT', 'WAKAD PROJECT', 'Maharashtra', '27', '85362040', '2069.10', '372.44', '2441.54', '2018-06-12', 30, 17, 'NA', '1970-01-01', 'VERBAL', 'Yes'),
(61, 3, 0, '18-19/12302', '2018-05-11', 'SWITCHGEAR', 'OMKAR ENTERPRISES', '27ABDPG3392F1ZT', 'WAKAD PROJECT', 'Maharashtra', '27', '85362030', '1147.30', '206.51', '1353.81', '2018-06-12', 30, 17, '', '1970-01-01', 'VERBAL', 'Yes'),
(62, 3, 0, '18-19/12302', '2018-05-11', 'SWITCHGEAR', 'OMKAR ENTERPRISES', '27ABDPG3392F1ZT', 'WAKAD PROJECT', 'Maharashtra', '27', '85369090', '6919.00', '1245.42', '8164.42', '2018-06-12', 30, 17, 'NA', '1970-01-01', 'VERBAL', 'Yes'),
(63, 3, 0, '18-19/12302', '2018-05-11', 'SWITCHGEAR', 'OMKAR ENTERPRISES', '27ABDPG3392F1ZT', 'WAKAD SITE', 'Maharashtra', '27', '85381010', '816.75', '147.01', '963.76', '2018-06-12', 30, 17, 'NA', '1970-01-01', 'VERBAL', 'Yes'),
(64, 3, 0, '18-19/12389', '2018-05-21', 'SWITCHGEAR', 'OMKAR ENTERPRISES', '27ABDPG3392F1ZT', 'WAKAD PROJECT', 'Maharashtra', '27', '85369090', '27060.00', '4870.80', '31930.80', '2018-06-12', 30, 17, 'NA', '1970-01-01', 'VERBAL', 'Yes'),
(65, 3, 0, '18-19/12389', '2018-05-21', 'SWITCHGEAR', 'OMKAR ENTERPRISES', '27ABDPG3392F1ZT', 'WAKAD PROJECT', 'Maharashtra', '27', '85362030', '1147.30', '206.51', '1353.81', '2018-06-12', 30, 17, 'NA', '1970-01-01', 'VERBAL', 'Yes'),
(68, 3, 0, 'GST/18-19/0322', '2018-05-02', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'WAKAD PROJECT', 'Maharashtra', '27', '', '2025.05', '364.51', '2389.56', '2018-06-12', 30, 18, 'NA', '1970-01-01', 'VERBAL ', 'Yes'),
(69, 3, 0, 'GST/18-19/0322', '2018-05-02', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'WAKAD', 'Maharashtra', '27', '', '10.00', '1.20', '11.20', '2018-06-12', 30, 18, '', '1970-01-01', 'VERBAL', 'Yes'),
(70, 3, 0, '400', '2018-05-18', 'LED Lights', ' N N LITES', '27AWMPS5861P1ZE', 'ID MADICAL', 'Maharashtra', '27', '9405', '37103.36', '4452.40', '41555.76', '2018-06-12', 30, 18, 'NEFT', '1970-01-01', 'VERBAL', 'Yes'),
(71, 3, 0, '311', '2018-05-08', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'DEOGHAR', 'Maharashtra', '27', '9405', '3080.10', '369.61', '3449.71', '2018-06-12', 30, 18, 'NA', '1970-01-01', '6988', 'Yes'),
(72, 3, 0, '637', '2018-06-09', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'ASHRAM', 'Maharashtra', '27', '9405', '1180.00', '141.60', '1321.60', '2018-06-12', 30, 18, '', '1970-01-01', '7310', 'Yes'),
(73, 3, 0, '00766', '2018-06-09', 'SWITCHGEAR', 'SWITCH WORLD ', '27ABFFS2438A1ZH', 'KARVE NAGAR', 'Maharashtra', '27', '8536', '885.15', '159.33', '1044.48', '2018-06-12', 30, 18, 'NA', '1970-01-01', 'VERBAL ', 'Yes'),
(74, 38, 0, '01', '2017-07-20', '6*4 grill', 'Saddham Fabricator', '', 'Radhika Kulkarni', 'Maharashtra', '27', '', '4300.00', '0.00', '4300.00', '2018-06-12', 44, 24, '', '1970-01-01', '0', 'No'),
(76, 3, 0, 'SKC/0697', '2018-06-01', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'SP infocity', 'Maharashtra', '27', '94054090', '8325.53', '999.06', '9324.59', '2018-06-13', 30, 18, 'NA', '1970-01-01', '0209', 'No'),
(77, 38, 0, '', '2018-04-02', 'aluminum works', 'aluminium shankar', '', 'sathe prafulla', 'Maharashtra', '27', '', '18500.00', '0.00', '18500.00', '2018-06-13', 44, 24, '', '2018-04-02', '01', 'No'),
(78, 1, 0, 'Pur-12', '2018-06-15', 'Purchase', 'Planora test', '', 'Printing', 'Maharashtra', '27', '56411', '5400.00', '648.00', '6048.00', '2018-06-15', 13, 2, '', '1970-01-01', '65410', 'Yes'),
(79, 3, 0, 'SKC/0824', '2018-06-14', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'A realty, Sharadha C,', 'Maharashtra', '27', '94054090', '19046.10', '2285.53', '21332.00', '2018-06-18', 30, 18, 'NA', '1970-01-01', '0273,0279,0283', 'Yes'),
(80, 3, 0, 'SKC/840', '2018-06-18', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Katraj Project / Amit P', 'Maharashtra', '27', '94054090', '8571.42', '1028.57', '9600.00', '2018-06-18', 30, 18, 'NA', '1970-01-01', 'verbal Confirmation', 'Yes'),
(82, 3, 0, 'SKC/0697', '2018-06-01', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Lucian Lighting', 'Maharashtra', '27', '8504', '2573.00', '463.14', '3036.00', '2018-06-19', 30, 18, 'NA', '1970-01-01', '0209', 'Yes'),
(83, 42, 0, '1', '2018-06-24', 'Bill', 'abc solutions pvt.ld', '231575656545', '', 'mahara', '', '2315', '500.00', '25.00', '525.00', '2018-06-26', 50, 32, '', '2018-06-30', '1', 'Yes'),
(84, 3, 0, '14', '2018-06-30', 'SOFTWARE DEVELOPMENT', 'SHREE AUTOMATION', '27AKLPA5525F1ZD', 'GOC PROJECT', 'Maharashtra', '27', '998314', '6000.00', '1080.00', '7080.00', '2018-06-30', 31, 18, 'NA', '1970-01-01', 'NA', 'Yes'),
(85, 3, 0, '2018-19/007', '2018-06-25', 'Professional Fees', 'Vertixa Advisors', '27AAZPW3277C1ZZ', 'GST April and May 2018', 'Maharashtra', '27', '9982', '1800.00', '324.00', '2124.00', '2018-06-30', 31, 18, 'NA', '2018-07-02', 'NA', 'Yes'),
(86, 3, 0, '2018-19/002', '2018-06-25', 'Professional Fees', 'Vertixa Advisors', '27AAZPW3277C1ZZ', 'GST Compliance for Mar 18', 'Maharashtra', '27', '9982', '1500.00', '270.00', '1770.00', '2018-06-30', 31, 18, 'NA', '2018-07-02', 'NA', 'Yes'),
(87, 3, 0, 'SKC/0967', '2018-06-30', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Mahesh', 'Maharashtra', '27', '94054090', '2414.32', '289.72', '2704.00', '2018-06-30', 30, 18, 'NA ', '2018-07-02', 'Verbal', 'Yes'),
(88, 3, 0, '825', '2018-06-29', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'D CAP', 'Maharashtra', '27', '9405', '477.00', '57.24', '534.00', '2018-07-03', 30, 18, 'NA', '1970-01-01', 'NA', 'Yes'),
(90, 3, 0, '502', '2018-06-22', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'Deoghar Pune', 'Maharashtra', '27', '9405', '3080.00', '369.60', '3450.00', '2018-07-03', 30, 18, 'NA', '1970-01-01', 'NA', 'Yes'),
(91, 3, 0, 'SKC/1002', '2018-07-03', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Hinjewadi', 'Maharashtra', '27', '94054090', '13235.47', '1588.26', '14824.00', '2018-07-03', 30, 18, 'NA', '1970-01-01', '0355,313', 'Yes'),
(92, 3, 0, 'SKC/1009', '2018-07-03', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'DCAP SOLUTIONS', 'Maharashtra', '27', '94054090', '2105.00', '252.60', '2358.00', '2018-07-05', 30, 18, 'NA', '1970-01-01', 'Verbal confirmation', 'Yes'),
(93, 3, 0, '18', '2018-07-28', '12 LED TUBELIGHTS', 'NINEDOTS ENTERPRISES LLP', '27AAKFN3167H1Z1', 'ANISH ASSOCITES', 'Maharashtra', '27', '9405', '3000.00', '360.00', '3360.00', '2018-07-05', 30, 18, 'PAYMENT DONE', '2018-07-06', 'VERBAL', 'Yes'),
(94, 3, 0, '756', '2018-06-22', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'TILAK ROAD', 'Maharashtra', '27', '9405', '3080.00', '369.60', '3450.00', '2018-07-06', 30, 18, 'NA', '1970-01-01', 'NA', 'Yes'),
(95, 3, 0, 'SO/18-19/00602', '2018-06-09', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8538', '76.00', '13.68', '90.00', '2018-07-06', 30, 18, 'NA', '1970-01-01', '00602', 'Yes'),
(96, 3, 0, 'SO/18-19/00602', '2018-06-09', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8536', '206.00', '37.08', '243.00', '2018-07-08', 30, 18, 'NA', '1970-01-01', '602', 'Yes'),
(97, 3, 0, 'SO/18-19/00571', '2018-06-06', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '', '847.05', '152.47', '1000.00', '2018-07-08', 30, 18, 'NA', '1970-01-01', '571', 'Yes'),
(98, 3, 0, '909', '2018-07-09', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'Vishwakarma Project', 'Maharashtra', '27', '9405', '14731.00', '1767.72', '16499.00', '2018-07-09', 30, 18, 'NA', '1970-01-01', 'NA', 'Yes'),
(99, 3, 0, 'SKC/1054', '2018-07-09', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'SP infocity', 'Maharashtra', '27', '94054090', '536.60', '64.39', '601.00', '2018-07-19', 30, 18, '', '1970-01-01', '001', 'Yes'),
(100, 3, 0, '16', '2018-07-21', 'SOFTWARE DEVELOPMENT', 'SHREE AUTOMATION', '27AKLPA5525F1ZD', 'NASIK PROJECT', 'Maharashtra', '27', '998314', '5000.00', '900.00', '5900.00', '2018-07-21', 31, 18, 'NA', '1970-01-01', 'NA', 'Yes'),
(101, 3, 0, 'SKC/1229', '2018-07-30', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Sharadha Construction', 'Maharashtra', '27', '94054090', '1250.00', '150.00', '1400.00', '2018-07-30', 30, 18, '', '1970-01-01', '001', 'Yes'),
(102, 3, 0, '18-19/12905', '2018-07-30', 'TIMER SWITCH', 'OMKAR ENTERPRISES', '27ABDPG3392F1ZT', 'Topaz Site', 'Maharashtra', '27', '91070000', '2511.00', '451.98', '2963.00', '2018-07-30', 30, 17, 'NA', '1970-01-01', 'VERBAL ', 'Yes'),
(103, 3, 0, 'SO/18-19/00914', '2018-07-14', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8538,8546,8536', '844.66', '152.04', '997.00', '2018-07-30', 30, 18, 'NA', '1970-01-01', 'NA', 'Yes'),
(104, 3, 0, 'SO/18-19/001044', '2018-07-26', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8538', '122.00', '21.96', '144.00', '2018-07-30', 30, 18, 'NA', '1970-01-01', 'NA', 'Yes'),
(105, 3, 0, 'GST/18-19/01448', '2018-07-24', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8544', '8036.00', '1446.48', '9482.00', '2018-07-30', 30, 18, 'NA', '1970-01-01', '22479', 'Yes'),
(106, 3, 0, '31', '2018-08-07', '10 LED TUBELIGHTS', 'NINEDOTS ENTERPRISES LLP', '27AAKFN3167H1Z1', 'ANISH ASSOCITES', 'Maharashtra', '27', '9405', '2500.00', '300.00', '2800.00', '2018-08-12', 30, 18, 'NEFT', '2018-08-13', 'VERBAL', 'Yes'),
(107, 3, 0, 'SKC/1279', '2018-08-02', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'bahirat site', 'Maharashtra', '27', '94054090', '1250.00', '150.00', '1400.00', '2018-08-12', 30, 18, '', '1970-01-01', '001', 'Yes'),
(108, 3, 0, 'SE123', '2018-08-02', 'EXCIDE BATTERY', 'SHREEKRISHNA ENTERPRISES', '27AUFPB0681B1Z7', 'SANTRO CAR', 'Maharashtra', '27', '995461', '2734.38', '765.63', '3500.00', '2018-08-12', 30, 18, 'NEFT DONE', '1970-01-01', 'VERBAL ', 'Yes'),
(109, 3, 0, '18', '2018-06-28', '12 LED TUBELIGHTS', 'NINEDOTS ENTERPRISES LLP', '27AAKFN3167H1Z1', 'ANISH ASSOCITES', 'Maharashtra', '27', '9405', '3000.00', '360.00', '3360.00', '2018-08-12', 30, 18, '', '1970-01-01', 'VERBAL', 'Yes'),
(110, 3, 0, 'SKC/1384', '2018-08-16', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Seva Sahayog', 'Maharashtra', '27', '94054090', '1589.29', '190.71', '1780.00', '2018-08-19', 30, 18, '', '1970-01-01', '001', 'Yes'),
(111, 3, 0, 'WS58', '2018-07-17', 'Domain Renewal Domain Hosting', 'E Business Canvas', '27CHJPS3320M1ZY', 'Website Renewal', 'Maharashtra', '27', '998319 ', '2734.00', '492.12', '3226.00', '2018-08-19', 30, 18, '', '1970-01-01', '001', 'Yes'),
(113, 3, 0, 'GST/18-19/01682', '2018-08-11', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '85381090', '444.00', '79.92', '524.00', '2018-08-24', 30, 18, '', '1970-01-01', '22715', 'Yes'),
(114, 3, 0, 'SKC/1402', '2018-08-21', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'SP infocity', 'Maharashtra', '27', '94054090', '415.24', '49.83', '465.00', '2018-08-24', 30, 18, '', '1970-01-01', '001', 'Yes'),
(115, 3, 0, '1340', '2018-08-21', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'TILAK ROAD', 'Maharashtra', '27', '9405', '4750.00', '570.00', '5320.00', '2018-08-24', 30, 18, '', '1970-01-01', 'NA', 'Yes'),
(116, 3, 0, 'SO/18-19/001359', '2018-08-23', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8536', '660.00', '118.80', '779.00', '2018-08-24', 30, 18, '', '1970-01-01', '1359', 'Yes'),
(117, 3, 0, 'SE135', '2018-08-23', 'METER INSTALLATION', 'SHREEKRISHNA ENTERPRISES', '27AUFPB0681B1Z7', 'Battery', 'Maharashtra', '27', '8507', '976.56', '273.44', '1250.00', '2018-08-26', 30, 18, 'NEFT', '2018-08-25', 'VERBAL ', 'Yes'),
(118, 3, 0, 'SKC/1521', '2018-08-29', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Tambekar Project', 'Maharashtra', '27', '94054090', '925.87', '111.10', '1037.00', '2018-08-30', 30, 18, '', '1970-01-01', '001', 'Yes'),
(119, 3, 0, '1465', '2018-08-29', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'Divyagar Project', 'Maharashtra', '27', '9405', '4355.00', '522.60', '4878.00', '2018-09-04', 30, 18, '', '1970-01-01', 'NA', 'Yes'),
(120, 3, 0, '1523', '2018-09-04', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'Deoghar Pune', 'Maharashtra', '27', '9405', '3450.00', '414.00', '3864.00', '2018-09-04', 30, 18, '', '1970-01-01', 'NA', 'Yes'),
(121, 3, 0, 'SKC/1574', '2018-08-31', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Marathe Project', 'Maharashtra', '27', '94054090', '612.50', '73.50', '686.00', '2018-09-04', 30, 18, '', '1970-01-01', '001', 'Yes'),
(122, 3, 0, 'SKC/1496', '2018-08-27', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Divyagar Project', 'Maharashtra', '27', '94054090', '32669.00', '3920.28', '36589.00', '2018-09-04', 30, 18, '', '1970-01-01', '590', 'Yes'),
(123, 3, 0, '201819009', '2018-09-05', 'GST work', 'Vertixa Advisors', '27AAZPW3277C1ZZ', 'NA', 'Maharashtra', '27', '9982', '1800.00', '324.00', '2124.00', '2018-09-08', 31, 18, 'NA', '1970-01-01', 'Professional Fees', 'Yes'),
(124, 3, 0, 'SKC/1632', '2018-09-04', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Marathe Site', 'Maharashtra', '27', '94054090', '589.26', '70.71', '660.00', '2018-09-17', 30, 18, 'NA', '1970-01-01', '001', 'Yes'),
(125, 3, 0, 'SKC/1672', '2018-09-07', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Divyagar Project', 'Maharashtra', '27', '94054090', '730.36', '87.64', '818.00', '2018-09-17', 30, 18, 'NA', '1970-01-01', '001', 'Yes'),
(126, 3, 0, '1584', '2018-09-10', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'TILAK ROAD', 'Maharashtra', '27', '9405', '4749.64', '569.96', '5320.00', '2018-09-20', 30, 18, 'NA', '2018-09-29', '8289', 'No'),
(127, 3, 0, 'GST/18-19/1974', '2018-09-03', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '85381090', '3841.00', '691.38', '4532.00', '2018-09-20', 30, 18, 'NA', '1970-01-01', '22980', 'Yes'),
(128, 3, 0, '1574', '2018-09-07', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'DIVYAGAR PROJECT', 'Maharashtra', '27', '9405', '1001.00', '120.12', '1121.00', '2018-09-20', 30, 18, 'NA', '2018-09-22', 'NA', 'Yes'),
(129, 38, 0, '', '2018-09-09', 'waterprrofing works done', 'chavan ganesh', '', 'kulkarni pankaj', 'Maharashtra', '27', '', '1200.00', '0.00', '1200.00', '2018-09-27', 44, 24, '', '2018-09-09', 'se/18/19/4', 'No'),
(130, 38, 0, 'SE/18/19/2', '2018-08-01', 'keskar site advance', 'sharma rahul', '', 'KESKAR', 'Maharashtra', '', '', '25000.00', '0.00', '25000.00', '2018-09-27', 44, 24, '', '2018-08-01', 'SE/18/19/02', 'No'),
(131, 38, 0, '', '2018-08-12', 'terrace works', 'chavan ganesh', '', 'mulay suyog', 'Maharashtra', '27', '', '3000.00', '0.00', '3000.00', '2018-09-27', 44, 24, '', '2018-08-12', 'SE/18/19/4', 'No'),
(132, 38, 0, '', '2018-08-12', 'fabrication works', 'oak girish', '', 'Mulay suyog', 'Maharashtra', '', '', '23000.00', '0.00', '23000.00', '2018-09-27', 44, 24, '', '2018-08-12', 'SE/18/19/4', 'No'),
(133, 38, 0, '01', '2018-08-09', 'carpentry works', 'carpentry materials', '', 'GODBOLE GEETA', 'Maharashtra', '27', '', '2132.00', '0.00', '2132.00', '2018-09-27', 44, 24, '', '2018-08-09', 'SE/18/19/5', 'No'),
(134, 38, 0, 'SE/18/19/5', '2018-08-09', 'carpentry works', 'sharma rahul', '', 'GODBOLE GEETA', 'Maharashtra', '', '', '1500.00', '0.00', '1500.00', '2018-09-27', 60, 24, '', '2018-08-09', 'SE/18/19/05', 'No'),
(135, 3, 0, '1746', '2018-09-24', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'DIVYAGAR PROJECT', 'Maharashtra', '27', '9405', '2990.00', '358.80', '3348.80', '2018-09-29', 30, 18, '', '1970-01-01', 'NA', 'Yes'),
(136, 3, 0, 'SO/18-19/01590', '2018-09-12', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8538', '781.00', '140.58', '921.58', '2018-09-29', 30, 18, 'NA', '1970-01-01', 'SO/18-19/01590', 'Yes'),
(137, 3, 0, 'SO/18-19/001702', '2018-09-26', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '85381090', '92.00', '16.56', '109.00', '2018-09-29', 30, 18, 'NA', '1970-01-01', '21863', 'Yes'),
(138, 3, 0, 'GST/17-18/1300', '2017-10-01', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '85381090', '998.40', '279.55', '1278.00', '2018-09-29', 30, 18, '', '1970-01-01', '21863', 'Yes'),
(139, 3, 0, 'GST/17-18/1300', '2018-10-01', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '85381090', '494.20', '88.96', '583.16', '2018-09-29', 30, 18, 'NA', '1970-01-01', '21863', 'Yes'),
(140, 38, 0, 'SE/18/19/6', '2018-07-13', 'aluminum works', 'aluminium shankar', '', 'CORPAGE', 'Maharashtra', '27', '', '18300.00', '0.00', '18300.00', '2018-09-29', 44, 24, '', '1970-01-01', '64', 'No'),
(141, 38, 0, 'SE/18/19/7', '2018-07-01', 'materials', 'painting materials', '', 'DAATE ROHINI', 'Maharashtra', '27', '', '5645.00', '0.00', '5645.00', '2018-09-29', 44, 24, '', '1970-01-01', '63', 'No'),
(142, 38, 0, 'SE/18/19/7', '2018-07-01', 'materials', 'plumbing materials', '', 'DATE ROHINI', 'Maharashtra', '27', '', '2100.00', '0.00', '2100.00', '2018-09-29', 44, 24, '', '1970-01-01', '63', 'No'),
(143, 38, 0, 'SE/18/19/7', '2018-07-01', 'MATERIALS', 'ELECTRICAL MATERIALS', '', 'DATE ROHINI', 'Maharashtra', '27', '', '3500.00', '0.00', '3500.00', '2018-09-29', 44, 24, '', '1970-01-01', '63', 'No'),
(144, 38, 0, 'SE/18/19/7', '2018-07-06', 'LABOUR', 'PAINTER-JITU', '', 'DATE ROHINI', 'Maharashtra', '27', '', '32000.00', '0.00', '32000.00', '2018-09-29', 60, 24, '', '1970-01-01', '63', 'No'),
(145, 38, 0, 'SE/18/19/8', '2018-07-06', 'sand/cement/etc', 'civil materials', '', 'SEVA SAHAYOG FOUNDATION', 'Maharashtra', '27', '', '750.00', '0.00', '750.00', '2018-09-29', 44, 26, '', '1970-01-01', '62', 'No'),
(146, 38, 0, 'SE/18/19/8', '2018-07-06', 'LABOUR', 'CIVIL-LABOUR-BALU', '', 'SEVA SAHAYOG FOUNDATION', 'Maharashtra', '27', '', '750.00', '0.00', '750.00', '2018-09-29', 60, 24, '', '1970-01-01', '62', 'No'),
(147, 38, 0, 'SE/18/19/9', '2018-06-10', 'TILES/SAND/CEMENT', 'civil materials', '', 'JOSHI SACHIN', 'Maharashtra', '27', '', '37400.00', '0.00', '37400.00', '2018-09-29', 44, 24, '', '1970-01-01', '61', 'No'),
(148, 38, 0, 'SE/18/19/9', '2018-06-10', 'LABOUR', 'CIVIL-LABOUR-BALU', '', 'JOSHI SACHIN', 'Maharashtra', '27', '', '11500.00', '0.00', '11500.00', '2018-09-29', 60, 24, '', '1970-01-01', '61', 'No'),
(149, 38, 0, 'SE/18/19/10', '2018-06-01', 'materials', 'painting materials', '', 'kadak zatka', 'Maharashtra', '27', '', '3830.00', '0.00', '3830.00', '2018-09-29', 44, 24, '', '1970-01-01', '59', 'No'),
(150, 38, 0, 'SE/18/19/10', '2018-06-07', 'LABOUR', 'PAINTER-JITU', '', 'kadak zatka', 'Maharashtra', '27', '', '6000.00', '0.00', '6000.00', '2018-09-29', 60, 24, '', '1970-01-01', '59', 'No'),
(151, 38, 0, 'SE/18/19/11', '2018-06-20', 'aluminum works', 'aluminium shankar', '', 'NILAKHE SAURABH', 'Maharashtra', '27', '', '2000.00', '0.00', '2000.00', '2018-09-29', 44, 24, '', '1970-01-01', '58', 'No'),
(152, 38, 0, 'SE/18/19/12', '2018-06-10', 'fabrication shade work', 'fabricator-patil', '', 'GODSE RUTUJA', 'Maharashtra', '27', '', '10400.00', '0.00', '10400.00', '2018-09-29', 44, 24, '', '1970-01-01', '057', 'No'),
(153, 3, 0, 'SKC/1813', '2018-09-29', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Divyagar Project', 'Maharashtra', '27', '94054090', '11973.22', '1436.79', '13410.00', '2018-10-02', 30, 18, 'NA', '1970-01-01', '0658', 'Yes'),
(155, 3, 0, 'GST/18-19/02018', '2018-09-09', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '85381090', '1560.00', '280.80', '1841.00', '2018-10-02', 30, 18, 'NA', '1970-01-01', '21863', 'Yes'),
(156, 38, 0, '', '2018-10-01', 'petrol', 'conveyance ', '', '', 'Maharashtra', '27', '', '400.00', '0.00', '400.00', '2018-10-02', 41, 24, '', '1970-01-01', '01', 'No'),
(157, 38, 0, '', '2018-10-01', 'sncaks', 'misc', '', '', 'Maharashtra', '27', '', '30.00', '0.00', '30.00', '2018-10-02', 40, 24, '', '1970-01-01', '02', 'No'),
(158, 38, 0, '', '2018-10-01', 'movie,bhaji,milk,laundry', 'home', '', '', 'Maharashtra', '27', '', '1790.00', '0.00', '1790.00', '2018-10-02', 46, 24, '', '1970-01-01', '03', 'No'),
(159, 38, 0, 'SE/18/19/2', '2018-10-02', 'keskar site paid bal still 10000', 'sharma rahul', '', 'KESKAR', 'Maharashtra', '', '', '30000.00', '0.00', '30000.00', '2018-10-02', 60, 26, '', '1970-01-01', 'SE/18/19/02', 'No'),
(160, 38, 0, 'SE/18/19/13', '2018-05-25', 'sand/cement/etc', 'civil materials', '', 'GOKHALE SACHIN', 'Maharashtra', '27', '', '2070.00', '0.00', '2070.00', '2018-10-02', 44, 24, '', '1970-01-01', '044', 'No'),
(161, 38, 0, 'SE/18/19/13', '2018-05-28', 'LABOUR', 'CIVIL-LABOUR-SAHADEO', '', 'GOKHALE SACHIN', 'Maharashtra', '27', '', '2300.00', '0.00', '2300.00', '2018-10-02', 60, 24, '', '1970-01-01', '044', 'No'),
(163, 38, 0, 'SE/18/19/14', '2018-09-25', 'obd,oilpaint,ace,paper,etc', 'painting materials', '', 'bangale rajendra', 'Maharashtra', '27', '', '6958.00', '0.00', '6958.00', '2018-10-07', 44, 24, '', '1970-01-01', '72', 'No'),
(164, 38, 0, 'SE/18/19/14', '2018-10-03', 'LABOUR ADV PAID', 'PAINTER-JITU', '', 'bangale rajendra', 'Maharashtra', '27', '', '2000.00', '0.00', '2000.00', '2018-10-07', 60, 24, '', '1970-01-01', '72', 'No'),
(165, 3, 0, 'SKC/1907', '2018-10-03', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Paradigm ', 'Maharashtra', '27', '94054090', '975.00', '117.00', '1092.00', '2018-10-27', 30, 18, 'NA', '2018-10-27', '001', 'Yes'),
(166, 3, 0, 'SKC/2071', '2018-10-19', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'SP infocity', 'Maharashtra', '27', '94054090', '6405.37', '768.64', '7174.01', '2018-11-03', 30, 18, 'NA', '1970-01-01', '365,432', 'Yes'),
(167, 3, 0, 'SKC/2071', '2018-10-19', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Model Colony ', 'Maharashtra', '27', '39171010', '360.00', '64.80', '424.80', '2018-11-03', 30, 18, 'NA', '1970-01-01', '365, 432', 'Yes'),
(168, 3, 0, 'SKC/2248', '2018-10-31', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Marathe project', 'Maharashtra', '27', '94054090', '10678.58', '1281.43', '11960.00', '2018-11-03', 30, 18, 'NA', '1970-01-01', '491, 461, 458', 'Yes'),
(169, 3, 0, 'SO/18-19/001909', '2018-10-16', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8544', '997.00', '179.46', '1176.00', '2018-11-11', 30, 18, 'NA', '1970-01-01', 'SO/18-19/001909', 'Yes'),
(170, 3, 0, 'SKC/1940', '2018-10-09', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'SP infocity', 'Maharashtra', '27', '94054090', '4151.85', '498.22', '4650.00', '2018-11-11', 30, 18, 'NA', '1970-01-01', '001', 'Yes'),
(171, 3, 0, '2316', '2018-11-12', 'LED Lights', ' N N lites ', '27AWMPS5861P1ZE', 'Deoghar Project', 'Maharashtra', '27', '9405', '3450.00', '414.00', '3864.00', '2018-11-14', 30, 18, 'NA', '2018-12-18', 'NA', 'Yes'),
(172, 3, 0, 'SE202', '2018-11-12', 'METER INSTALLATION', 'SHREEKRISHNA ENTERPRISES', '27AUFPB0681B1Z7', 'Girija shankar Vihar', 'Maharashtra', '27', '998331', '7000.00', '1260.00', '8260.00', '2018-11-14', 30, 18, 'Paid', '2018-11-13', 'VERBAL ', 'Yes'),
(173, 3, 0, 'SO18-19\002201', '2018-11-17', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8544', '3380.00', '608.40', '3988.00', '2018-11-17', 30, 18, 'NA', '1970-01-01', 'SO18-19\002201', 'Yes'),
(174, 3, 0, 'GST/18-19/02678', '2018-11-05', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '', '3523.00', '634.14', '4157.00', '2018-11-17', 30, 18, 'NA', '1970-01-01', 'GST/18-19/02678', 'Yes'),
(175, 3, 0, 'SO/18-19/002237', '2018-11-20', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8537', '1188.00', '213.84', '1402.00', '2018-11-21', 30, 18, 'NA', '1970-01-01', 'SO/18-19/002237', 'Yes'),
(176, 3, 0, 'SKC/2293', '2018-11-01', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Divyagar Project', 'Maharashtra', '27', '94054090', '1422.36', '170.68', '1593.00', '2018-11-28', 30, 18, 'NA', '1970-01-01', '514', 'Yes'),
(177, 3, 0, 'SKC/2402', '2018-11-24', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'SP infocity', 'Maharashtra', '27', '94054090', '4872.00', '584.64', '5456.64', '2018-11-28', 30, 18, 'NA', '2018-11-28', '599,553', 'Yes'),
(178, 3, 0, 'GST/18-19/02883', '2018-11-26', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8538', '1756.00', '316.08', '2072.00', '2018-11-28', 30, 18, '', '1970-01-01', '23949', 'Yes'),
(179, 3, 0, 'SH/S/08943/18-19', '2018-11-27', 'KHARADI PUNE', 'NEW INDIA CABLES TRADING PVT LTD', '27AACCN0668E1ZL', 'KHARADI PUNE', 'Maharashtra', '27', '9405', '15582.04', '1869.84', '17452.00', '2018-11-29', 30, 16, 'NA', '2018-11-27', '9413', 'Yes'),
(180, 3, 0, 'SH/S/09039/18-19', '2018-11-29', 'KHARADI PUNE', 'NEW INDIA CABLES TRADING PVT LTD', '27AACCN0668E1ZL', 'KHARADI PUNE', 'Maharashtra', '27', '9405', '608.00', '72.96', '681.00', '2018-11-29', 30, 16, '', '1970-01-01', '9506', 'Yes'),
(181, 3, 0, 'GST/18-19/02864', '2018-11-24', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8536', '1508.00', '271.44', '1779.00', '2018-12-04', 30, 18, 'NA', '1970-01-01', '239290/23930', 'Yes'),
(182, 3, 0, '1761', '2018-11-28', 'CAR SERVICING', 'AUTO CAR CLINIC ', '27AAOFA4444L1Z3', 'SANTRO WORK', 'Maharashtra', '27', '', '2150.86', '387.15', '2538.00', '2018-12-04', 31, 16, 'NA', '1970-01-01', '1761', 'Yes'),
(183, 3, 0, '1761', '2018-11-28', 'CAR SERVICING', 'AUTO CAR CLINIC ', '27AAOFA4444L1Z3', 'SANTRO WORK', 'Maharashtra', '27', '', '4610.00', '1290.80', '5901.00', '2018-12-04', 31, 16, '', '1970-01-01', '1761', 'Yes'),
(184, 3, 0, 'SKC/2534', '2018-12-04', 'LED Lights ', 'SHREE KRISHNA CABLES ', '27AHKPP0748F1Z7', 'Sangli Pune', 'Maharashtra', '27', '94054090', '16033.00', '1923.96', '17957.00', '2018-12-07', 30, 18, 'NA', '1970-01-01', '0781', 'Yes'),
(185, 3, 0, '76', '2018-12-07', '12 LED TUBELIGHTS', 'NINEDOTS ENTERPRISES LLP', '27AAKFN3167H1Z1', 'ANISH ASSOCITES', 'Maharashtra', '27', '9405', '645.00', '77.40', '722.00', '2018-12-07', 30, 18, 'online', '2018-12-08', 'VERBAL', 'Yes'),
(186, 3, 0, 'SO/18-19/002240', '2018-11-21', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'kharadi site', 'Maharashtra', '27', '8544', '1785.00', '321.30', '2106.00', '2018-12-07', 30, 18, 'NA', '1970-01-01', 'SO/18-19/002240', 'Yes'),
(187, 3, 0, 'SO/18-19/002186', '2018-11-15', 'Electrical Material ', 'AJIT ELECTRIC TRADING COMPANY ', '27AAJPN1590M1Z7', 'KARVE NAGAR', 'Maharashtra', '27', '8544', '6258.00', '1126.44', '7384.00', '2018-12-07', 30, 18, 'NA', '1970-01-01', 'SO/18-19/002186', 'Yes'),
(188, 35, 0, '3413413', '2018-12-12', 'fdedfwef', 'NEWTECHAK', '34523523', 'Akshay', 'Maharashtra', '27', '4354235', '34234.00', '1711.70', '35945.70', '2018-12-14', 29, 19, '234353643', '2018-12-12', '4242', 'Yes'),
(189, 0, 0, '', '0000-00-00', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '2018-12-15', 0, 0, '', '1970-01-01', '', 'No'),
(190, 0, 0, '', '0000-00-00', '', '', '', '', '', '', '', '0.00', '0.00', '0.00', '2018-12-15', 0, 0, '', '1970-01-01', '', 'No'),
(191, 35, 0, '23523523537', '2018-12-27', 'Transport Charges', 'AK Properties', '', 'akshay', 'Maharashtra', '27', '', '30000.00', '1500.00', '31500.00', '2018-12-27', 29, 19, '', '1970-01-01', '4242', 'No'),
(192, 60, 0, '2', '2018-12-29', 'Transport Charges', 'DK Properties', '234235', 'datta', 'Maharashtra', '27', '123/124', '500.00', '25.00', '525.00', '2018-12-29', 62, 38, '12341234', '2018-12-31', '1212', 'No'),
(193, 60, 0, '2', '2018-12-29', 'Transport Charges', 'DK Properties', '234235', 'datta', 'Maharashtra', '27', '123/124', '200.00', '10.00', '210.00', '2018-12-29', 62, 38, '4678', '2018-12-29', '1212', 'No'),
(194, 60, 0, '2', '2018-12-29', 'Transport Charges', 'DK Properties', '234235', 'datta', 'Maharashtra', '27', '123/124', '300.00', '15.00', '315.00', '2018-12-29', 62, 38, '55578568', '2018-12-29', '1212', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `fname`, `user_id`) VALUES
(1, 'science', 0),
(2, 'commerce', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
  `id` int(11) NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gender`
--

INSERT INTO `gender` (`id`, `gender`) VALUES
(1, 'Male'),
(2, 'Female');

-- --------------------------------------------------------

--
-- Table structure for table `generate_log`
--

CREATE TABLE IF NOT EXISTS `generate_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sub_user_id` int(11) NOT NULL,
  `sche_type` varchar(255) NOT NULL,
  `cur_date` date NOT NULL,
  `sche_date` date NOT NULL,
  `sche_action` varchar(255) NOT NULL,
  `sche_time` time NOT NULL,
  `en_call_type` varchar(255) NOT NULL,
  `en_status` varchar(255) NOT NULL,
  `en_remark` varchar(255) NOT NULL,
  `student_id` int(11) NOT NULL,
  `status` enum('active','deactive') NOT NULL,
  `reason` text NOT NULL,
  `generated_by` int(11) NOT NULL,
  `docu` varchar(255) NOT NULL,
  `dir_remark` text NOT NULL,
  `dir_war` varchar(255) NOT NULL,
  `remark_by` int(11) NOT NULL,
  `cur_time` time NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `generated_by_name` varchar(255) NOT NULL,
  `upload_document` varchar(255) NOT NULL,
  `mom_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `generate_log`
--

INSERT INTO `generate_log` (`id`, `user_id`, `sub_user_id`, `sche_type`, `cur_date`, `sche_date`, `sche_action`, `sche_time`, `en_call_type`, `en_status`, `en_remark`, `student_id`, `status`, `reason`, `generated_by`, `docu`, `dir_remark`, `dir_war`, `remark_by`, `cur_time`, `file_path`, `generated_by_name`, `upload_document`, `mom_description`) VALUES
(1, 1, 0, 'Phone Call', '2018-04-16', '2018-04-16', '', '01:00:00', '', '1', 'Test', 1, 'active', '', 1, '', 'complete', '', 0, '00:00:00', '', '', '', ''),
(2, 1, 0, 'Meeting', '2018-04-16', '2018-04-17', '', '13:59:00', '', '10', 'Test', 2, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(3, 1, 0, 'Site Visit', '2018-04-17', '2018-04-18', '', '13:00:00', '', '12', 'Test', 4, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(4, 1, 1, 'Meeting', '2018-04-17', '2018-04-18', '', '13:59:00', '', '2', 'aa', 5, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(5, 1, 1, 'Site Visit', '2018-04-17', '2018-04-15', '', '13:00:00', '', '8', 'sda', 5, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(6, 1, 1, 'Site Visit', '2018-04-17', '2018-04-10', '', '01:00:00', '', '9', 'aaaaaa', 6, 'deactive', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(7, 1, 1, 'Phone Call', '2018-04-17', '2018-04-13', '', '14:01:00', '', '1', 'aaaaaaaa', 6, 'deactive', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(8, 1, 1, 'Reminder', '2018-04-17', '2018-04-16', '', '15:03:00', '', '11', 'dssdsada', 6, 'deactive', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(9, 1, 1, 'Site Visit', '2018-04-17', '2018-04-17', '', '02:01:00', '', '3', 'aadasdas', 6, 'deactive', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(10, 1, 0, 'Follow Up', '2018-04-17', '2018-04-19', '', '14:50:00', '', '1', 'Customer asked for call back', 1, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(11, 1, 0, 'Meeting', '2018-05-03', '2018-05-03', '', '12:43:00', '', '1', 'visit ', 9, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(12, 2, 3, 'Meeting', '2018-05-05', '2018-05-05', '', '17:00:00', '', '8', 'meeting on 5:00PM', 10, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(13, 2, 3, 'Payment', '2018-05-05', '2018-05-07', '', '00:00:00', '', '15', 'logo design', 10, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(14, 2, 3, 'Phone Call', '2018-05-07', '2018-05-07', '', '00:00:00', '', '1', '', 14, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(15, 2, 3, 'Site Visit', '2018-05-08', '2018-05-10', '', '13:00:00', '', '12', 'front page of website for Roti Shoti and Kabab\r\nadd.- Mhatre bridge, D P road, pune', 14, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(16, 2, 4, 'Meeting', '2018-05-11', '2018-05-03', '', '01:30:00', '', '12', 'discussed about ERP methodology,quotation is given.', 22, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(17, 2, 4, 'Follow Up', '2018-05-11', '2018-05-04', '', '11:20:00', '', '8', 'mail has been send,waiting for reply', 22, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(18, 2, 4, 'Follow Up', '2018-05-11', '2018-05-11', '', '09:00:00', '', '9', 'Quotation has been send ', 22, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(19, 2, 3, 'Meeting', '2018-05-11', '2018-05-14', '', '10:00:00', '', '8', 'meeting with shri.Rajesh Tope at Jalna.\r\nagenda - discussion about website design for suger factory and sainiki school, explanation of SEO, ', 16, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(20, 2, 4, 'Meeting', '2018-05-11', '2018-03-06', '', '14:30:00', '', '12', 'Met Mr. A K Sarkar, he has shown keen interest in going towards ERP, but is busy with reshuffling of a lot tasks. he asked to send basic methodology of ERP. In the evening after visit, sent the presentation.\r\n', 23, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(21, 2, 4, 'Phone Call', '2018-05-11', '2018-05-02', '', '15:30:00', '', '', '', 23, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(22, 2, 3, 'Meeting', '2018-05-11', '2018-05-10', '', '16:00:00', '', '11', 'As per phone discussion Material regarding website(Roti Shoti) has been collected from Shri. Dhanjay Deshpande, Tilak road, Pune ', 14, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(23, 2, 4, 'Phone Call', '2018-05-11', '2018-05-08', '', '00:00:00', '', '1', 'Spoke with Mr. A K Sarkar, he has told that he will call me as soon as he is free from current activities. he has further assured that company is keen to go for ERP, and after decision they will call only me for further movement', 23, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(24, 2, 4, 'Phone Call', '2018-05-11', '2018-05-02', '', '17:30:00', '', '', '', 24, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(25, 2, 3, 'Meeting', '2018-05-11', '2018-05-19', '', '00:00:00', '', '8', 'presentation of webpage(rotishoti)', 14, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(26, 2, 4, 'Meeting', '2018-05-11', '2018-02-09', '', '19:30:00', '', '', 'Met with Mr. Ptwardhan in formal meeting. he has told his requirements. he has asked for a few soft skill trainings also. these trainings will be the ice breakers session with organization.', 24, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(27, 2, 3, 'Phone Call', '2018-05-11', '2018-05-11', '', '13:00:00', '', '1', 'I called(twice) to ask for the videoclip but he did not pick up the call.', 14, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(28, 2, 3, 'Follow Up', '2018-05-11', '2018-05-10', '', '12:30:00', '', '1', 'wants the changes in colour combination of Tag line.', 10, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(29, 2, 4, 'Meeting', '2018-05-14', '2018-05-16', '', '15:30:00', '', '', '', 25, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(30, 2, 4, 'Follow Up', '2018-05-14', '2018-05-13', '', '11:00:00', '', '14', 'qutation sent. witing for reply', 24, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(31, 2, 3, 'Meeting', '2018-05-15', '2018-05-16', '', '12:30:00', '', '8', '', 26, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(32, 2, 3, 'Follow Up', '2018-05-15', '2018-05-16', '', '11:00:00', '', '1', 'Call Back to MR. Gakwad for the list of Colleges ', 16, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(33, 2, 3, 'Phone Call', '2018-05-18', '2018-05-22', '', '14:00:00', '', '1', '', 29, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(34, 2, 3, 'Phone Call', '2018-05-18', '2018-05-21', '', '00:00:00', '', '1', '', 30, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(35, 2, 3, 'Meeting', '2018-05-18', '2018-05-16', '', '13:00:00', '', '11', 'their is a meeting as decided,changes in tag line,color scheme has been shown,he has suggested  in the logo.\r\n(In letter A)', 10, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(36, 2, 3, 'Phone Call', '2018-05-18', '2018-05-18', '', '18:00:00', '', '8', 'for some reason postponed a meeting of 19th. ', 14, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(37, 2, 4, 'Meeting', '2018-05-19', '2018-05-17', '', '16:00:00', '', '9', 'Quotation is sent to Mr. Prashant Karandikar. He is out of station. will be back on 21st May. he will check quotation once he is back. 22nd a follow up call needs to be done', 25, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(38, 2, 4, 'Reminder', '2018-05-21', '2018-05-22', '', '11:15:00', '', '', '', 31, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(39, 2, 4, 'Reminder', '2018-05-21', '2018-05-17', '', '11:00:00', '', '9', 'Quotation is sent', 25, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(40, 2, 3, 'Phone Call', '2018-05-21', '2018-05-19', '', '13:00:00', '', '1', 'ask for next appointment ', 14, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(41, 2, 4, 'Phone Call', '2018-05-21', '2018-05-21', '', '17:00:00', '', '12', 'Called Mr. Mane. He has shown interest in ERP. Next meeting is planned on Friday  25th May', 32, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(42, 2, 4, 'Meeting', '2018-05-22', '2018-05-02', '', '00:00:00', '', '4', '', 32, 'active', '', 4, '', '', '', 0, '00:00:00', '', '', '', ''),
(43, 2, 0, '2', '2018-05-28', '1970-12-31', '', '12:59:00', '', '12', 'testibng', 36, 'active', '', 3, '', 'found this lead to be ok', '', 0, '00:00:00', '', '', 'uploads/config.php', 'meet'),
(44, 2, 0, '3', '2018-07-30', '2018-07-30', '', '17:00:00', '', '1', 'Testing', 36, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(45, 2, 0, '7', '2018-07-30', '2018-07-30', '', '22:01:00', '', '8', 'other', 36, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(46, 2, 0, '2', '2018-07-30', '2018-07-30', '', '21:10:00', '', '12', 'test', 36, 'active', '', 3, '', '', '', 0, '00:00:00', '', '', '', ''),
(47, 1, 0, '1', '2018-12-21', '2018-12-12', '', '00:00:00', '', '', 'ghjfgj', 150, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(48, 1, 0, '2', '2018-12-21', '2019-12-12', '', '00:00:00', '', '12', 'good', 2, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(49, 1, 0, '1', '2018-12-21', '2018-12-21', '', '00:00:00', '', '14', 'test', 150, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(50, 35, 0, '1', '2018-12-22', '2018-12-22', '', '00:00:00', '', '14', 'test', 150, 'active', '', 35, '', '', '', 0, '00:00:00', '', '', '', ''),
(51, 35, 0, '1', '2018-12-22', '2018-12-21', '', '00:00:00', '', '14', 'test', 143, 'active', '', 17, '', '', '', 0, '00:00:00', '', '', '', ''),
(52, 35, 0, '1', '2018-12-26', '2018-12-26', '', '00:00:00', '', '14', 'Test', 151, 'active', '', 17, '', '', '', 0, '00:00:00', '', '', '', ''),
(53, 35, 0, '1', '2019-01-04', '2019-01-04', '', '00:00:00', '', '1', 'done', 154, 'active', '', 35, '', '', '', 0, '00:00:00', '', '', '', ''),
(61, 1, 0, '5', '2019-01-15', '2019-01-03', '', '00:00:00', '', 'Select Status', 'yuot7u', 1, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(62, 1, 0, '5', '2019-01-15', '2019-01-03', '', '00:00:00', '', 'Select Status', 'yuot7u', 1, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(63, 1, 0, '5', '2019-01-15', '2019-01-03', '', '00:00:00', '', 'Select Status', 'yuot7u', 1, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(66, 1, 0, '1', '2019-01-16', '2019-01-08', '', '00:12:00', '', '1', 'Good', 189, 'active', '', 1, '', '', '', 0, '00:00:00', '', '', '', ''),
(67, 35, 0, '1', '2019-01-16', '2019-01-14', '', '00:12:00', '', '1', 'Good', 189, 'active', '', 35, '', 'well done', '', 0, '00:00:00', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `generate_report`
--

CREATE TABLE IF NOT EXISTS `generate_report` (
  `id` int(11) NOT NULL,
  `dir_remark` text NOT NULL,
  `status` enum('no','ok') NOT NULL,
  `date_record` date NOT NULL,
  `time` time NOT NULL,
  `customer_id` int(11) NOT NULL,
  `generated_by` int(11) NOT NULL,
  `remark_to` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE IF NOT EXISTS `item` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sub_user_id` int(11) NOT NULL,
  `quantity` decimal(53,2) NOT NULL,
  `discount` decimal(53,2) NOT NULL DEFAULT '0.00',
  `disc_amt` decimal(53,2) NOT NULL,
  `tax_amt` decimal(53,2) NOT NULL,
  `common_id` bigint(20) DEFAULT NULL,
  `course_id` bigint(20) DEFAULT NULL,
  `description` varchar(20000) DEFAULT NULL,
  `unitary_cost` decimal(53,2) NOT NULL,
  `price` decimal(53,2) NOT NULL,
  `ccode` varchar(255) NOT NULL,
  `session` varchar(255) NOT NULL,
  `state_code` varchar(50) NOT NULL,
  `status` int(11) NOT NULL COMMENT '1-active 0-deactive',
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=678 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id`, `user_id`, `sub_user_id`, `quantity`, `discount`, `disc_amt`, `tax_amt`, `common_id`, `course_id`, `description`, `unitary_cost`, `price`, `ccode`, `session`, `state_code`, `status`, `type`) VALUES
(1, 1, 0, '1.00', '0.00', '0.00', '539.82', 1, 1, 'Hosting', '2999.00', '3538.82', '578411', '2018-03-0001078-STO', '27', 1, ''),
(2, 1, 0, '1.00', '0.00', '0.00', '1679.72', 1, 1, 'Hosting and maintainance', '5999.00', '7678.72', '578411', '2018-03-0001078-STO', '27', 1, ''),
(3, 1, 0, '250.00', '0.00', '0.00', '69.00', 2, 2, 'Folder printing', '2.30', '644.00', '8974511', '2018-03-0001081-STO', '27', 1, 'estimate'),
(4, 1, 0, '15.00', '0.00', '0.00', '27.00', 2, 2, 'I-Cards', '15.00', '252.00', '8974511', '2018-03-0001081-STO', '27', 1, 'estimate'),
(5, 1, 0, '250.00', '0.00', '0.00', '69.00', 3, 2, 'Folder printing', '2.30', '644.00', '8974511', '2018-03-0001081-STO490', '27', 1, 'proforma'),
(6, 1, 0, '15.00', '0.00', '0.00', '27.00', 3, 2, 'I-Cards', '15.00', '252.00', '8974511', '2018-03-0001081-STO424', '27', 1, 'proforma'),
(7, 1, 0, '250.00', '0.00', '0.00', '69.00', 4, 2, 'Folder printing', '2.30', '644.00', '8974511', '2018-03-0001081-STO490856', '27', 1, ''),
(8, 1, 0, '15.00', '0.00', '0.00', '27.00', 4, 2, 'I-Cards', '15.00', '252.00', '8974511', '2018-03-0001081-STO424518', '27', 1, ''),
(9, 1, 0, '10.00', '0.00', '0.00', '18.00', 2, 2, 'I-Cards', '15.00', '168.00', '8974511', '2018-03-0001081-STO', '27', 1, 'estimate'),
(10, 1, 0, '250.00', '0.00', '0.00', '69.00', 5, 2, 'Folder printing', '2.30', '644.00', '8974511', '2018-03-0001081-STO46', '27', 1, 'proforma'),
(11, 1, 0, '15.00', '0.00', '0.00', '27.00', 5, 2, 'I-Cards', '15.00', '252.00', '8974511', '2018-03-0001081-STO648', '27', 1, 'proforma'),
(12, 1, 0, '10.00', '0.00', '0.00', '18.00', 5, 2, 'I-Cards', '15.00', '168.00', '8974511', '2018-03-0001081-STO478', '27', 1, 'proforma'),
(13, 1, 2, '50.00', '0.00', '0.00', '90.00', 6, 2, 'I-Cards', '15.00', '840.00', '8974511', '2018-03-0001083-STO', '27', 1, ''),
(14, 2, 0, '1.00', '0.00', '0.00', '300.00', 7, 3, 'Invoice ', '2500.00', '2800.00', '879411', '2018-03-0001088-STO', '27', 1, ''),
(15, 2, 3, '1.00', '0.00', '0.00', '359.88', 8, 3, 'CRM', '2999.00', '3358.88', '879411', '2018-03-0001090-STO', '27', 1, ''),
(16, 2, 3, '1.00', '0.00', '0.00', '0.00', 9, 3, 'CRM and Invoice', '2999.00', '2999.00', '879411', '2018-03-0001092-STO', '27', 1, 'estimate'),
(17, 2, 3, '1.00', '0.00', '0.00', '0.00', 10, 3, 'CRM and Invoice', '2999.00', '2999.00', '879411', '2018-03-0001092-STO345', '27', 1, 'proforma'),
(18, 2, 3, '1.00', '0.00', '0.00', '0.00', 11, 3, 'CRM and Invoice', '2999.00', '2999.00', '879411', '2018-03-0001092-STO345832', '27', 1, ''),
(19, 2, 3, '1.00', '0.00', '0.00', '0.00', 12, 3, 'CRM and Invoice', '2999.00', '2999.00', '879411', '2018-03-0001092-STO935', '27', 1, 'proforma'),
(20, 2, 3, '1.00', '0.00', '0.00', '0.00', 13, 3, 'CRM and Invoice', '2999.00', '2999.00', '879411', '2018-03-0001092-STO935160', '27', 1, ''),
(23, 3, 0, '15.00', '0.00', '0.00', '121.50', 16, 4, 'Himalaya-Leamon', '45.00', '796.50', '847511', '2018-03-0001112-STO256', '27', 1, 'proforma'),
(26, 15, 0, '1000.00', '0.00', '0.00', '720.00', 17, 8, 'House cleaning services', '4.00', '4720.00', '998533', '2018-03-0001120-STO', '27', 1, ''),
(27, 17, 0, '2.00', '50.00', '4500.00', '810.00', 18, 12, 'nokia', '4500.00', '5310.00', 'hjcvj', '2018-03-0001137-STO', '27', 1, 'estimate'),
(28, 17, 0, '1.00', '0.00', '0.00', '650.00', 18, 13, 'lenovo', '13000.00', '13650.00', 'llk11', '2018-03-0001138-STO', '27', 1, 'estimate'),
(29, 17, 0, '1.00', '20.00', '9000.00', '6480.00', 19, 12, 'sony', '45000.00', '42480.00', 'fgf', '2018-03-0001141-STO', '27', 1, ''),
(31, 17, 0, '1.00', '0.00', '0.00', '14040.00', 19, 16, 'apple', '78000.00', '92040.00', '6', '2018-03-0001141-STO', '27', 1, ''),
(32, 17, 0, '2.00', '50.00', '4500.00', '810.00', 20, 12, 'nokia', '4500.00', '5310.00', 'hjcvj', '2018-03-0001137-STO723', '27', 1, 'proforma'),
(33, 17, 0, '1.00', '0.00', '0.00', '650.00', 20, 13, 'lenovo', '13000.00', '13650.00', 'llk11', '2018-03-0001138-STO449', '27', 1, 'proforma'),
(35, 11, 0, '12.00', '0.00', '0.00', '0.00', 21, 19, '', '0.00', '0.00', '', '2018-03-0001152-STO', '27', 1, ''),
(37, 27, 0, '25000.00', '0.00', '0.00', '4500.00', 22, 20, 'brand development ', '1.00', '29500.00', '', '2018-03-0001154-STO', '27', 1, 'estimate'),
(38, 32, 0, '1.00', '0.00', '0.00', '0.00', 23, 21, 'Submersible Sewage Pump 3 HP THree Phase ', '5000.00', '5000.00', '', '2018-03-0001180-STO', '27', 1, 'estimate'),
(39, 32, 0, '1.00', '0.00', '0.00', '0.00', 23, 22, 'Kirloskar Make Monobloc Pump 1 hp THree Phase ', '2000.00', '2000.00', '', '2018-03-0001180-STO', '27', 1, 'estimate'),
(40, 32, 0, '1.00', '0.00', '0.00', '0.00', 24, 21, 'Submersible Sewage Pump 3 HP THree Phase ', '5000.00', '5000.00', '', '2018-03-0001180-STO143', '27', 1, 'proforma'),
(41, 32, 0, '1.00', '0.00', '0.00', '0.00', 24, 22, 'Kirloskar Make Monobloc Pump 1 hp THree Phase ', '2000.00', '2000.00', '', '2018-03-0001180-STO255', '27', 1, 'proforma'),
(42, 32, 0, '1.00', '0.00', '0.00', '0.00', 25, 21, 'Submersible Sewage Pump 3 HP THree Phase ', '5000.00', '5000.00', '', '2018-03-0001180-STO143229', '27', 1, ''),
(43, 32, 0, '1.00', '0.00', '0.00', '0.00', 25, 22, 'Kirloskar Make Monobloc Pump 1 hp THree Phase ', '2000.00', '2000.00', '', '2018-03-0001180-STO255478', '27', 1, ''),
(44, 32, 0, '1.00', '0.00', '0.00', '573.60', 26, 24, 'Kirloskar Make Monobloc Pump', '4780.00', '5353.60', '84137010', '2018-03-0001183-STO', '27', 1, 'estimate'),
(45, 32, 0, '1.00', '0.00', '0.00', '1382.40', 26, 25, 'Submersible Sewage Pump 5 HP Three Phase', '7680.00', '9062.40', '84137096', '2018-03-0001183-STO', '27', 1, 'estimate'),
(46, 32, 0, '1.00', '0.00', '0.00', '573.60', 27, 24, 'Kirloskar Make Monobloc Pump', '4780.00', '5353.60', '84137010', '2018-03-0001183-STO903', '27', 1, 'proforma'),
(47, 32, 0, '1.00', '0.00', '0.00', '1382.40', 27, 25, 'Submersible Sewage Pump 5 HP Three Phase', '7680.00', '9062.40', '84137096', '2018-03-0001183-STO844', '27', 1, 'proforma'),
(48, 32, 0, '1.00', '0.00', '0.00', '573.60', 28, 24, 'Kirloskar Make Monobloc Pump', '4780.00', '5353.60', '84137010', '2018-03-0001183-STO903500', '27', 1, ''),
(49, 32, 0, '1.00', '0.00', '0.00', '1382.40', 28, 25, 'Submersible Sewage Pump 5 HP Three Phase', '7680.00', '9062.40', '84137096', '2018-03-0001183-STO844866', '27', 1, ''),
(50, 33, 0, '1.00', '0.00', '0.00', '45000.00', 29, 26, '24 feet', '250000.00', '295000.00', '', '2018-04-0001191-STO', '27', 1, 'estimate'),
(55, 33, 0, '1.00', '0.00', '0.00', '46800.00', 30, 27, 'Size	24 feet (7.32 meter) Model	F24 Blade MOC	Magnelium Alloy with PVC Profile Motor Make	Tsubaki Japan VFD Make	Lenze/Yaskawa Maximum Speed	57 RPM Motor Power	1.4 kW Current	6.3 amps Airflow	187 m3/s (3,97,701 ft3/min) Coverage Area	2322 m2 (25000 ft2) Coverage Radius	50 m (164 ft) Weight	158 kg Sound 	65 dBA', '260000.00', '306800.00', '', '2018-04-0001193-STO', '27', 1, 'estimate'),
(57, 33, 0, '1.00', '0.00', '0.00', '46800.00', 31, 27, 'Size	24 feet (7.32 meter) Model	F24 Blade MOC	Magnelium Alloy with PVC Profile Motor Make	Tsubaki Japan VFD Make	Lenze/Yaskawa Maximum Speed	57 RPM Motor Power	1.4 kW Current	6.3 amps Airflow	187 m3/s (3,97,701 ft3/min) Coverage Area	2322 m2 (25000 ft2) Coverage Radius	50 m (164 ft) Weight	158 kg Sound 	65 dBA', '260000.00', '306800.00', '', '2018-04-0001193-STO753', '27', 1, 'proforma'),
(58, 33, 0, '1.00', '0.00', '0.00', '46800.00', 32, 27, 'Size	24 feet (7.32 meter) Model	F24 Blade MOC	Magnelium Alloy with PVC Profile Motor Make	Tsubaki Japan VFD Make	Lenze/Yaskawa Maximum Speed	57 RPM Motor Power	1.4 kW Current	6.3 amps Airflow	187 m3/s (3,97,701 ft3/min) Coverage Area	2322 m2 (25000 ft2) Coverage Radius	50 m (164 ft) Weight	158 kg Sound 	65 dBA', '260000.00', '306800.00', '', '2018-04-0001193-STO753930', '27', 1, ''),
(59, 1, 0, '1.00', '0.00', '0.00', '360.00', 33, 1, 'Hosting and maintainance', '2000.00', '2360.00', '578411', '2018-04-0001202-STO', '27', 1, 'estimate'),
(60, 1, 0, '1.00', '0.00', '0.00', '360.00', 34, 1, 'Hosting and maintainance', '2000.00', '2360.00', '578411', '2018-04-0001202-STO37', '27', 1, 'proforma'),
(61, 1, 0, '1.00', '0.00', '0.00', '360.00', 35, 1, 'Hosting and maintainance', '2000.00', '2360.00', '578411', '2018-04-0001202-STO37705', '27', 1, ''),
(62, 1, 0, '1.00', '0.00', '0.00', '360.00', 36, 1, 'Hosting and maintainance', '2000.00', '2360.00', '578411', '2018-04-0001202-STO262', '27', 1, 'proforma'),
(63, 1, 0, '1.00', '0.00', '0.00', '360.00', 37, 1, 'Hosting and maintainance', '2000.00', '2360.00', '578411', '2018-04-0001202-STO262978', '27', 1, ''),
(64, 1, 0, '1.00', '0.00', '0.00', '240.00', 38, 1, 'Hosting and maintainance', '2000.00', '2240.00', '578411', '2018-04-0001211-STO', '2', 1, 'invoice'),
(66, 35, 0, '1.00', '0.00', '0.00', '6890.52', 39, 30, '1.5TR', '24609.00', '31499.52', '', '2018-04-0001214-STO', '', 1, 'invoice'),
(67, 35, 0, '1.00', '0.00', '0.00', '9870.00', 39, 31, '2 TR', '35250.00', '45120.00', '', '2018-04-0001214-STO', '', 1, 'invoice'),
(68, 0, 0, '0.00', '0.00', '0.00', '0.00', 39, 7, '', '0.00', '0.00', '', '', '', 1, 'invoice'),
(69, 35, 0, '2.00', '0.00', '0.00', '11488.96', 39, 29, '1 TR AC', '20516.00', '52520.96', '', '2018-04-0001216-STO', '', 1, 'invoice'),
(70, 35, 0, '1.00', '0.00', '0.00', '6890.52', 39, 30, '', '24609.00', '31499.52', '', '2018-04-0001216-STO', '', 1, 'invoice'),
(71, 35, 0, '1.00', '0.00', '0.00', '9870.00', 39, 31, '', '35250.00', '45120.00', '', '2018-04-0001216-STO', '', 1, 'invoice'),
(72, 3, 0, '70.00', '0.00', '0.00', '2856.00', 39, 32, 'Round - 6000K', '340.00', '26656.00', '9405', '2018-04-0001219-STO', '27', 1, 'invoice'),
(73, 1, 0, '1.00', '0.00', '0.00', '360.00', 42, 1, 'Hosting and maintainance', '2000.00', '2360.00', '578411', '2018-04-0001202-STO692', '27', 1, 'proforma'),
(74, 1, 0, '250.00', '0.00', '0.00', '69.00', 43, 2, 'Folder printing', '2.30', '644.00', '8974511', '2018-03-0001081-STO46361', '27', 1, 'invoice'),
(75, 1, 0, '15.00', '0.00', '0.00', '27.00', 43, 2, 'I-Cards', '15.00', '252.00', '8974511', '2018-03-0001081-STO648910', '27', 1, 'invoice'),
(76, 1, 0, '10.00', '0.00', '0.00', '18.00', 43, 2, 'I-Cards', '15.00', '168.00', '8974511', '2018-03-0001081-STO478152', '27', 1, 'invoice'),
(77, 3, 0, '70.00', '0.00', '0.00', '2856.00', 41, 32, 'Round - 6000K', '340.00', '26656.00', '9405', '', '27', 1, 'invoice'),
(79, 35, 0, '2.00', '0.00', '0.00', '11488.96', 44, 29, '1 TR AC', '20516.00', '52520.96', '84151010', '2018-04-0001224-STO', '27', 1, 'invoice'),
(81, 35, 0, '1.00', '0.00', '0.00', '6890.52', 44, 30, '1.5 TR AC', '24609.00', '31499.52', '84151010', '2018-04-0001224-STO', '27', 1, 'invoice'),
(82, 35, 0, '1.00', '0.00', '0.00', '9870.00', 44, 31, '2 TR AC', '35250.00', '45120.00', '8415', '2018-04-0001224-STO', '27', 1, 'invoice'),
(84, 35, 0, '1.00', '5.00', '2250.00', '7695.00', 45, 33, 'MIG 18 Plus for 250sqft Cooling', '45000.00', '50445.00', '8479', '2018-04-0001228-STO', '27', 1, 'estimate'),
(85, 35, 0, '1.00', '5.00', '3250.00', '11115.00', 45, 34, 'MIG 21 Plus for 450 Sqft Cooling', '65000.00', '72865.00', '8479', '2018-04-0001228-STO', '27', 1, 'estimate'),
(86, 1, 0, '1.00', '0.00', '0.00', '360.00', 46, 1, 'Hosting and maintainance', '2000.00', '2360.00', '578411', '2018-04-0001202-STO408', '27', 1, 'proforma'),
(87, 1, 0, '1.00', '0.00', '0.00', '360.00', 47, 1, 'Hosting and maintainance', '2000.00', '2360.00', '578411', '2018-04-0001202-STO408104', '27', 1, 'invoice'),
(88, 35, 0, '1.00', '0.00', '0.00', '1530.00', 48, 35, 'M,S ANGLE DUCT SUPPORTING WORK IN 40X3 ANGLE SIZE : 1.5 MTR WIDTH X 5 MTR HIGHT DUCT BOTH SIDE WITH FIXING, ANCHOR FASTNER', '8500.00', '10030.00', '84796000', '2018-04-0001236-STO', '27', 1, 'estimate'),
(89, 35, 0, '3.00', '0.00', '0.00', '1092.00', 48, 36, 'Turbojet Delux Exhaust Fan', '1300.00', '4992.00', '8414', '2018-04-0001236-STO', '27', 1, 'estimate'),
(90, 35, 0, '1.00', '0.00', '0.00', '4728.78', 49, 37, '', '26271.00', '31000.00', '', '2018-05-0001245-STO', '27', 1, 'invoice'),
(92, 35, 0, '1.00', '0.00', '0.00', '1860.00', 50, 38, 'SR NO - A18GAP001353 ', '15500.00', '17360.00', '', '2018-05-0001247-STO', '27', 1, 'invoice'),
(95, 35, 0, '1.00', '0.00', '0.00', '1860.00', 50, 38, 'SR NO - A18GAP001348', '15500.00', '17360.00', '', '2018-05-0001248-STO', '27', 1, 'invoice'),
(97, 35, 0, '1.00', '0.00', '0.00', '990.00', 51, 39, 'MODEL NO - 1115 E2 S/W SR NO - 17HEOHGAU065331', '5500.00', '6490.00', '8504', '2018-05-0001252-STO', '27', 1, 'invoice'),
(98, 35, 0, '1.00', '0.00', '0.00', '3502.19', 51, 40, 'Sr no - 6CH358F1008125', '12507.81', '16010.00', '85072000', '2018-05-0001252-STO', '27', 1, 'invoice'),
(99, 3, 0, '100.00', '0.00', '0.00', '4080.00', 52, 32, 'Round - 6000K', '340.00', '38080.00', '9405', '2018-05-0001255-STO', '27', 1, 'invoice'),
(100, 3, 0, '1.00', '0.00', '0.00', '360.00', 52, 41, '2 Round Trips ', '2000.00', '2360.00', '', '2018-05-0001255-STO', '27', 1, 'invoice'),
(101, 35, 0, '1.00', '0.00', '0.00', '53389.83', 53, 42, 'ENG NO - 3H.8407/1821000', '296610.16', '350000.00', '85021100', '2018-05-0001259-STO', '27', 1, 'invoice'),
(102, 35, 0, '1.00', '0.00', '0.00', '23644.07', 54, 43, 'Eng no - CC1.4007/1800323', '131355.93', '155000.00', '85021100', '2018-05-0001262-STO', '27', 1, 'invoice'),
(103, 35, 0, '1.00', '0.00', '0.00', '70169.49', 55, 44, 'Eng no - T4.8907/1820833', '389830.50', '460000.00', '85021100', '2018-05-0001264-STO', '27', 1, 'invoice'),
(104, 1, 0, '2.00', '2.00', '80.00', '705.60', 35, 1, 'Hosting and maintainance', '2000.00', '4625.60', '578411', '2018-04-0001202-STO37705', '27', 1, 'invoice'),
(105, 3, 0, '2.00', '0.00', '0.00', '372.00', 56, 45, 'Street Light - 6000K', '1550.00', '3472.00', '94054090', '2018-05-0001266-STO', '27', 1, 'invoice'),
(107, 3, 0, '2.00', '0.00', '0.00', '64.80', 56, 46, 'Surface light -6000K', '270.00', '604.80', '94054090', '2018-05-0001266-STO', '27', 1, 'invoice'),
(108, 3, 0, '4.00', '0.00', '0.00', '468.00', 56, 47, 'Driver for COB', '650.00', '3068.00', '8504', '2018-05-0001270-STO', '27', 1, 'invoice'),
(109, 3, 0, '100.00', '0.00', '0.00', '4080.00', 58, 32, 'Round - 6000K', '340.00', '38080.00', '9405', '2018-05-0001272-STO', '27', 1, 'invoice'),
(110, 3, 0, '1.00', '0.00', '0.00', '360.00', 58, 41, '2 Round Trips ', '2000.00', '2360.00', '', '2018-05-0001272-STO', '27', 1, 'invoice'),
(111, 3, 0, '21.00', '0.00', '0.00', '4435.20', 59, 48, '6000k ', '1760.00', '41395.20', '94054090', '2018-05-0001276-STO', '27', 1, 'estimate'),
(112, 3, 0, '32.00', '0.00', '0.00', '1305.60', 59, 32, 'Round - 6000K', '340.00', '12185.60', '9405', '2018-05-0001276-STO', '27', 1, 'estimate'),
(113, 3, 0, '5.00', '0.00', '0.00', '57.00', 59, 49, '5 Meter LED strip', '95.00', '532.00', '94054090', '2018-05-0001276-STO', '27', 1, 'estimate'),
(114, 3, 0, '1.00', '0.00', '0.00', '63.00', 59, 50, '2A ', '350.00', '413.00', '8504', '2018-05-0001276-STO', '27', 1, 'estimate'),
(115, 3, 0, '21.00', '0.00', '0.00', '4435.20', 60, 48, '6000k ', '1760.00', '41395.20', '94054090', '2018-05-0001276-STO611', '27', 1, 'proforma'),
(116, 3, 0, '32.00', '0.00', '0.00', '1305.60', 60, 32, 'Round - 6000K', '340.00', '12185.60', '9405', '2018-05-0001276-STO944', '27', 1, 'proforma'),
(117, 3, 0, '5.00', '0.00', '0.00', '57.00', 60, 49, '5 Meter LED strip', '95.00', '532.00', '94054090', '2018-05-0001276-STO928', '27', 1, 'proforma'),
(118, 3, 0, '1.00', '0.00', '0.00', '63.00', 60, 50, '2A ', '350.00', '413.00', '8504', '2018-05-0001276-STO623', '27', 1, 'proforma'),
(119, 3, 0, '21.00', '0.00', '0.00', '4435.20', 61, 48, '6000k ', '1760.00', '41395.20', '94054090', '2018-05-0001279-STO', '27', 1, 'estimate'),
(120, 3, 0, '32.00', '0.00', '0.00', '1305.60', 61, 32, 'Round - 6000K', '340.00', '12185.60', '9405', '2018-05-0001279-STO', '27', 1, 'estimate'),
(121, 3, 0, '1.00', '0.00', '0.00', '63.00', 61, 51, '2A ', '350.00', '413.00', '8504', '2018-05-0001279-STO', '27', 1, 'estimate'),
(122, 3, 0, '5.00', '0.00', '0.00', '57.00', 61, 49, '5 Meter LED strip', '95.00', '532.00', '94054090', '2018-05-0001279-STO', '27', 1, 'estimate'),
(123, 3, 0, '2.00', '0.00', '0.00', '372.00', 62, 45, 'Street Light - 6000K', '1550.00', '3472.00', '94054090', '2018-05-0001282-STO', '27', 1, 'invoice'),
(124, 3, 0, '2.00', '0.00', '0.00', '64.80', 62, 46, 'Surface light -6000K', '270.00', '604.80', '94054090', '2018-05-0001282-STO', '27', 1, 'invoice'),
(128, 3, 0, '20.00', '0.00', '0.00', '71100.00', 63, 52, '15 W Solar LED Light, 85mh Battery -Excide , Battery box,85W Panel, 17feet pole, Cable,', '19750.00', '466100.00', '', '2018-05-0001284-STO', '27', 1, 'estimate'),
(129, 3, 0, '20.00', '0.00', '0.00', '9000.00', 63, 53, 'Labour cost, Electrical wiring', '2500.00', '59000.00', '', '2018-05-0001284-STO', '27', 1, 'estimate'),
(130, 3, 0, '1.00', '0.00', '0.00', '1260.00', 63, 41, '2 Round Trips - Approximate & at Actual', '7000.00', '8260.00', '', '2018-05-0001284-STO', '27', 1, 'estimate'),
(134, 3, 0, '4.00', '0.00', '0.00', '468.00', 57, 47, 'Driver for COB', '650.00', '3068.00', '8504', '', '27', 1, 'invoice'),
(135, 1, 0, '1.00', '0.00', '0.00', '3600.18', 65, 54, 'abc', '20001.00', '23601.18', '01', '2018-05-0001292-STO', '27', 1, 'estimate'),
(136, 1, 0, '2.00', '0.00', '0.00', '728.28', 65, 55, 'abc', '2023.00', '4774.28', '0132', '2018-05-0001292-STO', '27', 1, 'estimate'),
(137, 3, 0, '20.00', '0.00', '0.00', '19750.00', 64, 52, '15 W Solar LED Light, 75am Battery -Excide , Battery box,85W Panel, 17feet pole, Cable,', '19750.00', '414750.00', '', '2018-05-0001287-STO', '27', 1, 'estimate'),
(138, 3, 0, '20.00', '0.00', '0.00', '9000.00', 64, 53, 'Labour cost, Electrical wiring', '2500.00', '59000.00', '', '2018-05-0001287-STO', '27', 1, 'estimate'),
(139, 3, 0, '1.00', '0.00', '0.00', '1260.00', 64, 41, '2 Round Trips - Approximate & at Actual', '7000.00', '8260.00', '', '2018-05-0001287-STO', '27', 1, 'estimate'),
(140, 3, 0, '30.00', '0.00', '0.00', '648.00', 66, 56, 'Round - 3000K WW', '180.00', '6048.00', '9405', '2018-05-0001294-STO', '27', 1, 'invoice'),
(142, 3, 0, '1.00', '0.00', '0.00', '630.00', 68, 57, 'services including Electrical wiring & fitting services', '3500.00', '4130.00', '995461', '2018-05-0001300-STO', '27', 1, 'invoice'),
(143, 35, 0, '1.00', '0.00', '0.00', '5775.00', 67, 29, '1 TR AC', '20625.00', '26400.00', '84151010', '', '27', 1, 'invoice'),
(144, 35, 0, '1.00', '0.00', '0.00', '17613.00', 69, 58, 'Vaayu MIG 24 Model', '97850.00', '115463.00', '84796000', '2018-05-0001304-STO', '27', 1, 'invoice'),
(145, 35, 0, '1.00', '0.00', '0.00', '16200.00', 69, 59, 'Ducting for MIG 24', '90000.00', '106200.00', '84796000', '2018-05-0001304-STO', '27', 1, 'invoice'),
(146, 35, 0, '3.00', '0.00', '0.00', '1092.00', 70, 60, 'Exhaust Fan', '1300.00', '4992.00', '84140000', '2018-05-0001305-STO', '27', 1, 'invoice'),
(147, 35, 0, '1.00', '0.00', '0.00', '1530.00', 70, 61, 'Duct Supporting Work', '8500.00', '10030.00', '84796000', '2018-05-0001305-STO', '27', 1, 'invoice'),
(148, 3, 0, '21.00', '0.00', '0.00', '4435.20', 72, 48, '6000k ', '1760.00', '41395.20', '94054090', '2018-05-0001308-STO', '27', 1, 'invoice'),
(149, 3, 0, '32.00', '0.00', '0.00', '1305.60', 72, 32, 'Round - 6000K', '340.00', '12185.60', '9405', '2018-05-0001308-STO', '27', 1, 'invoice'),
(150, 3, 0, '5.00', '0.00', '0.00', '57.00', 72, 49, '5 Meter LED strip', '95.00', '532.00', '94054090', '2018-05-0001308-STO', '27', 1, 'invoice'),
(153, 3, 0, '1.00', '0.00', '0.00', '63.00', 72, 62, '3A ', '350.00', '413.00', '8504', '2018-05-0001308-STO', '27', 1, 'invoice'),
(154, 35, 0, '1.00', '0.00', '0.00', '3267.46', 71, 63, '', '18152.54', '21420.00', '85016100', '', '27', 1, 'invoice'),
(155, 3, 0, '1.00', '0.00', '0.00', '144.00', 72, 41, 'Location - Kharadi', '800.00', '944.00', '', '2018-05-0001308-STO', '27', 1, 'invoice'),
(156, 1, 0, '2.00', '2.00', '80.00', '705.60', 73, 1, 'Hosting and maintainance', '2000.00', '4625.60', '578411', '2018-05-0001315-STO', '23', 1, 'estimate'),
(157, 1, 0, '2.00', '0.00', '0.00', '728.28', 73, 55, 'abc', '2023.00', '4774.28', '0132', '2018-05-0001315-STO', '27', 1, 'estimate'),
(159, 1, 0, '2.00', '0.00', '0.00', '728.28', 74, 55, 'abc', '2023.00', '4774.28', '0132', '2018-05-0001315-STO313', '27', 1, 'proforma'),
(160, 1, 0, '2.00', '0.00', '0.00', '728.28', 75, 55, 'abc', '2023.00', '4774.28', '0132', '2018-05-0001315-STO313994', '27', 1, 'invoice'),
(161, 1, 0, '1.00', '0.00', '0.00', '180.00', 47, 1, 'Hosting ', '1500.00', '1680.00', '578411', '2018-04-0001202-STO408104', '27', 1, 'invoice'),
(162, 3, 0, '1890.00', '0.00', '0.00', '226.80', 76, 64, 'Marvel Plus -White', '1.00', '2116.80', '9405', '2018-05-0001324-STO', '27', 1, 'estimate'),
(163, 3, 0, '3025.00', '0.00', '0.00', '363.00', 76, 65, 'Marvel Plus -White', '1.00', '3388.00', '9405', '2018-05-0001324-STO', '27', 1, 'estimate'),
(166, 35, 0, '1.00', '0.00', '0.00', '7700.00', 77, 30, '1.5 TR AC', '27500.00', '35200.00', '84151010', '2018-05-0001328-STO', '27', 1, 'estimate'),
(167, 35, 0, '2.00', '0.00', '0.00', '12544.00', 77, 29, '1 TR AC', '22400.00', '57344.00', '84151010', '2018-05-0001328-STO', '27', 1, 'estimate'),
(171, 35, 0, '1.00', '0.00', '0.00', '8778.00', 79, 69, '3 Star Inverter Series', '31350.00', '40128.00', '84151010', '2018-05-0001333-STO', '27', 1, 'estimate'),
(172, 35, 0, '2.00', '0.00', '0.00', '13888.00', 79, 70, '3 Star Inverter Series', '24800.00', '63488.00', '84151010', '2018-05-0001333-STO', '27', 1, 'estimate'),
(174, 1, 0, '50.00', '0.00', '0.00', '18207.00', 75, 55, 'abc', '2023.00', '119357.00', '0132', '2018-05-0001315-STO313994', '27', 1, 'invoice'),
(175, 3, 0, '18.00', '0.00', '0.00', '712.80', 80, 32, 'Round - 3000K', '330.00', '6652.80', '9405', '2018-05-0001335-STO', '27', 1, 'estimate'),
(178, 3, 0, '15.00', '0.00', '0.00', '162.00', 80, 49, '5 Meter LED strip', '90.00', '1512.00', '94054090', '2018-05-0001335-STO', '27', 1, 'estimate'),
(179, 3, 0, '3.00', '0.00', '0.00', '189.00', 80, 62, '3A ', '350.00', '1239.00', '8504', '2018-05-0001335-STO', '27', 1, 'estimate'),
(180, 35, 0, '1.00', '0.00', '0.00', '8778.00', 81, 69, '3 Star Inverter Series', '31350.00', '40128.00', '84151010', '2018-05-0001333-STO385', '27', 1, 'proforma'),
(181, 35, 0, '2.00', '0.00', '0.00', '13888.00', 81, 70, '3 Star Inverter Series', '24800.00', '63488.00', '84151010', '2018-05-0001333-STO643', '27', 1, 'proforma'),
(184, 3, 0, '1250.00', '0.00', '0.00', '12750.00', 82, 49, '5 Meter LED strip', '85.00', '119000.00', '94054090', '2018-05-0001342-STO', '27', 1, 'estimate'),
(185, 3, 0, '250.00', '0.00', '0.00', '11250.00', 82, 50, '2A ', '250.00', '73750.00', '8504', '2018-05-0001342-STO', '27', 1, 'estimate'),
(186, 36, 0, '2250.00', '0.00', '0.00', '0.00', 83, 72, 'House painting Luster paint', '26.00', '58500.00', '', '2018-05-0001350-STO', '27', 1, 'estimate'),
(187, 36, 0, '2250.00', '0.00', '0.00', '0.00', 84, 72, 'House painting Luster paint', '26.00', '58500.00', '', '2018-05-0001350-STO134', '27', 1, 'proforma'),
(188, 36, 0, '2250.00', '0.00', '0.00', '0.00', 85, 72, 'House painting Luster paint', '26.00', '58500.00', '', '2018-05-0001350-STO134950', '27', 1, 'invoice'),
(189, 36, 0, '450.00', '0.00', '0.00', '0.00', 86, 74, 'flooring renovation', '130.00', '58500.00', '', '2018-05-0001354-STO', '', 1, 'estimate'),
(190, 36, 0, '450.00', '0.00', '0.00', '0.00', 87, 74, 'flooring renovation', '130.00', '58500.00', '', '2018-05-0001354-STO377', '', 1, 'proforma'),
(191, 36, 0, '450.00', '0.00', '0.00', '0.00', 88, 74, 'flooring renovation', '130.00', '58500.00', '', '2018-05-0001354-STO377511', '', 1, 'invoice'),
(192, 3, 0, '6.00', '0.00', '0.00', '37260.00', 78, 67, 'Meter box, cable, termination, 4 Pole MCB, On off Switch, Change Over, Indication lamp, Panel wiring, Earthing connection work & installation test report', '34500.00', '244260.00', '995461', '2018-05-0001330-STO', '27', 1, 'invoice'),
(193, 3, 0, '6.00', '0.00', '0.00', '4158.00', 78, 68, '63 A 100 mA Sencitivity', '3850.00', '27258.00', '85362040', '2018-05-0001330-STO', '27', 1, 'invoice'),
(194, 3, 0, '1.00', '0.00', '0.00', '360.00', 78, 78, '', '2000.00', '2360.00', '', '2018-05-0001330-STO', '27', 1, 'invoice'),
(195, 35, 0, '1.00', '0.00', '0.00', '32812.64', 89, 79, 'Vaayu MIG 36', '117188.00', '150000.64', '', '2018-06-0001357-STO', '27', 1, 'estimate'),
(196, 35, 0, '2.00', '0.00', '0.00', '54796.00', 90, 58, 'Vaayu MIG 24 Model', '97850.00', '250496.00', '84796000', '2018-06-0001359-STO', '27', 1, 'estimate'),
(197, 37, 0, '10.00', '0.00', '0.00', '0.00', 91, 83, '', '25.00', '250.00', '', '2018-06-0001364-STO', '27', 1, 'invoice'),
(198, 37, 0, '1.00', '0.00', '0.00', '0.00', 91, 85, '', '60.00', '60.00', '', '2018-06-0001364-STO', '27', 1, 'invoice'),
(203, 37, 0, '50.00', '0.00', '0.00', '0.00', 94, 83, '', '25.00', '1250.00', '', '2018-06-0001371-STO', '27', 1, 'estimate'),
(204, 37, 0, '10.00', '0.00', '0.00', '0.00', 94, 85, '', '60.00', '600.00', '', '2018-06-0001371-STO', '27', 1, 'estimate'),
(205, 3, 0, '50.00', '0.00', '0.00', '510.00', 95, 49, '5 Meter LED strip', '85.00', '4760.00', '94054090', '2018-06-0001374-STO', '27', 1, 'invoice'),
(206, 3, 0, '10.00', '0.00', '0.00', '450.00', 95, 50, '2A ', '250.00', '2950.00', '8504', '2018-06-0001374-STO', '27', 1, 'invoice'),
(207, 37, 0, '10.00', '0.00', '0.00', '0.00', 96, 80, '', '25.00', '250.00', '', '2018-06-0001376-STO', '27', 1, 'invoice'),
(208, 37, 0, '10.00', '0.00', '0.00', '0.00', 96, 85, '', '60.00', '600.00', '', '2018-06-0001376-STO', '27', 1, 'invoice'),
(215, 37, 0, '14.00', '28.00', '98.00', '0.00', 97, 80, '', '25.00', '252.00', '', '', '27', 1, 'invoice'),
(216, 37, 0, '10.00', '0.00', '0.00', '0.00', 98, 83, '', '25.00', '250.00', '', '2018-06-0001380-STO', '27', 1, 'invoice'),
(217, 37, 0, '4.00', '100.00', '100.00', '0.00', 98, 83, '', '25.00', '0.00', '', '2018-06-0001380-STO', '27', 1, 'invoice'),
(218, 37, 0, '50.00', '0.00', '0.00', '0.00', 99, 87, '', '60.00', '3000.00', '', '2018-06-0001382-STO', '27', 1, 'invoice'),
(219, 3, 0, '1.00', '0.00', '0.00', '544.50', 100, 65, 'Marvel Plus -White', '3025.00', '3569.50', '94054090', '2018-06-0001384-STO', '27', 1, 'invoice'),
(221, 1, 0, '2.00', '2.00', '60.00', '529.20', 101, 1, 'Hosting ', '1500.00', '3469.20', '578411', '2018-06-0001386-STO', '27', 1, 'estimate'),
(222, 1, 0, '3.00', '0.00', '0.00', '0.00', 101, 2, 'I-Cards', '15.00', '45.00', '8974511', '2018-06-0001386-STO', '27', 1, 'estimate'),
(223, 1, 0, '2.00', '2.00', '60.00', '529.20', 102, 1, 'Hosting ', '1500.00', '3469.20', '578411', '2018-06-0001386-STO431', '27', 1, 'proforma'),
(224, 1, 0, '3.00', '0.00', '0.00', '0.00', 102, 2, 'I-Cards', '15.00', '45.00', '8974511', '2018-06-0001386-STO521', '27', 1, 'proforma'),
(225, 1, 0, '2.00', '2.00', '60.00', '529.20', 103, 1, 'Hosting ', '1500.00', '3469.20', '578411', '2018-06-0001386-STO431403', '27', 1, 'invoice'),
(226, 1, 0, '3.00', '0.00', '0.00', '0.00', 103, 2, 'I-Cards', '15.00', '45.00', '8974511', '2018-06-0001386-STO521540', '27', 1, 'invoice'),
(227, 37, 0, '10.00', '0.00', '0.00', '0.00', 99, 81, '', '25.00', '250.00', '', '2018-06-0001382-STO', '27', 1, 'invoice'),
(228, 1, 0, '1000.00', '2.00', '400.00', '3528.00', 104, 88, '200 GSM', '20.00', '23128.00', '97547', '2018-06-0001389-STO', '27', 1, 'estimate'),
(229, 1, 0, '1000.00', '2.00', '400.00', '3528.00', 105, 88, '200 GSM', '20.00', '23128.00', '97547', '2018-06-0001389-STO2', '27', 1, 'proforma'),
(230, 1, 0, '1000.00', '2.00', '400.00', '3528.00', 106, 88, '200 GSM', '20.00', '23128.00', '97547', '2018-06-0001389-STO2376', '27', 1, 'invoice'),
(231, 3, 0, '2.00', '0.00', '0.00', '453.60', 100, 64, 'Marvel Plus -White', '1890.00', '4233.60', '94054090', '2018-06-0001384-STO', '27', 1, 'invoice'),
(232, 38, 0, '1.00', '0.00', '0.00', '0.00', 107, 89, '6*4 grill', '5700.00', '5700.00', '', '2018-06-0001393-STO', '27', 1, 'invoice'),
(236, 35, 0, '1.00', '0.00', '0.00', '47135.70', 108, 91, '25 KVA Water Cooled 3 Phase', '261865.00', '309000.70', '85021100', '2018-06-0001400-STO', '27', 1, 'invoice'),
(237, 1, 0, '200.00', '0.00', '0.00', '540.00', 109, 2, 'I-Cards', '15.00', '3540.00', '8974511', '2018-06-0001402-STO', '27', 1, 'invoice'),
(238, 1, 0, '1.00', '0.00', '0.00', '0.00', 110, 1, 'Hosting ', '1500.00', '1500.00', '578411', '2018-06-0001408-STO', '27', 1, 'invoice'),
(239, 3, 0, '20.00', '0.00', '0.00', '204.00', 111, 49, '5 Meter LED strip', '85.00', '1904.00', '94054090', '2018-06-0001411-STO', '27', 1, 'invoice'),
(240, 3, 0, '4.00', '0.00', '0.00', '180.00', 111, 50, '2A ', '250.00', '1180.00', '8504', '2018-06-0001411-STO', '27', 1, 'invoice'),
(241, 38, 0, '1.00', '0.00', '0.00', '0.00', 112, 92, '8*5 window', '9200.00', '9200.00', '', '2018-06-0001413-STO', '27', 1, 'invoice'),
(242, 38, 0, '1.00', '0.00', '0.00', '0.00', 112, 92, 'kitchen works-4*3', '3000.00', '3000.00', '', '2018-06-0001413-STO', '27', 1, 'invoice'),
(243, 38, 0, '1.00', '0.00', '0.00', '0.00', 112, 92, 'vertical 4*7', '6300.00', '6300.00', '', '2018-06-0001413-STO', '27', 1, 'invoice'),
(244, 35, 0, '1.00', '0.00', '0.00', '8778.00', 113, 69, '3 Star Inverter Series', '31350.00', '40128.00', '84151010', '2018-05-0001333-STO385244', '27', 1, 'invoice'),
(245, 35, 0, '2.00', '0.00', '0.00', '13888.00', 113, 70, '3 Star Inverter Series', '24800.00', '63488.00', '84151010', '2018-05-0001333-STO643594', '27', 1, 'invoice'),
(251, 3, 0, '12.00', '0.00', '0.00', '1224.00', 114, 97, 'OFFICE USE', '850.00', '11424.00', '9405', '2018-06-0001416-STO', '27', 1, 'invoice'),
(252, 3, 0, '12.00', '0.00', '0.00', '604.80', 115, 98, 'Round Panel - 4000K ', '420.00', '5644.80', '94054090', '2018-06-0001418-STO', '27', 1, 'invoice'),
(253, 3, 0, '1.00', '0.00', '0.00', '54.00', 115, 41, 'Location - Baner', '300.00', '354.00', '', '2018-06-0001418-STO', '27', 1, 'invoice'),
(255, 1, 0, '1.00', '0.00', '0.00', '240.00', 117, 1, 'Hosting and maintainance', '2000.00', '2240.00', '578411', '2018-06-0001421-STO917', '27', 1, 'proforma'),
(256, 1, 0, '1.00', '0.00', '0.00', '240.00', 118, 1, 'Hosting and maintainance', '2000.00', '2240.00', '578411', '2018-06-0001421-STO917814', '27', 1, 'invoice'),
(257, 1, 0, '1.00', '0.00', '0.00', '360.00', 119, 1, 'Hosting and maintainance', '2000.00', '2360.00', '578411', '2018-06-0001425-STO', '2', 1, 'invoice'),
(259, 35, 0, '8.00', '0.00', '0.00', '1680.00', 120, 99, 'ROTEX 19 1A/1A 9LR/LR) WITH SPIDER', '750.00', '7680.00', '84836010', '2018-06-0001427-STO', '27', 1, 'invoice'),
(260, 35, 0, '1.00', '10.00', '870.00', '2192.40', 121, 99, 'ROTEX 75 1/1 (STD/STD) WITH SPIDER', '8700.00', '10022.40', '84836010', '2018-06-0001429-STO', '27', 1, 'invoice'),
(261, 35, 0, '2.00', '10.00', '540.00', '1360.80', 121, 99, 'ROTEX 75 SPIDER', '2700.00', '6220.80', '84836010', '2018-06-0001429-STO', '27', 1, 'invoice'),
(262, 3, 0, '30.00', '0.00', '0.00', '648.00', 122, 56, 'Round - 3000K WW', '180.00', '6048.00', '9405', '2018-06-0001432-STO', '27', 1, 'invoice'),
(263, 35, 0, '1.00', '0.00', '0.00', '45152.64', 123, 100, 'Engine No - 2H.8307/1821053', '250848.00', '296000.64', '85021100', '2018-06-0001434-STO', '27', 1, 'invoice'),
(270, 3, 0, '1.00', '0.00', '0.00', '2160.00', 125, 106, 'PLC programming ', '12000.00', '14160.00', '998314', '2018-06-0001446-STO', '27', 1, 'invoice'),
(271, 3, 0, '300.00', '0.00', '0.00', '432.00', 126, 107, '6000K T5 LED Tube light ', '12.00', '4032.00', '9405', '2018-06-0001448-STO', '27', 1, 'invoice'),
(272, 3, 0, '30.00', '0.00', '0.00', '1157.15', 127, 32, 'Round - 3000K/ 4000K / 6000K', '321.43', '10800.00', '94054090', '2018-06-0001450-STO', '27', 1, 'invoice'),
(273, 3, 0, '1.00', '0.00', '0.00', '702.00', 127, 108, 'Rewiring Work', '3900.00', '4602.00', '995461', '2018-06-0001450-STO', '27', 1, 'invoice'),
(274, 1, 0, '20.00', '0.00', '0.00', '54.00', 127, 2, 'I-Cards', '15.00', '354.00', '8974511', '2018-06-0001451-STO', '27', 1, 'invoice'),
(275, 3, 0, '30.00', '0.00', '0.00', '1157.15', 128, 32, 'Round - 3000K/ 4000K / 6000K', '321.43', '10800.00', '94054090', '', '27', 1, 'invoice'),
(276, 3, 0, '1.00', '0.00', '0.00', '702.00', 128, 108, 'Rewiring Work', '3900.00', '4602.00', '995461', '', '27', 1, 'invoice'),
(277, 1, 0, '50.00', '0.00', '0.00', '135.00', 130, 2, 'I-Cards', '15.00', '885.00', '8974511', '2018-06-0001457-STO', '27', 1, 'invoice'),
(278, 3, 0, '4.00', '0.00', '0.00', '408.00', 131, 97, 'OFFICE USE', '850.00', '3808.00', '9405', '2018-07-0001459-STO', '27', 1, 'invoice'),
(282, 3, 0, '330.00', '0.00', '0.00', '7425.00', 124, 105, 'Area  Approx- 330 sq meter', '125.00', '48675.00', '7301', '2018-06-0001440-STO', '27', 1, 'estimate'),
(285, 3, 0, '1.00', '0.00', '0.00', '2268.00', 133, 113, 'Quotation for soft skill-cum-aptitude training to students / Day', '12600.00', '14868.00', '', '2018-07-0001464-STO', '27', 1, 'estimate'),
(286, 35, 0, '1.00', '0.00', '0.00', '1530.00', 134, 114, '5 KVA Chota Chilli AMC', '8500.00', '10030.00', '', '2018-07-0001466-STO', '27', 1, 'estimate'),
(290, 35, 0, '1.00', '0.00', '0.00', '24406.83', 135, 43, 'Eng no - CC1.4007/', '135593.50', '160000.33', '85021100', '2018-07-0001469-STO', '27', 1, 'invoice'),
(291, 35, 0, '1.00', '0.00', '0.00', '44100.00', 136, 116, '( 7.32 Mtr )', '245000.00', '289100.00', '84145990', '2018-07-0001473-STO', '27', 1, 'invoice'),
(292, 3, 0, '41.00', '0.00', '0.00', '1156.20', 137, 117, '4000K - Round ', '235.00', '10791.00', '9405', '2018-07-0001475-STO', '27', 1, 'invoice'),
(293, 44, 0, '400.00', '0.00', '0.00', '5400.00', 132, 110, 'Rebar Couplers 20MM', '75.00', '35400.00', '3456', '2018-07-0001462-STO', '27', 1, 'estimate'),
(294, 44, 0, '300.00', '0.00', '0.00', '2160.00', 132, 109, 'Rebar Coupler 16MM', '40.00', '14160.00', '3456', '2018-07-0001462-STO', '27', 1, 'estimate'),
(295, 44, 0, '250.00', '0.00', '0.00', '5625.00', 132, 111, 'Rebar Coupler 25MM', '125.00', '36875.00', '3456', '2018-07-0001462-STO', '27', 1, 'proforma'),
(296, 44, 0, '400.00', '0.00', '0.00', '5400.00', 138, 110, 'Rebar Couplers 20MM', '75.00', '35400.00', '3456', '2018-07-0001462-STO459', '27', 1, 'proforma'),
(297, 44, 0, '300.00', '0.00', '0.00', '2160.00', 138, 109, 'Rebar Coupler 16MM', '40.00', '14160.00', '3456', '2018-07-0001462-STO3', '27', 1, 'proforma'),
(298, 44, 0, '250.00', '0.00', '0.00', '5625.00', 138, 111, 'Rebar Coupler 25MM', '125.00', '36875.00', '3456', '2018-07-0001462-STO417', '27', 1, 'proforma'),
(299, 44, 0, '150.00', '0.00', '0.00', '0.00', 138, 112, 'Rebar Coupler 32 MM', '0.00', '0.00', '3456', '2018-07-0001462-STO459', '27', 1, 'proforma'),
(300, 44, 0, '400.00', '0.00', '0.00', '5400.00', 139, 110, 'Rebar Couplers 20MM', '75.00', '35400.00', '3456', '2018-07-0001462-STO459116', '27', 1, 'invoice'),
(301, 44, 0, '300.00', '0.00', '0.00', '2160.00', 139, 109, 'Rebar Coupler 16MM', '40.00', '14160.00', '3456', '2018-07-0001462-STO3444', '27', 1, 'invoice'),
(302, 44, 0, '250.00', '0.00', '0.00', '5625.00', 139, 111, 'Rebar Coupler 25MM', '125.00', '36875.00', '3456', '2018-07-0001462-STO417560', '27', 1, 'invoice'),
(304, 44, 0, '150.00', '0.00', '0.00', '4050.00', 139, 112, 'Rebar Coupler 32 MM', '150.00', '26550.00', '3456', '2018-07-0001462-STO459116', '27', 1, 'invoice'),
(305, 3, 0, '4.00', '0.00', '0.00', '864.00', 140, 97, 'Light & Pipe with Installation', '1200.00', '5664.00', '9405', '2018-07-0001480-STO', '27', 1, 'estimate'),
(306, 1, 0, '1.00', '0.00', '0.00', '360.00', 116, 1, 'Hosting and maintainance', '2000.00', '2360.00', '578411', '', '27', 1, 'estimate'),
(307, 3, 0, '20.00', '0.00', '0.00', '216.00', 140, 126, 'Point wiring for Street Light installation', '60.00', '1416.00', '', '2018-07-0001480-STO', '27', 1, 'estimate'),
(308, 3, 0, '1.00', '0.00', '0.00', '360.00', 140, 127, 'Parking wiring checking & Fault finding  ', '2000.00', '2360.00', '', '2018-07-0001480-STO', '27', 1, 'estimate'),
(309, 1, 0, '2.00', '0.00', '0.00', '720.00', 130, 1, 'Hosting and maintainance', '2000.00', '4720.00', '578411', '2018-06-0001457-STO', '27', 1, 'invoice'),
(315, 3, 0, '1.00', '0.00', '0.00', '1800.00', 142, 106, 'PLC programming ', '10000.00', '11800.00', '998314', '2018-07-0001484-STO', '27', 1, 'invoice'),
(316, 3, 0, '12.00', '0.00', '0.00', '2520.00', 143, 48, '6000K', '1750.00', '23520.00', '94054090', '2018-07-0001486-STO', '27', 1, 'invoice'),
(319, 3, 0, '8.00', '0.00', '0.00', '1800.00', 144, 132, 'Cool Breeze - 900 mm', '1250.00', '11800.00', '84149030', '2018-07-0001491-STO', '27', 1, 'invoice'),
(323, 3, 0, '2.00', '0.00', '0.00', '810.00', 146, 133, 'Settable Timer Wiring, fitting with installation ', '2250.00', '5310.00', '91070000', '2018-07-0001501-STO', '27', 1, 'invoice'),
(324, 3, 0, '2.00', '0.00', '0.00', '630.00', 141, 135, 'auto / Manual operation with MCB operated, 6 Module box with installation', '1750.00', '4130.00', '91070000', '', '27', 1, 'estimate'),
(325, 3, 0, '2.00', '0.00', '0.00', '180.00', 145, 97, 'White Street Light', '750.00', '1680.00', '9405', '2018-07-0001499-STO', '27', 1, 'invoice'),
(326, 35, 0, '1.00', '0.00', '0.00', '43200.00', 147, 136, 'Eng No - 2H.8307/1821456', '240000.00', '283200.00', '85021100', '2018-08-0001505-STO', '27', 1, 'invoice'),
(327, 35, 0, '1.00', '0.00', '0.00', '5186.43', 147, 37, 'Installation for 20KVA 3 Phase KOEL Green Genset', '28813.50', '33999.93', '', '2018-08-0001505-STO', '27', 1, 'invoice'),
(328, 35, 0, '1.00', '0.00', '0.00', '42711.88', 148, 137, 'Eng No- 2H.8307/1821562', '237288.20', '280000.08', '85021100', '2018-08-0001507-STO', '27', 1, 'invoice'),
(332, 35, 0, '1.00', '0.00', '0.00', '51300.00', 151, 140, 'Eng No:- 3H.8407/1822564', '285000.00', '336300.00', '85021100', '2018-08-0001510-STO', '27', 1, 'invoice'),
(334, 3, 0, '10.00', '0.00', '0.00', '360.00', 152, 107, '6000K T5 LED Tube light ', '300.00', '3360.00', '9405', '2018-08-0001515-STO', '27', 1, 'invoice'),
(335, 35, 0, '2.00', '0.00', '0.00', '88474.68', 153, 142, 'Fastlink HVLS With Profiled Blades Fan Diameter: 24 Feet [7.3 mtrs] Make :FASTLINK Type : Gear Reducer AC Motor Model No. : FL-24 Number of Blades:05 Nos Blades MOC : Magnelium with PVC profile VFD Make : Lenze Germany/Yaskawa Japan Motor & Drive Make: Nord Germany/ Tsubaki Japan Motor Power : 1.4 kW Fan Speed : 57 RPM Airflow cfm:3,97,701 cfm Noise Level dBA:< 65 dBA Weight :158 kg Coverage Area ftÂ²:25,000 Coverage Diameter at 18 ft:50 meters Price of Installation: Included', '245763.00', '580000.68', '84145990', '2018-08-0001518-STO', '27', 1, 'estimate'),
(337, 35, 0, '1.00', '0.00', '0.00', '44237.34', 150, 144, 'Eng No:- 2H.8307/1821546', '245763.00', '290000.34', '85021100', '', '27', 1, 'invoice'),
(340, 3, 0, '1.00', '0.00', '0.00', '282.00', 155, 64, 'Marvel Plus -White', '2350.00', '2632.00', '94054090', '2018-08-0001522-STO', '27', 1, 'invoice'),
(341, 3, 0, '1.00', '0.00', '0.00', '963.00', 156, 106, 'PLC programming site visit at inodore', '5350.00', '6313.00', '998314', '2018-08-0001524-STO', '27', 1, 'invoice'),
(343, 35, 0, '1.00', '0.00', '0.00', '1800.00', 157, 147, '', '10000.00', '11800.00', '9987', '2018-08-0001526-STO', '27', 1, 'estimate'),
(344, 35, 0, '1.00', '0.00', '0.00', '2700.00', 157, 148, 'SIZE : 1075X1075X1800 HIGHT, WITH PAINT,', '15000.00', '17700.00', '7216', '2018-08-0001526-STO', '27', 1, 'estimate'),
(345, 3, 0, '2.00', '0.00', '0.00', '528.00', 158, 149, '2*2 panel  RC375B', '2200.00', '4928.00', '9405', '2018-08-0001528-STO', '27', 1, 'invoice'),
(346, 3, 0, '2.00', '0.00', '0.00', '45.60', 158, 150, 'WW COB lights', '190.00', '425.60', '9405', '2018-08-0001528-STO', '27', 1, 'invoice'),
(347, 3, 0, '2.00', '0.00', '0.00', '60.00', 158, 50, '2A ', '250.00', '560.00', '8504', '2018-08-0001528-STO', '27', 1, 'invoice'),
(348, 3, 0, '36.00', '0.00', '0.00', '1771.20', 159, 151, 'Round Light', '410.00', '16531.20', '9405', '2018-08-0001531-STO', '27', 1, 'invoice'),
(350, 3, 0, '5.00', '0.00', '0.00', '168.00', 159, 153, 'Round Light', '280.00', '1568.00', '9405', '2018-08-0001531-STO', '27', 1, 'invoice'),
(352, 3, 0, '12.00', '0.00', '0.00', '201.60', 159, 155, 'Round Light', '140.00', '1881.60', '9405', '2018-08-0001531-STO', '27', 1, 'invoice'),
(353, 3, 0, '105.00', '0.00', '0.00', '1197.00', 159, 156, '3000K', '95.00', '11172.00', '9405', '2018-08-0001531-STO', '27', 1, 'invoice'),
(354, 3, 0, '9.00', '0.00', '0.00', '669.60', 159, 157, '', '620.00', '6249.60', '9405', '2018-08-0001531-STO', '27', 1, 'invoice'),
(355, 35, 0, '1.00', '0.00', '0.00', '16016.96', 160, 158, 'Engine No:- CCP302/1800104', '88983.10', '105000.06', '85023990', '2018-08-0001533-STO', '27', 1, 'invoice'),
(356, 3, 0, '20.00', '0.00', '0.00', '984.00', 159, 152, 'Round Light', '410.00', '9184.00', '9405', '2018-08-0001531-STO', '27', 1, 'invoice'),
(357, 3, 0, '17.00', '0.00', '0.00', '367.20', 159, 154, 'Round Light', '180.00', '3427.20', '9405', '2018-08-0001531-STO', '27', 1, 'invoice'),
(358, 35, 0, '14.00', '0.00', '0.00', '109516.96', 161, 30, '1.5 TR AC', '27938.00', '500648.96', '84151010', '2018-09-0001535-STO', '27', 1, 'estimate'),
(360, 35, 0, '1.00', '0.00', '0.00', '39141.00', 154, 145, 'Eng No:- 02.8307/1822041', '217450.00', '256591.00', '85021100', '2018-08-0001520-STO', '27', 1, 'invoice'),
(362, 35, 0, '1.00', '0.00', '0.00', '4500.00', 163, 159, '', '25000.00', '29500.00', '', '2018-09-0001539-STO', '27', 1, 'invoice'),
(363, 35, 0, '1.00', '0.00', '0.00', '1601.64', 163, 37, 'Installation for 15KVA Single Phase Diesel Genset', '8898.00', '10499.64', '', '2018-09-0001539-STO', '27', 1, 'invoice'),
(365, 35, 0, '1.00', '0.00', '0.00', '44389.89', 164, 139, 'Engine No:- 2H.8307/1821630', '246610.50', '291000.39', '85021100', '2018-09-0001542-STO', '27', 1, 'invoice'),
(368, 3, 0, '2.00', '0.00', '0.00', '98.40', 165, 152, 'Round Light', '410.00', '918.40', '9405', '2018-09-0001544-STO', '27', 1, 'invoice'),
(370, 3, 0, '7.00', '0.00', '0.00', '151.20', 165, 154, 'Round Light', '180.00', '1411.20', '9405', '2018-09-0001544-STO', '27', 1, 'invoice'),
(372, 3, 0, '30.00', '0.00', '0.00', '648.00', 166, 56, 'Round - 3000K WW', '180.00', '6048.00', '9405', '2018-09-0001546-STO', '27', 1, 'invoice'),
(373, 35, 0, '5.00', '0.00', '0.00', '0.00', 167, 161, '', '1000.00', '5000.00', '', '2018-09-0001548-STO', '27', 1, 'estimate'),
(374, 35, 0, '30.00', '0.00', '0.00', '0.00', 167, 162, 'Fastners for Fixing', '15.00', '450.00', '', '2018-09-0001548-STO', '27', 1, 'estimate'),
(375, 35, 0, '38.00', '0.00', '0.00', '0.00', 167, 163, 'Total Copper pipe required 38 meter', '950.00', '36100.00', '', '2018-09-0001548-STO', '27', 1, 'estimate'),
(379, 3, 0, '4.00', '0.00', '0.00', '76.80', 169, 166, 'Square White Panel', '160.00', '716.80', '9405', '2018-09-0001553-STO', '27', 1, 'invoice'),
(380, 3, 0, '7.00', '0.00', '0.00', '756.00', 170, 164, 'Full Light Point', '600.00', '4956.00', '995461', '2018-09-0001555-STO', '27', 1, 'invoice'),
(381, 3, 0, '1.00', '0.00', '0.00', '54.00', 170, 164, 'Half Light Point', '300.00', '354.00', '995461', '2018-09-0001555-STO', '27', 1, 'invoice'),
(382, 3, 0, '3.00', '0.00', '0.00', '864.00', 140, 129, '2 Years Warranty ', '1600.00', '5664.00', '', '2018-07-0001480-STO', '27', 1, 'estimate'),
(383, 3, 0, '10.00', '0.00', '0.00', '492.00', 171, 167, 'Round Light', '410.00', '4592.00', '9405', '2018-09-0001562-STO', '27', 1, 'invoice'),
(384, 3, 0, '26.00', '0.00', '0.00', '561.60', 171, 154, 'Round Light', '180.00', '5241.60', '9405', '2018-09-0001562-STO', '27', 1, 'invoice'),
(385, 35, 0, '1.00', '0.00', '0.00', '40557.96', 172, 168, 'Eng No:- 02.8307/1821846', '225322.00', '265879.96', '85021100', '2018-09-0001564-STO', '27', 1, 'invoice'),
(386, 35, 0, '1.00', '0.00', '0.00', '25560.00', 173, 169, 'Eng No:- CC1.4007/1801043', '142000.00', '167560.00', '85021100', '2018-09-0001566-STO', '27', 1, 'invoice'),
(387, 35, 0, '1.00', '0.00', '0.00', '45457.56', 174, 170, 'Eng No:- 02.8307/1821951', '252542.00', '297999.56', '85021100', '2018-09-0001569-STO', '27', 1, 'invoice'),
(388, 3, 0, '2.00', '0.00', '0.00', '204.00', 175, 97, 'White Street Light', '850.00', '1904.00', '9405', '2018-09-0001571-STO', '27', 1, 'invoice'),
(391, 35, 0, '1.00', '0.00', '0.00', '54000.00', 176, 172, 'Fan Diameter 20 Feet [6.1 mtrs] Make Profan Alsan Turkey Type Permanent Magnet AC Motor Model No. PROFAN P20 Number of Blades 6 Blades MOC Aluminium Alloy VFD Make Allen Bradley UK/Equivalent Motor & Drive Make  Yilmaz UK/Equivalent Motor Power 0.82 kW Fan Speed 60 RPM Air flow cfm 2,26,720 cfm  Noise Level dBA < 45 dBA Weight 134 kg Coverage Area ftÂ²  15,174 Coverage Diameter at 18 ft 40 meters Our Scope of Supply Fan, motor, universal mount,VFD', '300000.00', '354000.00', '84145990', '2018-09-0001574-STO', '27', 1, 'estimate'),
(393, 35, 0, '1.00', '0.00', '0.00', '46800.00', 175, 171, 'Fan Diameter 20 Feet [6.1 mtrs] Make FASTLINK Type Gear Reducer AC Motor Model No. FL-20 Number of Blades 05 Nos Blades MOC Magnelium with PVC profile VFD Make Lenze Germany/Yaskawa Japan Motor & Drive Make Nord Germany/ Tsubaki Japan Motor Power 1.4 kW Fan Speed 63 RPM Air flow cfm 3,30,050 cfm Noise Level dBA < 65 dBA Weight 148 kg Coverage Area ftÂ² 15,000 Coverage Diameter at 18 ft 36 meters Our Scope of Supply Fan, motor, universal mount,VFD', '260000.00', '306800.00', '84145990', '2018-09-0001571-STO', '27', 1, 'estimate'),
(394, 35, 0, '1.00', '0.00', '0.00', '0.00', 175, 37, 'Installation for Fastlink HVLS', '15000.00', '15000.00', '', '2018-09-0001571-STO', '27', 1, 'estimate'),
(395, 3, 0, '2.00', '0.00', '0.00', '204.00', 177, 97, 'White Street Light', '850.00', '1904.00', '9405', '2018-09-0001577-STO', '27', 1, 'invoice'),
(396, 3, 0, '1.00', '0.00', '0.00', '42.00', 169, 32, 'Round - 6000K', '350.00', '392.00', '94054090', '2018-09-0001553-STO', '27', 1, 'invoice'),
(397, 3, 0, '15.00', '0.00', '0.00', '936.00', 169, 165, 'Square White Panel', '520.00', '8736.00', '9405', '2018-09-0001553-STO', '27', 1, 'invoice'),
(398, 3, 0, '5.00', '0.00', '0.00', '204.00', 178, 32, 'Round - 6000K', '340.00', '1904.00', '94054090', '2018-09-0001579-STO', '27', 1, 'invoice'),
(401, 3, 0, '8.00', '0.00', '0.00', '403.20', 178, 98, 'Round Panel - 6000K ', '420.00', '3763.20', '94054090', '2018-09-0001579-STO', '27', 1, 'invoice'),
(402, 3, 0, '35.00', '0.00', '0.00', '357.00', 179, 173, '3000K 4 W per meter', '85.00', '3332.00', '94054090', '2018-09-0001581-STO', '27', 1, 'invoice'),
(404, 38, 0, '1.00', '0.00', '0.00', '0.00', 180, 174, 'single wardrobe', '20000.00', '20000.00', '', '2018-09-0001583-STO', '27', 1, 'invoice'),
(406, 38, 0, '1.00', '0.00', '0.00', '0.00', 180, 174, 'kitchen trolleys', '45000.00', '45000.00', '', '2018-09-0001583-STO', '27', 1, 'invoice'),
(407, 38, 0, '1.00', '0.00', '0.00', '0.00', 180, 174, 'tv unit', '20000.00', '20000.00', '', '2018-09-0001583-STO', '27', 1, 'invoice'),
(411, 38, 0, '1.00', '0.00', '0.00', '0.00', 181, 175, 'regular chemical pasting', '1700.00', '1700.00', '', '2018-09-0001586-STO', '27', 1, 'invoice'),
(412, 38, 0, '1.00', '0.00', '0.00', '0.00', 182, 95, 'terrace drain pipe works', '4000.00', '4000.00', '', '2018-09-0001588-STO', '27', 1, 'invoice'),
(413, 38, 0, '1.00', '0.00', '0.00', '0.00', 182, 89, 'terrace safety door', '26500.00', '26500.00', '', '2018-09-0001588-STO', '27', 1, 'invoice'),
(414, 38, 0, '1.00', '0.00', '0.00', '0.00', 183, 174, 'regular simple repairs', '4800.00', '4800.00', '', '2018-09-0001590-STO', '27', 1, 'invoice'),
(415, 38, 0, '1.00', '0.00', '0.00', '0.00', 184, 92, 'sliding panels', '19700.00', '19700.00', '', '2018-09-0001595-STO', '27', 1, 'invoice'),
(416, 38, 0, '14.00', '0.00', '0.00', '0.00', 185, 94, 'oil bond works-3690sqft', '3690.00', '51660.00', '', '2018-09-0001597-STO', '27', 1, 'invoice'),
(417, 38, 0, '1.00', '0.00', '0.00', '0.00', 185, 95, 'plumbing', '2800.00', '2800.00', '', '2018-09-0001597-STO', '27', 1, 'invoice'),
(419, 38, 0, '1.00', '0.00', '0.00', '0.00', 185, 176, 'old repairs', '4600.00', '4600.00', '', '2018-09-0001597-STO', '27', 1, 'invoice'),
(420, 38, 0, '1.00', '0.00', '0.00', '0.00', 186, 96, 'stop wall', '1700.00', '1700.00', '', '2018-09-0001599-STO', '27', 1, 'invoice'),
(421, 38, 0, '1.00', '0.00', '0.00', '0.00', 187, 96, 'TILING WORKS', '60000.00', '60000.00', '', '2018-09-0001601-STO', '27', 1, 'invoice'),
(422, 38, 0, '22.00', '0.00', '0.00', '0.00', 188, 94, 'white lustre paint', '507.00', '11154.00', '', '2018-09-0001603-STO', '27', 1, 'invoice'),
(423, 38, 0, '2.00', '0.00', '0.00', '0.00', 189, 92, 'bathroom louvers', '1200.00', '2400.00', '', '2018-09-0001605-STO', '27', 1, 'invoice'),
(424, 38, 0, '150.00', '0.00', '0.00', '0.00', 190, 89, 'balcony shade', '80.00', '12000.00', '', '2018-09-0001607-STO', '27', 1, 'invoice'),
(425, 38, 0, '1.00', '0.00', '0.00', '0.00', 191, 96, 'exhaust fitting,plaster', '7000.00', '7000.00', '', '2018-10-0001609-STO', '27', 1, 'invoice'),
(426, 3, 0, '15.00', '0.00', '0.00', '153.00', 192, 173, '3000K 4 W per meter', '85.00', '1428.00', '94054090', '2018-10-0001611-STO', '27', 1, 'invoice'),
(427, 3, 0, '1.00', '0.00', '0.00', '30.00', 192, 50, '2A ', '250.00', '280.00', '9405', '2018-10-0001611-STO', '27', 1, 'invoice'),
(428, 35, 0, '1.00', '0.00', '0.00', '18152.55', 193, 177, 'Engine No: CC1.4013/1800202', '100847.50', '119000.05', '85021100', '2018-10-0001613-STO', '27', 1, 'invoice'),
(431, 35, 0, '1.00', '0.00', '0.00', '207.00', 193, 178, '', '1150.00', '1357.00', '', '2018-10-0001613-STO', '27', 1, 'invoice'),
(432, 35, 0, '1.00', '0.00', '0.00', '401.40', 193, 179, '1.5x3 50 meters', '2230.00', '2631.40', '', '2018-10-0001613-STO', '27', 1, 'invoice'),
(433, 35, 0, '1.00', '0.00', '0.00', '324.54', 193, 179, '2.5x3 25 Meters', '1803.00', '2127.54', '', '2018-10-0001613-STO', '27', 1, 'invoice'),
(434, 35, 0, '1.00', '0.00', '0.00', '134.10', 193, 179, '4x4 5 Meter', '745.00', '879.10', '', '2018-10-0001613-STO', '27', 1, 'invoice'),
(435, 35, 0, '1.00', '0.00', '0.00', '360.00', 193, 180, '', '2000.00', '2360.00', '', '2018-10-0001613-STO', '27', 1, 'invoice'),
(436, 35, 0, '1.00', '0.00', '0.00', '342.00', 193, 181, '', '1900.00', '2242.00', '', '2018-10-0001613-STO', '27', 1, 'invoice'),
(437, 35, 0, '1.00', '0.00', '0.00', '360.00', 193, 182, '', '2000.00', '2360.00', '', '2018-10-0001613-STO', '27', 1, 'invoice'),
(438, 35, 0, '1.00', '0.00', '0.00', '571.68', 193, 183, '2.5sqmm 4 Core 25 Meters', '3176.00', '3747.68', '', '2018-10-0001613-STO', '27', 1, 'invoice');
INSERT INTO `item` (`id`, `user_id`, `sub_user_id`, `quantity`, `discount`, `disc_amt`, `tax_amt`, `common_id`, `course_id`, `description`, `unitary_cost`, `price`, `ccode`, `session`, `state_code`, `status`, `type`) VALUES
(439, 38, 0, '2420.00', '0.00', '0.00', '0.00', 194, 94, 'hall,bedroom,kitchen-oil bond', '14.00', '33880.00', '', '2018-10-0001617-STO', '27', 1, 'invoice'),
(440, 38, 0, '250.00', '0.00', '0.00', '0.00', 194, 94, 'all doors-oil paint', '14.00', '3500.00', '', '2018-10-0001617-STO', '27', 1, 'invoice'),
(441, 38, 0, '310.00', '0.00', '0.00', '0.00', 194, 94, 'all grill-oil paint', '10.00', '3100.00', '', '2018-10-0001617-STO', '27', 1, 'invoice'),
(443, 3, 0, '15.00', '0.00', '0.00', '594.00', 195, 32, 'Sqaure - 6000K', '330.00', '5544.00', '94054090', '2018-10-0001619-STO', '27', 1, 'invoice'),
(444, 35, 0, '1.00', '0.00', '0.00', '1350.00', 176, 37, 'Installation for Alsan with PMSM Technology', '7500.00', '8850.00', '', '2018-09-0001574-STO', '27', 1, 'estimate'),
(447, 38, 0, '68.00', '0.00', '0.00', '0.00', 196, 92, 'single trackmosquito net', '130.00', '8840.00', '', '2018-10-0001625-STO', '27', 1, 'invoice'),
(448, 38, 0, '4.00', '0.00', '0.00', '0.00', 196, 92, 'old clip lock replaced', '125.00', '500.00', '', '2018-10-0001625-STO', '27', 1, 'invoice'),
(453, 38, 0, '113.00', '0.00', '0.00', '0.00', 199, 92, 'panel door ', '210.00', '23730.00', '', '2018-10-0001636-STO', '27', 1, 'estimate'),
(454, 38, 0, '1.00', '0.00', '0.00', '0.00', 199, 174, 'repairs and shifting', '7000.00', '7000.00', '', '2018-10-0001636-STO', '27', 1, 'estimate'),
(457, 38, 0, '1.00', '0.00', '0.00', '0.00', 199, 89, 'balcony shade', '23000.00', '23000.00', '', '2018-10-0001636-STO', '27', 1, 'estimate'),
(458, 49, 0, '1.00', '0.00', '0.00', '45.76', 198, 186, '4-10-2018 TO 3-10-2019', '254.24', '300.00', '9984', '', '', 1, 'invoice'),
(463, 49, 0, '1.00', '0.00', '0.00', '45.76', 197, 188, '1-10-2018 TO 31-10-2018', '254.24', '300.00', '9984', '2018-10-0001628-STO', '', 1, 'invoice'),
(465, 49, 0, '1.00', '0.00', '0.00', '45.76', 200, 189, '1-10-2018 TO 312-10-2018', '254.24', '300.00', '9984', '', '', 1, 'invoice'),
(466, 38, 0, '3500.00', '0.00', '0.00', '0.00', 201, 94, 'exterior ace paint', '13.00', '45500.00', '', '2018-10-0001642-STO', '27', 1, 'estimate'),
(467, 38, 0, '4450.00', '0.00', '0.00', '0.00', 201, 94, 'interior oilbond', '13.00', '57850.00', '', '2018-10-0001642-STO', '27', 1, 'estimate'),
(468, 38, 0, '800.00', '0.00', '0.00', '0.00', 201, 94, 'grill area oilpaint', '13.00', '10400.00', '', '2018-10-0001642-STO', '27', 1, 'estimate'),
(469, 38, 0, '1.00', '0.00', '0.00', '0.00', 201, 94, 'doors polishing', '8000.00', '8000.00', '', '2018-10-0001642-STO', '27', 1, 'estimate'),
(470, 38, 0, '650.00', '0.00', '0.00', '0.00', 202, 94, 'interior-oilbond', '13.00', '8450.00', '', '2018-10-0001645-STO', '27', 1, 'estimate'),
(471, 38, 0, '150.00', '0.00', '0.00', '0.00', 202, 94, 'exterior-ace paint', '13.00', '1950.00', '', '2018-10-0001645-STO', '27', 1, 'estimate'),
(472, 3, 0, '4.00', '0.00', '0.00', '864.00', 203, 190, ' Light Installation', '1200.00', '5664.00', '995461', '2018-10-0001647-STO', '27', 1, 'invoice'),
(473, 3, 0, '3.00', '0.00', '0.00', '864.00', 203, 129, 'Light installation ', '1600.00', '5664.00', '995461', '2018-10-0001647-STO', '27', 1, 'invoice'),
(475, 3, 0, '1.00', '0.00', '0.00', '171.00', 203, 191, 'Light installation', '950.00', '1121.00', '995461', '2018-10-0001647-STO', '27', 1, 'invoice'),
(476, 3, 0, '4.00', '0.00', '0.00', '86.40', 203, 192, 'Light point Installation', '120.00', '566.40', '995461', '2018-10-0001647-STO', '27', 1, 'invoice'),
(477, 3, 0, '42.00', '0.00', '0.00', '453.60', 203, 193, 'wiring for Lights', '60.00', '2973.60', '995461', '2018-10-0001647-STO', '27', 1, 'invoice'),
(478, 49, 0, '1.00', '0.00', '0.00', '45.76', 200, 194, '1-10-2018 to 31-10-2018', '254.24', '300.00', '9984', '', '', 1, 'invoice'),
(480, 38, 0, '1.00', '0.00', '0.00', '0.00', 205, 96, 'tiles replaced with new', '60000.00', '60000.00', '', '2018-10-0001651-STO', '27', 1, 'estimate'),
(481, 38, 0, '1.00', '0.00', '0.00', '0.00', 205, 197, 'only of hall', '18000.00', '18000.00', '', '2018-10-0001651-STO', '27', 1, 'estimate'),
(482, 38, 0, '350.00', '0.00', '0.00', '0.00', 205, 94, 'exterior-ace paint', '12.00', '4200.00', '', '2018-10-0001651-STO', '27', 1, 'estimate'),
(483, 38, 0, '1700.00', '0.00', '0.00', '0.00', 205, 94, 'interior-lustre', '22.00', '37400.00', '', '2018-10-0001651-STO', '27', 1, 'estimate'),
(484, 38, 0, '300.00', '0.00', '0.00', '0.00', 205, 94, 'interior-grills', '10.00', '3000.00', '', '2018-10-0001651-STO', '27', 1, 'estimate'),
(485, 38, 0, '150.00', '0.00', '0.00', '0.00', 205, 94, 'interior-doors', '13.00', '1950.00', '', '2018-10-0001651-STO', '27', 1, 'estimate'),
(486, 3, 0, '1.00', '0.00', '0.00', '3813.56', 204, 195, '33 Panels report with conclusion report', '21186.44', '25000.00', '', '2018-10-0001649-STO', '27', 1, 'estimate'),
(487, 3, 0, '3.00', '0.00', '0.00', '360.00', 206, 97, 'White Street Light', '1000.00', '3360.00', '9405', '2018-10-0001655-STO', '27', 1, 'invoice'),
(488, 3, 0, '70.00', '0.00', '0.00', '714.00', 207, 49, '5 Meter LED strip', '85.00', '6664.00', '94054090', '2018-10-0001657-STO', '27', 1, 'invoice'),
(489, 3, 0, '3.00', '0.00', '0.00', '324.00', 207, 198, 'LED Driver for strip', '900.00', '3024.00', '9405', '2018-10-0001657-STO', '27', 1, 'invoice'),
(490, 35, 0, '1.00', '0.00', '0.00', '53100.00', 208, 171, 'Fan Diameter 20 Feet [6.1 mtrs] Make FASTLINK Type Gear Reducer AC Motor Model No. FL-20 Number of Blades 05 Nos Blades MOC Magnelium with PVC profile VFD Make Lenze Germany/Yaskawa Japan Motor & Drive Make Nord Germany/ Tsubaki Japan Motor Power 1.4 kW Fan Speed 63 RPM Air flow cfm 3,30,050 cfm Noise Level dBA < 65 dBA Weight 148 kg Coverage Area ftÂ² 15,000 Coverage Diameter at 18 ft 36 meters Our Scope of Supply Fan, motor, universal mount,VFD', '295000.00', '348100.00', '84145990', '2018-10-0001659-STO', '27', 1, 'estimate'),
(494, 38, 0, '70.00', '0.00', '0.00', '0.00', 209, 94, 'interior-textures', '45.00', '3150.00', '', '', '27', 1, 'invoice'),
(495, 38, 0, '1918.00', '0.00', '0.00', '0.00', 209, 94, 'interior-oilbond+oilpaint', '14.00', '26852.00', '', '', '27', 1, 'invoice'),
(496, 38, 0, '1.00', '0.00', '0.00', '0.00', 210, 174, 'repairs ', '1700.00', '1700.00', '', '2018-10-0001663-STO', '27', 1, 'invoice'),
(497, 35, 0, '1.00', '0.00', '0.00', '39141.00', 163, 145, 'Eng No:- 02.8307/1822041', '217450.00', '256591.00', '85021100', '2018-09-0001539-STO', '27', 1, 'invoice'),
(498, 38, 0, '600.00', '0.00', '0.00', '0.00', 211, 94, 'clinic-oil bond', '13.00', '7800.00', '', '2018-10-0001665-STO', '27', 1, 'invoice'),
(499, 35, 0, '450.00', '10.00', '31275.00', '50665.50', 212, 199, '', '695.00', '332140.50', '3917', '2018-10-0001667-STO', '27', 1, 'estimate'),
(500, 35, 0, '150.00', '10.00', '27000.00', '43740.00', 212, 200, '', '1800.00', '286740.00', '3917', '2018-10-0001667-STO', '27', 1, 'estimate'),
(501, 35, 0, '350.00', '10.00', '7350.00', '11907.00', 212, 201, '', '210.00', '78057.00', '3917', '2018-10-0001667-STO', '27', 1, 'estimate'),
(502, 35, 0, '20.00', '10.00', '3160.00', '5119.20', 212, 202, '', '1580.00', '33559.20', '3917', '2018-10-0001667-STO', '27', 1, 'estimate'),
(503, 35, 0, '25.00', '10.00', '1525.00', '2470.50', 212, 203, '', '610.00', '16195.50', '3917', '2018-10-0001667-STO', '27', 1, 'estimate'),
(504, 35, 0, '10.00', '10.00', '2200.00', '3564.00', 212, 204, '', '2200.00', '23364.00', '3917', '2018-10-0001667-STO', '27', 1, 'estimate'),
(505, 35, 0, '1.00', '0.00', '0.00', '0.00', 212, 205, 'ROUNDING TOOL 5063 TO', '560.00', '560.00', '', '2018-10-0001667-STO', '27', 1, 'estimate'),
(506, 35, 0, '1.00', '10.00', '535.00', '866.70', 212, 206, '50-110MM', '5350.00', '5681.70', '', '2018-10-0001667-STO', '27', 1, 'estimate'),
(507, 35, 0, '1.00', '10.00', '50.00', '81.00', 212, 207, '', '500.00', '531.00', '7320', '2018-10-0001667-STO', '27', 1, 'estimate'),
(508, 35, 0, '1.00', '10.00', '23.00', '37.26', 212, 205, '1014-4050', '230.00', '244.26', '3917', '2018-10-0001667-STO', '27', 1, 'estimate'),
(509, 35, 0, '1.00', '10.00', '99.50', '161.19', 212, 206, '42MM', '995.00', '1056.69', '8203', '2018-10-0001667-STO', '27', 1, 'estimate'),
(510, 35, 0, '50.00', '10.00', '550.00', '891.00', 212, 208, '', '110.00', '5841.00', '3917', '2018-10-0001667-STO', '27', 1, 'estimate'),
(511, 35, 0, '20.00', '10.00', '1630.00', '2640.60', 212, 209, '', '815.00', '17310.60', '3917', '2018-10-0001667-STO', '27', 1, 'estimate'),
(512, 38, 0, '105.00', '0.00', '0.00', '0.00', 213, 94, 'oil bond', '14.00', '1470.00', '', '2018-10-0001669-STO', '27', 1, 'invoice'),
(513, 38, 0, '210.00', '0.00', '0.00', '0.00', 213, 94, 'lustre', '23.00', '4830.00', '', '2018-10-0001669-STO', '27', 1, 'invoice'),
(514, 35, 0, '1.00', '0.00', '0.00', '92700.00', 214, 210, 'Eng No:- 4H.8905/1821474', '515000.00', '607700.00', '85021100', '2018-10-0001671-STO', '27', 1, 'invoice'),
(515, 35, 0, '1.00', '0.00', '0.00', '74745.76', 215, 44, 'Eng no - T4.8907/1822764', '415254.24', '490000.00', '85021100', '2018-10-0001673-STO', '27', 1, 'invoice'),
(516, 3, 0, '1.00', '0.00', '0.00', '3813.56', 216, 195, ' Panels report with conclusion', '21186.44', '25000.00', '998331', '2018-10-0001675-STO', '27', 1, 'invoice'),
(517, 3, 0, '1.00', '0.00', '0.00', '4230.00', 217, 211, '3 starters, MCB, Fabricated panel, wiring & hardware ', '23500.00', '27730.00', '', '2018-11-0001677-STO', '27', 1, 'estimate'),
(518, 3, 0, '3.00', '0.00', '0.00', '147.60', 218, 212, 'Round Light', '410.00', '1377.60', '9405', '2018-11-0001679-STO', '27', 1, 'invoice'),
(519, 38, 0, '1.00', '0.00', '0.00', '0.00', 219, 197, 'pop of hall,dining', '25000.00', '25000.00', '', '2018-11-0001681-STO', '27', 1, 'estimate'),
(520, 38, 0, '1.00', '0.00', '0.00', '0.00', 219, 176, 'hall,dining,tv unit', '25000.00', '25000.00', '', '2018-11-0001681-STO', '27', 1, 'estimate'),
(521, 38, 0, '1.00', '0.00', '0.00', '0.00', 219, 174, 'tv unit,bedroom(2),bay window', '308000.00', '308000.00', '', '2018-11-0001681-STO', '27', 1, 'estimate'),
(523, 38, 0, '2800.00', '0.00', '0.00', '0.00', 219, 94, 'lustre', '23.00', '64400.00', '', '2018-11-0001681-STO', '27', 1, 'estimate'),
(524, 38, 0, '600.00', '0.00', '0.00', '0.00', 219, 94, 'oil paint for grils', '11.00', '6600.00', '', '2018-11-0001681-STO', '27', 1, 'estimate'),
(525, 38, 0, '250.00', '0.00', '0.00', '0.00', 219, 94, 'ace/apex in balcony', '13.00', '3250.00', '', '2018-11-0001681-STO', '27', 1, 'estimate'),
(526, 3, 0, '30.00', '0.00', '0.00', '648.00', 220, 56, 'Round - 3000K WW', '180.00', '6048.00', '9405', '2018-11-0001685-STO', '27', 1, 'invoice'),
(528, 35, 0, '80.00', '0.00', '0.00', '95040.00', 221, 214, '', '6600.00', '623040.00', '8414', '2018-11-0001687-STO', '27', 1, 'estimate'),
(530, 35, 0, '80.00', '0.00', '0.00', '23040.00', 221, 37, '*Twin sealed bearing mechanism for frictionless Rotation even at lowest wind velocities *100% Leakage Proof installation', '1600.00', '151040.00', '', '2018-11-0001687-STO', '27', 1, 'estimate'),
(533, 1, 0, '2.00', '0.00', '0.00', '0.00', 222, 88, '200 GSM', '20.00', '40.00', '97547', '2018-11-0001690-STO', '27', 1, 'estimate'),
(534, 3, 0, '1.00', '0.00', '0.00', '102.00', 223, 97, 'White Street Light', '850.00', '952.00', '9405', '2018-11-0001692-STO', '27', 1, 'invoice'),
(535, 35, 0, '1.00', '0.00', '0.00', '46525.43', 224, 216, 'Eng No-2H.8307/1822390', '258474.60', '305000.03', '85021100', '2018-11-0001694-STO', '27', 1, 'invoice'),
(537, 35, 0, '1.00', '0.00', '0.00', '52200.00', 225, 218, '', '290000.00', '342200.00', '84145990', '2018-11-0001696-STO', '27', 1, 'estimate'),
(538, 35, 0, '6.00', '0.00', '0.00', '275400.00', 226, 219, '', '255000.00', '1805400.00', '84145990', '2018-11-0001698-STO', '27', 1, 'estimate'),
(539, 35, 0, '1.00', '10.00', '5500.00', '8910.00', 227, 220, 'MIG 18 Plus', '55000.00', '58410.00', '8479', '2018-11-0001700-STO', '27', 1, 'estimate'),
(540, 35, 0, '1.00', '0.00', '0.00', '0.00', 227, 221, '', '12500.00', '12500.00', '', '2018-11-0001700-STO', '27', 1, 'estimate'),
(541, 3, 0, '235000.00', '0.00', '0.00', '6768000.00', 228, 222, '2 Years warranty with installation', '160.00', '44368000.00', '', '2018-11-0001702-STO', '', 1, 'estimate'),
(543, 3, 0, '2.00', '0.00', '0.00', '300.00', 230, 223, 'Street Light - 6000K', '1250.00', '2800.00', '94054090', '2018-11-0001706-STO', '27', 1, 'invoice'),
(544, 38, 0, '1.00', '0.00', '0.00', '0.00', 231, 96, 'kadappa,misc', '6500.00', '6500.00', '', '2018-11-0001709-STO', '27', 1, 'invoice'),
(545, 38, 0, '1.00', '0.00', '0.00', '0.00', 231, 89, 'kitchen stand', '13500.00', '13500.00', '', '2018-11-0001709-STO', '27', 1, 'invoice'),
(546, 38, 0, '1.00', '0.00', '0.00', '0.00', 231, 93, 'table,,frame,counter', '17500.00', '17500.00', '', '2018-11-0001709-STO', '27', 1, 'invoice'),
(547, 38, 0, '1.00', '0.00', '0.00', '0.00', 231, 95, 'plumbing', '17300.00', '17300.00', '', '2018-11-0001709-STO', '27', 1, 'invoice'),
(548, 38, 0, '940.00', '0.00', '0.00', '0.00', 231, 94, 'oilbond-940qft', '14.00', '13160.00', '', '2018-11-0001709-STO', '27', 1, 'invoice'),
(549, 38, 0, '520.00', '0.00', '0.00', '0.00', 231, 94, 'oilpaint', '14.00', '7280.00', '', '2018-11-0001709-STO', '27', 1, 'invoice'),
(551, 38, 0, '1.00', '0.00', '0.00', '0.00', 231, 95, 'waterpump,tank,repairs', '6500.00', '6500.00', '', '2018-11-0001709-STO', '27', 1, 'invoice'),
(552, 38, 0, '295.00', '0.00', '0.00', '0.00', 231, 94, 'ace paint', '13.00', '3835.00', '', '2018-11-0001709-STO', '27', 1, 'invoice'),
(553, 38, 0, '190.00', '0.00', '0.00', '0.00', 232, 94, 'ace paint', '14.00', '2660.00', '', '2018-11-0001715-STO', '27', 1, 'invoice'),
(554, 38, 0, '286.00', '0.00', '0.00', '0.00', 232, 94, 'oilpaint', '14.00', '4004.00', '', '2018-11-0001715-STO', '27', 1, 'invoice'),
(561, 38, 0, '1.00', '0.00', '0.00', '0.00', 233, 174, 'loft', '20000.00', '20000.00', '', '2018-11-0001720-STO', '27', 1, 'estimate'),
(562, 38, 0, '1.00', '0.00', '0.00', '0.00', 233, 174, 'study/bookshelf', '20000.00', '20000.00', '', '2018-11-0001720-STO', '27', 1, 'estimate'),
(563, 38, 0, '2.00', '0.00', '0.00', '0.00', 233, 174, 'singlebed hydraulic', '20000.00', '40000.00', '', '2018-11-0001720-STO', '27', 1, 'estimate'),
(564, 38, 0, '1.00', '0.00', '0.00', '0.00', 233, 174, 'dbl/wardrobe dressing', '63000.00', '63000.00', '', '2018-11-0001720-STO', '27', 1, 'estimate'),
(565, 35, 0, '1.00', '0.00', '0.00', '54000.00', 234, 172, 'Fan Diameter 20 Feet [6.1 mtrs] Make Profan Alsan Turkey Type Permanent Magnet AC Motor Model No. PROFAN P20 Number of Blades 6 Blades MOC Aluminium Alloy VFD Make Allen Bradley UK/Equivalent Motor & Drive Make Yilmaz UK/Equivalent Motor Power 0.82 kW Fan Speed 60 RPM Air flow cfm 2,26,720 cfm Noise Level dBA < 45 dBA Weight 134 kg Coverage Area ftÂ² 15,174 Coverage Diameter at 18 ft 40 meters Our Scope of Supply Fan, motor, universal mount,VFD', '300000.00', '354000.00', '84145990', '2018-12-0001722-STO', '27', 1, 'invoice'),
(566, 35, 0, '1.00', '0.00', '0.00', '1350.00', 234, 37, 'Installation for Alsan with PMSM Technology', '7500.00', '8850.00', '', '2018-12-0001722-STO', '27', 1, 'invoice'),
(568, 35, 0, '1.00', '7.00', '4900.00', '11718.00', 235, 225, 'Istanbul Fan Model - 93PRF-8F, Fan diameter - 93", 8ft', '70000.00', '76818.00', '84145990', '2018-12-0001724-STO', '27', 1, 'invoice'),
(569, 3, 0, '4.00', '0.00', '0.00', '249.60', 236, 165, 'Square White Panel', '520.00', '2329.60', '9405', '2018-12-0001726-STO', '27', 1, 'invoice'),
(570, 3, 0, '3.00', '0.00', '0.00', '126.00', 236, 226, 'Sqaure - 6000K', '350.00', '1176.00', '94054090', '2018-12-0001726-STO', '27', 1, 'invoice'),
(571, 3, 0, '15.00', '0.00', '0.00', '153.00', 236, 156, '3000K 4 W per meter', '85.00', '1428.00', '9405', '2018-12-0001726-STO', '27', 1, 'invoice'),
(573, 3, 0, '3.00', '0.00', '0.00', '90.00', 236, 107, '6000K T5 LED Tube light ', '250.00', '840.00', '9405', '2018-12-0001726-STO', '27', 1, 'invoice'),
(574, 3, 0, '5.00', '0.00', '0.00', '108.00', 236, 166, 'Round Warm White ', '180.00', '1008.00', '9405', '2018-12-0001726-STO', '27', 1, 'invoice'),
(575, 3, 0, '1.00', '0.00', '0.00', '24.00', 236, 227, '', '200.00', '224.00', '9505', '2018-12-0001726-STO', '27', 1, 'invoice'),
(576, 3, 0, '3.00', '0.00', '0.00', '82.80', 236, 117, 'Round  White', '230.00', '772.80', '9405', '2018-12-0001726-STO', '27', 1, 'invoice'),
(578, 35, 0, '1.00', '0.00', '0.00', '42660.00', 237, 229, 'Eng No-2H.8307/1822456', '237000.00', '279660.00', '85021100', '2018-12-0001729-STO', '27', 1, 'invoice'),
(579, 3, 0, '3.00', '0.00', '0.00', '104.40', 236, 228, 'White Round', '290.00', '974.40', '9405', '2018-12-0001726-STO', '27', 1, 'invoice'),
(580, 3, 0, '4.00', '0.00', '0.00', '120.00', 236, 50, '2A ', '250.00', '1120.00', '9405', '2018-12-0001726-STO', '27', 1, 'invoice'),
(582, 35, 0, '20.00', '10.00', '450.00', '1134.00', 238, 231, 'KTR MAKE ROTEX 19 RUBBER SPIDER', '225.00', '5184.00', '84836010', '2018-12-0001731-STO', '27', 1, 'invoice'),
(583, 35, 0, '8.00', '10.00', '528.00', '1330.56', 238, 232, 'KTR MAKE ROTEX 48 RUBBER SPIDER', '660.00', '6082.56', '84836010', '2018-12-0001731-STO', '27', 1, 'invoice'),
(584, 38, 0, '1.00', '0.00', '0.00', '0.00', 239, 174, 'table in conference room', '20000.00', '20000.00', '', '2018-12-0001733-STO', '27', 1, 'estimate'),
(585, 3, 0, '2.00', '0.00', '0.00', '396.00', 240, 48, '6000K - White', '1650.00', '3696.00', '94054090', '2018-12-0001735-STO', '27', 1, 'invoice'),
(586, 3, 0, '2.00', '0.00', '0.00', '52.80', 240, 233, '6000K - White', '220.00', '492.80', '94054090', '2018-12-0001735-STO', '27', 1, 'invoice'),
(587, 3, 0, '16.00', '0.00', '0.00', '3048.96', 241, 234, 'White , Cylindrical & Round', '1588.00', '28456.96', '9405', '2018-12-0001737-STO', '27', 1, 'invoice'),
(589, 3, 0, '3.00', '0.00', '0.00', '79.20', 241, 150, 'White COB lights - Jaguar', '220.00', '739.20', '9405', '2018-12-0001737-STO', '27', 1, 'invoice'),
(590, 3, 0, '1.00', '0.00', '0.00', '99.00', 241, 41, 'One way Trip', '550.00', '649.00', '', '2018-12-0001737-STO', '27', 1, 'invoice'),
(591, 1, 0, '2.00', '0.00', '0.00', '480.00', 242, 1, 'Hosting and maintainance', '2000.00', '4480.00', '578411', '2018-12-0001739-STO', '27', 1, 'estimate'),
(592, 35, 0, '1.00', '0.00', '0.00', '19983.04', 243, 235, 'Eng.No:- CCP389/1800398', '111016.90', '130999.94', '85021100', '2018-12-0001743-STO', '27', 1, 'invoice'),
(595, 3, 0, '2.00', '0.00', '0.00', '155.00', 244, 45, 'Street Light - 6000K', '1550.00', '3255.00', '94054090', '', '27', 1, 'invoice'),
(596, 35, 0, '5.00', '0.00', '0.00', '189830.90', 245, 43, 'Eng no - CC1.4007/', '135593.50', '867798.40', '85021100', '2018-12-0001754-STO', '27', 1, 'invoice'),
(598, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(599, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(600, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(601, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(602, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(603, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(604, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(605, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(606, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(607, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(608, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(609, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(610, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(611, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(612, 35, 0, '3.00', '4.00', '12000.00', '14400.00', 247, 29, '1 TR AC', '100000.00', '302400.00', '84151010', '2018-12-0001774-STO', '27', 1, 'invoice'),
(613, 35, 0, '4.00', '0.00', '0.00', '0.00', 246, 4, '', '0.00', '0.00', '', '', '27', 1, 'invoice'),
(614, 35, 0, '4.00', '0.00', '0.00', '0.00', 246, 4, '', '0.00', '0.00', '', '', '27', 1, 'invoice'),
(615, 35, 0, '4.00', '0.00', '0.00', '0.00', 246, 4, '', '0.00', '0.00', '', '', '27', 1, 'invoice'),
(621, 35, 0, '4.00', '0.00', '0.00', '0.00', 246, 4, '', '0.00', '0.00', '', '', '27', 1, 'invoice'),
(623, 35, 0, '1.00', '0.00', '0.00', '0.00', 247, 235, 'Eng.No:- CCP389/1800398', '111016.90', '111016.90', '85021100', '2018-12-0001775-STO', '27', 1, 'invoice'),
(624, 35, 0, '1.00', '0.00', '0.00', '0.00', 247, 235, 'Eng.No:- CCP389/1800398', '111016.90', '111016.90', '85021100', '2018-12-0001775-STO', '27', 1, 'invoice'),
(625, 35, 0, '1.00', '0.00', '0.00', '0.00', 247, 235, 'Eng.No:- CCP389/1800398', '111016.90', '111016.90', '85021100', '2018-12-0001775-STO', '27', 1, 'invoice'),
(626, 35, 0, '1.00', '0.00', '0.00', '0.00', 247, 235, 'Eng.No:- CCP389/1800398', '111016.90', '111016.90', '85021100', '2018-12-0001775-STO', '27', 1, 'invoice'),
(627, 35, 0, '1.00', '0.00', '0.00', '0.00', 247, 235, 'Eng.No:- CCP389/1800398', '111016.90', '111016.90', '85021100', '2018-12-0001775-STO', '27', 1, 'invoice'),
(628, 0, 0, '0.00', '0.00', '0.00', '0.00', 247, 4, '', '0.00', '0.00', '', '', '', 1, 'invoice'),
(629, 0, 0, '0.00', '0.00', '0.00', '0.00', 247, 4, '', '0.00', '0.00', '', '', '', 1, 'invoice'),
(630, 0, 0, '0.00', '0.00', '0.00', '0.00', 247, 4, '', '0.00', '0.00', '', '', '', 1, 'invoice'),
(633, 0, 0, '0.00', '0.00', '0.00', '0.00', 249, 4, '', '0.00', '0.00', '', '', '', 1, ''),
(634, 0, 0, '0.00', '0.00', '0.00', '0.00', 249, 4, '', '0.00', '0.00', '', '', '', 1, ''),
(635, 0, 0, '0.00', '0.00', '0.00', '0.00', 249, 4, '', '0.00', '0.00', '', '', '', 1, ''),
(636, 0, 0, '0.00', '0.00', '0.00', '0.00', 253, 4, '', '0.00', '0.00', '', '', '', 1, 'estimate'),
(637, 0, 0, '0.00', '0.00', '0.00', '0.00', 253, 4, '', '0.00', '0.00', '', '', '', 1, 'estimate'),
(638, 0, 0, '0.00', '0.00', '0.00', '0.00', 255, 4, '', '0.00', '0.00', '', '', '', 1, 'invoice'),
(640, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 4, '', '0.00', '0.00', '', '', '', 1, 'proforma'),
(641, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 4, '', '0.00', '0.00', '', '', '', 1, 'proforma'),
(642, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 4, '', '0.00', '0.00', '', '', '', 1, 'proforma'),
(643, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 4, '', '0.00', '0.00', '', '', '', 1, ''),
(644, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 4, '', '0.00', '0.00', '', '', '', 1, ''),
(645, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 4, '', '0.00', '0.00', '', '', '', 1, 'estimate'),
(646, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 4, '', '0.00', '0.00', '', '', '', 1, 'estimate'),
(647, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 4, '', '0.00', '0.00', '', '', '', 1, 'invoice'),
(648, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 4, '', '0.00', '0.00', '', '', '', 1, 'invoice'),
(649, 0, 0, '0.00', '0.00', '0.00', '0.00', 0, 4, '', '0.00', '0.00', '', '', '', 1, 'invoice'),
(652, 35, 0, '3.00', '0.00', '0.00', '0.00', 261, 0, '', '0.00', '0.00', '', '', '27', 1, 'invoice'),
(656, 35, 0, '6.00', '6.00', '36.00', '28.20', 266, 236, 'Use for any type of vehicle', '100.00', '592.20', '234241', '2018-12-00010-STO', '27', 1, 'invoice'),
(657, 35, 0, '5.00', '50.00', '741525.40', '37076.27', 268, 42, 'ENG NO - 3H.8407/1821000', '296610.16', '778601.67', '85021100', '2018-12-00014-STO', '27', 1, 'invoice'),
(658, 35, 0, '5.00', '50.00', '741525.40', '37076.27', 269, 42, 'ENG NO - 3H.8407/1821000', '296610.16', '778601.67', '85021100', '2018-12-00033-STO', '27', 1, 'invoice'),
(659, 35, 0, '5.00', '50.00', '0.00', '0.00', 270, 28, '', '0.00', '0.00', '85021100', '2018-12-00038-STO', '27', 1, 'invoice'),
(660, 35, 0, '5.00', '0.00', '0.00', '74152.54', 270, 42, 'ENG NO - 3H.8407/1821000', '296610.16', '1557203.34', '85021100', '2018-12-00038-STO', '27', 1, 'invoice'),
(661, 35, 0, '2.00', '2.00', '40.00', '235.20', 271, 242, 'dasdj', '1000.00', '2195.20', '001', '2018-12-00061-STO', '27', 1, 'invoice'),
(665, 35, 0, '5.00', '0.00', '0.00', '9300.00', 272, 38, 'SR NO - A18GAP001348', '15500.00', '86800.00', '', '2018-12-00079-STO', '27', 1, 'invoice'),
(666, 35, 0, '5.00', '0.00', '0.00', '2500.00', 273, 28, 'good', '10000.00', '52500.00', '85021100', '2018-12-00082-STO', '27', 1, 'invoice'),
(667, 35, 0, '5.00', '0.00', '0.00', '53389.86', 274, 158, 'Engine No:- CCP302/1800104', '88983.10', '498305.36', '85023990', '2018-12-00093-STO', '27', 1, 'invoice'),
(668, 35, 0, '4.00', '0.00', '0.00', '2000.00', 274, 28, 'good', '10000.00', '42000.00', '85021100', '2018-12-00093-STO', '27', 1, 'invoice'),
(669, 60, 0, '1.00', '0.00', '0.00', '5.00', 275, 244, 'Good', '100.00', '105.00', '123/123', '2018-12-000126-STO', '27', 1, 'estimate'),
(670, 60, 0, '1.00', '0.00', '0.00', '5.00', 276, 244, 'Good', '100.00', '105.00', '123/123', '2018-12-000126-STO864', '27', 1, 'proforma'),
(671, 60, 0, '1.00', '0.00', '0.00', '5.00', 277, 244, 'Good', '100.00', '105.00', '123/123', '2018-12-000126-STO864746', '27', 1, 'invoice'),
(672, 60, 0, '5.00', '0.00', '0.00', '50.00', 278, 245, 'Good', '200.00', '1050.00', '123/124', '2018-12-000131-STO', '27', 1, 'estimate'),
(673, 60, 0, '5.00', '0.00', '0.00', '50.00', 279, 245, 'Good', '200.00', '1050.00', '123/124', '2018-12-000131-STO109', '27', 1, 'proforma'),
(674, 60, 0, '5.00', '0.00', '0.00', '50.00', 280, 245, 'Good', '200.00', '1050.00', '123/124', '2018-12-000131-STO109136', '27', 1, 'invoice'),
(675, 35, 0, '5.00', '0.00', '0.00', '2500.00', 281, 28, 'good', '10000.00', '52500.00', '85021100', '2019-01-000134-STO', '27', 1, 'estimate'),
(676, 35, 0, '5.00', '0.00', '0.00', '2500.00', 282, 28, 'good', '10000.00', '52500.00', '85021100', '2019-01-000134-STO187', '27', 1, 'proforma'),
(677, 35, 0, '5.00', '0.00', '0.00', '2500.00', 283, 28, 'good', '10000.00', '52500.00', '85021100', '2019-01-000134-STO187363', '27', 1, 'invoice');

-- --------------------------------------------------------

--
-- Table structure for table `item_tax`
--

CREATE TABLE IF NOT EXISTS `item_tax` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `tax_value` decimal(53,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_tax`
--

INSERT INTO `item_tax` (`id`, `item_id`, `tax_value`) VALUES
(1, 1, '18.00'),
(2, 2, '28.00'),
(3, 3, '12.00'),
(4, 4, '12.00'),
(5, 5, '12.00'),
(6, 6, '12.00'),
(7, 7, '12.00'),
(8, 8, '12.00'),
(9, 9, '12.00'),
(10, 10, '12.00'),
(11, 11, '12.00'),
(12, 12, '12.00'),
(13, 13, '12.00'),
(14, 14, '12.00'),
(15, 15, '12.00'),
(16, 17, '0.00'),
(17, 18, '0.00'),
(18, 19, '0.00'),
(19, 20, '0.00'),
(22, 23, '18.00'),
(24, 26, '18.00'),
(25, 27, '18.00'),
(26, 28, '5.00'),
(27, 29, '18.00'),
(28, 31, '18.00'),
(29, 32, '18.00'),
(30, 33, '5.00'),
(32, 37, '18.00'),
(33, 40, '0.00'),
(34, 41, '0.00'),
(35, 42, '0.00'),
(36, 43, '0.00'),
(37, 44, '12.00'),
(38, 45, '18.00'),
(39, 46, '12.00'),
(40, 47, '18.00'),
(41, 48, '12.00'),
(42, 49, '18.00'),
(43, 50, '18.00'),
(45, 55, '18.00'),
(46, 57, '18.00'),
(47, 58, '18.00'),
(48, 59, '18.00'),
(49, 60, '18.00'),
(50, 61, '18.00'),
(51, 62, '18.00'),
(52, 63, '18.00'),
(53, 64, '12.00'),
(55, 66, '28.00'),
(56, 67, '28.00'),
(57, 69, '28.00'),
(58, 70, '28.00'),
(59, 71, '28.00'),
(60, 72, '12.00'),
(61, 73, '18.00'),
(62, 74, '12.00'),
(63, 75, '12.00'),
(64, 76, '12.00'),
(65, 77, '12.00'),
(67, 79, '28.00'),
(69, 81, '28.00'),
(70, 82, '28.00'),
(72, 84, '18.00'),
(73, 85, '18.00'),
(74, 86, '18.00'),
(75, 87, '18.00'),
(76, 88, '18.00'),
(77, 89, '28.00'),
(78, 90, '18.00'),
(80, 92, '12.00'),
(83, 95, '12.00'),
(85, 97, '18.00'),
(86, 98, '28.00'),
(87, 99, '12.00'),
(88, 100, '18.00'),
(89, 101, '18.00'),
(90, 102, '18.00'),
(91, 103, '18.00'),
(92, 104, '18.00'),
(93, 105, '12.00'),
(95, 107, '12.00'),
(96, 108, '18.00'),
(97, 109, '12.00'),
(98, 110, '18.00'),
(99, 111, '12.00'),
(100, 112, '12.00'),
(101, 113, '12.00'),
(102, 114, '18.00'),
(103, 115, '12.00'),
(104, 116, '12.00'),
(105, 117, '12.00'),
(106, 118, '18.00'),
(107, 119, '12.00'),
(108, 120, '12.00'),
(109, 121, '18.00'),
(110, 122, '12.00'),
(111, 123, '12.00'),
(112, 124, '12.00'),
(116, 128, '18.00'),
(117, 129, '18.00'),
(118, 130, '18.00'),
(122, 134, '18.00'),
(123, 135, '18.00'),
(124, 136, '18.00'),
(125, 137, '5.00'),
(126, 138, '18.00'),
(127, 139, '18.00'),
(128, 140, '12.00'),
(130, 142, '18.00'),
(131, 143, '28.00'),
(132, 144, '18.00'),
(133, 145, '18.00'),
(134, 146, '28.00'),
(135, 147, '18.00'),
(136, 148, '12.00'),
(137, 149, '12.00'),
(138, 150, '12.00'),
(141, 153, '18.00'),
(142, 154, '18.00'),
(143, 155, '18.00'),
(144, 156, '18.00'),
(145, 157, '18.00'),
(147, 159, '18.00'),
(148, 160, '18.00'),
(149, 161, '12.00'),
(150, 162, '12.00'),
(151, 163, '12.00'),
(154, 166, '28.00'),
(155, 167, '28.00'),
(159, 171, '28.00'),
(160, 172, '28.00'),
(162, 174, '18.00'),
(163, 175, '12.00'),
(166, 178, '12.00'),
(167, 179, '18.00'),
(168, 180, '28.00'),
(169, 181, '28.00'),
(172, 184, '12.00'),
(173, 185, '18.00'),
(174, 187, '0.00'),
(175, 188, '0.00'),
(176, 190, '0.00'),
(177, 191, '0.00'),
(178, 192, '18.00'),
(179, 193, '18.00'),
(180, 194, '18.00'),
(181, 195, '28.00'),
(182, 196, '28.00'),
(183, 205, '12.00'),
(184, 206, '18.00'),
(186, 219, '18.00'),
(188, 221, '18.00'),
(189, 223, '18.00'),
(190, 224, '0.00'),
(191, 225, '18.00'),
(192, 226, '0.00'),
(193, 228, '18.00'),
(194, 229, '18.00'),
(195, 230, '18.00'),
(196, 231, '12.00'),
(199, 236, '18.00'),
(200, 237, '18.00'),
(201, 239, '12.00'),
(202, 240, '18.00'),
(203, 244, '28.00'),
(204, 245, '28.00'),
(205, 251, '12.00'),
(206, 252, '12.00'),
(207, 253, '18.00'),
(209, 255, '12.00'),
(210, 256, '12.00'),
(211, 257, '18.00'),
(213, 259, '28.00'),
(214, 260, '28.00'),
(215, 261, '28.00'),
(216, 262, '12.00'),
(217, 263, '18.00'),
(218, 264, '5.00'),
(224, 270, '18.00'),
(225, 271, '12.00'),
(226, 272, '12.00'),
(227, 273, '18.00'),
(228, 274, '18.00'),
(229, 275, '12.00'),
(230, 276, '18.00'),
(231, 277, '18.00'),
(232, 278, '12.00'),
(236, 282, '18.00'),
(237, 285, '18.00'),
(238, 286, '18.00'),
(242, 290, '18.00'),
(243, 291, '18.00'),
(244, 292, '12.00'),
(245, 293, '18.00'),
(246, 294, '18.00'),
(247, 295, '18.00'),
(248, 296, '18.00'),
(249, 297, '18.00'),
(250, 298, '18.00'),
(251, 299, '18.00'),
(252, 300, '18.00'),
(253, 301, '18.00'),
(254, 302, '18.00'),
(256, 304, '18.00'),
(257, 305, '18.00'),
(258, 306, '18.00'),
(259, 307, '18.00'),
(260, 308, '18.00'),
(261, 309, '18.00'),
(267, 315, '18.00'),
(268, 316, '12.00'),
(271, 319, '18.00'),
(275, 323, '18.00'),
(276, 324, '18.00'),
(277, 325, '12.00'),
(278, 326, '18.00'),
(279, 327, '18.00'),
(280, 328, '18.00'),
(284, 332, '18.00'),
(286, 334, '12.00'),
(287, 335, '18.00'),
(288, 336, '18.00'),
(289, 337, '18.00'),
(292, 340, '12.00'),
(293, 341, '18.00'),
(295, 343, '18.00'),
(296, 344, '18.00'),
(297, 345, '12.00'),
(298, 346, '12.00'),
(299, 347, '12.00'),
(300, 348, '12.00'),
(302, 350, '12.00'),
(304, 352, '12.00'),
(305, 353, '12.00'),
(306, 354, '12.00'),
(307, 355, '18.00'),
(308, 356, '12.00'),
(309, 357, '12.00'),
(310, 358, '28.00'),
(312, 360, '18.00'),
(314, 362, '18.00'),
(315, 363, '18.00'),
(317, 365, '18.00'),
(320, 368, '12.00'),
(322, 370, '12.00'),
(324, 372, '12.00'),
(325, 376, '18.00'),
(326, 377, '18.00'),
(328, 379, '12.00'),
(329, 380, '18.00'),
(330, 381, '18.00'),
(331, 382, '18.00'),
(332, 383, '12.00'),
(333, 384, '12.00'),
(334, 385, '18.00'),
(335, 386, '18.00'),
(336, 387, '18.00'),
(337, 388, '12.00'),
(339, 391, '18.00'),
(340, 393, '18.00'),
(341, 395, '12.00'),
(342, 396, '12.00'),
(343, 397, '12.00'),
(344, 398, '12.00'),
(347, 401, '12.00'),
(348, 402, '12.00'),
(349, 426, '12.00'),
(350, 427, '12.00'),
(351, 428, '18.00'),
(353, 431, '18.00'),
(354, 432, '18.00'),
(355, 433, '18.00'),
(356, 434, '18.00'),
(357, 435, '18.00'),
(358, 436, '18.00'),
(359, 437, '18.00'),
(360, 438, '18.00'),
(361, 443, '12.00'),
(362, 444, '18.00'),
(367, 458, '18.00'),
(371, 463, '18.00'),
(373, 465, '18.00'),
(374, 472, '18.00'),
(375, 473, '18.00'),
(377, 475, '18.00'),
(378, 476, '18.00'),
(379, 477, '18.00'),
(380, 478, '18.00'),
(382, 486, '18.00'),
(383, 487, '12.00'),
(384, 488, '12.00'),
(385, 489, '12.00'),
(386, 490, '18.00'),
(387, 497, '18.00'),
(388, 499, '18.00'),
(389, 500, '18.00'),
(390, 501, '18.00'),
(391, 502, '18.00'),
(392, 503, '18.00'),
(393, 504, '18.00'),
(394, 506, '18.00'),
(395, 507, '18.00'),
(396, 508, '18.00'),
(397, 509, '18.00'),
(398, 510, '18.00'),
(399, 511, '18.00'),
(400, 514, '18.00'),
(401, 515, '18.00'),
(402, 516, '18.00'),
(403, 517, '18.00'),
(404, 518, '12.00'),
(405, 526, '12.00'),
(407, 528, '18.00'),
(409, 530, '18.00'),
(412, 534, '12.00'),
(413, 535, '18.00'),
(415, 537, '18.00'),
(416, 538, '18.00'),
(417, 539, '18.00'),
(418, 541, '18.00'),
(420, 543, '12.00'),
(421, 565, '18.00'),
(422, 566, '18.00'),
(424, 568, '18.00'),
(425, 569, '12.00'),
(426, 570, '12.00'),
(427, 571, '12.00'),
(429, 573, '12.00'),
(430, 574, '12.00'),
(431, 575, '12.00'),
(432, 576, '12.00'),
(434, 578, '18.00'),
(435, 579, '12.00'),
(436, 580, '12.00'),
(438, 582, '28.00'),
(439, 583, '28.00'),
(440, 585, '12.00'),
(441, 586, '12.00'),
(442, 587, '12.00'),
(444, 589, '12.00'),
(445, 590, '18.00'),
(446, 591, '12.00'),
(447, 592, '18.00'),
(450, 595, '5.00'),
(451, 596, '28.00'),
(455, 656, '5.00'),
(456, 657, '5.00'),
(457, 658, '5.00'),
(458, 659, '5.00'),
(459, 660, '5.00'),
(460, 661, '12.00'),
(464, 665, '12.00'),
(465, 666, '5.00'),
(466, 667, '12.00'),
(467, 668, '5.00'),
(468, 669, '5.00'),
(469, 670, '5.00'),
(470, 671, '5.00'),
(471, 672, '5.00'),
(472, 673, '5.00'),
(473, 674, '5.00'),
(474, 675, '5.00'),
(475, 676, '5.00'),
(476, 677, '5.00');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE IF NOT EXISTS `leads` (
  `id` int(11) NOT NULL,
  `cp_id` int(10) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `client_email` varchar(50) NOT NULL,
  `client_mobile` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `contact_person` varchar(50) NOT NULL,
  `createdate` date NOT NULL,
  `updatedate` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `cp_id`, `client_name`, `client_email`, `client_mobile`, `city`, `contact_person`, `createdate`, `updatedate`, `status`) VALUES
(5, 4, 'Shree Generators & Power Solutions', 'sales@sgps.co.in', '9922222362', 'Pune', 'Vishwesh Joshi', '2018-04-24', '0000-00-00', 1),
(6, 4, 'Shree Enterprises', 'shreeenterprises0606@gmail.com', '07030708328', 'Pune', 'Tushar Deo', '2018-06-12', '0000-00-00', 1),
(7, 0, '', '', '', '', '', '2018-12-17', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mode`
--

CREATE TABLE IF NOT EXISTS `mode` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `mode` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mode`
--

INSERT INTO `mode` (`id`, `user_id`, `mode`) VALUES
(1, 1, 'Mode\r\n'),
(2, 1, 'Cash\r\n'),
(3, 1, 'Cheque BC\r\n'),
(4, 1, 'Cheque EBC\r\n'),
(5, 1, 'Card POS\r\n'),
(6, 1, 'Direct Debit\r\n'),
(7, 1, 'NEFT\r\n'),
(8, 1, 'EBC A/C\r\n'),
(9, 1, 'BC A/C\r\n'),
(10, 1, 'EBC Pvt.Ltd A/C\r\n'),
(11, 2, 'Cash'),
(13, 17, 'cash'),
(14, 17, 'ftcfgy'),
(16, 3, 'Cash'),
(17, 3, 'Cheque '),
(18, 3, 'NEFT/ RTGS'),
(20, 36, 'Cash'),
(21, 36, 'IMAP'),
(22, 36, 'IFSC'),
(23, 37, 'CASH'),
(24, 38, 'Cash'),
(25, 38, 'NEFT'),
(26, 38, 'RTGS'),
(27, 38, 'Cheque'),
(28, 42, 'Cash'),
(31, 42, 'cheque'),
(32, 42, 'NIFT'),
(33, 44, 'Cash'),
(34, 44, 'Cheque'),
(35, 44, 'Credit Card'),
(36, 44, 'Debit Card'),
(37, 0, ''),
(38, 60, '100% Cash Before Payment'),
(39, 60, 'Check');

-- --------------------------------------------------------

--
-- Table structure for table `mstr_schedule`
--

CREATE TABLE IF NOT EXISTS `mstr_schedule` (
  `id` int(11) NOT NULL,
  `sche_type` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mstr_schedule`
--

INSERT INTO `mstr_schedule` (`id`, `sche_type`, `user_id`) VALUES
(1, 'Meeting', 0),
(2, 'Site Visit', 0),
(3, 'Phone Call', 0),
(4, 'Reminder', 0),
(5, 'Follow Up', 0),
(6, 'Payment', 0),
(7, 'Other', 0),
(25, 'payment', 35),
(26, 'Meeting', 35);

-- --------------------------------------------------------

--
-- Table structure for table `new_payment`
--

CREATE TABLE IF NOT EXISTS `new_payment` (
  `id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `startdate` date NOT NULL,
  `enddate` date NOT NULL,
  `packageid` int(11) NOT NULL,
  `fix_commission` decimal(10,0) NOT NULL,
  `comp_amount` decimal(10,0) NOT NULL,
  `packg_cost` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `new_payment`
--

INSERT INTO `new_payment` (`id`, `u_id`, `startdate`, `enddate`, `packageid`, `fix_commission`, `comp_amount`, `packg_cost`, `description`) VALUES
(14, 35, '2018-04-20', '2019-04-20', 1, '600', '2399', '2999.00', 'Invoice Software'),
(16, 38, '2018-06-12', '2019-06-20', 1, '600', '2399', '2999.00', 'Invoice Software'),
(17, 5, '2018-07-01', '2018-07-31', 1, '600', '2399', '2999.00', 'Invoice Software'),
(18, 0, '0000-00-00', '0000-00-00', 0, '0', '0', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `notification_list`
--

CREATE TABLE IF NOT EXISTS `notification_list` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `not_date` date NOT NULL,
  `not_time` time NOT NULL,
  `not_desc` varchar(255) NOT NULL,
  `send_by` int(11) NOT NULL,
  `status` enum('ok','not') NOT NULL,
  `send_to` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification_list`
--

INSERT INTO `notification_list` (`id`, `subject`, `not_date`, `not_time`, `not_desc`, `send_by`, `status`, `send_to`) VALUES
(1, 'Check notification', '2018-04-17', '14:02:00', 'testing', 1, 'ok', 0);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(11) NOT NULL,
  `package_name` varchar(50) NOT NULL,
  `cost` decimal(53,2) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `package_name`, `cost`, `description`, `status`) VALUES
(1, 'Invoice Software', '2999.00', 'Invoice Software', 1),
(2, 'Invoice And CRM', '3599.00', 'Invoice software and CRM', 1),
(3, 'CRM Software', '1499.00', 'CRM Software', 1),
(4, '', '0.00', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sub_user_id` int(11) NOT NULL,
  `invoice_id` bigint(20) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(53,2) DEFAULT NULL,
  `notes` longtext
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`id`, `user_id`, `sub_user_id`, `invoice_id`, `date`, `amount`, `notes`) VALUES
(1, 2, 0, 7, '2018-03-14', '800.00', 'Card'),
(2, 2, 3, 7, '2018-03-14', '1000.00', 'Cash'),
(3, 2, 0, 11, '2018-03-14', '2999.00', 'Cash'),
(4, 17, 0, 19, '2018-03-03', '42480.00', 'card'),
(5, 1, 0, 6, '2018-03-21', '500.00', 'payment by cheque sbi 6765'),
(6, 17, 0, 19, '2018-03-03', '1000.00', 'cash'),
(7, 17, 0, 19, '2018-03-04', '42480.00', 'card'),
(8, 32, 0, 28, '2018-03-30', '21416.00', 'p'),
(9, 32, 0, 25, '2018-03-30', '7000.00', 'po'),
(10, 32, 0, 28, '2018-03-30', '-7000.00', 'po'),
(11, 1, 0, 35, '2018-04-20', '2000.00', 'ddd'),
(12, 35, 0, 39, '2018-12-04', '129140.00', 'Payment Done'),
(13, 35, 0, 40, '2018-04-19', '129140.48', 'Done'),
(16, 1, 0, 38, '2018-04-23', '2240.00', 'Card'),
(17, 35, 0, 44, '2018-04-18', '129140.00', 'Payment Done'),
(18, 35, 0, 44, '2018-04-23', '129140.00', 'Payment Done'),
(19, 3, 0, 41, '2018-04-24', '10000.00', 'advance 30%'),
(20, 35, 0, 49, '2018-03-31', '31000.00', 'PAYMENT RECIEVED'),
(21, 35, 0, 53, '2018-04-12', '350000.00', 'cheque no - 286566'),
(22, 35, 0, 51, '2018-03-15', '22500.00', 'by cheque no- 270790'),
(23, 3, 0, 41, '2018-05-07', '16656.00', 'All payment received '),
(24, 3, 0, 57, '2018-05-07', '3068.00', 'Payment received '),
(25, 1, 0, 43, '2018-05-07', '500.00', 'aaa'),
(26, 1, 0, 43, '2018-05-08', '564.00', 'Cash'),
(27, 1, 0, 37, '2018-05-07', '0.00', 'a'),
(28, 35, 0, 54, '2018-04-09', '155000.00', '50000,55000,50000 cash received'),
(29, 35, 0, 55, '2018-04-13', '460000.00', 'Received'),
(30, 35, 0, 44, '2018-04-18', '129140.00', 'Payment Received'),
(31, 35, 0, 67, '2018-04-21', '26400.00', 'cheque no = 326079'),
(32, 35, 0, 71, '2018-04-26', '21420.00', ' UTR NO - utib0001034'),
(33, 35, 0, 71, '2018-04-26', '21420.00', 'UTR NO - UTIB0001034'),
(34, 35, 0, 71, '2018-04-26', '21420.00', 'UTR NO - UTIB0001034'),
(35, 1, 0, 47, '2018-05-18', '1000.00', 'cash'),
(36, 1, 0, 47, '2018-05-25', '1360.00', 'neft'),
(37, 3, 0, 68, '2018-05-14', '4077.00', 'Payment received by cheque'),
(38, 3, 0, 68, '2018-05-14', '53.00', 'Payment received by cheque'),
(39, 36, 0, 85, '2018-05-28', '47000.00', 'part payment'),
(40, 36, 0, 85, '2018-05-28', '5000.00', 'next deu'),
(41, 36, 0, 88, '2018-05-27', '52000.00', 'part payment'),
(42, 36, 0, 88, '2018-05-28', '6500.00', 'final payment'),
(43, 36, 0, 85, '2018-05-29', '6500.00', 'final '),
(44, 3, 0, 78, '2018-05-02', '100000.00', 'advance 30% Received '),
(45, 37, 0, 91, '2018-06-03', '310.00', 'RECIVED'),
(46, 37, 0, 96, '2018-06-04', '850.00', 'RECIVED'),
(47, 37, 0, 97, '2018-06-04', '700.00', 'RECIVED'),
(48, 37, 0, 99, '2018-06-04', '2000.00', 'recived'),
(49, 37, 0, 99, '2018-06-05', '1000.00', 'recived'),
(50, 1, 0, 103, '2018-06-08', '2000.00', 'cash'),
(51, 1, 0, 103, '2018-06-10', '1514.00', 'neft'),
(52, 3, 0, 95, '2018-06-06', '7710.00', 'Payment received by NEFT'),
(53, 3, 0, 62, '2018-06-11', '4077.00', 'Payment received by cheque'),
(54, 1, 0, 75, '2018-06-11', '20000.00', 'cash'),
(55, 3, 0, 58, '2018-06-14', '40440.00', 'Complete Payment received by cheque'),
(56, 38, 0, 107, '2017-07-20', '5700.00', 'amount received in Cash'),
(57, 35, 0, 108, '2018-05-20', '309000.00', 'Full Payment'),
(58, 35, 0, 71, '2018-05-20', '21420.00', 'Full Payment'),
(59, 35, 0, 50, '2018-06-01', '34720.00', 'PAYMENT RECIEVED'),
(60, 3, 0, 78, '2018-06-14', '27258.00', 'second PO Payment received by cheque'),
(61, 38, 0, 112, '2018-04-02', '10000.00', 'adv recd'),
(62, 38, 0, 112, '2018-04-10', '8500.00', 'amount received in Cash'),
(63, 35, 0, 113, '2018-06-01', '103616.00', 'PAYMENT RECIEVED'),
(64, 35, 0, 53, '2018-05-20', '309000.00', 'PAYMENT RECIEVED'),
(65, 35, 0, 108, '2018-05-20', '1.00', 'PAYMENT RECIEVED'),
(66, 1, 0, 118, '2018-06-13', '2000.00', 'cash'),
(67, 1, 0, 118, '2018-06-15', '240.00', 'cash'),
(68, 3, 0, 114, '2018-06-19', '11424.00', '100 % Payment received by cheque'),
(69, 3, 0, 111, '2018-06-18', '3084.00', '100 % Payment received by NEFT'),
(70, 3, 0, 78, '2018-06-18', '125920.00', '60 % Payment received by cheque '),
(71, 3, 0, 78, '2018-09-12', '20700.00', '10% Payment received by cheque'),
(72, 3, 0, 66, '2018-06-23', '6048.00', '100 % Payment received by NEFT'),
(73, 35, 0, 123, '2018-06-22', '296001.00', 'Payment Received'),
(74, 3, 0, 100, '2018-06-28', '7803.00', '100% Payment received by cheque'),
(75, 3, 0, 131, '2018-07-04', '3808.00', '100 % Payment received by cheque'),
(76, 3, 0, 125, '2018-07-04', '14160.00', '100 % Payment received by cheque'),
(77, 3, 0, 72, '2018-07-06', '55470.00', '100 % Payment received by cheque 027264'),
(78, 35, 0, 121, '2018-06-27', '16243.00', 'Payment Received'),
(79, 35, 0, 135, '2018-07-01', '160000.00', 'Payment Received'),
(80, 3, 0, 126, '2018-07-04', '4032.00', '100 % Payment received by NEFT'),
(81, 3, 0, 115, '2018-07-20', '5999.00', '100 % Payment received by cheque'),
(82, 3, 0, 128, '2018-07-20', '15402.00', '100 % Payment received by cheque'),
(83, 3, 0, 142, '2018-07-21', '11800.00', '100 % Payment received by NEFT'),
(84, 3, 0, 122, '2018-07-20', '6048.00', '100 % Payment received by NEFT'),
(85, 1, 0, 130, '2018-07-25', '500.00', 'PART PAYMENT DONE'),
(86, 1, 0, 119, '2018-07-30', '360.00', 'GST'),
(87, 0, 0, 0, '0000-00-00', '0.00', ''),
(88, 1, 0, 119, '2018-07-30', '500.00', 'advance'),
(89, 1, 0, 119, '2018-07-30', '200.00', 'testing'),
(90, 1, 0, 119, '2018-07-30', '200.00', 'testing'),
(91, 1, 0, 119, '2018-07-30', '0.00', 'tests'),
(92, 1, 0, 130, '2018-07-31', '121.00', 'Card'),
(93, 1, 0, 130, '2018-07-31', '121.00', 'Card'),
(94, 1, 0, 106, '2018-07-31', '500.00', 'cash'),
(95, 1, 0, 130, '2018-07-31', '140.00', 'Card'),
(96, 35, 0, 147, '2018-07-11', '317200.00', 'Payment Received'),
(97, 35, 0, 148, '2018-07-19', '280000.00', 'Payment Received'),
(98, 35, 0, 151, '2018-07-21', '336300.00', 'Payment Received'),
(99, 35, 0, 149, '2018-07-19', '290000.00', 'Payment Received'),
(100, 35, 0, 120, '2018-07-17', '7680.00', 'Payment Received'),
(101, 35, 0, 136, '2018-08-01', '100000.00', 'partial payment'),
(102, 35, 0, 70, '2018-07-02', '15022.00', 'Payment Received'),
(103, 35, 0, 69, '2018-07-01', '221663.00', 'Payment Received'),
(104, 3, 0, 137, '2018-08-08', '10791.00', '100 % Payment received by NEFT'),
(105, 3, 0, 152, '2018-08-09', '3360.00', '100 % Payment received by NEFT'),
(106, 1, 0, 75, '2018-08-11', '100000.00', 'cash'),
(107, 3, 0, 146, '2018-08-16', '5310.00', '100 % Payment received by NEFT'),
(108, 35, 0, 149, '2018-08-03', '80001.00', 'payment received'),
(109, 35, 0, 150, '2018-07-23', '290000.00', 'Payment Received'),
(110, 1, 0, 119, '2018-08-23', '500.00', 'Additional Superintendent of Police'),
(111, 3, 0, 156, '2018-08-25', '6313.00', '100 % Payment received by NEFT'),
(112, 3, 0, 145, '2018-08-24', '1600.00', 'Payment received by Cash'),
(113, 3, 0, 144, '2018-08-24', '11800.00', '100 % Payment received by NEFT'),
(114, 3, 0, 145, '2018-08-24', '80.00', 'Payment received by Cash'),
(115, 3, 0, 155, '2018-09-01', '2632.00', '100 % Payment received by cheque'),
(116, 35, 0, 154, '2018-08-16', '256591.00', 'Payment Done'),
(117, 35, 0, 160, '2018-08-27', '105000.00', 'Payment DOne'),
(118, 35, 0, 163, '2018-09-05', '40000.00', 'Payment DOne'),
(119, 35, 0, 164, '2018-09-04', '291000.00', 'Payment Done'),
(120, 3, 0, 159, '2018-08-27', '24000.00', '50 % Payment received by NEFT'),
(121, 35, 0, 172, '2018-09-02', '265880.00', 'Payment Done'),
(122, 35, 0, 173, '2018-09-09', '167560.00', 'Payment Done'),
(123, 3, 0, 143, '2018-09-21', '23520.00', '100 % Payment received by NEFT'),
(124, 3, 0, 177, '2018-09-29', '1904.00', '100 % Payment received by cheque'),
(125, 38, 0, 180, '2018-08-01', '40000.00', 'adv recd through rtgs'),
(126, 38, 0, 181, '2018-09-09', '1700.00', 'amount received in Cash'),
(127, 38, 0, 182, '2018-08-12', '10000.00', 'advance recd in cash'),
(128, 38, 0, 182, '2018-08-20', '20500.00', 'amount recd through cheque'),
(129, 38, 0, 183, '2018-08-09', '2000.00', 'advance recd in cash'),
(130, 38, 0, 183, '2018-08-13', '2800.00', 'adv recd through rtgs'),
(131, 35, 0, 136, '2018-09-24', '189100.00', 'Payment Done'),
(132, 35, 0, 174, '2018-09-10', '298000.00', 'Payment Received'),
(133, 3, 0, 158, '2018-09-30', '5914.00', '100 % Payment received by cheque'),
(134, 38, 0, 184, '2018-07-13', '19700.00', 'amount received in Cash'),
(135, 38, 0, 185, '2018-07-06', '59060.00', 'adv recd through rtgs'),
(136, 38, 0, 186, '2018-07-09', '1700.00', 'amount recd through cheque'),
(137, 38, 0, 187, '2018-06-20', '60000.00', 'adv recd through rtgs'),
(138, 38, 0, 188, '2018-06-10', '11154.00', 'adv recd through rtgs'),
(139, 38, 0, 189, '2018-06-20', '2400.00', 'amount received in Cash'),
(140, 38, 0, 190, '2018-06-10', '12000.00', 'amount received in Cash'),
(141, 3, 0, 166, '2018-10-02', '6048.00', '100 % Payment received by CASH'),
(142, 38, 0, 180, '2018-09-30', '45000.00', 'adv recd through rtgs'),
(143, 38, 0, 191, '2018-05-28', '7000.00', 'amount received in Cash'),
(144, 3, 0, 169, '2018-10-10', '9845.00', '100 % Payment received by cheque'),
(145, 3, 0, 206, '2018-10-30', '3360.00', '100 % Payment received by cheque'),
(146, 3, 0, 207, '2018-10-25', '9688.00', '100 % Payment received by CASH'),
(147, 3, 0, 170, '2018-10-25', '5310.00', '100 % Payment received by cheque'),
(148, 3, 0, 203, '2018-10-30', '15989.00', '10% Payment received by cheque'),
(149, 38, 0, 196, '2018-10-11', '9340.00', 'adv recd through rtgs'),
(150, 38, 0, 210, '2018-10-29', '1700.00', 'amount recd through cheque'),
(151, 38, 0, 211, '2018-10-29', '7800.00', 'adv recd through rtgs'),
(152, 38, 0, 194, '2018-10-14', '40480.00', 'amount recd through cheque'),
(153, 3, 0, 192, '2018-11-01', '1708.00', '100 % Payment received by cheque'),
(154, 3, 0, 179, '2018-11-01', '3332.00', '100 % Payment received by cheque'),
(155, 3, 0, 178, '2018-11-01', '5667.00', '100 % Payment received by cheque'),
(156, 3, 0, 216, '2018-11-05', '25000.00', '100 % Payment received by cheque'),
(157, 3, 0, 195, '2018-11-19', '5544.00', '100 % Payment not received material taken back'),
(158, 3, 0, 218, '2018-11-20', '1378.00', '100 % Payment received by NEFT'),
(159, 3, 0, 171, '2018-11-20', '9834.00', '100 % Payment received by NEFT'),
(160, 3, 0, 165, '2018-11-20', '2330.00', '100 % Payment received by cheque'),
(161, 3, 0, 159, '2018-11-20', '26014.00', '100 % Payment received by cheque'),
(162, 3, 0, 230, '2018-12-03', '2800.00', '100 % Payment received by cheque'),
(163, 35, 0, 245, '2019-01-12', '867798.00', 'complete'),
(164, 35, 0, 246, '2019-12-11', '30000.00', 'half'),
(165, 35, 0, 246, '2019-11-02', '30000.00', 'half'),
(166, 35, 0, 246, '2019-11-11', '500000.00', 'half'),
(167, 0, 0, 0, '0000-00-00', '0.00', ''),
(168, 0, 0, 0, '0000-00-00', '0.00', ''),
(169, 0, 0, 0, '0000-00-00', '0.00', ''),
(170, 0, 0, 0, '0000-00-00', '0.00', ''),
(171, 35, 0, 246, '2018-12-12', '62881.00', 'complete'),
(172, 0, 0, 0, '0000-00-00', '0.00', ''),
(173, 0, 0, 0, '0000-00-00', '0.00', ''),
(174, 0, 0, 0, '0000-00-00', '0.00', ''),
(175, 35, 0, 261, '2018-12-12', '1656864.00', 'complete'),
(176, 35, 0, 268, '2019-12-12', '778602.00', 'complete'),
(177, 35, 0, 0, '0000-00-00', '0.00', ''),
(178, 35, 0, 0, '0000-00-00', '0.00', ''),
(179, 35, 0, 0, '0000-00-00', '0.00', ''),
(180, 35, 0, 0, '0000-00-00', '0.00', ''),
(181, 35, 0, 0, '0000-00-00', '0.00', ''),
(182, 35, 0, 0, '0000-00-00', '0.00', ''),
(183, 35, 0, 0, '0000-00-00', '0.00', ''),
(184, 35, 0, 0, '0000-00-00', '0.00', ''),
(185, 35, 0, 0, '0000-00-00', '0.00', ''),
(186, 35, 0, 0, '0000-00-00', '0.00', ''),
(187, 35, 0, 0, '0000-00-00', '0.00', ''),
(188, 35, 0, 0, '0000-00-00', '0.00', ''),
(189, 35, 0, 0, '0000-00-00', '0.00', ''),
(190, 35, 0, 0, '0000-00-00', '0.00', ''),
(191, 35, 0, 0, '0000-00-00', '0.00', ''),
(192, 35, 0, 0, '0000-00-00', '0.00', ''),
(193, 35, 0, 0, '0000-00-00', '0.00', ''),
(194, 35, 0, 0, '0000-00-00', '0.00', ''),
(195, 35, 0, 0, '0000-00-00', '0.00', ''),
(196, 35, 0, 0, '0000-00-00', '0.00', ''),
(197, 35, 0, 0, '0000-00-00', '0.00', ''),
(198, 35, 0, 0, '0000-00-00', '0.00', ''),
(199, 35, 0, 0, '0000-00-00', '0.00', ''),
(200, 35, 0, 0, '0000-00-00', '0.00', ''),
(201, 35, 0, 0, '0000-00-00', '0.00', ''),
(202, 35, 0, 0, '0000-00-00', '0.00', ''),
(203, 35, 0, 0, '0000-00-00', '0.00', ''),
(204, 35, 0, 0, '0000-00-00', '0.00', ''),
(205, 35, 0, 0, '0000-00-00', '0.00', ''),
(206, 35, 0, 0, '0000-00-00', '0.00', ''),
(207, 35, 0, 0, '0000-00-00', '0.00', ''),
(208, 35, 0, 0, '0000-00-00', '0.00', ''),
(209, 35, 0, 0, '0000-00-00', '0.00', ''),
(210, 35, 0, 0, '0000-00-00', '0.00', ''),
(211, 35, 0, 0, '0000-00-00', '0.00', ''),
(212, 35, 0, 0, '0000-00-00', '0.00', ''),
(213, 35, 0, 0, '0000-00-00', '0.00', ''),
(214, 35, 0, 0, '0000-00-00', '0.00', ''),
(215, 35, 0, 0, '0000-00-00', '0.00', ''),
(216, 35, 0, 0, '0000-00-00', '0.00', ''),
(217, 35, 0, 0, '0000-00-00', '0.00', ''),
(218, 35, 0, 247, '2018-12-12', '5091085.00', 'complete'),
(219, 35, 0, 193, '0021-12-22', '1212.00', 'complete'),
(220, 35, 0, 271, '2019-12-12', '2194.00', 'complete'),
(221, 35, 0, 163, '2018-12-12', '2194.00', 'complete'),
(222, 35, 0, 163, '2018-12-12', '54397.00', 'half'),
(223, 35, 0, 270, '2018-12-12', '30000.00', 'half'),
(224, 35, 0, 269, '2020-12-12', '30000.00', 'complete'),
(225, 0, 0, 0, '0000-00-00', '0.00', ''),
(226, 0, 0, 0, '0000-00-00', '0.00', ''),
(227, 35, 0, 271, '2018-12-11', '1.00', 'complete'),
(228, 35, 0, 270, '2018-12-12', '30000.00', 'complete'),
(229, 35, 0, 270, '2018-12-12', '30000.00', 'complete'),
(230, 35, 0, 269, '2018-12-12', '500000.00', 'complete'),
(231, 35, 0, 269, '2019-12-12', '30000.00', 'complete'),
(232, 35, 0, 269, '2019-12-12', '30000.00', 'complete'),
(233, 35, 0, 270, '2018-12-12', '1267203.00', 'complete'),
(234, 0, 0, 0, '0000-00-00', '0.00', ''),
(235, 0, 0, 0, '0000-00-00', '0.00', ''),
(236, 0, 0, 0, '0000-00-00', '0.00', ''),
(237, 0, 0, 0, '0000-00-00', '0.00', ''),
(238, 0, 0, 0, '0000-00-00', '0.00', ''),
(239, 0, 0, 0, '0000-00-00', '0.00', ''),
(240, 0, 0, 0, '0000-00-00', '0.00', ''),
(241, 35, 0, 270, '0000-00-00', '30000.00', 'complete'),
(242, 35, 0, 270, '2018-12-06', '30000.00', 'complete'),
(243, 35, 0, 270, '2018-12-26', '30000.00', 'complete'),
(244, 35, 0, 270, '2018-12-19', '30000.00', 'complete'),
(245, 35, 0, 270, '2018-12-19', '30000.00', 'complete'),
(246, 35, 0, 270, '2018-12-19', '50000.00', 'complete'),
(247, 35, 0, 272, '2019-12-20', '551068.00', 'complete'),
(248, 35, 0, 272, '2019-12-12', '30000.00', 'complete'),
(249, 60, 0, 277, '2018-12-30', '50.00', 'half'),
(250, 60, 0, 277, '2018-12-31', '55.00', 'complete'),
(251, 60, 0, 280, '2018-12-30', '100.00', 'complete'),
(252, 35, 0, 283, '2019-01-10', '30000.00', 'half');

-- --------------------------------------------------------

--
-- Table structure for table `purches_tax`
--

CREATE TABLE IF NOT EXISTS `purches_tax` (
  `id` int(11) NOT NULL,
  `purches_id` int(11) NOT NULL,
  `tax_value` decimal(53,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=154 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purches_tax`
--

INSERT INTO `purches_tax` (`id`, `purches_id`, `tax_value`) VALUES
(1, 1, '12.00'),
(2, 2, '18.00'),
(3, 3, '12.00'),
(5, 5, '18.00'),
(6, 6, '18.00'),
(7, 7, '12.00'),
(8, 8, '18.00'),
(9, 9, '18.00'),
(10, 10, '18.00'),
(11, 11, '18.00'),
(12, 12, '28.00'),
(13, 13, '18.00'),
(14, 14, '28.00'),
(15, 15, '18.00'),
(16, 16, '18.00'),
(17, 17, '18.00'),
(19, 20, '18.00'),
(21, 24, '12.00'),
(22, 25, '18.00'),
(24, 27, '12.00'),
(25, 28, '18.00'),
(28, 36, '18.00'),
(29, 37, '18.00'),
(30, 38, '12.00'),
(31, 39, '18.00'),
(32, 41, '18.00'),
(33, 42, '18.00'),
(34, 43, '18.00'),
(35, 44, '12.00'),
(36, 45, '12.00'),
(37, 46, '12.00'),
(38, 47, '18.00'),
(39, 48, '18.00'),
(40, 49, '18.00'),
(41, 50, '18.00'),
(42, 51, '12.00'),
(43, 52, '18.00'),
(44, 53, '18.00'),
(45, 54, '18.00'),
(46, 55, '18.00'),
(47, 56, '18.00'),
(48, 57, '18.00'),
(49, 58, '18.00'),
(50, 59, '18.00'),
(51, 60, '18.00'),
(52, 61, '18.00'),
(53, 62, '18.00'),
(54, 63, '18.00'),
(55, 64, '18.00'),
(56, 65, '18.00'),
(59, 68, '18.00'),
(60, 69, '12.00'),
(61, 70, '12.00'),
(62, 71, '12.00'),
(63, 72, '12.00'),
(64, 73, '18.00'),
(66, 76, '12.00'),
(67, 78, '12.00'),
(68, 79, '12.00'),
(69, 80, '12.00'),
(71, 82, '18.00'),
(72, 83, '5.00'),
(73, 84, '18.00'),
(74, 85, '18.00'),
(75, 86, '18.00'),
(76, 87, '12.00'),
(77, 88, '12.00'),
(79, 90, '12.00'),
(80, 91, '12.00'),
(81, 92, '12.00'),
(82, 93, '12.00'),
(83, 94, '12.00'),
(84, 95, '18.00'),
(85, 96, '18.00'),
(86, 97, '18.00'),
(87, 98, '12.00'),
(88, 99, '12.00'),
(89, 100, '18.00'),
(90, 101, '12.00'),
(91, 102, '18.00'),
(92, 103, '18.00'),
(93, 104, '18.00'),
(94, 105, '18.00'),
(95, 106, '12.00'),
(96, 107, '12.00'),
(97, 108, '28.00'),
(98, 109, '12.00'),
(99, 110, '12.00'),
(100, 111, '18.00'),
(102, 113, '18.00'),
(103, 114, '12.00'),
(104, 115, '12.00'),
(105, 116, '18.00'),
(106, 117, '28.00'),
(107, 118, '12.00'),
(108, 119, '12.00'),
(109, 120, '12.00'),
(110, 121, '12.00'),
(111, 122, '12.00'),
(112, 123, '18.00'),
(113, 124, '12.00'),
(114, 125, '12.00'),
(115, 126, '12.00'),
(116, 127, '18.00'),
(117, 128, '12.00'),
(118, 135, '12.00'),
(119, 136, '18.00'),
(120, 137, '18.00'),
(121, 138, '28.00'),
(122, 139, '18.00'),
(123, 153, '12.00'),
(125, 155, '18.00'),
(126, 165, '12.00'),
(127, 166, '12.00'),
(128, 167, '18.00'),
(129, 168, '12.00'),
(130, 169, '18.00'),
(131, 170, '12.00'),
(132, 171, '12.00'),
(133, 172, '18.00'),
(134, 173, '18.00'),
(135, 174, '18.00'),
(136, 175, '18.00'),
(137, 176, '12.00'),
(138, 177, '12.00'),
(139, 178, '18.00'),
(140, 179, '12.00'),
(141, 180, '12.00'),
(142, 181, '18.00'),
(143, 182, '18.00'),
(144, 183, '28.00'),
(145, 184, '12.00'),
(146, 185, '12.00'),
(147, 186, '18.00'),
(148, 187, '18.00'),
(149, 188, '5.00'),
(150, 191, '5.00'),
(151, 192, '5.00'),
(152, 193, '5.00'),
(153, 194, '5.00');

-- --------------------------------------------------------

--
-- Table structure for table `series`
--

CREATE TABLE IF NOT EXISTS `series` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `first_number` int(11) DEFAULT '1' COMMENT 'This is for Invoices',
  `estimates` int(11) NOT NULL DEFAULT '1',
  `profarmas` int(11) NOT NULL DEFAULT '1',
  `challans` int(11) NOT NULL DEFAULT '1',
  `enabled` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `series`
--

INSERT INTO `series` (`id`, `user_id`, `name`, `value`, `first_number`, `estimates`, `profarmas`, `challans`, `enabled`) VALUES
(1, 1, 'Printing', 'PR-', 12, 6, 9, 1, 1),
(2, 1, 'Domain', 'DM-', 10, 5, 3, 1, 1),
(3, 2, 'Web Development', 'WD-', 5, 2, 3, 1, 1),
(6, 18, 'mobile', 'MB-', 0, 0, 0, 1, 1),
(7, 24, 'computers', 'CP-', 0, 0, 0, 1, 1),
(8, 17, 'mobile', 'mb', 2, 2, 1, 1, 1),
(9, 23, 'Bag', 'BG-', 1, 1, 1, 1, 1),
(10, 11, 'Services', 'SER-', 2, 1, 1, 1, 1),
(24, 3, 'AE1819', 'AE1819', 52, 1, 1, 1, 1),
(25, 3, 'AEQ1819', 'AEQ1819', 2, 13, 1, 1, 1),
(27, 36, 'estimate', 'e1', 2, 3, 3, 1, 1),
(28, 36, 'invoice', '1000', 1001, 1001, 1001, 1, 1),
(29, 36, 'Purchase', '1', 1, 1, 1, 1, 1),
(30, 36, 'travelling', 't1', 1, 1, 1, 1, 1),
(31, 37, '5', '0.00', 8, 1, 0, 1, 1),
(33, 38, 'Invoice 18-19', 'SE/18/19/', 22, 8, 1, 1, 1),
(34, 38, 'Invoice 17-18', 'SE/17/18/', 2, 1, 1, 1, 1),
(35, 1, 'Web Development', 'WD-', 1, 1, 1, 1, 1),
(37, 42, 'Printing', 'Pr', 1, 1, 1, 1, 1),
(38, 44, 'TAX INVOICE', '1', 1, 1, 1, 1, 1),
(39, 45, 'Hardware', 'HW-', 1, 1, 1, 1, 1),
(40, 45, 'Service', 'Ser-', 1, 1, 1, 1, 1),
(41, 1, 'COMMIRCIAL', 'CR', 1, 1, 1, 1, 1),
(42, 49, 'My Series ', 'RCN-', 104, 101, 101, 1, 1),
(43, 35, 'erwerf', '235235', 23539, 23524, 3524, 1, 1),
(44, 0, '', '', 0, 0, 0, 1, 1),
(45, 60, 'product', 'pro/', 1, 1, 1, 1, 1),
(46, 60, 'service', 'ser/', 3, 3, 3, 1, 1),
(47, 35, 'aksh', '1233', 123123, 12323, 2323, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `sub_user_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `name_slug` varchar(100) DEFAULT NULL,
  `invoice_state` varchar(255) NOT NULL,
  `generated_by` int(11) NOT NULL,
  `status` enum('active','deactive') NOT NULL,
  `type` enum('invoice','Crm') NOT NULL,
  `cust_comp_fax` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_no` int(11) NOT NULL,
  `dob` date NOT NULL,
  `tmp_address` varchar(255) NOT NULL,
  `pmt_address` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `faculty` varchar(255) NOT NULL,
  `pass_year` varchar(255) NOT NULL,
  `coll_name` varchar(255) NOT NULL,
  `source_type` varchar(255) NOT NULL,
  `course_list` varchar(255) NOT NULL,
  `course_fee` int(11) NOT NULL,
  `assign_to` varchar(255) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `cur_date` date NOT NULL,
  `img_file` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `user_id`, `sub_user_id`, `name`, `name_slug`, `invoice_state`, `generated_by`, `status`, `type`, `cust_comp_fax`, `email`, `contact_no`, `dob`, `tmp_address`, `pmt_address`, `gender`, `degree`, `faculty`, `pass_year`, `coll_name`, `source_type`, `course_list`, `course_fee`, `assign_to`, `comment`, `cur_date`, `img_file`) VALUES
(1, 1, 0, 'RR Parkon', 'RRParkon', 'Maharashtra', 1, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(2, 1, 0, 'Tata Technologies', 'TataTechnologies', 'Maharashtra', 1, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(5, 2, 0, 'Tripolarcon', 'Tripolarcon', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(6, 3, 0, 'Infosys India Pvt. Ltd', 'InfosysIndiaPvt.Ltd', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(7, 17, 0, 'Tech Mahindra', 'TechMahindra', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(8, 15, 0, 'Nandakumar Gokhale', 'NandakumarGokhale', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(9, 17, 0, 'Shyam', 'Shyam', '', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(10, 18, 0, 'Minu', 'Minu', '', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(11, 19, 0, 'Tejas Dixit', 'TejasDixit', '', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(12, 21, 0, 'Akron Engineering Company', 'AkronEngineeringCompany', '', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(13, 18, 0, 'Aarti', 'Aarti', '', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(14, 17, 0, 'Nilam', 'Nilam', '', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(15, 24, 0, 'Minakshi  Pvt Ltd', 'Minakshi  Pvt Ltd', '', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(16, 11, 0, 'KIMI', 'KIMI', 'MAHARASHTRA', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(17, 27, 0, 'Brandonimics', 'Brandonimics', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(18, 32, 0, 'XZ Enterprises', 'XZEnterprises', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(19, 32, 0, 'Gps Enterprises', 'GpsEnterprises', '', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(20, 32, 0, 'ABC', 'ABC', 'Sachin', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(21, 33, 0, 'Gondawale Devasthan', 'GondawaleDevasthan', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(22, 33, 0, 'KTR Couplings India Pvt Ltd', 'KTRCouplingsIndiaPvtLtd', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(23, 1, 0, 'Corbital', 'Corbital', 'Himachal Pradesh', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(25, 3, 0, 'PARADIGM BUILDING SOLUTIONS PRIVATE LIMITED', 'PARADIGMBUILDINGSOLUTIONSPRIVATELIMITED', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(35, 3, 0, 'Anmol Heights Co - Operative Housing Society Ltd Karvenagar, Pune', 'Anmol Heights Co - Operative Housing Society Ltd Karvenagar, Pune', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(36, 3, 0, 'Ujwal Udyog, Pune', 'UjwalUdyog,Pune', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(37, 3, 0, 'Awakeningjagriti.org.in', 'Awakeningjagriti.org.in', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(38, 1, 0, 'RR Cables', 'RRCables', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(39, 3, 0, 'Deoghar, Pune', 'Deoghar,Pune', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(40, 3, 0, 'Boom Age Engineering Solutions Pvt Ltd', 'BoomAgeEngineeringSolutionsPvtLtd', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(44, 3, 0, 'Nea Co Operative Housing Society ', 'NeaCoOperativeHousingSociety', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(45, 3, 0, 'Dr. Tatyasaheb Jadhav', 'Dr.TatyasahebJadhav', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(46, 3, 0, 'Lucian Lighting ', 'LucianLighting', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(47, 36, 0, 'Manoj', 'Manoj', 'MAHARASHTRA', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(48, 36, 0, 'Parag Joshi', 'ParagJoshi', 'MAHARASHTRA', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(51, 37, 0, 'KAMLESH MEDICAL', 'KAMLESHMEDICAL', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(52, 37, 0, 'DHAYGUDE MEDICAL', 'DHAYGUDEMEDICAL', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(53, 1, 0, 'Rana', 'Rana', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(54, 38, 0, 'Radhika Kulkarni', 'RadhikaKulkarni', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(56, 1, 0, 'Planora', 'Planora', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(57, 38, 0, 'Sathe Prafulla', 'SathePrafulla', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(58, 3, 0, 'A SQUARE REALITY ', 'ASQUAREREALITY', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(61, 42, 0, 'Xyz Pvt .ltd', 'XyzPvt.ltd', '', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(62, 38, 0, 'SEVA SAHAYOG FOUNDATION', 'SEVASAHAYOGFOUNDATION', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(63, 3, 0, 'Dcap-Solutions ', 'Dcap-Solutions', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(64, 3, 0, 'Anish Associates ', 'AnishAssociates', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(65, 3, 0, 'Amit Phatak', 'AmitPhatak', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(66, 44, 0, 'Kalpataru', 'Kalpataru', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(67, 44, 0, 'Damji Shamji', 'DamjiShamji', '', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(68, 3, 0, 'The Principal, Govt.College Of Engineering, Jalgaon. Maharashtra', 'ThePrincipal,Govt.CollegeOfEngineering,Jalgaon.Maharashtra', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(72, 3, 0, 'Dcap Solutions ', 'DcapSolutions', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(73, 3, 0, 'Silver Leaf Society Internal Road Model Colony Pune ', 'SilverLeafSocietyInternalRoadModelColonyPune', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(74, 3, 0, 'Topaz Society Model Colony Pune ', 'TopazSocietyModelColonyPune', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(75, 3, 0, 'Vishwakarma Enterprises', 'VishwakarmaEnterprises', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(78, 3, 0, 'Shradha Construcrion', 'ShradhaConstrucrion', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(85, 3, 0, 'SHREE AUTOMATION', 'SHREEAUTOMATION', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(86, 3, 0, 'SHRIDHAR MUKUND TAMBEKAR', 'SHRIDHARMUKUNDTAMBEKAR', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(90, 3, 0, 'Zenith Construxive & Interior Associate', 'ZenithConstruxive&InteriorAssociate', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(91, 3, 0, 'Manas Construction ', 'ManasConstruction', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(97, 3, 0, 'Krishna Kewal Township ', 'KrishnaKewalTownship', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(98, 38, 0, 'Keskar Chaitanya', 'KeskarChaitanya', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(99, 38, 0, 'Kulkarni Pankaj', 'KulkarniPankaj', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(100, 38, 0, 'Mulay Suyog', 'MulaySuyog', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(101, 38, 0, 'Godbole Geeta', 'GodboleGeeta', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(102, 38, 0, 'Corpage', 'Corpage', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(103, 38, 0, 'DAATE ROHINI', 'DAATEROHINI', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(104, 38, 0, 'Joshi Sachin', 'JoshiSachin', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(105, 38, 0, 'KADAK ZATKA', 'KADAKZATKA', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(106, 38, 0, 'Nilakhe Saurabh', 'NilakheSaurabh', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(107, 38, 0, 'GODSE RUTUJA', 'GODSERUTUJA', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(108, 38, 0, 'GOKHALE SACHIN', 'GOKHALESACHIN', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(109, 38, 0, 'Bangale Rajendra', 'BangaleRajendra', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(110, 3, 0, 'Siddhivinayak Infinite Furnitures PVT Ltd', 'SiddhivinayakInfiniteFurnituresPVTLtd', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(111, 38, 0, 'Damle', 'Damle', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(112, 49, 0, 'MATHILAL MISTRI', 'MATHILALMISTRI', 'MAHARASHTRA', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(113, 49, 0, 'PRAKASH SHAH', 'PRAKASH SHAH', 'MAHARASHTRA', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(114, 38, 0, 'Corpage India Advisors Pvt Ltd', 'CorpageIndiaAdvisorsPvtLtd', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(115, 38, 0, 'Kulkarni Anuja', 'KulkarniAnuja', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(116, 38, 0, 'Dr.rutuja Dental Clinic', 'Dr.rutujaDentalClinic', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(117, 3, 0, 'Girija Shankar Vihar, Ganesh Nagar, Karve Nagar, Pune, Maharashtra 411052', 'GirijaShankarVihar,GaneshNagar,KarveNagar,Pune,Maharashtra411052', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(118, 50, 0, 'TECHNIP INDIA LIMITED', 'TECHNIPINDIALIMITED', '', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(119, 38, 0, 'Ashish Phuse', 'AshishPhuse', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(121, 3, 0, 'Kumar Park Co Op Housing Society Ltd', 'KumarParkCoOpHousingSocietyLtd', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(122, 3, 0, 'Suhas Bapat', 'SuhasBapat', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(124, 38, 0, 'Mr.murkute..(pp.bangale Rajendra )', 'Mr.murkute..(pp.bangaleRajendra)', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(125, 38, 0, 'C A-badwe & Associates', 'CA-badwe&Associates', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(126, 38, 0, 'Dr.varadpande Rutuja (dental Clinic )', 'Dr.varadpandeRutuja(dentalClinic)', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(128, 38, 0, 'Paradkar Shirish', 'ParadkarShirish', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(130, 1, 1, 'RR Cables', 'RRCables', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(131, 38, 0, 'Joshi Rahul', 'JoshiRahul', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(133, 1, 0, '7 Mentor', '7Mentor', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(134, 3, 0, 'Abhiyanta Structure ', 'AbhiyantaStructure', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(136, 3, 0, 'M/S  Jupiter Infotech Plot No. 37 MIDC,RGIP, PHASE II ', 'M/SJupiterInfotechPlotNo.37MIDC,RGIP,PHASEII', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(137, 38, 0, 'Manman Innovations Pvt.ltd', 'ManmanInnovationsPvt.ltd', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(138, 38, 0, 'Mr.kulkarni', 'Mr.kulkarni', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(140, 3, 0, 'Mr. Bhide', 'Mr.Bhide', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(146, 35, 0, 'Datta', 'Datta', '', 0, 'active', 'invoice', '', 'h@gmail.com', 1234567890, '2019-01-17', 'pune', 'pune', 'Male', 'Graduate', 'science', '2018', 'sinhgad college', '', 'php,Java,Android', 1232323, '', 'good', '0000-00-00', 'Penguins.jpg'),
(155, 60, 0, 'AK Properties', 'AKProperties', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(157, 60, 0, 'AK Properties2', 'AKProperties2', 'Maharashtra', 0, 'active', 'invoice', '', '', 0, '0000-00-00', '', '', '', '', '', '', '', '', '', 0, '', '', '0000-00-00', ''),
(187, 35, 0, 'Akshay Patil', NULL, '', 0, 'active', 'Crm', '', 'h@gmail.com', 1234567890, '2019-01-10', 'wadad', 'wadad', 'Male', 'Graduate', 'science', '2018', 'sinhgad college', '14', 'php,Java', 1232323, '20', 'adasgfad', '2019-01-15', ''),
(188, 35, 0, 'Arjunaaa', NULL, '', 0, 'active', 'Crm', '', 'h@gmail.com', 1234567890, '2019-01-21', 'wadgaon', 'wadgaon', 'Male', 'Graduate', 'science', '2018', 'sinhgad college', '14', 'php,Java,Android', 1232323, '144', 'dweqf', '2019-01-15', ''),
(189, 35, 0, 'Datta', NULL, '', 35, 'active', 'Crm', '', 'h@gmail.com', 1234567890, '2019-01-17', 'pune', 'pune', 'Female', 'Graduate', 'commerce', '2018', 'sinhgad college', '11', 'Java,Xml', 1232323, '15', 'wqeqwe', '2019-01-15', ''),
(190, 35, 0, 'Akshay', NULL, '', 35, 'active', 'Crm', '', 'h@gmail.com', 1234567890, '2019-01-03', 'wadgaon', 'wadgaon', 'Male', 'Graduate', 'science', '2018', 'sinhgad college', '8', 'php,Xml', 1213, 'akshay', 'Bad', '2019-01-16', ''),
(191, 0, 35, 'Datta', '', '', 0, 'active', 'invoice', '', 'h@gmail.com', 1234567890, '2019-01-17', 'pune', 'pune', ' ', 'Graduate', '', '2018', '', '', 'php,Java', 1232323, '', 'good', '0000-00-00', ''),
(192, 0, 35, 'Datta', 'Datta', '', 0, 'active', 'invoice', '', 'h@gmail.com', 1234567890, '2019-01-17', 'pune', 'pune', 'Male', 'Graduate', '', '2018', '', '', 'php,Java', 1232323, '', 'good', '0000-00-00', ''),
(193, 0, 35, 'Datta', 'Datta', '', 0, 'active', 'invoice', '', 'h@gmail.com', 1234567890, '2019-01-17', 'pune', 'pune', 'Male', 'Graduate', '', '2018', '', '', 'php,Java', 1232323, '', 'good', '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE IF NOT EXISTS `tag` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `is_triple` tinyint(1) DEFAULT NULL,
  `triple_namespace` varchar(100) DEFAULT NULL,
  `triple_key` varchar(100) DEFAULT NULL,
  `triple_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tagging`
--

CREATE TABLE IF NOT EXISTS `tagging` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `taggable_model` varchar(30) DEFAULT NULL,
  `taggable_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tax`
--

CREATE TABLE IF NOT EXISTS `tax` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sgst` varchar(255) DEFAULT NULL,
  `cgst` varchar(255) NOT NULL,
  `igst` varchar(255) NOT NULL,
  `value` decimal(53,2) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1' COMMENT '1-active 0-inactive',
  `is_default` tinyint(1) DEFAULT '0' COMMENT '1-active 0-inactive'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tax`
--

INSERT INTO `tax` (`id`, `name`, `sgst`, `cgst`, `igst`, `value`, `active`, `is_default`) VALUES
(1, 'GST', 'SGST @ 2.5% ', ' CGST @ 2.5%', 'IGST @ 5%', '5.00', 1, 1),
(2, 'GST', 'SGST @ 6%', ' CGST @ 6%', 'IGST @ 12%\n', '12.00', 1, 1),
(3, 'GST', 'SGST @ 9%', 'CGST @ 9%', 'IGST @ 18%', '18.00', 1, 1),
(4, 'GST', 'SGST @ 14%', 'CGST @ 14%', 'IGST @ 28%\n', '28.00', 1, 1),
(5, '', 'SGST @ 0%', 'CGST @ 0%', 'IGST@ %', '0.00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_session`
--

CREATE TABLE IF NOT EXISTS `tbl_session` (
  `id` int(11) NOT NULL,
  `session_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_session`
--

INSERT INTO `tbl_session` (`id`, `session_id`) VALUES
(1, '187');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sign_up`
--

CREATE TABLE IF NOT EXISTS `tbl_sign_up` (
  `id` int(11) NOT NULL,
  `comp_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `contact_no` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `record_date` date NOT NULL,
  `status` enum('Active','Deactive') NOT NULL DEFAULT 'Deactive'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_states`
--

CREATE TABLE IF NOT EXISTS `tbl_states` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `first_digit` varchar(255) NOT NULL,
  `state_code` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_states`
--

INSERT INTO `tbl_states` (`id`, `name`, `first_digit`, `state_code`) VALUES
(1, 'Andhra Pradesh', 'AP', 28),
(2, 'Arunachal Pradesh', 'AR', 12),
(3, 'Assam', 'AS', 18),
(4, 'Bihar', 'BR', 10),
(5, 'Chhattisgarh', 'CG', 4),
(6, 'Goa', 'GA', 30),
(7, 'Gujarat', 'GJ', 24),
(8, 'Haryana', 'HR', 6),
(9, 'Himachal Pradesh', 'HP', 2),
(10, 'Jammu and Kashmir', 'JK', 1),
(11, 'Jharkhand', 'JH', 20),
(12, 'Karnataka', 'KA', 29),
(13, 'Kerala', 'KL', 32),
(14, 'Madhya Pradesh', 'MP', 23),
(15, 'Maharashtra', 'MH', 27),
(16, 'Manipur', 'MN', 14),
(17, 'Meghalaya', 'ML', 17),
(18, 'Mizoram', 'MZ', 15),
(19, 'Nagaland', 'NL', 13),
(20, 'Orissa', 'OR', 21),
(21, 'Punjab', 'PB', 3),
(22, 'Rajasthan', 'RJ', 8),
(23, 'Sikkim', 'SK', 11),
(24, 'Tamil Nadu', 'TN', 33),
(25, 'Tripura', 'TR', 16),
(26, 'Uttarakhand', 'UK', 5),
(27, 'Uttar Pradesh', 'UP', 9),
(28, 'West Bengal', 'WB', 19),
(29, 'Telangana', 'TS', 36),
(30, 'Andhra Pradesh (New)', 'AD', 37),
(31, 'Andaman and Nicobar Islands', 'AN', 35),
(32, 'Chandigarh', 'CH', 22),
(33, 'Dadra and Nagar Haveli', 'DH', 26),
(34, 'Daman and Diu', 'DD', 25),
(35, 'Delhi', 'DL', 7),
(36, 'Lakshadweep', 'LD', 31),
(37, 'Pondicherry', 'PY', 34);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `comp_name` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `is_active` tinyint(1) DEFAULT '0',
  `is_super_admin` tinyint(1) DEFAULT '0',
  `last_login` date DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `payment_status` int(11) NOT NULL DEFAULT '0',
  `hash` varchar(255) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `type` varchar(50) NOT NULL DEFAULT 'admin',
  `sms` enum('No','Yes') NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `comp_name`, `name`, `username`, `password`, `contact`, `is_active`, `is_super_admin`, `last_login`, `start_date`, `end_date`, `payment_status`, `hash`, `created_at`, `updated_at`, `type`, `sms`) VALUES
(1, 'EBC Solutions Pvt. Ltd', 'Amit Ranawade', 'admin@e-bc.in', 'admin', '9632587410', 1, 1, NULL, '0000-00-00', '0000-00-00', 0, '', '2018-02-27', '2018-03-01', 'admin', 'No'),
(3, 'Aaradhya Enterprises ', 'Anand Chitale', 'anand@aaradhyaenterprises.in', 'admin', '9552777928', 1, 0, NULL, '2018-03-12', '2019-03-12', 1, '', '2018-03-07', '2018-04-23', 'admin', 'No'),
(5, 'Akron', 'Mahesh Phatak', 'phatakms77@gmail.com', 'mahesh77', '9819759758', 1, 1, NULL, '2018-07-01', '2018-07-31', 1, '', '2018-03-12', '0000-00-00', 'admin', 'No'),
(6, 'Eydentity Brand Solutions', 'Deepak Gade', 'deepak@eydentitybs.com', 'password', '9167213142', 1, 0, NULL, '2018-03-12', '2018-03-20', 0, '', '2018-03-12', '0000-00-00', 'admin', 'No'),
(11, 'K & K company', 'Krutika karwande', 'krutika.joshi2013@gmail.com', 'kuki1991', '8928503829', 1, 0, NULL, '2018-03-15', '2018-03-29', 0, '6f2268bd1d3d3ebaabb04d6b5d099425', '2018-03-15', '0000-00-00', 'admin', 'No'),
(15, 'Eco-Clean Hygiene Services', 'Nandakumar Gokhale', 'nandakumar.gokhale@gmail.com', 'Nandu123', '08550990095', 1, 0, NULL, '2018-03-20', '2018-04-03', 0, '1c1d4df596d01da60385f0bb17a4a9e0', '2018-03-20', '0000-00-00', 'admin', 'No'),
(20, 'MNPL', 'Mahesh Phatak', 'phatakms77@yahoo.com', '53772306', '9819759758', 0, 0, NULL, '2018-03-20', '2018-04-03', 0, '84d9ee44e457ddef7f2c4f25dc8fa865', '2018-03-20', '0000-00-00', 'admin', 'No'),
(21, 'MI', 'Mahesh Phatak', 'manavinstruments@gmail.com', 'msp5377', '9819759758', 0, 0, NULL, '2018-03-20', '2018-04-03', 0, '555d6702c950ecb729a966504af0a635', '2018-03-20', '0000-00-00', 'admin', 'No'),
(26, 'Ams systems & solutions', 'Anil K', 'info@shreeav.com', 'anil49462', '9823049462', 1, 0, NULL, '2018-03-22', '2018-04-05', 1, '7d04bbbe5494ae9d2f5a76aa1c00fa2f', '2018-03-22', '0000-00-00', 'admin', 'No'),
(27, 'taj services', 'tejas arun joshi', 'tejasjosh01@gmail.com', 'tejasjoshi', '09011309309', 1, 0, NULL, '2018-03-27', '2018-04-10', 0, '443cb001c138b2561a0d90720d6ce111', '2018-03-27', '0000-00-00', 'admin', 'No'),
(28, 'Shree Enterprises', 'Tushar', 'kanchan.deo75@gmail.com', 'india', '07030708328', 1, 0, NULL, '2018-03-27', '2018-04-10', 0, '9b04d152845ec0a378394003c96da594', '2018-03-27', '0000-00-00', 'admin', 'No'),
(29, 'Shubhra Enterprises', 'Amit Deshpande', 'shubhra1716@gmail.com', 'shubhra', '9552189552', 1, 0, NULL, '2018-03-27', '2018-04-10', 0, '58a2fc6ed39fd083f55d4182bf88826d', '2018-03-27', '0000-00-00', 'admin', 'No'),
(30, 'Shrudha Varities', 'Sachin Belurgikar', 'sachinbelurgikar@gmail.com', '2121', '9422176907', 1, 0, NULL, '2018-03-27', '2018-04-10', 0, 'd09bf41544a3365a46c9077ebb5e35c3', '2018-03-27', '0000-00-00', 'admin', 'No'),
(31, 'credence business services', 'Anirudha Pangarkar', 'anirudha235@gmail.com', '9403859008', '9405456172', 1, 0, NULL, '2018-03-28', '2018-04-11', 0, 'fccb3cdc9acc14a6e70a12f74560c026', '2018-03-28', '0000-00-00', 'admin', 'No'),
(32, 'Green Pumps & Equipments Pvt. Ltd.', 'Prasad', 'prasad@greenpumps.co.in', 'sony', '9422776152', 1, 0, NULL, '2018-03-30', '2018-04-13', 0, '9b8619251a19057cff70779273e95aa6', '2018-03-30', '0000-00-00', 'admin', 'No'),
(35, 'Shree Generators & Power Solutions', 'Akshay ', 'sales@sgps.co.in', 'akshay3535', '9922222362', 1, 0, NULL, '2018-04-20', '2019-04-20', 1, '', '2018-04-20', '2018-12-17', 'admin', 'Yes'),
(36, 'Axiom Supercon Pvt Ltd', 'Niranjan Mulay', 'niranjan.vmulay@gmail.com', 'oyjcpf2x', '07720004341', 1, 0, NULL, '2018-05-28', '2018-06-11', 0, 'e5841df2166dd424a57127423d276bbe', '2018-05-28', '0000-00-00', 'admin', 'No'),
(37, 'NETWORLD ENTERPRISES', 'SAURABH BABU SHIVGAN', 'networld972@gmail.com', 'Satara@123', '9921811763', 1, 0, NULL, '2018-06-03', '2018-06-17', 0, '6395ebd0f4b478145ecfbaf939454fa4', '2018-06-03', '0000-00-00', 'admin', 'No'),
(38, 'Shree Enterprises', 'Tushar Deo', 'shreeenterprises0606@gmail.com', '0712nagpur', '07030708328', 1, 0, NULL, '2018-06-12', '2019-06-20', 1, '4e0928de075538c593fbdabb0c5ef2c3', '2018-06-06', '2018-06-12', 'admin', 'Yes'),
(39, 'Rashmi', 'Kanchan', 'tushardeo@gmail.com', 'tushar', '07030708328', 0, 0, NULL, '2018-06-07', '2018-06-21', 0, '6512bd43d9caa6e02c990b0a82652dca', '2018-06-07', '0000-00-00', 'admin', 'No'),
(40, 'Abc', 'Rashmi', 'rashmisonawane8@gmail.com', 'abc@1234', '8482859255', 1, 0, NULL, '2018-06-20', '2018-07-04', 0, 'df263d996281d984952c07998dc54358', '2018-06-20', '0000-00-00', 'admin', 'No'),
(41, 'Sante Remedies', 'Binoj K Nair', 'kbinojnair@gmail.com', 'Binoj', '9930585292', 1, 0, NULL, '2018-06-21', '2018-07-05', 0, '6c9882bbac1c7093bd25041881277658', '2018-06-21', '0000-00-00', 'admin', 'No'),
(42, 'ebc solutions pvt.ltd', 'tanuja dhage', 'tanujadhage30@gmail.com', 'tanuja@123', '8381044814', 0, 0, NULL, '2018-06-26', '2018-07-10', 0, '4b04a686b0ad13dce35fa99fa4161c65', '2018-06-26', '0000-00-00', 'admin', 'No'),
(43, 'Priya K', 'priya khardakar', 'priyakhardakar123@gmail.com', 'Priya@123', '7350411144', 0, 0, NULL, '2018-06-26', '2018-07-10', 0, '0f96613235062963ccde717b18f97592', '2018-06-26', '0000-00-00', 'admin', 'No'),
(44, 'XYZ', 'Mahesh Phatak', 'nkchtk@gmail.com', 'msp5377', '9819759758', 1, 0, NULL, '2018-07-02', '2018-07-16', 1, '642e92efb79421734881b53e1e1b18b6', '2018-07-02', '0000-00-00', 'admin', 'No'),
(45, 'KK Trading Corporation', 'Ganesh', 'kktc@rediffmail.com', 'admin', '9049987672', 1, 0, NULL, '2018-07-09', '2018-07-23', 0, 'c0e190d8267e36708f955d7ab048990d', '2018-07-09', '0000-00-00', 'admin', 'No'),
(46, 'ebc', 'pooja', 'poojakhambe1996@gmail.com', 'pooja123', '8380932112', 0, 0, NULL, '2018-08-08', '2018-08-22', 0, 'eda80a3d5b344bc40f3bc04f65b7a357', '2018-08-08', '0000-00-00', 'admin', 'No'),
(47, 'MAPBrainnovations', 'Pushkaraj Kolatkar', 'getbrainnovations@gmail.com', 'myacc@2018', '9764000262', 1, 0, NULL, '2018-08-16', '2018-08-30', 0, '81e74d678581a3bb7a720b019f4f1a93', '2018-08-16', '0000-00-00', 'admin', 'No'),
(48, 'Omnes Law Private Limited', 'Gurbans Singh Chatwal', 'gurbans.chatwal@omneslaw.com', 'Hercules40', '09822502818', 1, 0, NULL, '2018-09-20', '2018-10-04', 0, '49182f81e6a13cf5eaa496d51fea6406', '2018-09-20', '0000-00-00', 'admin', 'No'),
(49, 'rohini cable network', 'nirmala sunil pawar', 'sunilbpawar80@gmail.com', 'rohini4415', '9359259624', 1, 0, NULL, '2018-10-11', '2018-10-25', 0, '2f55707d4193dc27118a0f19a1985716', '2018-10-11', '0000-00-00', 'admin', 'No'),
(50, 'LOTUSKRAFTS', 'NARENDRA GURAV', 'lotuskrafts@gmail.com', 'narendra27', '9920589741', 1, 0, NULL, '2018-10-22', '2018-11-05', 0, '470e7a4f017a5476afb7eeb3f8b96f9b', '2018-10-22', '0000-00-00', 'admin', 'No'),
(51, 'Microcodex', 'Monika Patole', 'microcodex@gmail.com', 'pappu@143', '9158129585', 0, 0, NULL, '2018-10-22', '2018-11-05', 0, '1679091c5a880faf6fb5e6087eb1b2dc', '2018-10-22', '0000-00-00', 'admin', 'No'),
(52, 'EBC Testing ', 'Shyam Gadekar', 'shyam@e-bc.in', 'admin', '9623511059', 1, 0, NULL, '2018-11-21', '2018-12-05', 0, '3d2d8ccb37df977cb6d9da15b76c3f3a', '2018-11-21', '0000-00-00', 'admin', 'No'),
(53, 'Narendra Keskar & co', 'Narendra', 'canarendrakeskar@gmail.com', 'naren5639', '8087611949', 0, 0, NULL, '2018-11-27', '2018-12-11', 0, '5e388103a391daabe3de1d76a6739ccd', '2018-11-27', '0000-00-00', 'admin', 'No'),
(54, 'Vouchers code', 'Only Chillies', 'info@getrestra.com', '12345678', '8600832338', 0, 0, NULL, '2018-11-30', '2018-12-14', 0, 'ba2fd310dcaa8781a9a652a31baf3c68', '2018-11-30', '0000-00-00', 'admin', 'No'),
(55, 'Ebc Solutions Pvt Ltd', 'Anagha Kamble', 'anaghak1008@gmail.com', 'lucky@123', '7719084688', 1, 0, NULL, '2018-12-02', '2018-12-16', 0, '149e9677a5989fd342ae44213df68868', '2018-12-02', '0000-00-00', 'admin', 'No'),
(56, 'indyafest', 'neelimas', 'neelimashahane@gmail.com', 'indyafest', '8308404455', 1, 0, NULL, '2018-12-03', '2018-12-17', 0, 'a532400ed62e772b9dc0b86f46e583ff', '2018-12-03', '0000-00-00', 'admin', 'No'),
(57, 'Ambika enterprises', 'Yogesh kamble ', 'kyogi027@gmail.com', 'yogesh@27', '9011851999', 1, 0, NULL, '2018-12-05', '2018-12-19', 0, 'cfa0860e83a4c3a763a7e62d825349f7', '2018-12-05', '0000-00-00', 'admin', 'No'),
(58, 'ak', 'ytj', 'ytjZ@gmail.com', '333333', '9075609580', 0, 0, NULL, '2018-12-13', '2018-12-27', 0, 'cbcb58ac2e496207586df2854b17995f', '2018-12-13', '0000-00-00', 'admin', 'No'),
(59, '', '', '', '', '', 0, 0, NULL, '2018-12-15', '2018-12-29', 0, '1679091c5a880faf6fb5e6087eb1b2dc', '2018-12-15', '0000-00-00', 'admin', 'No'),
(60, 'Rana Industries', 'Amit Ranawade', 'amit@e-bc.in', '1234', '8087587553', 1, 0, NULL, '2018-12-29', '2019-01-12', 1, 'db8e1af0cb3aca1ae2d0018624204529', '2018-12-29', '0000-00-00', 'admin', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `user_profile`
--

CREATE TABLE IF NOT EXISTS `user_profile` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(64) NOT NULL,
  `invoice` enum('No','Yes') NOT NULL DEFAULT 'Yes',
  `customer` enum('No','Yes') NOT NULL DEFAULT 'Yes',
  `estimates` enum('No','Yes') NOT NULL DEFAULT 'Yes',
  `product` enum('No','Yes') NOT NULL DEFAULT 'Yes',
  `expenses` enum('No','Yes') NOT NULL DEFAULT 'Yes',
  `gst_mod` enum('No','Yes') NOT NULL DEFAULT 'Yes',
  `type` varchar(20) NOT NULL DEFAULT 'user',
  `sales` enum('No','Yes') CHARACTER SET latin1 NOT NULL,
  `director` enum('No','Yes') CHARACTER SET latin1 NOT NULL,
  `pinvoice` enum('No','Yes') CHARACTER SET latin1 NOT NULL,
  `report` enum('No','Yes') CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_profile`
--

INSERT INTO `user_profile` (`id`, `user_id`, `name`, `mobile`, `email`, `password`, `invoice`, `customer`, `estimates`, `product`, `expenses`, `gst_mod`, `type`, `sales`, `director`, `pinvoice`, `report`) VALUES
(1, 1, 'Rohit Sharma', '7896541230', 'rohit@gmail.com', 'user', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'user', 'No', 'No', 'No', 'No'),
(2, 1, 'Virat Kohli', '8974563210', 'virat@gmail.com', 'user', 'Yes', 'No', 'No', 'No', 'Yes', 'Yes', 'user', 'No', 'No', 'No', 'No'),
(3, 2, 'Mahendra Dhoni', '7854785471', 'mahi@gmail.com', 'user', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'user', 'No', 'No', 'No', 'No'),
(4, 3, 'rohan', '987451218541', 'rohan@gmail.com', 'user', 'Yes', 'No', 'No', 'No', 'No', 'No', 'user', 'No', 'No', 'No', 'No'),
(5, 17, 'tata docomo`', '78754545421', 'tata@gmail.com', '12345', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'user', 'No', 'No', 'No', 'No'),
(8, 23, 'ragini', '7865321545', 'ragini.ebc@gmail.com', 'ragini', 'Yes', 'No', 'Yes', 'No', 'No', 'No', 'user', 'No', 'No', 'No', 'No'),
(9, 24, 'menull', '12345678912', 'menull.ebc@gmail.com', 'menull', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'No', 'user', 'No', 'No', 'No', 'No'),
(10, 1, 'Shyam Gadekar', '9623511502', 'shyam@e-bc.in', 'user', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'user', 'No', 'No', 'No', 'No'),
(11, 1, 'Ashutosh', '98745632100', 'ashutosh@e-bc.in', 'user@2017', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Yes', 'user', 'No', 'No', 'No', 'No'),
(14, 44, 'mAHESH', '9819759758', 'phatakms77@gmail.com', 'mahesh77', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'user', 'No', 'No', 'No', 'No'),
(15, 35, 'akshay', '9075609580', 'h.@gmail.com', 'akshay', 'Yes', 'No', 'No', 'No', 'No', 'No', 'user', 'No', 'No', 'No', 'No'),
(16, 0, '', '', '', '', 'No', 'No', 'No', 'No', 'No', 'No', 'user', 'No', 'No', 'No', 'No'),
(18, 1, 'akshay', '9075609580', 'h@gmail.com', 'akshay3535', 'Yes', 'No', 'No', 'No', 'No', 'No', 'user', 'No', 'No', 'No', 'No'),
(19, 1, 'Haridas', '9075609580', 'hari@gmail.com', 'hari12345', 'No', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'user', 'No', 'No', 'No', 'No'),
(20, 35, 'Ram', '9075609580', 'ram@gmail.com', 'akshay3535', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'No', 'user', 'No', 'No', 'No', 'No'),
(142, 35, 'Haridas', '1234567890', 'hari@gmail.com', '1234', 'Yes', 'No', 'No', 'No', 'No', 'No', 'user', 'No', 'No', 'No', 'No'),
(143, 35, 'kk', '1234567890', 'k@gmail.com', '1234', 'Yes', 'No', 'No', 'No', 'No', 'No', 'user', 'No', 'No', 'No', 'No'),
(144, 35, 'vijay', '1234567890', 'V@gmail.com', 'vijay', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'user', 'No', 'No', 'No', 'No'),
(145, 35, 'akshay', '1234567890', 'a1@gmail.com', '12345', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'user', 'No', 'No', 'No', 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_head`
--
ALTER TABLE `acc_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_city`
--
ALTER TABLE `admin_city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `admin_enquiry_status`
--
ALTER TABLE `admin_enquiry_status`
  ADD PRIMARY KEY (`enquiry_status_id`);

--
-- Indexes for table `admin_source`
--
ALTER TABLE `admin_source`
  ADD PRIMARY KEY (`source_id`);

--
-- Indexes for table `channel_partner`
--
ALTER TABLE `channel_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `common`
--
ALTER TABLE `common`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currency`
--
ALTER TABLE `currency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `degree`
--
ALTER TABLE `degree`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generate_log`
--
ALTER TABLE `generate_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generate_report`
--
ALTER TABLE `generate_report`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_tax`
--
ALTER TABLE `item_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mode`
--
ALTER TABLE `mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mstr_schedule`
--
ALTER TABLE `mstr_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_payment`
--
ALTER TABLE `new_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notification_list`
--
ALTER TABLE `notification_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purches_tax`
--
ALTER TABLE `purches_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `series`
--
ALTER TABLE `series`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tagging`
--
ALTER TABLE `tagging`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax`
--
ALTER TABLE `tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_session`
--
ALTER TABLE `tbl_session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_sign_up`
--
ALTER TABLE `tbl_sign_up`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_states`
--
ALTER TABLE `tbl_states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_profile`
--
ALTER TABLE `user_profile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_head`
--
ALTER TABLE `acc_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `admin_city`
--
ALTER TABLE `admin_city`
  MODIFY `city_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `admin_enquiry_status`
--
ALTER TABLE `admin_enquiry_status`
  MODIFY `enquiry_status_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `admin_source`
--
ALTER TABLE `admin_source`
  MODIFY `source_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `channel_partner`
--
ALTER TABLE `channel_partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `commission`
--
ALTER TABLE `commission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `common`
--
ALTER TABLE `common`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=284;
--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `currency`
--
ALTER TABLE `currency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `degree`
--
ALTER TABLE `degree`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `generate_log`
--
ALTER TABLE `generate_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `generate_report`
--
ALTER TABLE `generate_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=678;
--
-- AUTO_INCREMENT for table `item_tax`
--
ALTER TABLE `item_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=477;
--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mode`
--
ALTER TABLE `mode`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- AUTO_INCREMENT for table `mstr_schedule`
--
ALTER TABLE `mstr_schedule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `new_payment`
--
ALTER TABLE `new_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `notification_list`
--
ALTER TABLE `notification_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=253;
--
-- AUTO_INCREMENT for table `purches_tax`
--
ALTER TABLE `purches_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=154;
--
-- AUTO_INCREMENT for table `series`
--
ALTER TABLE `series`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=194;
--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tagging`
--
ALTER TABLE `tagging`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax`
--
ALTER TABLE `tax`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_session`
--
ALTER TABLE `tbl_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_sign_up`
--
ALTER TABLE `tbl_sign_up`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_states`
--
ALTER TABLE `tbl_states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `user_profile`
--
ALTER TABLE `user_profile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=146;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
