-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2021 at 04:59 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bca6`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blogs`
--

CREATE TABLE `tbl_blogs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blog_title` varchar(100) NOT NULL,
  `blog_content` text NOT NULL,
  `created_date` varchar(30) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blogs`
--

INSERT INTO `tbl_blogs` (`id`, `user_id`, `blog_title`, `blog_content`, `created_date`, `status`) VALUES
(1, 1, 'Bell Ring', 'Its time to move to next class		', 'Mon Apr 12 08:00:57 NPT 2021', 0),
(2, 2, 'created new blog', 'this is new blog		', 'Mon Apr 12 08:02:04 NPT 2021', 0),
(3, 2, 'additional blog', 'additional blog		', 'Mon Apr 12 08:02:38 NPT 2021', 0),
(4, 7, 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\n', 'Tue Apr 13 07:52:09 NPT 2021', 0),
(5, 6, 'Dhangadhi engineering college', '		it is best college for it field', 'Tue Apr 13 07:55:09 NPT 2021', 0),
(6, 9, 'Bell ring', '		Bell ring when period is over and  start next period .', 'Tue Apr 13 07:55:24 NPT 2021', 0),
(7, 10, 'next period', '		second period Data communication ', 'Tue Apr 13 07:55:32 NPT 2021', 0),
(8, 11, 'times up', '		its time for next period.', 'Tue Apr 13 07:55:42 NPT 2021', 0),
(9, 10, 'kapil hotel', 'vaat masu tarkari chiya basi', 'Tue Apr 13 07:56:48 NPT 2021', 1),
(10, 12, '(Beatles song)', '		\"Something\" is a song by the English rock band the Beatles from their 1969 album Abbey Road. It was written by George Harrison, the band\'s lead guitarist, and is widely viewed by music historians as having marked his ascendancy as a composer to the level of the Beatles\' principal songwriters, John Lennon and Paul McCartney. Two weeks after the album\'s release, the song was issued on a double A-side single, coupled with \"Come Together\", making it the first Harrison composition to become a Beatles A-side. The pairing was also the first time in the United Kingdom that the Beatles issued a single containing tracks already available on an album. While the single\'s commercial performance was lessened by this, it topped the Billboard Hot 100 in the United States as well as charts in Australia, Canada, New Zealand and West Germany, and peaked at number 4 in the UK.\r\n\r\nThe track is generally considered a love song to Pattie Boyd, Harrison\'s first wife, although Harrison offered alternative sources of inspiration in later interviews. Owing to the difficulty he faced in getting more than two of his compositions onto each Beatles album, Harrison first offered the song to Joe Cocker. As recorded by the Beatles, the track features a guitar solo that several music critics identify among Harrison\'s finest playing. The song also drew praise from the other Beatles and their producer, George Martin, with Lennon stating that it was the best song on Abbey Road. The promotional film for the single combined footage of each of the Beatles with his respective wife, reflecting the estrangement in the band during the months preceding their break-up in April 1970. Harrison subsequently performed the song at his Concert for Bangladesh shows in 1971 and throughout the two tours he made as a solo artist.\r\n\r\n\"Something\" received the Ivor Novello Award for the \"Best Song Musically and Lyrically\" of 1969. By the late 1970s, it had been covered by over 150 artists, making it the second-most covered Beatles composition after \"Yesterday\". Shirley Bassey had a top-five UK hit with her 1970 recording, and Frank Sinatra regularly performed the song. Other artists who have covered it include Elvis Presley, Ray Charles, Booker T. & the M.G.\'s, James Brown, Smokey Robinson and Johnny Rodriguez. In 1999, Broadcast Music Incorporated named \"Something\" as the 17th-most performed song of the twentieth century, with 5 million performances. In 2000, Mojo ranked \"Something\" at number 14 in the magazine\'s list of \"The 100 Greatest Songs of All Time\"; in 2004, it was ranked 278th on Rolling Stone\'s list of \"The 500 Greatest Songs of All Time\". In 2002, a year after Harrison\'s death, McCartney and Eric Clapton performed it at the Concert for George tribute at London\'s Royal Albert Hall. ', 'Tue Apr 13 07:57:29 NPT 2021', 1),
(11, 13, 'new', '		httt', 'Tue Apr 13 07:57:34 NPT 2021', 1),
(12, 10, 'kapil hotel', 'popular for vaat masu chiya everthing is basi', 'Tue Apr 13 07:57:40 NPT 2021', 1),
(13, 12, '(Beatles song)', '		\"Something\" is a song by the English rock band the Beatles from their 1969 album Abbey Road. It was written by George Harrison, the band\'s lead guitarist, and is widely viewed by music historians as having marked his ascendancy as a composer to the level of the Beatles\' principal songwriters, John Lennon and Paul McCartney. Two weeks after the album\'s release, the song was issued on a double A-side single, coupled with \"Come Together\", making it the first Harrison composition to become a Beatles A-side. The pairing was also the first time in the United Kingdom that the Beatles issued a single containing tracks already available on an album. While the single\'s commercial performance was lessened by this, it topped the Billboard Hot 100 in the United States as well as charts in Australia, Canada, New Zealand and West Germany, and peaked at number 4 in the UK.\r\n\r\nThe track is generally considered a love song to Pattie Boyd, Harrison\'s first wife, although Harrison offered alternative sources of inspiration in later interviews. Owing to the difficulty he faced in getting more than two of his compositions onto each Beatles album, Harrison first offered the song to Joe Cocker. As recorded by the Beatles, the track features a guitar solo that several music critics identify among Harrison\'s finest playing. The song also drew praise from the other Beatles and their producer, George Martin, with Lennon stating that it was the best song on Abbey Road. The promotional film for the single combined footage of each of the Beatles with his respective wife, reflecting the estrangement in the band during the months preceding their break-up in April 1970. Harrison subsequently performed the song at his Concert for Bangladesh shows in 1971 and throughout the two tours he made as a solo artist.\r\n\r\n\"Something\" received the Ivor Novello Award for the \"Best Song Musically and Lyrically\" of 1969. By the late 1970s, it had been covered by over 150 artists, making it the second-most covered Beatles composition after \"Yesterday\". Shirley Bassey had a top-five UK hit with her 1970 recording, and Frank Sinatra regularly performed the song. Other artists who have covered it include Elvis Presley, Ray Charles, Booker T. & the M.G.\'s, James Brown, Smokey Robinson and Johnny Rodriguez. In 1999, Broadcast Music Incorporated named \"Something\" as the 17th-most performed song of the twentieth century, with 5 million performances. In 2000, Mojo ranked \"Something\" at number 14 in the magazine\'s list of \"The 100 Greatest Songs of All Time\"; in 2004, it was ranked 278th on Rolling Stone\'s list of \"The 500 Greatest Songs of All Time\". In 2002, a year after Harrison\'s death, McCartney and Eric Clapton performed it at the Concert for George tribute at London\'s Royal Albert Hall. ', 'Tue Apr 13 07:57:53 NPT 2021', 1),
(14, 13, 'music', '		songs', 'Tue Apr 13 07:58:31 NPT 2021', 1),
(15, 1, 'Web Technology II', 'EDITED Blog', 'Tue Apr 13 09:40:50 NPT 2021', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `date_of_birth` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `first_name`, `last_name`, `date_of_birth`, `gender`, `email`, `password`, `status`) VALUES
(1, 'Sunil Bahadur', 'Bist', '1980-12-31', 'on', 'sunil@nast.edu.np', 'pass', 1),
(2, 'Sagar', 'Kathariya', '2000-12-31', 'M', 'sagar@gmail.com', 'pass', 1),
(3, 'hdhdh', 'hshdh', '2021-12-31', 'M', 'jsjd@gmailcom', 'jdjhjdh', 1),
(4, 'Khem', 'Pant', '2000-01-01', 'M', 'pantk62@gmail.com', 'qwertyuiop', 1),
(5, 'Bishal', 'Chaudhary', '2000-10-13', 'M', 'bishal@gmail.com', '123456789', 1),
(6, 'Deep ', 'Nath', '1999-05-24', 'M', 'deepnath@gmail.com', '12345', 1),
(7, 'Sagar', 'Kathariya', '1998-10-20', 'M', 'sgrkathariya@gmail.com', 'nastdhn#', 1),
(8, 'Bibek', 'Chaudhary', '1254-02-04', 'M', 'bibek@gmail.com', '12345', 1),
(9, 'kapil', 'poudel', '2003-01-07', 'M', 'kapil@gmail.com', 'kapil123', 1),
(10, 'Khemraj', 'Rawal', '2000-04-13', 'M', 'khemrajrawal@gmail.com', 'khem', 1),
(11, 'Sagar', 'Ghimire', '1998-02-07', 'M', 'sg12@gmail.com', '0927', 1),
(12, 'Love', 'Kush', '1999-01-02', 'M', 'lovekush@gmail.com', 'qwertyuiop', 1),
(13, 'Prakash', 'Dhami', '2000-05-05', 'M', 'dhamiprakash128@gmail.com', 'bca6', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_id_2` (`user_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_EMAIL` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_blogs`
--
ALTER TABLE `tbl_blogs`
  ADD CONSTRAINT `tbl_blogs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
