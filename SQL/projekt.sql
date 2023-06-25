-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2023 at 07:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projekt`
--

-- --------------------------------------------------------

--
-- Table structure for table `korisnik`
--

CREATE TABLE `korisnik` (
  `id` int(11) NOT NULL,
  `ime` varchar(32) NOT NULL,
  `prezime` varchar(32) NOT NULL,
  `korisnicko_ime` varchar(32) NOT NULL,
  `lozinka` varchar(255) NOT NULL,
  `razina` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korisnik`
--

INSERT INTO `korisnik` (`id`, `ime`, `prezime`, `korisnicko_ime`, `lozinka`, `razina`) VALUES
(11, 'ime', 'prezime', 'imeprezime', '$2y$10$WaB2injobcz1f0bmu5fe2elGKo3FJRPchRIC0U7quisQW7rqZMN/u', 1),
(12, 'Adminovo ime', 'Adminovo prezime', 'admin', '$2y$10$z3PrxvgqNgZzDSjMulp6p.dE1GR4LNBI9tAe1.sUe2UKMcOUNX1be', 1),
(13, 'Ime', 'Prezime', 'runjak', '$2y$10$ZfK5sPU6LXpPDJgX3dMmceoAk07py5BKB0Ziy3WydJlCP4fGsWlgO', 0),
(14, 'neko ime', 'neko prezime', 'username123', '$2y$10$agpq0aLeZ3LYDpFBkboemueor2ViwsK1ZyU5qFTY9zLCvH0vaqrfS', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vijesti`
--

CREATE TABLE `vijesti` (
  `id` int(11) NOT NULL,
  `datum` varchar(32) CHARACTER SET utf8 COLLATE utf8_croatian_ci NOT NULL,
  `naslov` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `sazetak` text CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `tekst` longtext CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `kategorija` varchar(64) CHARACTER SET latin2 COLLATE latin2_croatian_ci NOT NULL,
  `arhiva` tinyint(1) NOT NULL,
  `filename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vijesti`
--

INSERT INTO `vijesti` (`id`, `datum`, `naslov`, `sazetak`, `tekst`, `kategorija`, `arhiva`, `filename`) VALUES
(102, '25.06.2023.', 'Lorem ipsum dolor sit amet - promjena', '                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar.                         ', '                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tellus tellus, imperdiet eget scelerisque quis, sagittis a enim. Mauris malesuada id risus at congue. Vestibulum eleifend sodales nibh a imperdiet. Sed quis arcu tempus, blandit massa eu, pellentesque lacus. Morbi nec dui id leo faucibus condimentum. Ut quis arcu non turpis pretium dapibus. Donec nulla augue, rhoncus non arcu vel, pretium porttitor sem.            ', 'Kultura', 0, 'slika-pwa.jpg'),
(103, '25.06.2023.', '  Lorem ipsum dolor sit amet.', '                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer pulvinar.             ', '                \r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse tellus tellus, imperdiet eget scelerisque quis, sagittis a enim. Mauris malesuada id risus at congue. Vestibulum eleifend sodales nibh a imperdiet. Sed quis arcu tempus, blandit massa eu, pellentesque lacus. Morbi nec dui id leo faucibus condimentum. Ut quis arcu non turpis pretium dapibus. Donec nulla augue, rhoncus non arcu vel, pretium porttitor sem.\r\n\r\nDonec eget lorem mi. Vivamus fermentum fermentum ex, in condimentum risus vulputate quis. In quis tristique eros. Pellentesque vitae quam congue, laoreet elit a, bibendum dolor. Aliquam ullamcorper condimentum sapien et viverra. Nulla scelerisque felis vitae magna rhoncus venenatis. In eros felis, tincidunt at efficitur eget, convallis et metus. Nunc pharetra vulputate lorem in tristique. Cras tristique, massa eu pulvinar accumsan, urna dui consequat justo, eu ornare nulla augue vitae ipsum. Duis eleifend dui nulla, sed mattis quam porta ac. Cras aliquet nec dui nec accumsan.\r\n\r\nInteger lacinia, lacus ut dictum aliquet, lectus ex malesuada magna, vel consequat neque lorem vel nulla. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nulla elementum lobortis odio, sed hendrerit tellus pulvinar in. Vestibulum dictum a ipsum ut lobortis. Nam ut rhoncus enim, eget laoreet enim. Morbi quis libero in sapien scelerisque volutpat ut eu nulla. Aliquam lacinia pretium odio, sit amet ultricies magna dapibus sed. Ut mi turpis, facilisis a porta vitae, tempus non tellus. Morbi pretium quam sed vulputate feugiat. Donec eu neque nec sem rutrum cursus.             ', 'Kultura', 0, 'slika-pwa2.jpg'),
(104, '25.06.2023.', '  Lorem ipsum dolor. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque risus nisi, malesuada id aliquam at, tincidunt non ante. Fusce scelerisque', 'Kultura', 0, 'slika-pwa3.jpg'),
(105, '25.06.2023.', 'Lorem ipsum', 'Lorem ipsum dolor sit', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum eget dolor quis sapien placerat pulvinar vitae non lorem. Aenean sollicitudin volutpat ex vel varius. Nullam at velit fermentum, porta odio. ', 'Sport', 1, 'pwa-sport.jpeg'),
(106, '25.06.2023.', 'Lorem ipsum. ', 'Lorem ipsum dolor sit amet. ', '\r\n\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vehicula eleifend turpis. Nulla at orci ut ipsum ornare imperdiet. Vestibulum aliquam pretium mi, a euismod leo volutpat at. Phasellus finibus nisi vel arcu pellentesque, a sagittis urna imperdiet. Quisque eleifend ex venenatis nunc ultrices feugiat ac quis nulla. Morbi velit mi, rhoncus eget nibh sit amet, rhoncus sagittis ipsum. Nam consectetur mi sem, vitae mattis risus ullamcorper eget. Aliquam at lacinia ipsum. Aliquam placerat sapien sit amet felis mollis, ac pharetra velit interdum. Proin posuere pellentesque ipsum, non sagittis lectus ornare nec. Vestibulum dignissim ex quis lacus hendrerit vestibulum. Aenean egestas vehicula dui, at accumsan tellus varius nec. Phasellus scelerisque diam at ullamcorper egestas.\r\n\r\nOrci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam dui felis, sodales a dapibus sit amet, luctus vel ante. Nulla a justo metus. Aliquam tempus a lacus vel porttitor. Cras eu dapibus ante. Pellentesque eros magna, vehicula vitae ligula in, sodales aliquet neque. Sed eu volutpat urna. Aliquam erat volutpat. Ut quis pretium erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque vestibulum leo sed enim ultricies venenatis. Integer fermentum cursus libero vel auctor. Curabitur lobortis tristique facilisis. Mauris finibus, turpis quis congue sodales, augue est vehicula justo, in porta lorem sem eget velit. Pellentesque pellentesque consequat urna, et pulvinar tortor efficitur aliquam. ', 'Sport', 0, 'pwa-sport2.jpeg'),
(107, '25.06.2023.', 'Lorem', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam dui felis, sodales a dapibus sit amet, luctus vel ante. Nulla a justo metus. Aliquam tempus a lacus vel porttitor. Cras eu dapibus ante. Pellentesque eros magna, vehicula vitae ligula in, sodales aliquet neque. Sed eu volutpat urna. Aliquam erat volutpat. Ut quis pretium erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Quisque vestibulum leo sed enim ultricies venenatis. Integer fermentum cursus libero vel auctor. Curabitur lobortis tristique facilisis. Mauris finibus, turpis quis congue sodales, augue est vehicula justo, in porta lorem sem eget velit. Pellentesque pellentesque consequat urna, et pulvinar tortor efficitur aliquam.', 'Sport', 0, 'pwa-sport3.jpg'),
(108, '25.06.2023.', 'Lorem ipsum dolor sit amet', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vehicula eleifend turpis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam vehicula eleifend turpis. Nulla at orci ut ipsum ornare imperdiet. Vestibulum aliquam pretium mi, a euismod leo volutpat at. Phasellus finibus nisi vel arcu pellentesque, a sagittis urna imperdiet. Quisque eleifend ex venenatis nunc ultrices feugiat ac quis nulla. Morbi velit mi, rhoncus eget nibh sit amet, rhoncus sagittis ipsum. Nam consectetur mi sem, vitae mattis risus ullamcorper eget. Aliquam at lacinia ipsum. Aliquam placerat sapien sit amet felis mollis, ac pharetra velit interdum. Proin posuere pellentesque ipsum, non sagittis lectus ornare nec. Vestibulum dignissim ex quis lacus hendrerit vestibulum. Aenean egestas vehicula dui, at accumsan tellus varius nec. Phasellus scelerisque diam at ullamcorper egestas. ', 'Sport', 0, 'pwa-sport4.jpg'),
(109, '25.06.2023.', 'Neka vijest', 'Ovdje piše kratki sadržaj vijesti.', 'Sadržaj vijesti Sadržaj vijesti Sadržaj vijesti Sadržaj vijesti Sadržaj vijesti', 'Sport', 0, 'pwa-sport5.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `korisnik`
--
ALTER TABLE `korisnik`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `korisnicko_ime` (`korisnicko_ime`);

--
-- Indexes for table `vijesti`
--
ALTER TABLE `vijesti`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `korisnik`
--
ALTER TABLE `korisnik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vijesti`
--
ALTER TABLE `vijesti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
