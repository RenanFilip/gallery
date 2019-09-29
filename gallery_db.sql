-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 09, 2017 at 03:13 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.21-1~ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gallery_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11),
  `photo_id` int(11),
  `author` varchar(255),
  `body` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `photo_id`, `author`, `body`) VALUES
(1, 5, 'Carlos', 'Esse site é muito bom, me ajudou demais!'),
(2, 5, 'Renan Filip', 'This is awesome'),
(4, 5, 'Teste', 'uma vez'),
(5, 6, 'Renan balieiro', 'Funcionou!'),
(11, 14, 'oiasjoajs', 'aisjoaisjoaijsoiasoiajs!'),
(12, 14, 'jajajja', 'auhsioashuas');

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE `photos` (
  `id` int(11),
  `title` varchar(255),
  `caption` varchar(255),
  `description` text,
  `filename` varchar(255),
  `alternate_text` varchar(255),
  `type` varchar(255),
  `size` int(11)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photos`
--

INSERT INTO `photos` (`id`, `title`, `caption`, `description`, `filename`, `alternate_text`, `type`, `size`) VALUES
(5, 'Carro 3', 'New Caption!', '<p><strong>Teste!</strong></p>', 'images-44.jpg', 'blabla', 'image/jpeg', 29486),
(7, 'Teste', '', '', 'images-33.jpg', '', 'image/jpeg', 16855),
(8, 'teste1', '', '', 'images-13.jpg', '', 'image/jpeg', 22082),
(10, 'teste3', '', '', 'images-1.jpg', '', 'image/jpeg', 28947),
(11, 'teste4', '', '', 'images-28.jpg', '', 'image/jpeg', 17662),
(12, 'Teste 5', '"Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit..."', '<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed volutpat magna ex, eget faucibus leo lobortis ac. Nunc sem ligula, vulputate quis rhoncus quis, finibus non nisi. Ut consequat euismod libero tincidunt consequat. Morbi sit amet dui a felis varius convallis eget a augue. Aenean ornare arcu nec pharetra posuere. Curabitur fermentum mauris quis sapien luctus posuere. Curabitur pretium iaculis ante, vel sodales nibh consequat sit amet. Sed eleifend, ex id euismod molestie, nisi eros placerat lacus, non pellentesque lectus mi a nibh. Fusce condimentum neque mattis leo consectetur, quis auctor enim euismod. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Praesent augue orci, placerat non finibus quis, malesuada eu neque. Duis finibus quam libero, vel feugiat dui egestas at. Curabitur consequat tincidunt bibendum. Phasellus sollicitudin dapibus aliquet. Mauris ultrices convallis turpis non rutrum.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;">Aenean tincidunt, nisi nec pretium euismod, metus felis lacinia urna, eget posuere nulla mi sit amet sem. Sed vehicula libero vel leo hendrerit, at feugiat magna iaculis. Donec eget ante convallis, cursus nibh consequat, congue purus. Mauris quam nisi, bibendum in libero eget, pulvinar aliquet orci. Vestibulum dictum metus est, at lobortis mauris cursus commodo. Suspendisse est quam, dapibus nec molestie aliquet, lacinia tincidunt felis. Donec fermentum dictum ligula, a pretium ipsum condimentum id. Etiam sit amet ultrices arcu.</p>\r\n<p>&nbsp;</p>', '_large_image_2.jpg', '"NÃ£o hÃ¡ ninguÃ©m que ame a dor por si sÃ³, que a busque e queira tÃª-la, simplesmente por ser dor..."', 'image/jpeg', 309568),
(14, 'asas', '', '', '_large_image_4.jpg', '', 'image/jpeg', 554659),
(15, '', '', '', 'images-2.jpg', '', 'image/jpeg', 18578);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11),
  `username` varchar(255),
  `password` varchar(255),
  `first_name` varchar(255),
  `last_name` varchar(255),
  `user_image` varchar(255)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `first_name`, `last_name`, `user_image`) VALUES
(1, 'rico', '123', 'Editado', 'Editado!', '_large_image_2.jpg'),
(2, 'func', '123', 'Teste', 'Teste2', '56767450-ghost-in-the-shell-wallpapers.jpg'),
(3, 'WHATEVER', '123', 'John', 'Doe', '_large_image_2.jpg'),
(7, 'Suave The Second', 'Rico Last Name', 'Rica', 'Suaves', 'images-20.jpg'),
(11, 'sopratercerteza', '111', 'Funcionou', 'Novamente', 'images-30.jpg'),
(13, 'renan3', '123', 'Renan', 'Filip', 'images-8.jpg'),
(15, 'aaaa', 'aaaa', 'aaaa', 'aaaa', '_large_image_2.jpg'),
(16, 'iuashiaush', '123', 'auishaiush', 'asiuhasiuas', 'images-41.jpg'),
(17, 'teste555', 'kkk', 'kkk', 'kkk', 'images-39.jpg'),
(18, 'uyagsayu', 'uaygsaygs', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `photos`
--
ALTER TABLE `photos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
