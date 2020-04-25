-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2020 at 06:42 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ffgdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Admin', 'inquiry.ffg@gmail.com', 'admin2002');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id_blog` int(15) NOT NULL,
  `title` varchar(120) NOT NULL,
  `description` text NOT NULL,
  `date_blog` date NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id_blog`, `title`, `description`, `date_blog`, `image`) VALUES
(4, 'pelajar', 'testtesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttesttest\r\n\r\n\r\ntesttesttesttesttesttesttesttesttest', '2020-02-14', 'IMG_20190513_172119.jpg'),
(7, 'a place he called home', ' this heads up was initially shared earlier by our #ffg member - cum my RMC Sr in the watsap group. A teenage son and his dad, asleep in what seems to be a male shift trolley by the road side. All were surprised, and simply shocking.\r\nMade few calls to Jojo & Rich .. and I was already heading to KL.\r\nDiscussion 1; As I reached the scene, the trolley as depicted quickly cfm that this was it and Jojo was there - in mid of talking to â€˜Ahmadâ€™. We had a chat for 20â€™mins and excused ourself for brief dinner at (RSMY) nearby.\r\nThe Plan; At dinner Jojo and me weâ€™re talking abt all options available, and the good thing was that â€˜Ahmadâ€™ was in agreement abt the solution for â€˜Aliâ€™ - his 4 yo son to be relocated at a nursery taska. This was vital as this will enabled the dad - a 48yo who possesses some good outstanding academic background -lDegree in geology & DipEd, to focus on work. Anjung Singgah & PTGKL comes in as plan to accommodate the shelter if required.\r\nDiscussion 2; so we rushed ourselves back to â€˜Ahmadâ€™, and told him abt the plan. @missjewelz and @mohdsharenliza came midway. As tomorrow is a BIG day for him as he will be attending a 2nd interview - as a Cikgu & warden at private sch, so we agreed to scrapped the initial plan as both can be allowed together in hostel, taska which is coincidentally run by the sch too.\r\nLetâ€™s make prayers for Ahmad tomorrow, he has the determination and ability to bring the fmly out of homeless. Both has been in and out of Anjung Singgah & PTG KL due to formality isu, marilah kita sama doakan ðŸ¤²ðŸ» The Plan; we will await the interview outcome/update esok, get him to pack and placed both at hotel as â€˜Togakâ€™ has an unused rooms for the booking he has made, and come Sunday we will moved him to Bukit Jalil as we wanted him to focus and settled down at the hostel for a first day mengajar/at work on Monday.\r\nBantuan needed; we plan to prep his Baju Kerja (Size L & waist of 31), and cash to sustain the remaining days before his 1st pay.\r\nInsyallah sama2 kita âœŠ\r\n\r\nwe had a group lphoto tadi, and what amazed me was he told his son â€˜kite ambik gambar as gelandangan, Nnt kite igt kite pernah susahâ€™', '2019-09-28', 'photo_2020-02-16_18-39-24.jpg'),
(8, 'A place he called home - part 2', 'Medan Tuanku - Cerita Jalanan 1/3\r\nwas rushed to Narkotic office in Dang Wangi for a Case .. habis Plan nak watch Reds nye game, and forced to watch from Astro on the go, cudn really focus and it was a stress game.\r\nSo ... cerita â€˜Ahmad & Aliâ€™ that Iâ€™ve shared the day continues ... sebenarnya, no one knows whatâ€™s da update fm the interview today, therefore .. to be on the ground and to listen what really happen wud have been the best thing. As me & Tyna reaches there .. no one is there, as per pix above - the bed/trolley is covered wh plastics .. and our good friend takda ðŸ¤”, waited in da car whilst layan Reds game .. and suddenly the parking attendant was knocking and told me â€˜dia dah balik tuâ€™. Sembang-sembang;\r\nAlhamdulillah.. all that weâ€™ve been told the day before was as predicted ... setback was, the hostel would not be ready for him as the Cikgu will only be vacating the hostel 16th Oct.\r\nOne big question was asked to the dad ... â€˜kamu ok tak Kalau kite tempat kan anak spt mana kita bincang haritu, di sekolah @ Setapak, ini supaya kamu boleh fokus on kerja nnt ?â€™\r\nAlhamdulillah it was a yes fm him, excused myself as @missjewelz pon just arrived, to re strategised the next cause of action.\r\nDeliberation & Plans;\r\ncall up Jojo to activate the nursery at Setapak... he replied immediately wh positive feedback.... and I was already in talking terms wh Cg Nasim. Alhamdulillah.... so thats is, esok.. Insyaallah at 11am, Iâ€™ll@be with the team to pick them and send the son to the nursery in Setapak. This will be the big task esok, Next, will be talking on how to assist the dad with work, and ... Insyallah jalan keluar from gelandangan/reality in life.\r\nsemoga dipermudahkanNya esok ... thanks team; Jojo, @richard.wong.7792, @missjewelz .. Tyna who was wh me tru out mlm ni, and the lovely couples of Shariza & hubby. ðŸ™ðŸ»ðŸ™ðŸ»', '2019-09-29', 'photo_2020-02-16_18-34-57.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `contribution`
--

CREATE TABLE `contribution` (
  `id_contribution` int(15) NOT NULL,
  `item1` varchar(45) NOT NULL,
  `quantity1` int(10) NOT NULL,
  `item2` varchar(45) NOT NULL,
  `quantity2` int(10) NOT NULL,
  `item3` varchar(45) NOT NULL,
  `quantity3` int(10) NOT NULL,
  `item4` varchar(45) NOT NULL,
  `quantity4` int(10) NOT NULL,
  `item5` varchar(45) NOT NULL,
  `quantity5` int(10) NOT NULL,
  `item6` varchar(45) NOT NULL,
  `quantity6` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `id_donor` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`id_donor`, `name`, `phone`, `email`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `password`, `image`) VALUES
(1, 'NUR AWADAH BINTI ISMAIL', 126927547, 'nurawadah.ismail@gmail.com', 'PL 27-3 LOT 1273', 'jalan simpang 5', 'BATU PAHAT', 'JOHOR', 'Malaysia', 83000, '123', ''),
(2, 'nur izzati', 321754000, 'ss@gmail.com', '1016 Jalan Sultan Ismail', '', 'Kuala Lumpur', 'Kuala Lumpur', 'Malaysia', 50250, '2002wada', ''),
(3, 'mama', 12, 'zati@gmail.com', '22 jalan ', '', 'kuala lumpur', 'wilayah', 'malaysia', 52000, '123wada', ''),
(4, 'NUR AWADAH BINTI ISMAIL', 126927547, 'nurawadah.ismail@gmail.com', 'PL 27-3 LOT 1273', '', 'BATU PAHAT', 'JOHOR', 'Malaysia', 83000, '123', ''),
(5, 'NUR AWADAH ISMAIL', 126927547, 'nurawadah.ismail@gmail.com', 'PL 27-3 LOT 1273', '', 'BATU PAHAT', 'JOHOR', 'Malaysia', 83000, '123', ''),
(6, 'wadada', 0, 'nur@gmail.com', 'NO 7 jalan s/p 14 taman sri penggaram', '', 'batu pahat', 'johor', 'malaysia', 83000, '2002', ''),
(7, 'wadada', 0, 'nur@gmail.com', 'NO 7 jalan s/p 14 taman sri penggaram', '', 'batu pahat', 'johor', 'malaysia', 83000, '2002', ''),
(8, 'wada', 0, 'nur@gmail.com', 'NO 7 jalan s/p 14 taman sri penggaram', '', 'batu pahat', 'johor', 'malaysia', 83000, '2002', '');

-- --------------------------------------------------------

--
-- Table structure for table `homeless`
--

CREATE TABLE `homeless` (
  `id_homeless` int(15) NOT NULL,
  `name` varchar(45) NOT NULL,
  `icnumber` int(15) DEFAULT NULL,
  `phoneNum` int(15) DEFAULT NULL,
  `gender` varchar(15) NOT NULL,
  `dob` date DEFAULT NULL,
  `race` varchar(20) NOT NULL,
  `location` varchar(120) DEFAULT NULL,
  `medCondition` varchar(120) DEFAULT NULL,
  `datereg` date NOT NULL,
  `image` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `homeless`
--

INSERT INTO `homeless` (`id_homeless`, `name`, `icnumber`, `phoneNum`, `gender`, `dob`, `race`, `location`, `medCondition`, `datereg`, `image`) VALUES
(6, 'izza', 2147483647, 126927547, 'Female', '2020-01-04', 'Indian', 'tepi parit', 'dirahsiakan', '2020-01-22', 'IMG_20190519_002944.jpg'),
(7, 'mumu anak atah', 542, 0, 'Female', '2019-11-01', '', 'Kuala Lumpur', 'Good', '2020-01-26', 'IMG_20190713_082552.jpg'),
(10, 'teacher', 960, 321754000, 'Female', '2020-01-02', 'Chinese', 'BATU PAHAT', 'Good', '2020-01-29', 'IMG_20190515_150000.jpg'),
(11, 'teacher', 522, 126927550, 'Male', '2020-01-11', 'Indian', 'batu pahat', 'Good', '2020-01-31', 'IMG_20190510_163921.jpg'),
(14, 'awan', 960, 126927547, 'Male', '2020-02-01', 'mix', 'tepi parit', 'Good', '2020-02-02', 'IMG_20190615_211107_1.jpg'),
(15, 'rabiatul ', 522, 321754000, 'Male', '2020-02-07', 'Chinese', 'Kuala Lumpur', 'Good', '2020-02-02', 'IMG_20190615_211123.jpg'),
(16, 'ajati', 98, 126927547, 'Female', '2020-01-31', 'confuse', 'tepi parit', 'Good', '2020-02-02', 'IMG_20190708_143328.jpg'),
(17, 'mumu anak atah', 15, 126927547, 'Female', '2020-02-08', 'Malay', 'Kuala Lumpur', 'Good', '2020-02-02', 'IMG_20190708_143328.jpg'),
(18, 'adik ya', 7, 321754000, 'Female', '2020-02-14', 'Chinese', 'tepi parit', 'nakal', '2020-02-02', 'IMG_20190622_143155.jpg'),
(19, 'fateha', 222, 126927547, 'Female', '2020-02-07', 'Chinese', 'tepi parit', 'Good', '2020-02-02', 'IMG_20190806_170806.jpg'),
(20, 'mama', 522, 1, 'Female', '2018-12-30', 'Indian', 'Kuala Lumpur', 'Good', '2020-02-05', 'egg1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `homelessalert`
--

CREATE TABLE `homelessalert` (
  `id_alert` int(15) NOT NULL,
  `streetAdd` varchar(100) NOT NULL,
  `town` varchar(45) NOT NULL,
  `locationDetails` varchar(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `age` int(10) NOT NULL,
  `date_found` date NOT NULL,
  `time` time NOT NULL,
  `desc` varchar(100) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id_image` int(15) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id_image`, `image`) VALUES
(7, 'Screenshot (1).png'),
(8, 'Screenshot (1).png');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id_noti` int(15) NOT NULL,
  `title` varchar(200) NOT NULL,
  `description` text NOT NULL,
  `date_noti` date NOT NULL,
  `id_notitype` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `offlinedonation`
--

CREATE TABLE `offlinedonation` (
  `id_offdonate` int(15) NOT NULL,
  `amount` float NOT NULL,
  `don_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `image` varchar(500) NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_donor` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `offlinedonation`
--

INSERT INTO `offlinedonation` (`id_offdonate`, `amount`, `don_date`, `image`, `type`, `id_donor`) VALUES
(8, 0, '2019-11-06 19:39:39', '', 'Offline', 3);

-- --------------------------------------------------------

--
-- Table structure for table `onlinedonation`
--

CREATE TABLE `onlinedonation` (
  `id_onldonate` int(15) NOT NULL,
  `amount` float NOT NULL,
  `don_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(15) NOT NULL,
  `id_donor` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `onlinedonation`
--

INSERT INTO `onlinedonation` (`id_onldonate`, `amount`, `don_date`, `type`, `id_donor`) VALUES
(14, 150, '2019-11-06 19:31:15', 'Online', 3),
(16, 0, '2019-11-06 19:33:42', 'Online', 3),
(17, 0, '2019-11-06 19:38:58', 'Online', 3),
(18, 0, '2019-11-07 02:16:29', 'Online', 3),
(19, 0, '2019-11-07 02:22:51', 'Online', 3),
(20, 0, '2019-11-07 04:31:50', 'Online', 1),
(21, 10, '2020-02-12 10:06:37', 'Online', 5);

-- --------------------------------------------------------

--
-- Table structure for table `planner`
--

CREATE TABLE `planner` (
  `id_planner` int(15) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` varchar(120) NOT NULL,
  `place` varchar(45) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `typenoti`
--

CREATE TABLE `typenoti` (
  `id_notitype` int(15) NOT NULL,
  `type_noti` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `id_volunteer` int(15) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` int(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address1` varchar(100) DEFAULT NULL,
  `address2` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `zip` int(10) DEFAULT NULL,
  `password` varchar(20) NOT NULL,
  `image` varchar(500) NOT NULL,
  `datereg` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`id_volunteer`, `name`, `phone`, `email`, `address1`, `address2`, `city`, `state`, `country`, `zip`, `password`, `image`, `datereg`) VALUES
(3, 'NUR AWADAH BINTI ISMAIL', 126927547, 'nurawadah.ismail@gmail.com', 'PL 27-3 LOT 1273', NULL, 'batu pahat', 'johor', 'Malaysia', 83000, 'admin2002', '', '2020-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_group`
--

CREATE TABLE `volunteer_group` (
  `id_volgroup` int(15) NOT NULL,
  `nameGroup` varchar(50) NOT NULL,
  `NoPax` int(20) NOT NULL,
  `Date_collab` date NOT NULL,
  `GrpLeader` varchar(50) NOT NULL,
  `PhoneNum` int(20) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `emergencycntc` int(20) NOT NULL,
  `name_ec` varchar(50) NOT NULL,
  `frequent_vol` varchar(20) NOT NULL,
  `id_volunteer` int(15) NOT NULL,
  `id_contribution` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indexes for table `contribution`
--
ALTER TABLE `contribution`
  ADD PRIMARY KEY (`id_contribution`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`id_donor`);

--
-- Indexes for table `homeless`
--
ALTER TABLE `homeless`
  ADD PRIMARY KEY (`id_homeless`);

--
-- Indexes for table `homelessalert`
--
ALTER TABLE `homelessalert`
  ADD PRIMARY KEY (`id_alert`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id_image`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id_noti`),
  ADD KEY `PKnotitype` (`id_notitype`);

--
-- Indexes for table `offlinedonation`
--
ALTER TABLE `offlinedonation`
  ADD PRIMARY KEY (`id_offdonate`),
  ADD KEY `PKdonor` (`id_donor`);

--
-- Indexes for table `onlinedonation`
--
ALTER TABLE `onlinedonation`
  ADD PRIMARY KEY (`id_onldonate`),
  ADD KEY `PKdonor1` (`id_donor`);

--
-- Indexes for table `planner`
--
ALTER TABLE `planner`
  ADD PRIMARY KEY (`id_planner`);

--
-- Indexes for table `typenoti`
--
ALTER TABLE `typenoti`
  ADD PRIMARY KEY (`id_notitype`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`id_volunteer`);

--
-- Indexes for table `volunteer_group`
--
ALTER TABLE `volunteer_group`
  ADD PRIMARY KEY (`id_volgroup`),
  ADD KEY `PKcontribution` (`id_contribution`),
  ADD KEY `PKvolunteer` (`id_volunteer`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id_blog` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contribution`
--
ALTER TABLE `contribution`
  MODIFY `id_contribution` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `id_donor` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `homeless`
--
ALTER TABLE `homeless`
  MODIFY `id_homeless` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `homelessalert`
--
ALTER TABLE `homelessalert`
  MODIFY `id_alert` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id_image` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id_noti` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offlinedonation`
--
ALTER TABLE `offlinedonation`
  MODIFY `id_offdonate` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `onlinedonation`
--
ALTER TABLE `onlinedonation`
  MODIFY `id_onldonate` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `planner`
--
ALTER TABLE `planner`
  MODIFY `id_planner` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `typenoti`
--
ALTER TABLE `typenoti`
  MODIFY `id_notitype` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `id_volunteer` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `volunteer_group`
--
ALTER TABLE `volunteer_group`
  MODIFY `id_volgroup` int(15) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `PKnotitype` FOREIGN KEY (`id_notitype`) REFERENCES `typenoti` (`id_notitype`);

--
-- Constraints for table `offlinedonation`
--
ALTER TABLE `offlinedonation`
  ADD CONSTRAINT `PKdonor` FOREIGN KEY (`id_donor`) REFERENCES `donor` (`id_donor`);

--
-- Constraints for table `onlinedonation`
--
ALTER TABLE `onlinedonation`
  ADD CONSTRAINT `PKdonor1` FOREIGN KEY (`id_donor`) REFERENCES `donor` (`id_donor`);

--
-- Constraints for table `volunteer_group`
--
ALTER TABLE `volunteer_group`
  ADD CONSTRAINT `PKcontribution` FOREIGN KEY (`id_contribution`) REFERENCES `contribution` (`id_contribution`),
  ADD CONSTRAINT `PKvolunteer` FOREIGN KEY (`id_volunteer`) REFERENCES `volunteer` (`id_volunteer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
