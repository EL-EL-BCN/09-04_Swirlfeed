-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2020 at 10:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `social`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_body` text NOT NULL,
  `posted_by` varchar(60) NOT NULL,
  `posted_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `removed` varchar(3) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_body`, `posted_by`, `posted_to`, `date_added`, `removed`, `post_id`) VALUES
(1, 'vmmv', 'john_smith', 'elliott_farmer', '2020-08-14 20:30:15', 'no', 14),
(2, 'what?', 'john_smith', 'elliott_farmer', '2020-08-14 21:59:11', 'no', 14),
(3, 'Tom Cat is very fast', 'mickey_mouse', 'mickey_mouse', '2020-08-20 23:33:21', 'no', 13);

-- --------------------------------------------------------

--
-- Table structure for table `friend_requests`
--

CREATE TABLE `friend_requests` (
  `id` int(11) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `user_from` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `friend_requests`
--

INSERT INTO `friend_requests` (`id`, `user_to`, `user_from`) VALUES
(6, 'daffy_duck', 'john_smith');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `username`, `post_id`) VALUES
(9, 'elliott_farmer', 14),
(10, 'elliott_farmer', 13),
(11, 'elliott_farmer', 7),
(13, 'john_smith', 14),
(14, 'john_smith', 22),
(15, 'john_smith', 26),
(16, 'john_smith', 25),
(17, 'john_smith', 45);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `user_from` varchar(60) NOT NULL,
  `body` text NOT NULL,
  `date` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_to`, `user_from`, `body`, `date`, `opened`, `viewed`, `deleted`) VALUES
(1, 'Elliott_farmer', 'john_smith', 'hello', '2020-08-24 15:23:17', 'no', 'no', 'no'),
(2, 'Elliott_farmer', 'john_smith', 'This a test message to see if the post message function is working.', '2020-08-24 15:24:49', 'no', 'no', 'no'),
(3, 'Elliott_farmer', 'john_smith', 'test message', '2020-08-24 15:25:31', 'no', 'no', 'no'),
(4, 'Elliott_farmer', 'john_smith', 'This lesson is really long and tedious.', '2020-08-24 15:25:45', 'no', 'no', 'no'),
(5, 'Elliott_farmer', 'john_smith', 'THis part of the tutorial indicates that I need to generate 6 test messages.', '2020-08-24 15:26:16', 'no', 'no', 'no'),
(6, 'Elliott_farmer', 'john_smith', 'test message number 6.', '2020-08-24 15:26:34', 'no', 'no', 'no'),
(7, 'John_smith', 'elliott_farmer', 'Test message number 7', '2020-08-24 17:27:41', 'yes', 'yes', 'no'),
(8, 'John_smith', 'elliott_farmer', 'Test message number 8', '2020-08-24 17:28:08', 'yes', 'yes', 'no'),
(9, 'John_smith', 'elliott_farmer', 'Test message number 9', '2020-08-24 17:28:13', 'yes', 'yes', 'no'),
(10, 'Elliott_farmer', 'john_smith', 'Test message 10', '2020-08-24 20:15:39', 'no', 'no', 'no'),
(11, 'Elliott_farmer', 'john_smith', 'tsjgnpinp', '2020-08-24 20:15:45', 'no', 'no', 'no'),
(12, 'Elliott_farmer', 'john_smith', 'xbfcncggn', '2020-08-24 20:15:49', 'no', 'no', 'no'),
(13, 'Elliott_farmer', 'john_smith', 'dndndpind', '2020-08-24 20:16:03', 'no', 'no', 'no'),
(15, 'Elliott_farmer', 'john_smith', 'xbfcncggn', '2020-08-24 20:17:14', 'no', 'no', 'no'),
(16, 'Elliott_farmer', 'john_smith', 'lkjhgfdsalkjhgfds', '2020-08-24 20:17:23', 'no', 'no', 'no'),
(17, 'Elliott_farmer', 'john_smith', 'lkjhgfdsalkjhgfds', '2020-08-24 20:17:55', 'no', 'no', 'no'),
(18, 'Elliott_farmer', 'john_smith', 'ghghghg', '2020-08-24 20:18:08', 'no', 'no', 'no'),
(19, 'bart_simpson', 'elliott_farmer', 'hello Bart', '2020-08-24 21:41:06', 'no', 'no', 'no'),
(20, 'elliott_farmer', 'john_smith', 'Test message for the messages tab', '2020-08-26 19:34:03', 'no', 'no', 'no'),
(21, 'elliott_farmer', 'john_smith', 'bfgfzgguhhichlh', '2020-08-26 19:43:49', 'no', 'no', 'no'),
(22, 'elliott_farmer', 'john_smith', 'bfgfzgguhhichlh', '2020-08-26 19:44:29', 'no', 'no', 'no'),
(23, 'elliott_farmer', 'john_smith', 'ddfhdhfjfjgxgkxgkchlilvñioñkoñkpóp', '2020-08-26 19:44:38', 'no', 'no', 'no'),
(24, 'elliott_farmer', 'john_smith', 'ddfhdhfjfjgxgkxgkchlilvñioñkoñkpóp', '2020-08-26 19:45:12', 'no', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `user_from` varchar(60) NOT NULL,
  `message` text NOT NULL,
  `link` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `opened` varchar(3) NOT NULL,
  `viewed` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_to`, `user_from`, `message`, `link`, `datetime`, `opened`, `viewed`) VALUES
(1, 'bart_simpson', 'john_smith', 'John Smith liked your post', 'post.php?id=35', '2020-09-07 16:13:55', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `body` text NOT NULL,
  `added_by` varchar(60) NOT NULL,
  `user_to` varchar(60) NOT NULL,
  `date_added` datetime NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `deleted` varchar(3) NOT NULL,
  `likes` int(11) NOT NULL,
  `image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `body`, `added_by`, `user_to`, `date_added`, `user_closed`, `deleted`, `likes`, `image`) VALUES
(1, 'Test post', 'John_Smith', 'none', '2020-08-11 21:10:58', 'no', 'yes', 0, ''),
(2, 'senfpsignspibnx´l my cat is walking across my keyboard', 'John_Smith', 'none', '2020-08-11 21:12:11', 'no', 'yes', 0, ''),
(3, 'This is the first post!', 'john_smith', 'none', '2020-08-12 16:43:38', 'no', 'yes', 0, ''),
(4, 'Dummy post', 'John_Smith', 'none', '2020-08-12 16:45:47', 'no', 'yes', 0, ''),
(6, 'Test to confirm that form resubmission is dissabled and the code takes us to index.php.', 'john_smith', 'none', '2020-08-12 16:57:25', 'no', 'no', 0, ''),
(7, 'This is a test of the function nl2br.\n\nTo see if it is inserting the html line break code into the body text of posts.', 'john_smith', 'none', '2020-08-13 19:45:49', 'no', 'no', 1, ''),
(8, 'test message', 'john_smith', 'none', '2020-08-13 21:01:53', 'no', 'yes', 0, ''),
(9, 'Test post to see if infinate scrolling is working', 'John_Smith', 'none', '2020-08-13 21:14:48', 'no', 'no', 0, ''),
(10, 'this is a very long coding lesson', 'John_Smith', 'none', '2020-08-13 21:15:32', 'no', 'no', 0, ''),
(11, 'vnddibn´b cn n `pnmf`jkfz`\njkfy`\noj`\nonjdò', 'john_smith', 'none', '2020-08-13 21:16:40', 'no', 'no', 0, ''),
(12, 'filler message\r\n', 'john_smith', 'none', '2020-08-13 22:50:10', 'no', 'no', 0, ''),
(13, 'Had a horrific day being chased by a cat.', 'mickey_mouse', 'none', '2020-08-13 22:51:40', 'no', 'no', 1, ''),
(14, 'Still going at it.....', 'elliott_farmer', 'none', '2020-08-14 00:42:11', 'no', 'no', 2, ''),
(15, 'I keep tripping over my shoes', 'goofy_dog', 'none', '2020-08-20 22:32:34', 'no', 'no', 0, ''),
(19, 'hello', 'mickey_mouse', 'goofy_dog', '2020-08-21 01:18:54', 'no', 'yes', 0, ''),
(20, 'good morning!', 'mickey_mouse', 'goofy_dog', '2020-08-21 03:08:37', 'no', 'yes', 0, ''),
(21, 'vviyy ip uu ou ', 'mickey_mouse', 'goofy_dog', '2020-08-21 03:09:14', 'no', 'yes', 0, ''),
(22, 'Dont have a cow man.', 'bart_simpson', 'none', '2020-08-23 23:03:53', 'no', 'no', 1, ''),
(23, 'Hello. this is such a long lesson', 'john_smith', 'elliott_farmer', '2020-08-26 19:45:12', 'no', 'no', 0, ''),
(24, 'IS infinate scrolling still working?', 'john_smith', 'none', '2020-09-01 01:18:38', 'no', 'no', 0, ''),
(25, 'dhzfjff', 'john_smith', 'none', '2020-09-01 01:18:55', 'no', 'no', 1, ''),
(26, 'hello bart', 'john_smith', 'bart_simpson', '2020-09-01 01:28:15', 'no', 'no', 1, ''),
(27, '<br><iframe width=\'420\' height=\'315\' src=\'\'></iframe><br>', 'john_smith', 'none', '2020-09-06 22:44:56', 'no', 'yes', 0, ''),
(28, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/_7Lott1M1Wc\'></iframe><br>', 'john_smith', 'none', '2020-09-06 22:46:37', 'no', 'yes', 0, ''),
(29, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/_7Lott1M1Wc\'></iframe><br>', 'john_smith', 'none', '2020-09-06 22:46:57', 'no', 'yes', 0, ''),
(30, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/_7Lott1M1Wc\'></iframe><br>', 'john_smith', 'none', '2020-09-06 22:47:02', 'no', 'yes', 0, ''),
(31, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/_7Lott1M1Wc\'></iframe><br>', 'john_smith', 'none', '2020-09-06 22:47:14', 'no', 'yes', 0, ''),
(32, '<br><iframe width=\'420\' height=\'315\' src=\'https://www.youtube.com/embed/_7Lott1M1Wc\'></iframe><br>', 'john_smith', 'none', '2020-09-06 22:47:18', 'no', 'no', 0, ''),
(33, 'ffkbdñudb', 'john_smith', 'none', '2020-09-07 16:05:27', 'no', 'no', 0, ''),
(34, 'fgghh', 'john_smith', 'none', '2020-09-07 16:13:34', 'no', 'no', 0, ''),
(35, 'ghmgmh', 'john_smith', 'bart_simpson', '2020-09-07 16:13:55', 'no', 'no', 0, ''),
(36, 'Hello guys. I am looking forward to the superbowl.', 'john_smith', 'none', '2020-09-07 17:56:06', 'no', 'yes', 0, ''),
(37, 'Hello guys. I am looking forward to the superbowl.', 'john_smith', 'none', '2020-09-07 17:56:19', 'no', 'no', 0, ''),
(38, 'Hello guys. I am looking forward to the superbowl.', 'john_smith', 'none', '2020-09-07 17:56:25', 'no', 'no', 0, ''),
(39, 'Hello guys. I am looking forward to the superbowl.', 'john_smith', 'none', '2020-09-07 17:56:31', 'no', 'no', 0, ''),
(40, 'Hello guys. I am looking forward to the superbowl.', 'john_smith', 'none', '2020-09-07 18:11:01', 'no', 'no', 0, ''),
(41, 'Hello guys. I am looking forward to the superbowl.', 'john_smith', 'none', '2020-09-07 19:06:48', 'no', 'no', 0, ''),
(42, 'Hello guys. I am looking forward to the superbowl.', 'john_smith', 'none', '2020-09-07 19:48:36', 'no', 'no', 0, ''),
(43, 'Hello guys. I am looking forward to the superbowl.', 'john_smith', 'none', '2020-09-07 19:53:55', 'no', 'no', 0, ''),
(44, 'Hello guys. I am looking forward to the superbowl.', 'john_smith', 'none', '2020-09-07 19:57:25', 'no', 'no', 0, ''),
(45, '', 'john_smith', 'none', '2020-09-07 19:58:35', 'no', 'no', 1, 'assets/images/posts/5f5674cbbb99f19-10-2011-Pobla de lliet -3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trends`
--

CREATE TABLE `trends` (
  `title` varchar(50) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trends`
--

INSERT INTO `trends` (`title`, `hits`) VALUES
('Hello', 9),
('Guys', 9),
('Looking', 9),
('Forward', 9),
('Superbowl', 9);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `signup_date` date NOT NULL,
  `profile_pic` varchar(255) NOT NULL,
  `num_posts` int(11) NOT NULL,
  `num_likes` int(11) NOT NULL,
  `user_closed` varchar(3) NOT NULL,
  `friend_array` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `email`, `password`, `signup_date`, `profile_pic`, `num_posts`, `num_likes`, `user_closed`, `friend_array`) VALUES
(4, 'John', 'Smith', 'john_smith', 'Johnsmith@gmail.com', 'dc647eb65e6711e155375218212b3964', '2020-08-10', 'assets/images/profile_pics/john_smithab4266c6e3c1784e0c526c4c5c4a382dn.jpeg', 33, 7, 'no', ',elliott_farmer,bart_simpson,mickey_mousegoofy_dog'),
(6, 'Tom', 'Cat', 'tom_cat', 'Tomcat@disney.com', 'f2a47c6809d88e175dade0ef7b16aa13', '2020-08-10', 'assets/images/profile_pics/defaults/head_deep_blue.png', 0, 0, 'no', ',elliott_farmer,\r\n'),
(8, 'Elliott', 'Farmer', 'elliott_farmer', 'Elliott_w_farmer@yahoo.co.uk', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-08-10', 'assets/images/profile_pics/elliott_farmer1e2aa3dbe311e895c8a9d79ccfa03c60n.jpeg', 1, 5, 'no', ',bart_simpson,tom_cat,john_smith,'),
(9, 'Bart', 'Simpson', 'bart_simpson', 'Bartsimpson@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-08-14', 'assets/images/profile_pics/bart_simpsonc3342cd35cdedf9e01d99dc6e28467fan.jpeg', 1, 1, 'no', ',elliott_farmer,'),
(10, 'Mickey', 'Mouse', 'mickey_mouse', 'Mickey_mouse@disney.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-08-20', 'assets/images/profile_pics/mickey_mousec05f69f804e8782d5604c81036439b9fn.jpeg', 6, 0, 'no', ',goofy_dog,john_smith'),
(11, 'Goofy', 'Dog', 'goofy_dog', 'Goofy_dog@disney.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2020-08-20', 'assets/images/profile_pics/goofy_dog43c99189b267e3e95fa6253e8448752en.jpeg', 1, 0, 'no', ',mickey_mouse,john_smith');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `friend_requests`
--
ALTER TABLE `friend_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `friend_requests`
--
ALTER TABLE `friend_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
