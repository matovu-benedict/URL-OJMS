-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 02:51 PM
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
(2021027, 'Kayabula', 'Mark', 'Vianne', 'Masaka', 'Male', 'Married', '1994-01-30', 'Masaka', 27, 'mark', 'f1b5a91d4d6ad523f2610114591c007e75d15084', 'kayondo@gmail.com', '078906789', 'Diploma', 'photos/broiler.jpg', '2021-06-25 10:23:04.661462'),
(2021028, 'Kintu', 'Rashad', '', 'Masaka', 'Male', 'Married', '1990-08-17', 'Masaka', 30, 'john', 'a51dda7c7ff50b61eaea0444371f4a6a9301e501', 'kayondolln@gmail.com', '07678787', 'Degree', '', '2021-06-25 11:16:42.167102'),
(2021029, 'Nduga', 'Vianne', '', 'Kijjabwemi', 'Female', 'none', '1990-07-19', 'masaka', 30, 'vianne', '5a478022f33905d2d40410e006fb1aa8564b280c', 'vianne@gmail.com', '0758963585', 'degree', 'photos/white bg.PNG', '2021-06-25 15:30:37.370973'),
(2021030, 'nsamba', 'rodgers', '', 'kijjabwemi', 'Male', 'Single', '1994-05-18', 'masaka', 27, 'kato', '5a478022f33905d2d40410e006fb1aa8564b280c', 'nsamba@gmail.com', '072147874', 'Diploma Enrolled Nursing', '', '2021-06-26 02:50:02.845908'),
(2021031, 'Nsamba', 'Rodgers', '', 'kijjabwemi', 'Female', 'none', '1994-05-23', 'masaka', 27, 'nsamba', '5a478022f33905d2d40410e006fb1aa8564b280c', 'nsamba@gmail.com', '072147874', 'Nursing and Midwifely', '', '2021-06-26 02:56:31.985779');

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
(1, '02983', 12, 1, 'userid'),
(2, '000', 84, 1, 'employeeid'),
(3, '0', 32, 1, 'APPLICANT'),
(4, '0000', 13, 1, 'FILEID');

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
(29, 'Insuarance'),
(30, 'Software & Data'),
(31, 'Transport Services'),
(32, 'HealthCare'),
(33, 'Sales'),
(34, 'Catering'),
(35, 'Fashion and Design'),
(37, 'Banking'),
(38, 'IT');

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
(11, 'Insurance Company of East Africa (U) Ltd ', 'Muto complex,  2 floor room 25,elgin street masaka town', '0757285746'),
(12, 'Automan international Uganda Limited', 'Masaka Edward Avenue', '0786279856'),
(13, 'Bulamu Medical Clinic', 'located on Edward Kiwanuka Building 1st floor room 9 Edward Avenue', '+256789854781'),
(14, 'Lucky Computers ltd', 'ssese coner building Elgin Street', '0796745515'),
(15, 'Valley cave Restaurant', 'Obert street Masaka town', '0774188515'),
(16, 'PlatinumCredit Uganda Ltd', 'Mapeera Building Kamplala', '+312-78478888952');

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
(77, '2018003', 'matovu', 'benedict', 'none', 'kijjabwemi', '1993-02-17', 'masaka', 28, 'Male', 'Single', '0782762749', 'matovubenedict@gmail.com', 'data manager', '', '2018003', '8caf110be31bdeaa495c5bf6f410aa422d6cc36d', '2021-06-17', 8),
(78, '2018005', 'LULE', 'MARTIN', 'MMM', 'MASAKA', '1990-02-07', 'NCVBCV', 31, 'Male', 'Single', '786786', '7ty@gmail.com', 'RYRR', '', '2018005', '7e51307ed8053a6353bb8d65f278efc07291652f', '2021-06-04', 9),
(79, '2018009', 'nduga', 'vian', 'njn nj', 'new cam', '1990-02-02', 'nb njnj', 31, 'Male', 'Married', ' bbbb ', '7ty@gmail.com', 'b b', '', '2018009', 'fc6dc3d46679c7d5ab09075d24b5dd72124c6973', '2021-06-02', 10);

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
(9, 11, 'Insuarance', 'Sales representatives', 20, '350,000-400,000', 'From 8 am to 5:30 om', 'Diploma', '\r\nICEA LION LIFE ASSURANCE presents an exciting opportunity for passionate, professional, and driven sales agents who are results-driven and looking to build a successful career in sales. \r\n\r\n\r\n', 'Male/Female', '2021-07-20', '2021-06-20 00:00:00'),
(10, 13, 'HealthCare', 'Senior Nursing Officer', 1, '500,000 ugshs', 'from 8am to 6pm', 'Diploma  Enrolled Nursing', 'RESPONSIBILITIES\r\nâ€¢ Manage the supply of drugs and medical equipment in the clinic/mobile clinics\r\n\r\nâ€¢ Ensure that the patient flow is correct\r\n\r\nâ€¢ Ensure documentation of patientâ€™s files are correctly done\r\n\r\nâ€¢ Ensure that SV patient files are well protected and brought to the office for safe custody\r\n\r\nâ€¢ Organize and coordinate team activities (weekâ€™s schedule, annual leave, absences, etc)\r\n\r\nâ€¢ Ensure that the needed materials or tools are in both clinics and check that the staff have the appropriate resources to work before leaving the office every morning', 'Male/Female', '2021-07-28', '2021-06-26 00:00:00'),
(11, 15, 'Catering', 'Waiter and Waitress', 6, '150,000-200,000', 'from 7am to 10pm', 'A-Level certificate', 'Responsibilities include;\r\nServing food for inside customers in the restaurant.\r\nMaking  food deliveries to close customers within masaka town.', 'Male/Female', '2021-07-15', '2021-06-26 00:00:00'),
(12, 16, 'Banking', 'IT  Manager', 1, 'Confidential', 'from 8am to 6pm', 'Bachelors of Science in Information Technology', '\r\n\r\n\r\n\r\nResponsibilities of IT Manager Would Include: \r\nâ€¢ Design, Implement and Manage network and communication systems, i.e. Phone system (for a call center) and computer network \r\n\r\nâ€¢ System evaluation/analysis and operation monitoring \r\n\r\nâ€¢ Database administration/server administration \r\n\r\nâ€¢ Configuration of unmanageable and manageable switch/ router (Cisco, Unifi, Vigor) ', 'Male', '2021-08-01', '2021-06-26 00:00:00');

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
(9, 11, 9, 2021024, 'Kayondo Allan', '2021-06-25', 'Pending', 202100005, 1, 1, '2021-06-25 10:14:00'),
(12, 11, 9, 2021027, 'Kayabula Mark', '2021-06-25', 'you have been selected for an interview', 202100008, 0, 0, '2021-06-25 16:30:15'),
(13, 11, 9, 2021028, 'Kintu Rashad', '2021-06-25', 'Kindly wait for feedback', 202100009, 0, 0, '2021-06-27 11:05:27'),
(14, 11, 9, 2021029, 'Nduga Vianne', '2021-06-25', 'Dia Ndugga vianne ,you have been selected for an interview that will take place at company offices masaka town on 22-july-2021 at 8am,please keep time', 2021000010, 0, 0, '2021-06-26 20:00:04'),
(15, 13, 10, 2021030, 'nsamba rodgers', '2021-06-26', 'Kindly wait for feedback', 2021000011, 0, 0, '2021-06-27 11:00:55'),
(16, 13, 10, 2021031, 'Nsamba Rodgers', '2021-06-26', 'Kindly wait for feedback', 2021000012, 0, 0, '2021-06-27 11:05:09');

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
('00019', 'matovu', 'benedict', '5a478022f33905d2d40410e006fb1aa8564b280c', 'Administrator', 'photos/ben black.PNG');

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
  MODIFY `APPLICANTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2021032;
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
  MODIFY `CATEGORYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `tblcompany`
--
ALTER TABLE `tblcompany`
  MODIFY `COMPANYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tblemployer`
--
ALTER TABLE `tblemployer`
  MODIFY `INCID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- AUTO_INCREMENT for table `tblfeedback`
--
ALTER TABLE `tblfeedback`
  MODIFY `FEEDBACKID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbljob`
--
ALTER TABLE `tbljob`
  MODIFY `JOBID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbljobregistration`
--
ALTER TABLE `tbljobregistration`
  MODIFY `REGISTRATIONID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
