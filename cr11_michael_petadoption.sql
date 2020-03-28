-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 28. Mrz 2020 um 16:57
-- Server-Version: 10.4.11-MariaDB
-- PHP-Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `cr11_michael_petadoption`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `animals`
--

CREATE TABLE `animals` (
  `id` int(7) NOT NULL,
  `name` varchar(40) NOT NULL,
  `age` int(3) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `zip` int(4) NOT NULL,
  `city` varchar(40) NOT NULL,
  `address` varchar(40) NOT NULL,
  `hobbies` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `adoption_ready_date` date DEFAULT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `animals`
--

INSERT INTO `animals` (`id`, `name`, `age`, `image`, `description`, `zip`, `city`, `address`, `hobbies`, `website`, `adoption_ready_date`, `type`) VALUES
(3, 'Iggy', 3, 'https://upload.wikimedia.org/wikipedia/commons/8/8e/Eagle_on_roots_-_crop_3_%28430008061%29.jpg', 'Its an Eagle', 3400, 'Klosterneuburg', 'Käferkreuzgasse 9', '', 'https://de.wikipedia.org/wiki/Eagle', '0000-00-00', 'small'),
(7, 'Phil', 4, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8e/Falke1.jpg/220px-Falke1.jpg', 'Its a falcon', 1010, 'vienna', 'scheissgasse 8', '', 'https://de.wikipedia.org/wiki/Falken', '0000-00-00', 'small'),
(8, 'Sonic', 5, 'https://upload.wikimedia.org/wikipedia/commons/7/72/Igel.JPG', 'Its a hedgehog', 1050, 'vienna', 'strasse 3', '', 'https://de.wikipedia.org/wiki/Hedgehog', '0000-00-00', 'small'),
(9, 'Helmut', 7, 'https://www.zooplus.de/magazin/wp-content/uploads/2018/08/hamster-rasseportrait-768x512.jpg', 'Its a hamster', 1090, 'Vienna', 'Street 15', '', 'https://de.wikipedia.org/wiki/Hamster', '0000-00-00', 'small'),
(10, 'Stampy', 15, 'https://i.redd.it/x1immyjfqecz.jpg', 'Its an elephant', 1220, 'Vienna', 'street 8', 'stamping', 'https://de.wikipedia.org/wiki/Elephant', '0000-00-00', 'large'),
(11, 'Dolly', 10, 'https://dictionary.cambridge.org/de/images/thumb/dolphi_noun_002_11224.jpg?version=5.0.74', 'Its a dolphin', 3400, 'Klosterneuburg', 'road 1', 'swimming', 'https://de.wikipedia.org/wiki/Dolphin', '2020-04-01', 'large'),
(12, 'Kate', 10, 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg', 'Its a cat', 5020, 'Salzburg', 'Road 56', 'breaking stuff', 'https://de.wikipedia.org/wiki/City_Airport_Train', '2020-04-16', 'small'),
(13, 'dog', 12, 'https://tractive.com/static/images/menu/Tractive-DOG-navigation.jpg', 'Its a dog', 1220, 'Vienna', 'Was 8', 'playing', 'https://de.wikipedia.org/wiki/Dog', '2020-04-02', 'small'),
(14, 'Rex', 120, 'https://cdn.babymarkt.com/babymarkt/img/173880/900/schleich-dinosaurier-tyrannosaurus-rex-14525-a053467.jpg', 'Its a Tyrannosaurus rex', 5020, 'Salzburg', 'Road 69', 'archeology', 'https://de.wikipedia.org/wiki/Tyrannosaurus', '0000-00-00', 'large'),
(15, 'Willy', 50, 'https://desenio.at/bilder/artiklar/zoom/2541_1.jpg', 'Its a blue whale', 1230, 'Vienna', 'river 8', 'swimming', 'https://de.wikipedia.org/wiki/Blue_Whale_Challenge', '0000-00-00', 'large'),
(16, 'Amalthea', 30, 'https://investrends.ch/site/assets/files/24859/einhorn_shutterstock_307341374.960x533.jpg', 'Be carefull, its the last one', 3400, 'Klosterneuburg', 'imaginaryroad 8', 'challenging the red bull', 'https://de.wikipedia.org/wiki/Einhorn_(Finanzen)', '0000-00-00', 'large'),
(17, 'Hyde', 55, 'https://d3tvpxjako9ywy.cloudfront.net/blog/content/uploads/2016/10/greek-pottery-hydra.jpeg?av=75feb3cc0ad45d5dd8325509d710f956', 'Its a hydra', 5200, 'Salzburg', 'greekroad 99', 'growing heads', 'https://de.wikipedia.org/wiki/Hydra', '0000-00-00', 'large');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE `users` (
  `userId` int(7) NOT NULL,
  `userName` varchar(40) NOT NULL,
  `userEmail` varchar(40) NOT NULL,
  `userPass` varchar(255) NOT NULL,
  `status` enum('user','admin') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`userId`, `userName`, `userEmail`, `userPass`, `status`) VALUES
(1, 'michael', 'michael.schano@gmx.at', '9e8132007787952b49d8ddf729675f726f1af4f0e528aaa757fcc224e305f0ba', 'admin'),
(2, 'User', 'user@user.com', '8d969eef6ecad3c29a3a629280e686cf0c3f5d5a86aff3ca12020c923adc6c92', 'user');

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `animals`
--
ALTER TABLE `animals`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `userEmail` (`userEmail`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `animals`
--
ALTER TABLE `animals`
  MODIFY `id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT für Tabelle `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
