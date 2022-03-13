-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 22, 2021 at 05:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblapplicants`
--

CREATE TABLE `tblapplicants` (
  `APPLICANTID` int(11) NOT NULL,
  `FNAME` varchar(90) NOT NULL,
  `LNAME` varchar(90) NOT NULL,
  `MNAME` varchar(90) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `SEX` varchar(11) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(255) NOT NULL,
  `AGE` int(2) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `EMAILADDRESS` varchar(90) NOT NULL,
  `CONTACTNO` varchar(90) NOT NULL,
  `DEGREE` text NOT NULL,
  `APPLICANTPHOTO` varchar(255) NOT NULL,
  `APPLIEDAT` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblapplicants`
--

INSERT INTO `tblapplicants` (`APPLICANTID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `SEX`, `CIVILSTATUS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `USERNAME`, `PASS`, `EMAILADDRESS`, `CONTACTNO`, `DEGREE`, `APPLICANTPHOTO`, `APPLIEDAT`) VALUES
(2021032, 'Matovu', 'Benedict', '', 'Masaka-Uganda', 'Male', 'Single', '1994-10-10', 'Kijjabwemi', 26, 'bmk', 'fd93ac461456a118d38a8d6b4d18f6741682f3eb', 'matovubenedict@gmail.com', '0757285746', 'A-Level Certificate', 'photos/b&daphine.jpg', '2021-08-01 10:10:28.551863');

-- --------------------------------------------------------

--
-- Table structure for table `tblattachmentfile`
--

CREATE TABLE `tblattachmentfile` (
  `FILEID` int(11) NOT NULL,
  `JOBID` int(11) NOT NULL,
  `FILE_NAME` varchar(90) NOT NULL,
  `FILE_LOCATION` varchar(255) NOT NULL,
  `USERATTACHMENTID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblattachmentfile`
--

INSERT INTO `tblattachmentfile` (`FILEID`, `JOBID`, `FILE_NAME`, `FILE_LOCATION`, `USERATTACHMENTID`) VALUES
(201900001, 2, 'Resume', 'photos/24122019073209Filtering a Group of Data VB.Net and SQL Server 2019.docx', 2019020),
(202100002, 3, 'Resume', 'photos/05062021021700siraje CV.docx', 2021021),
(202100003, 4, 'Resume', 'photos/11062021015423course work 1.docx', 2021022),
(202100004, 9, 'Resume', 'photos/22062021115726GROUP PROJECT2 SOFTWARE ENGINEERING.docx', 2021023),
(202100005, 9, 'Resume', 'photos/25062021101421honest.docx', 2021024),
(202100006, 9, 'Resume', 'photos/25062021101422honest.docx', 2021025),
(202100007, 9, 'Resume', 'photos/25062021101422honest.docx', 2021026),
(202100008, 9, 'Resume', 'photos/25062021101847honest.docx', 2021027),
(202100009, 9, 'Resume', 'photos/25062021011642Curriculum Vitae.docx', 2021028),
(2021000010, 9, 'Resume', 'photos/25062021021128silaje application.docx', 2021029),
(2021000011, 10, 'Resume', 'photos/26062021043731siraje CV.docx', 2021030),
(2021000012, 10, 'Resume', 'photos/26062021044421silaje application.docx', 2021031),
(2021000013, 10, 'Resume', 'photos/30072021081557CURRICULUM VITAE ANGELLA.docx', 2021030),
(2021000014, 13, 'Resume', 'photos/01082021120836CURRICULUM VITAE.docx', 2021032),
(2147483647, 2, 'Resume', 'photos/24122019072801Filtering a Group of Data VB.Net and SQL Server 2019.docx', 2019019);

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumbers`
--

CREATE TABLE `tblautonumbers` (
  `AUTOID` int(11) NOT NULL,
  `AUTOSTART` varchar(30) NOT NULL,
  `AUTOEND` int(11) NOT NULL,
  `AUTOINC` int(11) NOT NULL,
  `AUTOKEY` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblautonumbers`
--

INSERT INTO `tblautonumbers` (`AUTOID`, `AUTOSTART`, `AUTOEND`, `AUTOINC`, `AUTOKEY`) VALUES
(1, '02983', 13, 1, 'userid'),
(2, '000', 86, 1, 'employeeid'),
(3, '0', 33, 1, 'APPLICANT'),
(4, '0000', 15, 1, 'FILEID');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `CATEGORYID` int(11) NOT NULL,
  `CATEGORY` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`CATEGORYID`, `CATEGORY`) VALUES
(39, 'Transportation'),
(40, 'Security'),
(41, 'Maids'),
(42, 'Construction'),
(43, 'Sales'),
(44, 'Health-Care'),
(45, 'Hotel-Management');

-- --------------------------------------------------------

--
-- Table structure for table `tblcompany`
--

CREATE TABLE `tblcompany` (
  `COMPANYID` int(11) NOT NULL,
  `COMPANYNAME` varchar(90) NOT NULL,
  `COMPANYADDRESS` varchar(90) NOT NULL,
  `COMPANYCONTACTNO` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcompany`
--

INSERT INTO `tblcompany` (`COMPANYID`, `COMPANYNAME`, `COMPANYADDRESS`, `COMPANYCONTACTNO`) VALUES
(17, 'National Housing and Construction Company Ltd', 'Kampala', '+256-701-077701'),
(18, 'Rakai Health Sciences Program (RHSP)', 'Kyotera', '+256-701-077701'),
(19, 'Spark Security Services', 'Abu Dhabi - United Arab Emirates', '+256-701-077701'),
(20, 'House-Maids-UAE', 'Doha, Qatar', '+256-701-077701'),
(21, 'Al Taef Star Transport', 'Dubai', '+256-701-077701'),
(22, 'Murray & Roberts Contractors Middle East LLC', 'Dubai - United Arab Emirates', '+256-701-077701'),
(23, 'MPC Healthcare', 'Healthcare City - Dubai - United Arab Emirates', '+256-701-077701'),
(24, 'AL- SHAOLAH-MAIDS - SMC LIMITED', 'Doha-Qatar', '+256-701-077701');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployer`
--

CREATE TABLE `tblemployer` (
  `INCID` int(11) NOT NULL,
  `EMPLOYEEID` varchar(30) NOT NULL,
  `FNAME` varchar(50) NOT NULL,
  `LNAME` varchar(50) NOT NULL,
  `MNAME` varchar(50) NOT NULL,
  `ADDRESS` varchar(90) NOT NULL,
  `BIRTHDATE` date NOT NULL,
  `BIRTHPLACE` varchar(90) NOT NULL,
  `AGE` int(11) NOT NULL,
  `SEX` varchar(30) NOT NULL,
  `CIVILSTATUS` varchar(30) NOT NULL,
  `TELNO` varchar(40) NOT NULL,
  `EMP_EMAILADDRESS` varchar(90) NOT NULL,
  `POSITION` varchar(50) NOT NULL,
  `EMPPHOTO` varchar(255) NOT NULL,
  `EMPUSERNAME` varchar(90) NOT NULL,
  `EMPPASSWORD` varchar(125) NOT NULL,
  `DATEHIRED` date NOT NULL,
  `COMPANYID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `tblemployer`
--

INSERT INTO `tblemployer` (`INCID`, `EMPLOYEEID`, `FNAME`, `LNAME`, `MNAME`, `ADDRESS`, `BIRTHDATE`, `BIRTHPLACE`, `AGE`, `SEX`, `CIVILSTATUS`, `TELNO`, `EMP_EMAILADDRESS`, `POSITION`, `EMPPHOTO`, `EMPUSERNAME`, `EMPPASSWORD`, `DATEHIRED`, `COMPANYID`) VALUES
(80, '20210001', 'Abdul ', 'Mustafah', 'Mansoor', 'Building 71 - Building No. 71,,Dubai', '1988-03-25', 'Dubai - United Arab Emirates', 33, 'Male', 'Married', '97143834444', 'mpchealthcare@gmail.com', 'Chief Executive Officer', '', '20210001', '5ff7cd787bc59a5ec5e0aadb6d6137a0a8847fd1', '2021-08-02', 23),
(81, '20210002', 'Dr. ', 'Joseph', 'Kagaayi', 'Muyenga-Kampala', '1969-06-11', 'Miti ebiri-Kyotera', 52, 'Male', 'Married', '0782266266', 'info@rhsp.org', 'Executive Director', '', '20210002', '0d3b104d33799be38042e9321c56179faa1c9988', '2021-08-05', 18);

-- --------------------------------------------------------

--
-- Table structure for table `tblfeedback`
--

CREATE TABLE `tblfeedback` (
  `FEEDBACKID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `REGISTRATIONID` int(11) NOT NULL,
  `FEEDBACK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbljob`
--

CREATE TABLE `tbljob` (
  `JOBID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `CATEGORY` varchar(90) NOT NULL,
  `OCCUPATIONTITLE` varchar(90) NOT NULL,
  `REQ_NO_EMPLOYEES` int(11) NOT NULL,
  `SALARIES` varchar(50) NOT NULL,
  `DURATION_EMPLOYEMENT` varchar(90) NOT NULL,
  `QUALIFICATION_WORKEXPERIENCE` text NOT NULL,
  `JOBDESCRIPTION` text NOT NULL,
  `PREFEREDSEX` varchar(30) NOT NULL,
  `DEADLINE` date NOT NULL,
  `DATEPOSTED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljob`
--

INSERT INTO `tbljob` (`JOBID`, `COMPANYID`, `CATEGORY`, `OCCUPATIONTITLE`, `REQ_NO_EMPLOYEES`, `SALARIES`, `DURATION_EMPLOYEMENT`, `QUALIFICATION_WORKEXPERIENCE`, `JOBDESCRIPTION`, `PREFEREDSEX`, `DEADLINE`, `DATEPOSTED`) VALUES
(13, 19, 'Security', 'Security Guard', 200, '1.5 Million Ug shs', 'from 8am to 5pm', 'O-level  certificate ', 'Inspect and patrol premises regularly\r\nMonitor property entrance\r\nAuthorize entrance of people and vehicles\r\nReport any suspicious behaviors and happenings\r\nSecure all exits, doors and windows\r\nMonitor surveillance cameras\r\nRespond to alarms and react in a timely manner\r\nProvide assistance to people in need\r\nSubmit reports of daily surveillance activity\r\nSubmit reports of every suspicious action\r\n', 'Male/Female', '2021-09-15', '2021-08-01 00:00:00'),
(14, 17, 'Construction', 'Road Workers', 5000, '300,000 to 1,000,000', '7am to 6pm', 'PLE certificate', 'installing the cones, signs and barricades that warn drivers and control the flow of traffic, acting as flagmen to stop or direct traffic, clearing debris from the work site, using jackhammers to break up existing pavement and tending equipment such as cement mixers or asphalt heaters.', 'Male/Female', '2021-08-31', '2021-08-01 00:00:00'),
(15, 24, 'Maids', 'House Maid', 400, '1.5Million-1.8Million', 'Full-time', 'O-level certificate ', 'Domestic workers who will be doing tasks like laundry, ironing clothes, taking care of children etc.\r\nNote:You must be at least good at English speaking', 'Female', '2021-09-15', '2021-08-10 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbljobregistration`
--

CREATE TABLE `tbljobregistration` (
  `REGISTRATIONID` int(11) NOT NULL,
  `COMPANYID` int(11) NOT NULL,
  `JOBID` int(11) NOT NULL,
  `APPLICANTID` int(11) NOT NULL,
  `APPLICANT` varchar(90) NOT NULL,
  `REGISTRATIONDATE` date NOT NULL,
  `REMARKS` varchar(255) NOT NULL DEFAULT 'Pending',
  `FILEID` int(11) NOT NULL,
  `PENDINGAPPLICATION` tinyint(1) NOT NULL DEFAULT '1',
  `HVIEW` tinyint(1) NOT NULL DEFAULT '1',
  `DATETIMEAPPROVED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbljobregistration`
--

INSERT INTO `tbljobregistration` (`REGISTRATIONID`, `COMPANYID`, `JOBID`, `APPLICANTID`, `APPLICANT`, `REGISTRATIONDATE`, `REMARKS`, `FILEID`, `PENDINGAPPLICATION`, `HVIEW`, `DATETIMEAPPROVED`) VALUES
(18, 19, 13, 2021032, 'Matovu Benedict', '2021-08-01', 'you have been selected for the job,report to the office  as soon as possible', 2021000014, 0, 0, '2021-08-12 08:36:51');

-- --------------------------------------------------------

--
-- Table structure for table `tblselected`
--

CREATE TABLE `tblselected` (
  `SELECTIONID` int(11) NOT NULL,
  `COMPANYNAME` varchar(255) NOT NULL,
  `CANDIDATENAME` varchar(255) NOT NULL,
  `AGE` varchar(255) NOT NULL,
  `GENDER` varchar(255) NOT NULL,
  `JOBTITLE` varchar(255) NOT NULL,
  `COUNTRY` varchar(255) NOT NULL,
  `CONTRACT` varchar(255) NOT NULL,
  `SALARY` varchar(255) NOT NULL,
  `CONTACT` varchar(255) DEFAULT NULL,
  `CONTRACTBEGIN` date DEFAULT NULL,
  `CONTRACTEND` date NOT NULL,
  `CreatedAt` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblselected`
--

INSERT INTO `tblselected` (`SELECTIONID`, `COMPANYNAME`, `CANDIDATENAME`, `AGE`, `GENDER`, `JOBTITLE`, `COUNTRY`, `CONTRACT`, `SALARY`, `CONTACT`, `CONTRACTBEGIN`, `CONTRACTEND`, `CreatedAt`) VALUES
(7, 'AL- SHAOLAH-MAIDS - SMC LIMITED', 'MATOVU', 'BENEDICT', 'Male', 'SECURITY GUARD', 'QATAR', '2 YEARS', '1800000', '0757285746', '2021-11-24', '2023-11-24', '2021-08-19 13:08:04.389099');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `USERID` varchar(30) NOT NULL,
  `FULLNAME` varchar(40) NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `PASS` varchar(90) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PICLOCATION` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`USERID`, `FULLNAME`, `USERNAME`, `PASS`, `ROLE`, `PICLOCATION`) VALUES
('00019', 'matovu', 'benedict', '5a478022f33905d2d40410e006fb1aa8564b280c', 'Administrator', 'photos/ben black.PNG'),
('0298312', 'Kintu  Rashad', 'Rashad', '5a478022f33905d2d40410e006fb1aa8564b280c', 'Administrator', 'photos/cvd hosp.JPG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  ADD PRIMARY KEY (`APPLICANTID`);

--
-- Indexes for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  ADD PRIMARY KEY (`FILEID`);

--
-- Indexes for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  ADD PRIMARY KEY (`AUTOID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`CATEGORYID`);

--
-- Indexes for table `tblcompany`
--
ALTER TABLE `tblcompany`
  ADD PRIMARY KEY (`COMPANYID`);

--
-- Indexes for table `tblemployer`
--
ALTER TABLE `tblemployer`
  ADD PRIMARY KEY (`INCID`),
  ADD UNIQUE KEY `EMPLOYEEID` (`EMPLOYEEID`);

--
-- Indexes for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  ADD PRIMARY KEY (`FEEDBACKID`);

--
-- Indexes for table `tbljob`
--
ALTER TABLE `tbljob`
  ADD PRIMARY KEY (`JOBID`);

--
-- Indexes for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  ADD PRIMARY KEY (`REGISTRATIONID`);

--
-- Indexes for table `tblselected`
--
ALTER TABLE `tblselected`
  ADD PRIMARY KEY (`SELECTIONID`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`USERID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblapplicants`
--
ALTER TABLE `tblapplicants`
  MODIFY `APPLICANTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2021033;
--
-- AUTO_INCREMENT for table `tblattachmentfile`
--
ALTER TABLE `tblattachmentfile`
  MODIFY `FILEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483647;
--
-- AUTO_INCREMENT for table `tblautonumbers`
--
ALTER TABLE `tblautonumbers`
  MODIFY `AUTOID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `CATEGORYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `COMPANYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `tblemployer`
--
ALTER TABLE `tblemployer`
  MODIFY `INCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `FEEDBACKID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbljob`
--
ALTER TABLE `tbljob`
  MODIFY `JOBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  MODIFY `REGISTRATIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `tblselected`
--
ALTER TABLE `tblselected`
  MODIFY `SELECTIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
