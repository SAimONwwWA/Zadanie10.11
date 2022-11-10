
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gry`
--

CREATE TABLE `gry` (
  `id` int(10) UNSIGNED NOT NULL,
  `gatunki_id` int(10) UNSIGNED NOT NULL,
  `tytul` text,
  `rok` year(4) DEFAULT NULL,
  `ocena` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `gry`
--

INSERT INTO `gry` (`id`, `gatunki_id`, `tytul`, `rok`, `ocena`) VALUES
(1, 1, 'Minecraft', 2007, 4),
(2, 2, 'God of War: Ragnarok', 2022, 5),
(3, 2, 'Grand Theft Auto 5', 2013, 5),
(4, 1, 'Assassin’s Creed Valhalla', 2020, 4),
(5, 4, 'Resident Evil VII: Biohazard', 2017, 4),
(6, 5, 'FIFA21', 2020, 3),
(7, 1, 'Super Mario', 1981, 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `gatunki`
--

CREATE TABLE `gatunki` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `gatunki`
--

INSERT INTO `gatunki` (`id`, `nazwa`) VALUES
(1, 'Przygodowe'),
(2, 'Fabularne'),
(3, 'Sportowe'),
(4, 'Horror'),
(5, 'Symulacyjne');

-- --------------------------------------------------------

--
-- Indexes for table `gry`
--
ALTER TABLE `gry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gatunki`
--
ALTER TABLE `gatunki`
  ADD PRIMARY KEY (`id`);


-- AUTO_INCREMENT dla tabeli `gry`
--
ALTER TABLE `gry`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT dla tabeli `gatunki`
--
ALTER TABLE `gatunki`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
