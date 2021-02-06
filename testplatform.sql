-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 06, 2021 at 05:48 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testplatform`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `a_id` int(11) NOT NULL,
  `answer` int(11) NOT NULL,
  `opt1` varchar(100) NOT NULL,
  `opt2` varchar(100) NOT NULL,
  `opt3` varchar(100) NOT NULL,
  `opt4` varchar(100) NOT NULL,
  `q_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`a_id`, `answer`, `opt1`, `opt2`, `opt3`, `opt4`, `q_id`) VALUES
(1, 2, 'Personal Home Page', 'Hypertext Preprocessor', 'Pretext Hypertext Processor', 'Preprocessor Home Page', 1),
(2, 1, 'Rasmus Lerdorf', 'Willam Makepiece', 'Drek Kolkevi', 'List Barely', 2),
(3, 1, 'Hyper Text Markup Language', 'High Text Markup Language', 'Hyper Tabular Markup Language', 'None of these', 3),
(4, 3, '.html', '.xml', '.php', '.ph', 4),
(5, 4, '< php >', '< ? php >', '< ? ? >', '< ?php ? >', 5),
(6, 2, 'PHP 4', 'PHP 5', 'PHP 5.3', ' PHP 6', 6),
(8, 4, '12', '1', 'Error', '5', 8),
(9, 2, '$add = $add', '$add = $add +$add', '$add = $add + 1', '$add = $add + $add + 1', 9),
(10, 1, ' echo “$x”;', 'echo “$$x”;', 'echo “/$x”;', 'echo “$x;', 10),
(11, 4, 'function {function body}', 'data type functionName(parameters) {function body}', 'functionName(parameters) {function body}', ' function functionName(parameters) {function body}', 11),
(12, 2, 'PHP 4', 'PHP 5', 'PHP 5.3', 'PHP 6', 12),
(13, 4, 'Head, Title, HTML, body', 'HTML, Body, Title, Head', 'HTML, Head, Title, Body', 'HTML, Head, Title, Body', 13),
(14, 2, 'a format tag.', 'an empty tag.', 'All of the above', 'None of the above', 14),
(15, 4, '# and #', '{ and }', '! and ?', '< and >', 15),
(16, 4, 'new line', 'vertical ruler', 'new paragraph', 'horizontal ruler', 16),
(17, 2, 'class', 'id', 'type', 'None of the above', 17),
(18, 3, 'disc, square, triangle', 'polygon, triangle, circle', 'disc, circle, square', 'All of the above', 18),
(19, 1, 'style', 'type', 'class', 'None of the above', 19),
(20, 2, '.ht', '.html', '.hml', 'None of the above', 20),
(21, 1, 'Web browser', 'Server', 'Interpreter', 'None of the above', 21),
(22, 1, 'Bytecode is executed by JVM', 'The applet makes the Java code secure and portable', 'Use of exception handling', 'Dynamic binding between objects', 22),
(23, 3, 'Dynamic', 'Architecture Neutral', 'Use of pointers', 'Object-oriented', 23),
(24, 1, 'Unicode escape sequence', 'Octal escape', 'Hexadecimal', 'Line feed', 24),
(25, 4, 'JVM', 'JRE', 'JDK', 'JDB', 25),
(26, 2, 'Object', 'int', 'long', 'void', 27),
(27, 4, 'ABH8097', 'L990023', '904423', '0xnf029L', 28),
(28, 3, '0', 'Not a Number', 'Infinity', 'Run time exception', 29),
(29, 1, '24', '23', '20', '25', 30),
(30, 3, 'javap tool', 'javaw command', 'Javadoc tool', 'javah command', 31),
(31, 2, 'new List(false, 3)', 'new List(3, true)', 'new List(true, 3)', 'new List(3, false)', 32),
(32, 1, 'Id', 'text', 'class', 'name', 34),
(33, 4, 'd-index', 's-index', 'x-index', 'z-index', 35),
(34, 3, 'wrap', 'push', 'float', 'align', 36),
(35, 3, 'border-color', 'border-decoration', 'border-style', 'border-line', 37),
(36, 1, 'empty-cell', 'blank-cell', 'noncontent-cell', 'void-cell', 38),
(37, 2, '640 pixels', '100%', 'full-screen', '1024 px', 39),
(38, 3, 'Id', 'div', 'class', 'span', 40),
(39, 3, 'font-style', 'text-size', 'font-size', 'text-style', 42),
(40, 4, 'fixed', 'absolute', 'inherit', 'relative', 43),
(41, 3, 'font-style', 'text-size', 'font-size', 'text-style', 44);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_id` int(11) NOT NULL,
  `questions` longtext NOT NULL,
  `subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `questions`, `subject`) VALUES
(1, 'What does PHP stand for?', 'PHP'),
(2, 'Who is the father of PHP?', 'PHP'),
(3, 'HTML stands for?', 'HTML'),
(4, ' PHP files have a default file extension of.', 'PHP'),
(5, ' A PHP script should start with ___ and end with ___:', 'PHP'),
(6, 'Which version of PHP introduced Try/catch Exception?', 'PHP'),
(8, 'If $a = 12 what will be returned when ($a == 12) ? 5 : 1 is executed?', 'PHP'),
(9, 'Which of the below statements is equivalent to $add += $add ?', 'PHP'),
(10, 'Which statement will output $x on the screen?', 'PHP'),
(11, 'How to define a function in PHP?', 'PHP'),
(12, 'Type Hinting was introduced in which version of PHP?', 'PHP'),
(13, 'The correct sequence of HTML tags for starting a webpage is -', 'HTML'),
(14, ' input is -', 'HTML'),
(15, 'HTML tags are enclosed in-', 'HTML'),
(16, 'The hr tag in HTML is used for -', 'HTML'),
(17, 'Which of the following attribute is used to provide a unique name to an element?', 'HTML'),
(18, ' What are the types of unordered or bulleted list in HTML?', 'HTML'),
(19, 'Which of the following HTML attribute is used to define inline styles?', 'HTML'),
(20, 'An HTML program is saved by using the ____ extension.', 'HTML'),
(21, 'A program in HTML can be rendered and read by -', 'HTML'),
(22, 'Which of the following option leads to the portability and security of Java?', 'JAVA'),
(23, ' Which of the following is not a Java features?', 'JAVA'),
(24, 'The u0021 article referred to as a', 'JAVA'),
(25, '_____ is used to find and fix bugs in the Java programs.', 'JAVA'),
(26, ' Which of the following is a valid declaration of a char?', 'JAVA'),
(27, 'What is the return type of the hashCode() method in the Object class?', 'JAVA'),
(28, 'Which of the following is a valid long literal?', 'JAVA'),
(29, 'What does the expression float a = 35 / 0 return?', 'JAVA'),
(30, 'Evaluate the following Java expression, if x=3, y=5, and z=10:  ++z + y - y + z + x++', 'JAVA'),
(31, 'Which of the following tool is used to generate API documentation in HTML format from doc comments in source code?', 'JAVA'),
(32, 'Which of the following creates a List of 3 visible items and multiple selections abled?', 'JAVA'),
(33, 'Which of the following is correct about CSS?', 'CSS'),
(34, 'If we want define style for an unique element, then which css selector will we use ?', 'CSS'),
(35, 'Suppose we want to arragnge five nos. of DIVs so that DIV4 is placed above DIV1. Now, which css property will we use to control the order of stack?', 'CSS'),
(36, 'If we want to wrap a block of text around an image, which css property will we use ?', 'CSS'),
(37, 'If we want to use a nice looking green dotted border around an image, which css property will we use?', 'CSS'),
(38, 'Which of the following properties will we use to display border around a cell without any content ?', 'CSS'),
(39, 'What should be the table width, so that the width of a table adjust to the current width of the browser window?', 'CSS'),
(40, 'Which attribute can be added to many HTML / XHTML elements to identify them as a member of a specific group ?', 'CSS'),
(41, 'How can we write comment along with CSS code ?', 'CSS'),
(42, 'Which CSS property is used to control the text size of an element ?', 'CSS'),
(43, 'The default value of \"position\" attribute is _________.', 'CSS'),
(44, 'Which CSS property is used to control the text size of an element ?', 'CSS');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `is_Admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`id`, `name`, `email`, `mobile`, `password`, `is_Admin`) VALUES
(1, 'admin', 'admin@gmail.com', '8888888888', '$2y$10$bdtNIUKT2dAzyiB9SF9GnufiYh9KR29eTl9DprgJDjSSRqWYDAYOK', 1),
(3, 'Raunak', 'raunakyadav@gmail.com', '9999999999', '$2y$10$SlLwJ1M5IeEdKiyxlWipweY0UtocZeZ.P/LBxG4BtbZ8lbWxvPpIK', 0);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `subject`) VALUES
(1, 'PHP'),
(2, 'HTML'),
(3, 'JAVA'),
(4, 'CSS'),
(5, 'JAVASCRIPT'),
(6, 'MYSQL'),
(7, '561456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
