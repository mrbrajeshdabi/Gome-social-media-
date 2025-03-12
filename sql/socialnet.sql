-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2025 at 12:19 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialnet`
--

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_unique_id` int(11) DEFAULT NULL,
  `post_pic` varchar(100) DEFAULT NULL,
  `post_status` text DEFAULT NULL,
  `post_like` int(11) DEFAULT 0,
  `post_unlike` int(11) DEFAULT 0,
  `post_song` text DEFAULT NULL,
  `post_date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `post_unique_id`, `post_pic`, `post_status`, `post_like`, `post_unlike`, `post_song`, `post_date`) VALUES
(49, 586138910, '304539-2880x1800-desktop-hd-captain-america-background-image.jpg', 'I don\'t like bullies; I don\'t care where they\'re from', 0, 0, 'https://dl.prokerala.com/downloads/ringtones/files/mp3/rolex-bgm-57457-57488.mp3', '2025-03-11'),
(50, 586138910, 'pic.jpg', 'I\'m just a kid from Brooklyn', 0, 0, 'https://dl.prokerala.com/downloads/ringtones/files/mp3/downloadfile-0-65913.mp3', '2025-03-11'),
(51, 1709206857, 'short-quotes-swl-231117-04-352f6b.webp', '', 0, 0, 'https://www.ringtonesfx.com/wp-content/uploads/11/Aisa-Dekha-Nahi-Khubsurat-Koi-Hindi-Love-Song-Ringtone.mp3', '2025-03-11');

-- --------------------------------------------------------

--
-- Table structure for table `requestfrd`
--

CREATE TABLE `requestfrd` (
  `id` int(255) NOT NULL,
  `sendrequestid` int(255) DEFAULT NULL,
  `receiverequestid` int(255) DEFAULT NULL,
  `requestmsg` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `requestfrd`
--

INSERT INTO `requestfrd` (`id`, `sendrequestid`, `receiverequestid`, `requestmsg`) VALUES
(216, 1197611048, 1246844712, 'request_send'),
(233, 1709206857, 1420453805, 'request_send');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(11) NOT NULL,
  `songname` varchar(50) DEFAULT NULL,
  `songurl` varchar(200) DEFAULT NULL,
  `apikey` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `songname`, `songurl`, `apikey`) VALUES
(1, 'Rolex', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/rolex-bgm-57457-57488.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(2, 'Yeda Young Bgm', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/yeda-yung-instrumental-66059.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(3, 'Ham Jese Ji Rhe', 'https://www.ringtonesfx.com/wp-content/uploads/2/Hum-Jaise-Jee-Rahe-Hai-Koi-Jee-Ke-To-Bataye-Female-Ringtone.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(4, 'Mera Wala Sardar', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/download-ringtone-10766-45353.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(5, 'Ham Tere Bin', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/tum-hi-ho-instru-1319-66052.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(6, 'Tumhe Yuhi Chahengye', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/new-romantic-ringtone-2024-new-ringtonehindi-ringtone-love-story-ringtone-b-65903.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(7, 'Sanam Teri Kasam', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/sanam-teri-kasam-ringtone-instrumental-download-mp3-mobcup-com-co-65910.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(8, 'Ayega Ayega', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/downloadfile-0-65913.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(9, 'Me Chillam Ke Sutte', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/main-door-mohabbat-ishq-ta-su-chilam-ke-sutte-raj-mawar-haryanvi-65934.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(10, 'Har Har Mahadev', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/aud-20231222-wa0000-62879-1-62986-3-65951.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(11, 'Har Din Tujhe Chahunga', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/haidilyemeraarijitgsinghwwwwapbosscomringtone-11264-65955.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(12, 'Vande Matram', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/vande-mataram-a-r-rahman-ringtone-download-mobcup-com-co-65965.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(13, 'Tu Ishq He To Me Baaho Me Hu', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/tu-hain-toh-main-hoon-65718-3-65998.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(14, 'Ham Katha Sunate', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/hum-katha-sunate-56711-66016.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(15, 'Kaithi Special', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/kaithi-bgm-62067.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(16, 'Vikram Vedha', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/vikramvedharingtone-36267.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(17, 'Me Jha Rahu', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/03mainjahanrahoonwwwdownloadmingcomringtone-22564.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(18, 'Meri Wali Sardani', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/mera-wali-sardarni-ringtone-jag-new-punjabi-latest-mp3-128k-45949.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(19, 'Me Tom And Jerry', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/tom-and-jerry-satbir-aujla-46766.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(20, 'Tune To Pal Bhar Me', 'https://www.ringtonesfx.com/wp-content/uploads/9/Tune-Bhi-Pal-Bhar-Mein-Chori-Kiya-Re-Jiya-More-Piya-Ringtone.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(21, 'O re Priya', 'https://www.ringtonesfx.com/wp-content/uploads/11/O-Re-Piya-Hindi-Song-Ringtone.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(22, 'Le Chal Mujhe Kahi Dur', 'https://www.ringtonesfx.com/wp-content/uploads/12/Piya-O-Re-Piya-Ringtone.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(23, 'Najre Bole Duniya Tole', 'https://www.ringtonesfx.com/wp-content/uploads/6/Nazre-Bole-Duniya-Tole-Dil-Ki-Zubaan-O-Re-Piya-Ringtone.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(24, 'O Love Rey', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/love-you-oye-49307.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(25, 'Chal Balliya Hoto', 'https://ringtonesnew.com/wp-content/uploads/2022/03/Chaand-Baaliyan-Hindi-Aditya.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(26, 'Me Dhoodne Ko Jamane', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/maindhoondnekozamaanemeindjmazainforingtone-2504.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(27, 'Mene Payal He Chankai', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/aud-20180201-wa0054-47349.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(28, 'Esa Dekha Nhi Khoobsurat Koi', 'https://www.ringtonesfx.com/wp-content/uploads/11/Aisa-Dekha-Nahi-Khubsurat-Koi-Hindi-Love-Song-Ringtone.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(29, 'New World', 'https://pagalworldringtones.click/ringtonedownload/best-world-ringtone-instrumental-ringtone-new-ringtone-english-instrumental-ringtone1140048139.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(30, 'Spider Man', 'https://pagalworldringtones.click/ringtonedownloadchv1/spider-man-no-way-home-bgm-l-bgm-club69863230.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(31, 'Iron Man', 'https://pagalworldringtones.click/ringtonedownloadv4/amplifier-ft-iron-man-iron-man-whatsapp-status-hd-tony-stark-shorts-avengers-ironman2083297823.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(32, 'Captain Jack Sparrow', 'https://pagalworldringtones.click/ringtonedownloadv2/gasolina-ft-two-legends-edit-ironman-edit-caption-jack-sparrow-edit-gasolina-song-status1805609857.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(33, 'Sidhu Moosewala', 'https://pagalworldringtones.click/ringtonedownloadv2/410-song-ringtone-410-song-ringtone-sidhu-moose-wala-410-ringtone343847219.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(35, 'Masumiyat Lut Si Gayi', 'https://www.ringtonesfx.com/wp-content/uploads/2/Masumiyat-Lut-Ji-Gayi-Hasa-Udju-Chehre-Ton-Ringtone.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(37, 'Surili Ankhiyo Wali', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/surili-akhiyon-wale-instrumental-bgm-romantic-veer-59244.mp3', 'efe2ccee3a5a7c6f949385cefc143160'),
(38, 'Kuch Soch Ke ', 'https://dl.prokerala.com/downloads/ringtones/files/mp3/tera-ghata-ringtone-download-free-1-46156.mp3', 'efe2ccee3a5a7c6f949385cefc143160');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `unique_id` int(100) DEFAULT NULL,
  `profilepic` text DEFAULT 'NULL',
  `username` varchar(100) DEFAULT NULL,
  `fullname` varchar(100) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` varchar(50) DEFAULT '0',
  `registerdate` varchar(255) DEFAULT NULL,
  `updatedate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `unique_id`, `profilepic`, `username`, `fullname`, `email`, `phone`, `password`, `status`, `registerdate`, `updatedate`) VALUES
(20, 1709206857, 'data:image/jpeg;base64,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', 'devloper_00', 'Mr Devloper', 'devloper@gmail.com', '0123456789', '1234', '0', '2025-03-11', '2025-03-11'),
(21, 1266046301, 'data:image/jpeg;base64,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', 'ironman_34', 'Iron Man', 'iron@gmail.com', '1111111111', '1234', '0', '2025-03-11', '2025-03-11'),
(22, 586138910, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBwgHBgkIBwgKCgkLDRYPDQwMDRsUFRAWIB0iIiAdHx8kKDQsJCYxJx8fLT0tMTU3Ojo6Iys/RD84QzQ5OjcBCgoKDQwNGg8PGjclHyU3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3Nzc3N//AABEIAJQAlAMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAFAAIDBAYBBwj/xAA5EAACAQMCBAQDBwIFBQAAAAABAgMABBESIQUxQVEGEyJhcYGRFDKhscHR8BUjM1JigvFCQ3Ky4f/EABkBAAMBAQEAAAAAAAAAAAAAAAECAwAEBf/EACERAAICAgICAwEAAAAAAAAAAAABAhEDIRIxE0EEMlEi/9oADAMBAAIRAxEAPwDzNRThXcV3FOTEBXa5XM71gkgNOHKmA09CSwVd2Y4GeVYw9VJBODgcz+lWYeDtdQzzFdJVCfW2MexPer/DLFrp0xnyx9xcbZHNj3ojfyx26L5pUcPhJyRzlcc/9qnPxbHQCkbGSMDNaiOMd9wfYg4IofIpBo7c/wByeaUjQJXLCP8Ay9h8cc6FXSYJ2+XaqegFMFlIIOMdquQ8RniGNbMv+UnaquN6afSc0FJroLSZobG9S59GQJO1Xtu1ZGMtG4dG0EHOrtWmtLlbqASA5I2bHehYtE+ajanMd6bigahuaaWpzDaoG51rNQ7X70qjrlCw0PrhqQIT0rvl45iiAhNcFTFKaseTWNQzqDjPQURs7R2uxFgg4wxHbr+v4U/glolzxeyhkG0k6L+NXkkWLiN6dxLkgr29bfstK5bodR1YWSQR2arbv5bSz+SZBuyLoLDSO/pfHvg9KA8Uu1u5VEYAt7b0RjoxHL/aOXxz7ZvW90xiuY0bDFQ4ON8jnj/aWFARLpAjYf4foK6eRH8/nKskFjZIHb1rnPQdT8qE37rC/lOPWNivUUbvb1rLh7NGuJZchSwzpGN2q94cFreWosZYoo1ECyM5hDtMzDJZmPuSPlQlPih8ePyOjEEgnIpp5Ua8UcHPCblfL3t5d0PY9qB5rRkpK0LODg6Y5Vyp98/gM1f4HKYrko2yyDb2ND1k0bEE/Oi0PHUhUAcMtTjqSc1SPH2I7/AoKRNVeHXzXzSZgCAbjG4+FXSlLZiA1GRvVnyz2pjIR0oWEhxSqTTSoGJ1TFd0VKBXflTWCiEoKbo7VZ0+1IJ7ULNQ/hj/AGfiFrP0jlVvoan8YxLw/wAVzto0pONaODzVsEftUAjPPtvRrxBEvFfD1txJh/e4diKY8zoOdJ+oI/GpztSUisNpoCQRSyOCrMhxjK7GpZOHWdqPMlnlSQtqLNIzFvlnrVAcWlVFFvEzkjc6cD6k/pU8DpIjSSK3nP8AeZjuPZapaEprsFcbcTyGMOWEShVLdVYDcfzpS4UJbnhv9tjrtQQ2hsEpnOPeoOMSKb4xIc6Iwkm2QCCTpB9s8/2qTgEy2d0HuUzbSnSaTIrWi2B1K2aHxrbCLw9w0H774Khjk7isCc53x7Vs/GXFI7+aM264giTRCp74Go/AcqyOgA6uYUfjS4lUdjZ3ynoYY2G5FcK9xj40Yt7M+WJpyEUjO4qC8aHT6Uz2PKmjIk4JKwn4cZJLVolAWSNvUO/Y0TkjwKxsF1NA5a3YxsRgsvPFMlllJyZZCe+o01EzXHAJHUc6jO5oBwedlvlDEnzAV3PXpWiAoPQRmKVSaaVLYaLGk0tNTEVwims1DAPanYFLFdAJrWCh6jIxVuG4mhtLy3gO11EY2B5Z5g/HI/Oq8MZdwMgDqTWmt/CbzRo8fE7QhhkBsj8K1chlo80t5r2G6ht7qMiGB1R1Rd2zy+POp7u8EdzN5S/dcgA7YPYVuOPeEeKRrDJaG3utO5eGTSUYEac5G9Ze/wCCXlldxm9tFiWdt5BJqJY+1K2oFIxlkQM4Lwf+oyMJ8qpOdjuD8av3/CZeHzxQyHzI5SEikxjB7H3961fCOD/Z4RgZwOtM8Swxy8JuPOIQIuoP1UioLK3I6JYUomC4gHnaaeGJILePIiGfvKNhsepHah1qhkmRAPu779TUEjfdYk+nuaK2EGi4jLDaOMat+ZIyf57V1JHE2yS61FC0hzgfIUIlVnJHL9KKX0yAlGbLDIx23xv+PaqGqWQehNI5nV160wCuE0jP1rjjOw3PsKsrGox5r+o/9IH/ADRCz88emC2RAcYaXn+G/wCNFKwPXYEidopVYDDKcjNbS2QzwJLyDgHahVxaXTahMbbI3KsvMfMmpLLiMvD1WKaJHhz6TGdx+9DJjddGjONhf7P8aVT211DcxeZFKhXON9iPkaVQplNEvk0vIoqIKcttvS8h+IHaHboPc1NDBGGUt6znGOQ+gqTiCaZwP9IrsI3Ao2CgE91dSzyJ58kaK5XTGoVcg8ttzsDzoT4g8yHi8qpJIBgHZiOlE2ybi6TQDonfcn3OPzNVPFCY4uT/AKF/KnBRD4e4xNwni9veM0kqRt6kLkhgRij8XGI+IeKBe3jtNaHAVWyAu/PFY/8A6gaIWVJKKe2UjNxVI9OPEg/EZbSBGZUAzIdlUnkPc1m/Gk7xcLe3bIaZwvxHM1DYXLpkqBqJG7b71T8X8QiubqCJdhDEdeSQNZAP4frUYwakdE8qlAxtwoB056b+2aKmZvKk8sMxI3I5gfT3pnC+GG+bzZtQiJJ2O5xz36CrHFbwW0RsbKTKE7kY9P8ApH7muxM4GvYNDIo81zqkbffkufzNT2ttNfXCwQA+Y5JAwNWOvwAqiZCHCQnU52BI5fCtXwK3HD4Ip/8AuySaSx7cv1ooANhtok4d5yaxOJCsjFuQoxw0TX0oezgjlmwH8srk8vvAZ3GRuN+dUJLcxz3lvpYBxrUe4+OT9KFjV9kYhmDwuQCpwcH4e4prfo0aTs2r+MONWJMKzaCuBh4VA25jBFZzi3Fn4vNJeXENumTgeUoXJ76RQa5keRIZizFtO5JJyRTpZCXEZJwxz97bBHbHv3oqUvbGnJSWlRLPElw+uFyBjDY70qHMzg+kkd6VbkSo9pEVPEJ7VfSD2qVYB2rzbO+jK8Zj0XEeeq7fWoIsdaKeJ4vLnt89VP50NjG2cZ+VWjtE2jPXKZv7sMGwZWBwcYyN96r+JwTxFSesSmrHEHjXjVzC7IuqQE6zjbGf0qv4hIae2cHIa3Q56b1QQC4qzbtgjNVz8R9alhfTyBPzFYActJiMb71ee34bxCIrcI6z74kRuY9x07bUDguGHOJvqKvW91E7qudJ1YKsd6zQ0eyvdSXJeSOF/KtkAVEA7DG3t8fyrNXxHmlEGkISoH5k++a08zamCdNQ+W/Ks9cqv9Wui3+HHNIx+TGmjsGRUPsbQxuHkGW6e1au0QtZvGcZU68dx126/wA6UK4XA7RPLNu7EYHQe1aOyhxGMrkEb7U5IF3enVFdYXSNmzj8eny60Nmtwt3cRr6hKp7Hcbjl16YHetNcWY8lo41XSd0wTqQ9x05UJ4jajXbPGSzJ97zMZAHRf350bAZwqTDMh5xuGG3Q7H9PrUMn+FE557g+2k7D6GrV1D5bSlDjWpBAG3PP6Ch7H0gA7A5xms2YdP6ZW3xnfFKmHc5JyaVAJ9FKgrjOq0wybHFVjKC/OvOO4i4vYreokzzpDFApLsQSRy5AdPfkK7b8L4ZbIjaHuSwzljpXlnkOlWkk04INMVo4l9EEWrOQzjXp+CnYfSlbkCkULvg9pxJGntIQQT95RmIfF2wo+tYnjfCZWvTGto7CMadUeWU/A9q3F7O0rBriZ5GHLUc4+HaqcsqRAcvrVISkjOCMA/B2TJkhkjAGSZPSAPiapzQwwsEVjqI6b1ueJTXd7Z3MVlbiXzRGk5ZgqoFVzqLHYDC75PasNZN9pv41maPSgyPLbOSN/pXRG2rItKy9bcK4gy6hE4XucCp2s7u1DG4Lg6NS7c/fNGG4xNqHlwJrJAXTnOeXPnXeIoPLk1sdbHBJ2z227b7fHPwCcm9jVCtGbdsSKSdtQOT2oPIB/WrqOQbGd2IPUZJFFZWHl5bB23x1/m9Db9vK4pFcnB80AMRy1AYNVgTyhIXIhAUxsyhsko+k1cteO2kQAN3NGe0sIYD586ETN6DjDEnAp9rw6ObMkynSMYXv71SVInBOTpGhTjlrICBfWj+zhkqrxO9gWDzPMtyDttMG+gG5qibOxcBf7fLIJNRvw6zI1Ig27Gp80dL+K/0EXV4blyFBcfQfSoFtpjvowKOEW0OQpQDPMD27/Gq011F/mU+wPLbFbkweCMe2DvsknelVg3UWedKtbBwgfQj8KkhtDKx3xWcNwIrkqcU6+8W3k8DRkhQdjpFZmW5Z3J1HNedjjK9nRJqjRG/0SEnBWmz8YiCekam7VmmmY82NNMm1W4E+QSuuJGYYVcVVlvHdcEdMVTL9q5qp1EVyCVjAt7b3cU9wkEA0SSlsnYahso3Y5PKsVYiKPjB8oyMPVguME/KtnwJbdruaS5ZzGsIJjQepzrUYz0+O/wBaxU88X9Vdre3EI1tp0uWx7b86pFehJM3HhaxN1dfavViGQAEDOk4ySfw+tVuKS67mVCwYqBy3x6Qef8+mKPeBoZY/Ck3EZdISaWQx9DhMKSfbIPL3rKcQlKXmPUQGZWyuMjJ5DtjArQ3KjN/yCZ/TJKuNtW2BnY/z/mh15H51uy7a09SYOc457/D8qLX6rmOQMGYelh+R/n/yh8hwofVuvXt9f57VRaFe0DrafLIHOwArTTzraxRrHpMjABARkA45msrexiOYsgxG24x0PajFo5u44ZDnKpp2HUc6Mt9hxS4JksEk6yN/dfUGySTsf0qa6Mk6KFSCNlzqkRMM3y5dKh1eTIH6nA74NTIPT6iHIG9NxQnkn+g64tVUandnPv8ApVCTTr9OOXQVbu5GeUjGw6VXcgjc/KjQjbfZARvypU1m32FKsA9AL7Go9W9Qg07NctHTY/VvSLUyugUaAN1V0V0JnpSYFQSoJOOQGaxi5wK4ROJyK0CzYhGlGbC6g6nJ7jblWd4n9tbjrfbIShMxyPKCDfPTFaDwl9piv3mhUmd1YRjTkg4znHfIrO+I7e5g49MLi6WWbzjrIn8xgfcg86K7Az07w1II/BdrBFkmH7SuFHI+br+RwfxrB8Q1JdS4x6sxvpOrGNhv/wCOn55oz4F4hK/2uzlIaFUMgBGdzhTv2wAKEcWUJcPHnnsxxgHH3duxUj4kGtj+5pfUqnS0OWUszjRjlg9P3+dCGJRgrDflqPX+fKiGvEZM6hVdSJM52OM9OeeVD5JHmXzHIMhJI23Ge/0qr0LC3pEUqqUYPyOcbfdqvY3klpJoO8RYF1PL4ipyrHbOF7VGYlG+N6Xki6+NMKXUkIk1eaugjI0mopL3+2+gZkYadR2AqiFFPUVubCvjo6jtqy6gr1xUE6sx2GB2qamNyrc2Z4Y0UzE2a7Ux51yjyZLxI19PWlSqYB1PUUqVAJ2Y6I8jnWo8AxpLBxGaRAzjy4wT0B1ZpUqnl6KYvsUPG6DhSTXFiWilwFLKxGQQc15zNIZeLIWA3lTIA9x+9dpUcPRTOlZu+FKLLxHf2kAHlraPICRvkLqH4ih3HokS9liA2AZsncnScj/2I+FKlTxIzQEI81FdySZFBb6VDIgBOBXaVBvZ7Px4RUNIhYCmFRSpUqEl2NwKWKVKqEpoVRtXKVYlPoiPOuUqVY5j/9k=', 'Captain_America', 'Captain America', 'america@gmail.com', '2222222222', '1234', '0', '2025-03-11', '2025-03-11'),
(23, 1687474104, 'NULL', 'one_blue_5', 'Blue one', 'blue@gmail.com', '3333333333', '1234', '0', '2025-03-11', '2025-03-11'),
(24, 1420453805, 'NULL', 'Dr_strange', 'Dr Strange', 'strange@gmail.com', '4444444444', '1234', '0', '2025-03-11', '2025-03-11'),
(25, 1471504358, 'NULL', 'Hulk_vs_Thor', 'Dr Hulk', 'thorhulk@gmail.com', '5555555555', '1234', '0', '2025-03-11', '2025-03-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `requestfrd`
--
ALTER TABLE `requestfrd`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
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
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `requestfrd`
--
ALTER TABLE `requestfrd`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
