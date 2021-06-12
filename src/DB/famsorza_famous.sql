-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 12, 2021 at 06:18 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET global sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
SET session sql_mode='STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION';
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `famsorza_famous`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`) VALUES
(1, 'admin', 'root@gmail.com', '0123456789');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_general_ci NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE `mails` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `msg` text COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mails`
--

INSERT INTO `mails` (`id`, `name`, `email`, `msg`) VALUES
(5, 'ahmed', 'ahmed@gmail.com', 'this is a test message '),
(6, 'test ', 'test@gmail.com', 'my test message '),
(7, 'no-replydarbergealk@gmail.com', 'no-replydarbergealk@gmail.com', 'Hi!  famsocials.com \r\n \r\nDid yÐ¾u knÐ¾w thÐ°t it is pÐ¾ssiblÐµ tÐ¾ sÐµnd businÐµss Ð¾ffÐµr   lÐµgÐ°lly? \r\nWÐµ suggÐµsting Ð° nÐµw wÐ°y Ð¾f sÐµnding Ð°ppÐµÐ°l thrÐ¾ugh ÑÐ¾ntÐ°Ñt fÐ¾rms. SuÑh fÐ¾rms Ð°rÐµ lÐ¾ÑÐ°tÐµd Ð¾n mÐ°ny sitÐµs. \r\nWhÐµn suÑh mÐµssÐ°gÐµs Ð°rÐµ sÐµnt, nÐ¾ pÐµrsÐ¾nÐ°l dÐ°tÐ° is usÐµd, Ð°nd mÐµssÐ°gÐµs Ð°rÐµ sÐµnt tÐ¾ fÐ¾rms spÐµÑifiÑÐ°lly dÐµsignÐµd tÐ¾ rÐµÑÐµivÐµ mÐµssÐ°gÐµs Ð°nd Ð°ppÐµÐ°ls. \r\nÐ°lsÐ¾, mÐµssÐ°gÐµs sÐµnt thrÐ¾ugh ÑÐ¾ntÐ°Ñt FÐ¾rms dÐ¾ nÐ¾t gÐµt\nintÐ¾ spÐ°m bÐµÑÐ°usÐµ suÑh mÐµssÐ°gÐµs Ð°rÐµ ÑÐ¾nsidÐµrÐµd impÐ¾rtÐ°nt. \r\nWÐµ Ð¾ffÐµr yÐ¾u tÐ¾ tÐµst Ð¾ur sÐµrviÑÐµ fÐ¾r frÐµÐµ. WÐµ will sÐµnd up tÐ¾ 50,000 mÐµssÐ°gÐµs fÐ¾r yÐ¾u. \r\nThÐµ ÑÐ¾st Ð¾f sÐµnding Ð¾nÐµ milliÐ¾n mÐµssÐ°gÐµs is 49 USD. \r\n \r\nThis mÐµssÐ°gÐµ is ÑrÐµÐ°tÐµd Ð°utÐ¾mÐ°tiÑÐ°lly. PlÐµÐ°sÐµ usÐµ thÐµ ÑÐ¾ntÐ°Ñt dÐµtÐ°ils bÐµlÐ¾w tÐ¾ ÑÐ¾ntÐ°Ñt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nWhatsApp - +375259112693'),
(8, 'atrixxtrix@gmail.com', 'atrixxtrix@gmail.com', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\nDrager, makrite, honeywell N95 \r\n3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, N95 masks \r\nFace shield \r\nNitrile/vinyl/latex gloves \r\nIsolation/surgical gown \r\nProtective PPE/Overalls \r\nIR non-contact thermometers/oral thermometers \r\nsanitizer dispenser \r\nCrystal tomato \r\n \r\nHuman body thermal cameras \r\nfor Body Temperature Measurement up to accuracy of\nÂ±0.1?C \r\n \r\nWhatsapp: +65 87695655 \r\nTelegram: cctv_hub \r\nSkype: cctvhub \r\nEmail: sales@thecctvhub.com \r\nW: http://www.thecctvhub.com/ \r\n \r\nIf you do not wish to receive email from us again, please let us know by replying. \r\n \r\nregards, \r\nCCTV HUB'),
(9, 'arthur@choose2help.org', 'arthur@choose2help.org', 'Hello, \r\n \r\nMy son born January 5th 2020 requires a serious head surgery due to the fusion of the cranial suture (craniosynostosis). I cannot afford to pay for the series of costly medical expenses. We only have 6 weeks to get everything organized before he undergoes the surgery. I have no other option but to ask you to help me help my son. We are gathering the funds through a verified charity: \r\n \r\nhttps://choose2help.org/arthur.html \r\n \r\n \r\nThank you for your support. Aneta.'),
(10, 'inquiries@techknowspace.com', 'inquiries@techknowspace.com', 'Hello, \r\n\r\nMy Name is Ash and I Run Tech Know Space https://techknowspace.com We are your Premium GO-TO Service Centre for All Logic Board &amp; Mainboard Repair\r\n\r\nWhen other shops say &quot;it can\'t be fixed&quot; WE CAN HELP!\r\n\r\nALL iPHONE 8 &amp; NEWER\r\nBACK GLASS REPAIR - 1 HOUR\r\n \r\nDevices We Repair\r\nAudio Devices Audio Device Repair\r\n\r\nBluetooth Speakers - Headphones - iPod Touch\r\nComputers All Computer Repair\r\n\r\nAll Brands &amp; Models - Custom Built - PC &amp; Mac\r\nGame\r\nConsoles Game Console Repair\r\n\r\nPS4 - XBox One - Nintendo Switch\r\nLaptops All Laptop Repair\r\n\r\nAll Brands &amp; Models - Acer, Asus, Compaq, Dell, HP, Lenovo, Toshiba\r\nMacBooks All MacBook Repair\r\n\r\nAll Series &amp; Models - Air, Classic, Pro\r\nPhones All Phone Repair\r\n\r\nAll Brands &amp; Models - BlackBerry, Huawei, iPhone, LG, OnePlus, Samsung, Sony\r\nSmart Watches Apple Watch Repair\r\n\r\nApple Watch - Samsung Gear - Moto 360\r\nTablets All Tablet Repair\r\n\r\nAll Brands &amp; Models -\r\niPad, Lenovo Yoga, Microsoft Surface, Samsung Tab\r\n\r\nDrone Repair\r\n\r\nCall us and tell us your issues today!\r\n\r\nToll Free: (888) 938-8893 \r\nhttps://techknowspace.com\r\n\r\nAsh Mansukhani\r\nash@techknowspace.com\r\nhttps://www.linkedin.com/company/the-techknow-space'),
(11, 'no-replyElods@gmail.com', 'no-replyElods@gmail.com', 'Good day! \r\n \r\nAs we have discussed on our website`s chat, here is the SEO pricing I was referring to \r\nhttps://googlealexarank.com/index.php/seo-packages/ \r\n \r\nAnd as promissed we will also include 1500 non-ugc backlinks as bonus, along with the plan. \r\n \r\nthank you \r\nTop SEO Expert'),
(12, 'ash@techknowspace.com', 'ash@techknowspace.com', 'Hello, \r\n\r\nMy Name is Ash and I Run Tech Know Space https://techknowspace.com We are your Premium GO-TO Service Centre for All Logic Board &amp; Mainboard Repair\r\n\r\nWhen other shops say &quot;it can\'t be fixed&quot; WE CAN HELP!\r\n\r\nALL iPHONE 8 &amp; NEWER\r\nBACK GLASS REPAIR - 1 HOUR\r\n \r\nDevices We Repair\r\nAudio Devices Audio Device Repair\r\n\r\nBluetooth Speakers - Headphones - iPod Touch\r\nComputers All Computer Repair\r\n\r\nAll Brands &amp; Models - Custom Built - PC &amp; Mac\r\nGame\nConsoles Game Console Repair\r\n\r\nPS4 - XBox One - Nintendo Switch\r\nLaptops All Laptop Repair\r\n\r\nAll Brands &amp; Models - Acer, Asus, Compaq, Dell, HP, Lenovo, Toshiba\r\nMacBooks All MacBook Repair\r\n\r\nAll Series &amp; Models - Air, Classic, Pro\r\nPhones All Phone Repair\r\n\r\nAll Brands &amp; Models - BlackBerry, Huawei, iPhone, LG, OnePlus, Samsung, Sony\r\nSmart Watches Apple Watch Repair\r\n\r\nApple Watch - Samsung Gear - Moto 360\r\nTablets All Tablet Repair\r\n\r\nAll Brands &amp; Models -\niPad, Lenovo Yoga, Microsoft Surface, Samsung Tab\r\n\r\nDrone Repair\r\n\r\nCall us and tell us your issues today!\r\n\r\nToll Free: (888) 938-8893 \r\nhttps://techknowspace.com\r\n\r\nAsh Mansukhani\r\nash@techknowspace.com\r\nhttps://twitter.com/techknowspace\r\nhttps://www.linkedin.com/company/the-techknow-space\r\n\r\n-------\r\n\r\nReport any unsolicited messages\n\r\n\r\nabuse@godaddy.com\r\nabuse@cloudflare.com\r\nhttps://supportcenter.godaddy.com/AbuseReport\r\nhttps://www.cloudflare.com/abuse/form\r\nhttps://forms.icann.org/en/resources/compliance/complaints/registrars/standards-complaint-form\r\n'),
(13, 'webgeeksgroup@gmail.com', 'webgeeksgroup@gmail.com', 'Hi, I stumbled onto your site yesterday and love the design (I\'ve been making websites since 2005). What platform is it made with? WordPress? \r\n \r\nThe only thing I noticed was that you appeared a bit low on Google search results and the home page took kind of long to load for me. \r\n \r\nI\'ve recently joined a private group for website owners. They send free periodic tips to get your site ranking higher and improve overallÂ performance. \r\n \r\nBasically, a free consulting service...\n\r\n \r\nIt has really helped me improve the two sites I run. Their advice got me to double my visitors and improve loading speed. \r\n \r\nIf you\'d like to join, I\'m sure they\'d love to have another passionate website owner in the group. \r\n \r\nJOIN THE PRIVATE WEBGEEKS GROUP HERE: \r\n \r\nhttps://webgeeksgroup.weebly.com/ \r\n \r\nIf you\'re not interested, no worries, best of luck on your site! \r\n \r\nAaron'),
(14, 'verajohn@fanclub.pm', 'verajohn@fanclub.pm', 'Hi,  this is Leonrad. \r\n \r\nToday I have good news for you, witch you can get $30 free bonus in a minute. \r\n \r\nAll you have to do is to register Vera &amp; John online casino link below and that\'s it. \r\nYou can register by free e-mail and no need kyc. \r\n \r\nRegistration form \r\nhttps://www3.samuraiclick.com/go?m=28940&amp;c=34&amp;b=926&amp;l=1 \r\n \r\nAfter you get your free bonus, play casino and make money! \r\nMany people sent me thanks mail because they won more than $2,000-$10,000 \r\nby\ntrusting me. \r\n \r\nDonâ€™t miss this chance and don\'t for get that your chance is just infront of you. \r\nGet free bonus and win your life! \r\n \r\n \r\n \r\nYou can with draw your prize by Bitcoin, so If you need best crypto debit card, try Hcard. \r\nhttps://bit.ly/31zTBD0 \r\n \r\nIt is Mastercard brand and you can exchange your crypto by Apps. \r\nHcard cost you $350 + shipping, but it will definitely worth. \r\n \r\nThis is how rich people always get their profits. \r\nSo, if you\nwanna win your life for free, do not miss your last chance. \r\n \r\nThank you \r\nLeonrad Garcia.'),
(15, 'atrixxtrix@gmail.com', 'atrixxtrix@gmail.com', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply Professional surveillance &amp; medical products: \r\n \r\nMoldex, makrite and 3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, PPDS masks \r\nFace shield/medical goggles \r\nNitrile/vinyl/PP gloves \r\nIsolation/surgical gown lvl1-4 \r\nProtective PPE/Overalls lvl1-4 \r\nIR non-contact thermometers/oral thermometers \r\nsanitizer dispenser \r\nCrystal tomato \r\n \r\nLogitech/OEM webcam \r\nMarine underwater CCTV\n\r\nExplosionproof CCTV \r\n4G Solar CCTV \r\nHuman body thermal cameras \r\nfor Body Temperature Measurement up to accuracy of Â±0.1?C \r\n \r\nWhatsapp: +65 87695655 \r\nTelegram: cctv_hub \r\nSkype: cctvhub \r\nEmail: sales@thecctvhub.com \r\nW: http://www.thecctvhub.com/ \r\n \r\nIf you do not wish to receive email from us again, please let us know by replying. \r\n \r\nregards, \r\nCCTV HUB'),
(16, 'no-replyElods@google.com', 'no-replyElods@google.com', 'Hi! \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n \r\nThis service is guaranteed \r\n \r\nFor more information, check our service here \r\nhttps://www.monkeydigital.co/Get-Guaranteed-Domain-Authority-50/ \r\n \r\nthank you \r\nMike Dickinson\r\n \r\nMonkey Digital \r\nsupport@monkeydigital.co'),
(17, 'wpdeveloperfiver@gmail.com', 'wpdeveloperfiver@gmail.com', 'Hi friend! I found your website famsocials.com in Google. I am highly reputed seller in Fiverr, from Bangladesh. The pandemic has severely affected our online businesses and the reason for this email is simply to inform you that I am willing to work at a very low prices (5$), without work I can?t support my family. I offer my WP knowledge to fix bugs, Wordpress optimizations and any type of problem you could have on your website. Feel free to contact me through my service on Fiverr (Contact\nbutton), I thank you from my heart: \r\n \r\nhttps://track.fiverr.com/visit/?bta=127931&amp;brand=fiverrcpa&amp;landingPage=https%3A%2F%2Fwww.fiverr.com%2Ffahadbaig2k18%2Ffix-wordpress-issues-wordpress-website-or-errors \r\n \r\nRegards,'),
(18, 'bee.pannell7184@gmail.com', 'bee.pannell7184@gmail.com', 'Are you struggling to optimize your website content? \r\nWednesday at 12 PM (Pacific Time) I will teach you how to ensure you have SEO friendly content with high search volume keywords. \r\nLearn tips, tricks, and tools that work in 2020 that the Google algorithm loves. \r\nSignup here to get the webinar link https://www.eventbrite.com/e/113229598778'),
(19, 'info@marketing-avenue.com', 'info@marketing-avenue.com', 'Hey, \r\n \r\nWant to make sales on demand ? \r\n \r\nWell yes it is possible thanks to emailing for that you need three incredents. \r\n \r\n1) An email sending system \r\n \r\n2) An email list \r\n \r\n3) A message \r\n \r\n \r\nGood news receive the largest email database, complete and efficient email database that exists \r\n \r\n400 millions USA customers classify by city and receive software to send your email campaigns. \r\n \r\n \r\nClick here to access this email database still very\nlittle sold : https://bit.ly/30BjS1L \r\n \r\nYou just have to make a powerful email for your business or to get the maximum number of visits to famsocials.com. \r\n \r\n \r\nIt will soon be withdrawn from the sale to preserve its effectiveness so do not hesitate to go there : https://bit.ly/30BjS1L \r\n \r\n \r\nKind &amp; Regards \r\n \r\nJeremy'),
(20, 'marktomson40@gmail.com', 'marktomson40@gmail.com', 'Want to have a fast growing and profitable business without competitors?! \r\nLooking for a new progressive direction in business?! \r\nWant to owe the high profits despite the market situation?! \r\nWe invite you to be a part of our successful Team. Become a dealer in your region.  We are manufacturers of grain cleaning equipment of a new generation: www.graincleaner.com. \r\nOur unique equipment has no analogues in the world. We have very favorable terms  for cooperation.  Write us on\ninfo@graincleaner.com and we will send you the business offer. \r\nTo see our videos go to: \r\nhttps://vimeo.com/showcase/6600548'),
(21, 'no-replydarbergealk@gmail.com', 'no-replydarbergealk@gmail.com', 'Hi!  famsocials.com \r\n \r\nDid yÐ¾u knÐ¾w thÐ°t it is pÐ¾ssiblÐµ tÐ¾ sÐµnd rÐµquÐµst tÐ¾tÐ°lly lÐµgÐ°l? \r\nWÐµ submit Ð° nÐµw uniquÐµ wÐ°y Ð¾f sÐµnding Ð°ppÐµÐ°l thrÐ¾ugh ÑÐ¾ntÐ°Ñt fÐ¾rms. SuÑh fÐ¾rms Ð°rÐµ lÐ¾ÑÐ°tÐµd Ð¾n mÐ°ny sitÐµs. \r\nWhÐµn suÑh rÐµquÐµsts Ð°rÐµ sÐµnt, nÐ¾ pÐµrsÐ¾nÐ°l dÐ°tÐ° is usÐµd, Ð°nd mÐµssÐ°gÐµs Ð°rÐµ sÐµnt tÐ¾ fÐ¾rms spÐµÑifiÑÐ°lly dÐµsignÐµd tÐ¾ rÐµÑÐµivÐµ mÐµssÐ°gÐµs Ð°nd Ð°ppÐµÐ°ls. \r\nÐ°lsÐ¾, mÐµssÐ°gÐµs sÐµnt thrÐ¾ugh ÑÐ¾ntÐ°Ñt FÐ¾rms dÐ¾ nÐ¾t gÐµt\nintÐ¾ spÐ°m bÐµÑÐ°usÐµ suÑh mÐµssÐ°gÐµs Ð°rÐµ ÑÐ¾nsidÐµrÐµd impÐ¾rtÐ°nt. \r\nWÐµ Ð¾ffÐµr yÐ¾u tÐ¾ tÐµst Ð¾ur sÐµrviÑÐµ fÐ¾r frÐµÐµ. WÐµ will sÐµnd up tÐ¾ 50,000 mÐµssÐ°gÐµs fÐ¾r yÐ¾u. \r\nThÐµ ÑÐ¾st Ð¾f sÐµnding Ð¾nÐµ milliÐ¾n mÐµssÐ°gÐµs is 49 USD. \r\n \r\nThis mÐµssÐ°gÐµ is ÑrÐµÐ°tÐµd Ð°utÐ¾mÐ°tiÑÐ°lly. PlÐµÐ°sÐµ usÐµ thÐµ ÑÐ¾ntÐ°Ñt dÐµtÐ°ils bÐµlÐ¾w tÐ¾ ÑÐ¾ntÐ°Ñt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype  FeedbackForm2019 \r\nWhatsApp - +375259112693'),
(22, 'jimmyscowley@gmail.com', 'jimmyscowley@gmail.com', 'Dear Sir/mdm, \r\n \r\nOur company Resinscales is looking for distributors and resellers for its unique product: ready-made tank models from the popular massively multiplayer online game - World of Tanks. \r\n \r\nSuch models are designed for fans of the game WoT and collectors of military models. \r\n \r\nWhat makes our tank models stand out? \r\n \r\n- We are focusing on tanks not manfactured by any companies, therefore we have no competitors \r\n- Accurately made in 1/35 scale \r\n- Very high\naccuracy of details and colors \r\n- The price of the model tank is the same as the production cost \r\n \r\nIf you are interested to be our distributor/reseller then please let us know from the contacts below. \r\n \r\nhttps://www.resinscales.com/ \r\nhttps://www.facebook.com/resinscales.models/ \r\ncontact@resinscales.com \r\n \r\nIgnore this message if it had been wrongly sent to you.'),
(23, 'no-replyElods@google.com', 'no-replyElods@google.com', 'GÐ¾Ð¾d dÐ°y! \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n \r\nThis service is guaranteed \r\n \r\nFor more information, check our service here \r\nhttps://www.monkeydigital.co/Get-Guaranteed-Domain-Authority-50/ \r\n \r\nthank you \r\nMike  \r\nMonkey Digital \r\nsupport@monkeydigital.co'),
(24, 'atrixxtrix@gmail.com', 'atrixxtrix@gmail.com', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply Professional surveillance &amp; medical products: \r\n \r\nMoldex, makrite and 3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, PPDS masks \r\nFace shield/medical goggles \r\nNitrile/vinyl/Latex/PP gloves \r\nIsolation/surgical gown lvl1-4 \r\nProtective PPE/Overalls lvl1-4 \r\nIR non-contact/oral thermometers \r\nsanitizer dispenser \r\n \r\nLogitech/OEM webcam \r\nMarine underwater CCTV \r\nExplosionproof CCTV \r\n4G Solar\nCCTV \r\nHuman body thermal cameras \r\nIP &amp; analog cameras for homes/industrial/commercial \r\n \r\nLet us know which products you are interested and we can send you our full pricelist. \r\n \r\nWe also welcome distributors/resellers. Our CCTV cameras are made in Taiwan. Feel free to contact us below \r\n \r\nWhatsapp: +65 87695655 \r\nTelegram: cctv_hub \r\nSkype: cctvhub \r\nEmail: sales@thecctvhub.com \r\nW: http://www.thecctvhub.com/ \r\n \r\nIf you do not wish to receive email from us\nagain, please let us know by replying. \r\n \r\nregards, \r\nCCTV HUB'),
(25, 'no-reply-86videos@outlook.com', 'no-reply-86videos@outlook.com', 'Good Day \r\n \r\nMy name is Jayson. Sorry for this cold email but I believe our video ad service would help your E-com business a lot. \r\n \r\nI\'d like to make you a stunning high converting video ad for your ecom brand. I own a videography studio here in China that produces high quality video ads for ecom brands in 5 days. \r\n \r\nWe source the product for you, film and edit all in 5 days. I believe you know the value of this extremely fast turnaround time in the E-com world. \r\n \r\nHere\nare the amazing reviews we got on Facebook: https://www.facebook.com/pg/86videos/reviews/ \r\n \r\nHereâ€™s an amazing video we made in the pet niche:https://www.youtube.com/watch?v=tSpE2ASbw2Y \r\n \r\nWorkout Niche: https://www.youtube.com/watch?v=RiHkJSF1jL0 \r\n \r\nI hope you like our work. You can learn more about our service here: https://www.86vids.com \r\n \r\nIf you wanna work with us or just have a pleasant chat with me, simply message us on Facebook:https://www.facebook.com/86videos\n\r\n \r\n-Jayson'),
(26, 'turbomavro@gmail.com', 'turbomavro@gmail.com', 'The leader in short-term investing in the cryptocurrency market. Â  \r\nThe leader in payments for the affiliate program. Â  \r\n \r\n \r\nInvestment program: \r\n \r\nInvestment currency: BTC. \r\nThe investment period is 2 days. \r\nMinimum profit is 10% \r\n \r\nRegistration here :Â  \r\nhttps://turbo-mmm.com/?ref=1PpkiRDZWaSJprtV9Z9gXrVXCRaEyibwF8Â Â  \r\n \r\nGet + 10% every 2 days to your personal Bitcoin wallet in addition to your balance. \r\n \r\nFor example: invest 0.1 bitcoins today,\nin 2 days you will receive 0.11 bitcoins in your personal bitcoin wallet. \r\n \r\n \r\nThe best affiliate program - a real find for MLM agents Â  \r\n \r\n5% for the referral of the first level (direct registration) \r\n3% for the referral of the second level \r\n1% for the referral of the third level \r\n \r\nReferral bonuses are paid the next day after the referral donation. \r\nThe bonus goes to your BTC address the day after the novice\'s donation. \r\nAny reinvestment of participants, the\nleader receives a full bonus! \r\n \r\nRegistration here:Â  \r\nhttps://turbo-mmm.com/?ref=1PpkiRDZWaSJprtV9Z9gXrVXCRaEyibwF8Â '),
(27, 'info@frugalsports.pk', 'info@frugalsports.pk', 'Hey friend, \r\nGlad to get your contact info from the internet! \r\nWe supply sportswear and leisure fitness wear,also skydive equipment,with good quality and competitive price. Hope to be a partner of your company! \r\nEmail me or just call me directly. Thank you! \r\n \r\nBest Wishes, \r\nUmer Malik/Overseas Dept \r\n \r\nFRUGAL SPORTS \r\nAdd:Sialkot Pakistan . \r\nTel:+92 332 8701375 (whatsapp ,wechat) \r\nMail: sales@frugalsports.pk \r\nWeb: https://www.frugalsports.pk \r\nstore:\nhttps://frugalsports.trustpass.alibaba.com/'),
(28, 'info@panufnik.pro', 'info@panufnik.pro', 'All my life I have been out there for others. The brutal rape of my girlfriend left me in hell that I cannot get out off. Today I am paying the price for another mans crime. Please read my story. I am very sorry for this spam. I am in a possition where I am running out of options. Today all that I dream off are the mountains and the peace that comes with it. \r\nhttps://panufnik.pro/my-goals/ \r\nbest regards, Pawel \r\n \r\n3. Email for automatic responses. \r\ninfo@panufnik.pro'),
(29, 'contact1@theonlinepublishers.com', 'contact1@theonlinepublishers.com', 'Hello, we are The Online Publishers (TOP) and want to introduce ourselves to you.  TOP is an established comprehensive global online hub.  We connect clients to expert freelancers in all facets of the world of digital marketing such as writers, journalists, bloggers, authors, advertisers, publishers, social media influencers, backlinks managers, Vloggers/video marketers and reviewersâ€¦ A few of the many services we offer are content creation and placement, publishing, advertising, online\ntranslation, and social media management.  We also have two full online libraries, one of photographs and the other of eBooks and informative resources. \r\nSave money and time by using TOP services.  Rather than having to search for multiple providers of various tasks, we are a one-stop-shop.  We have all the services you will ever need right here.  For a complete list, check out our website https://www.theonlinepublishers.com \r\nTOP can help any business surge ahead of its competition and\nincrease sales.  Join The Online Publishers today.'),
(30, 'wes.bart4@gmail.com', 'wes.bart4@gmail.com', 'Greetings, \r\n \r\nWe are brokers linked with high profile investors who are willing to; \r\n \r\nFund any company in any current project; \r\n \r\nFund a project/Investment of any Interest or choices; \r\n \r\nThey are privately seeking means of expanding their investment portfolio. Should you find interested in engaging us for more detailed discussion to forge ahead, We will be happy to share more insights. \r\n \r\nYours Sincerely \r\n \r\nKhalid \r\nTel +971-55-419-4623'),
(31, 'no-replyElods@google.com', 'no-replyElods@google.com', 'Hi! \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n \r\nThis service is guaranteed \r\n \r\nFor more information, check our service here \r\nhttps://www.monkeydigital.co/Get-Guaranteed-Domain-Authority-50/ \r\n \r\nthank you \r\nMike Peacock\r\n \r\nMonkey Digital \r\nsupport@monkeydigital.co'),
(32, 'contact2@theonlinepublishers.com', 'contact2@theonlinepublishers.com', 'Grow Your Business with TOP Vlogger Experts \r\n \r\nHow would you like to have your company\'s story told in video clips?  What better way to do that than with a series of short videos?  Welcome to the world of vlogging.  Vlogging is essentially blogging, except it is in the form of videos instead of written text.  When you are a client of The Online Publishers (TOP) we can connect you with professionals who excel at this unique type of marketing.  TOP Combines Vlogging and Influencers\nMarketing to boost your online reputation. \r\n \r\nClients love being able to express the highlights of their company or region through videos.  A great digital marketing firm not only knows the ins and outs of creating vlogs but knows how and where to place them to gain the maximum exposure.  Allow the vlogging gurus at TOP to do these things for you. \r\n \r\nAnother key feature of vlogging that TOP is excellent at is using social media sites to boost the videos.  All exposure that your\nvideos can obtain through social sites is great.  Our service providers can successfully accomplish this for you.  This is especially fantastic if you need to bolster your online reputation.  Vlogs are a perfect way to do that and our providers know how to get it done right.  Go online to http://www.theonlinepublishers.com/ now and ask our support team all about it.'),
(33, 'samuelseyi08@gmail.com', 'samuelseyi08@gmail.com', 'Decoolest Investment is intended for people willing to achieve wealth and financial freedom but unable to do so because they are not financial experts.We Have Professional Forex Traders Helping you to increase Capital We will always make sure you get your Investment as Promised \r\nhttps://decoolest.co'),
(34, 'eric@talkwithwebvisitor.com', 'eric@talkwithwebvisitor.com', 'Hey, this is Eric and I ran across famsocials.com a few minutes ago.\r\n\r\nLooks greatâ€¦ but now what?\r\n\r\nBy that I mean, when someone like me finds your website â€“ either through Search or just bouncing around â€“ what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a siteâ€™s visitors disappear and are gone forever\nafter just a moment.\r\n\r\nHereâ€™s an ideaâ€¦\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your siteâ€¦\r\n \r\nYou can â€“\r\n  \r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It signals you the moment they let you know theyâ€™re interested â€“ so that you can talk to that lead while theyâ€™re literally looking over\nyour site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYouâ€™ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even betterâ€¦ once youâ€™ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if\nyou donâ€™t close a deal right away, you can follow up with text messages for new offers, content links, even just â€œhow you doing?â€ notes to build a relationship.\r\n\r\nPretty sweet â€“ AND effective.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long\nDistance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=famsocials.com\r\n'),
(35, 'no-reply@hilkom-digital.de', 'no-reply@hilkom-digital.de', 'Hi! \r\nI have just checked famsocials.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nHilkom\nDigital Team \r\nsupport@hilkom-digital.de'),
(36, 'info@deoleodigitalpublishing.com', 'info@deoleodigitalpublishing.com', 'HAVE YOU EVER WANTED TO LEARN HOW TO CLOSE 100% OF YOUR CONSULTATIONS &amp; HELP YOUR COMPANY  WIN IN OUR NEW  COVID-19  ECONOMY? \r\n \r\nSEE THE OFFICIAL TRAILER:@ \r\nThe Author site https://www.tonydeoleo.com \r\n \r\n \r\nDownload your E-book Copy Now @ The Author official site: \r\nhttps://www.tonydeoleo.com \r\nAmazon : https://www.amazon.com/dp/195226359X \r\nBarns&amp;Nobles : https://m.barnesandnoble.com/w/closing-100-of-your-fitness-consultations-tony-deoleo/1137240205'),
(37, 'mtn@rank60.com', 'mtn@rank60.com', 'We\'ll help you get thousands of real Facebook page likes or genuine Instagram followers for your business,  as low as $60. If interested, place an order immediately on our website: https://rank60.com \r\n \r\nRANK60'),
(38, 'david@starkwoodmarketing.com', 'david@starkwoodmarketing.com', 'Hey famsocials.com, \r\n \r\nCan I get you on the horn to discuss relaunching marketing? \r\n \r\nGet started on a conversion focused landing page, an automated Linkedin marketing tool, or add explainer videos to your marketing portfolio and boost your ROI. \r\n \r\nWe also provide graphic design and call center services to handle all those new leads you\'ll be getting. \r\n \r\n \r\nd.stills@starkwoodmarketing.com \r\n \r\nMy website is http://StarkwoodMarketing.com'),
(39, 'mehdi@meloncbd.co', 'mehdi@meloncbd.co', 'Hi there, \r\n \r\nI wanted to reach out to share with you a promotion that might interest you: weâ€™ll transform your website into a high-performance marketing machine that generates sales on autopilot. \r\n \r\nMadi from Auratonic here! We are a digital marketing agency. \r\n \r\nI will keep it short. \r\n \r\nOur high-performance websites are handcrafted by direct-response marketers and digital growth experts, not â€˜web designersâ€™ whose goal is to make things look pretty. \r\n \r\nWe focus\non the data and user experience with a primary goal in mind: converting browsers into buyers. \r\n \r\nIf you are ready to get more clients, just get in touch with me directly at madi@auratonic.com and Iâ€™ll set up a quick call for a free website health check. \r\n \r\nThanks and have an awesome day! \r\n \r\n-Madi \r\n \r\nAccount Manager \r\nmadi@auratonic.com \r\nSchedule a call with me ? https://calendly.com/auratonic/madi \r\nP.S: This promotion will end on Monday 19th (Oct)'),
(40, 'no-reply@hilkom-digital.de', 'no-reply@hilkom-digital.de', 'GÐ¾Ð¾d dÐ°y! \r\nI have just checked famsocials.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards\n\r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(41, 'information@famsocials.com', 'information@famsocials.com', 'ATT: famsocials.com / Buy Likes, Followers and Views SITE SERVICES\r\nThis notification RUNS OUT ON: Oct 18, 2020\r\n\r\n\r\nWe have not received a settlement from you.\r\nWe  have actually attempted to call you but were not able to contact you.\r\n\r\n\r\nKindly Check Out: https://bit.ly/3kfuzzS .\r\n\r\nFor details as well as to process a discretionary settlement for services.\r\n\r\n\r\n\r\n10182020233829.\r\n'),
(42, 'linda.ray@theremarketingguys.com', 'linda.ray@theremarketingguys.com', 'I noticed that you are not running Google Remarketing on your website. \r\n \r\nThe most affordable advertising is marketing to previous web viewers who didn\'t convert. \r\n \r\nRemarketing via Google &amp; Facebook ads means tracking and engaging these \'lost\' customers. \r\nThey were on your site once and may only need a reminder of your services and business. \r\n \r\nCan I help you grab these low hanging fruits? \r\n \r\nLinda Ray \r\nEmail - linda@theremarketingguys.com \r\nWebsite -\nhttp://www.theremarketingguys.com'),
(43, 'no-replyElods@google.com', 'no-replyElods@google.com', 'Hi there \r\n \r\nIf you want to get ahead of your competition, have a higher Domain Authority score. Its just simple as that. \r\nWith our service you get Domain Authority above 50 points in just 30 days. \r\n \r\nThis service is guaranteed \r\n \r\nFor more information, check our service here \r\nhttps://www.monkeydigital.co/Get-Guaranteed-Domain-Authority-50/ \r\n \r\nN E W : \r\nDA60 is now available here \r\nhttps://www.monkeydigital.co/product/moz-da60-seo-plan/ \r\n \r\n \r\nthank you\n\r\nMike Arthurs\r\n \r\nMonkey Digital \r\nsupport@monkeydigital.co'),
(44, 'garyoldman67@outlook.com', 'garyoldman67@outlook.com', 'http://Ulysses99.com is a group of free thematic sites. Each domain has a Forum, a Blog, a Link Exchange, a Chat, an Advert Classified. Furthermore in each domain each member can create a personal Photo Album, a personal Blog, a personal Club and a personal Forum. \r\nhttp://Pets-99.com \r\nhttp://Job-99.com \r\nhttp://Medicine-99.com \r\nhttp://Crime-99.com \r\nhttp://PCSecurity-99.com \r\nhttp://Student-99.com \r\nhttp://Diet-99.com \r\nhttp://Game-99.com \r\nhttp://Sport-99.com\n\r\nhttp://Car-99.com \r\nhttp://Christian-99.com \r\nhttp://Politics-99.com \r\nhttp://Business-99.com \r\nhttp://LGBT-99.com \r\nhttp://AfricanAmerican-99.com'),
(45, 'no-replydarbergealk@gmail.com', 'no-replydarbergealk@gmail.com', 'GÐ¾Ð¾d dÐ°y!  famsocials.com \r\n \r\nDid yÐ¾u knÐ¾w thÐ°t it is pÐ¾ssiblÐµ tÐ¾ sÐµnd businÐµss prÐ¾pÐ¾sÐ°l Ð°bsÐ¾lutÐµly lÐ°wful? \r\nWÐµ submit Ð° nÐµw wÐ°y Ð¾f sÐµnding businÐµss Ð¾ffÐµr thrÐ¾ugh ÑÐ¾ntÐ°Ñt fÐ¾rms. SuÑh fÐ¾rms Ð°rÐµ lÐ¾ÑÐ°tÐµd Ð¾n mÐ°ny sitÐµs. \r\nWhÐµn suÑh rÐµquÐµsts Ð°rÐµ sÐµnt, nÐ¾ pÐµrsÐ¾nÐ°l dÐ°tÐ° is usÐµd, Ð°nd mÐµssÐ°gÐµs Ð°rÐµ sÐµnt tÐ¾ fÐ¾rms spÐµÑifiÑÐ°lly dÐµsignÐµd tÐ¾ rÐµÑÐµivÐµ mÐµssÐ°gÐµs Ð°nd Ð°ppÐµÐ°ls. \r\nÐ°lsÐ¾, mÐµssÐ°gÐµs sÐµnt thrÐ¾ugh\nfÐµÐµdbÐ°Ñk FÐ¾rms dÐ¾ nÐ¾t gÐµt intÐ¾ spÐ°m bÐµÑÐ°usÐµ suÑh mÐµssÐ°gÐµs Ð°rÐµ ÑÐ¾nsidÐµrÐµd impÐ¾rtÐ°nt. \r\nWÐµ Ð¾ffÐµr yÐ¾u tÐ¾ tÐµst Ð¾ur sÐµrviÑÐµ fÐ¾r frÐµÐµ. WÐµ will sÐµnd up tÐ¾ 50,000 mÐµssÐ°gÐµs fÐ¾r yÐ¾u. \r\nThÐµ ÑÐ¾st Ð¾f sÐµnding Ð¾nÐµ milliÐ¾n mÐµssÐ°gÐµs is 49 USD. \r\n \r\nThis lÐµttÐµr is ÑrÐµÐ°tÐµd Ð°utÐ¾mÐ°tiÑÐ°lly. PlÐµÐ°sÐµ usÐµ thÐµ ÑÐ¾ntÐ°Ñt dÐµtÐ°ils bÐµlÐ¾w tÐ¾ ÑÐ¾ntÐ°Ñt us. \r\n \r\nContact us. \r\nTelegram - @FeedbackFormEU \r\nSkype \nlive:feedbackform2019 \r\nWhatsApp - +375259112693'),
(46, 'stacy@productsupply.net', 'stacy@productsupply.net', 'Hello, \r\n \r\nAre you interested in wholesale / at home Covid-19 Rapid Antibody Test Kits? \r\nThese kits are ideal for home, office, schools, churches, spas, gyms, chiropractors, dentists, hotels, and more. \r\n \r\n \r\nWe have available: \r\n \r\n- Covid-19 Rapid Antibody Tests \r\n- Minimum order size is 1 box= 25 kits \r\n- Simple to use, made for Home, Office, School use \r\n- Affordable &amp; Accurate \r\n- 4 Simple Steps! \r\n- FDA Authorized \r\n- Results back, privately in 10-15 minutes\n\r\n- Self administer the test \r\n- We are based in the US and ship out orders every day \r\n \r\n \r\n \r\nOur tests make it possible to provide quick, accurate and affordable clinical results to all members of your community. \r\n \r\n \r\nMinimum order size is only 1 box= 25 kits.  We offer bulk wholesale rates - let us know how many you would like? \r\n \r\nPlease reply back stacy@productsupply.net  with the quantity needed, and the best contact phone number to call you \r\n \r\n \r\nThank\nyou ! \r\n \r\n \r\nStacy Williams \r\nC Rapid Test Results \r\nRegional Marketing Manager \r\nstacy@productsupply.net'),
(47, 'ericjonesonline@outlook.com', 'ericjonesonline@outlook.com', 'Hello, my nameâ€™s Eric and I just ran across your website at famsocials.com...\r\n\r\nI found it after a quick search, so your SEOâ€™s working outâ€¦\r\n\r\nContent looks pretty goodâ€¦\r\n\r\nOne thingâ€™s missing thoughâ€¦\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds â€“ 7 out of 10 disappear almost instantly, Surf Surf Surfâ€¦ then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor\nis a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to TALK with them - literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a tryâ€¦ it could be huge for your business.\r\n\r\nPlus, now that\nyouâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation prontoâ€¦ which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything Iâ€™ve just described is extremely simple to\nimplement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try\nTalk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=famsocials.com\r\n'),
(48, 'ericjonesonline@outlook.com', 'ericjonesonline@outlook.com', 'Hey there, I just found your site, quick questionâ€¦\r\n\r\nMy nameâ€™s Eric, I found famsocials.com after doing a quick search â€“ you showed up near the top of the rankings, so whatever youâ€™re doing for SEO, looks like itâ€™s working well.\r\n\r\nSo hereâ€™s my question â€“ what happens AFTER someone lands on your site?  Anything?\r\n\r\nResearch tells us at least 70% of the people who find your site, after a quick once-over, they disappearâ€¦ forever.\r\n\r\nThat means that all the work and\neffort you put into getting them to show up, goes down the tubes.\r\n\r\nWhy would you want all that good work â€“ and the great site youâ€™ve built â€“ go to waste?\r\n\r\nBecause the odds are theyâ€™ll just skip over calling or even grabbing their phone, leaving you high and dry.\r\n\r\nBut hereâ€™s a thoughtâ€¦ what if you could make it super-simple for someone to raise their hand, say, â€œokay, letâ€™s talkâ€ without requiring them to even pull their cell phone from their pocket?\r\n \n\r\nYou can â€“ thanks to revolutionary new software that can literally make that first call happen NOW.\r\n\r\nTalk With Web Visitor is a software widget that sits on your site, ready and waiting to capture any visitorâ€™s Name, Email address and Phone Number.  It lets you know IMMEDIATELY â€“ so that you can talk to that lead while theyâ€™re still there at your site.\r\n  \r\nYou know, strike when the ironâ€™s hot!\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with\nTalk With Web Visitor now to see exactly how it works.\r\n\r\nWhen targeting leads, you HAVE to act fast â€“ the difference between contacting someone within 5 minutes versus 30 minutes later is huge â€“ like 100 times better!\r\n\r\nThatâ€™s why you should check out our new SMS Text With Lead feature as wellâ€¦ once youâ€™ve captured the phone number of the website visitor, you can automatically kick off a text message (SMS) conversation with them. \r\n \r\nImagine how powerful this could be\nâ€“ even if they donâ€™t take you up on your offer immediately, you can stay in touch with them using text messages to make new offers, provide links to great content, and build your credibility.\r\n\r\nJust this alone could be a game changer to make your website even more effective.\r\n\r\nStrike when  the ironâ€™s hot!\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to learn more about everything Talk With Web Visitor can do for your business â€“ youâ€™ll be amazed.\r\n\r\nThanks and keep up\nthe great work!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ you could be converting up to 100x more leads immediately!   \r\nIt even includes International Long Distance Calling. \r\nStop wasting money chasing eyeballs that donâ€™t turn into paying customers. \r\nCLICK HERE http://www.talkwithcustomer.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=famsocials.com'),
(49, 'no-reply@google.com', 'no-reply@google.com', 'Hi! \r\nI have just checked famsocials.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards \r\nHilkom\nDigital Team \r\nsupport@hilkom-digital.de'),
(50, 'markandrew897@gmail.com', 'markandrew897@gmail.com', 'Hi! \r\nLooking for Facebook likes, Instagram followers or Google Reviews? \r\nWe can help you. Please visit https://1000-likes.com to place your order.'),
(51, 'no-replydarbergealk@gmail.com', 'no-replydarbergealk@gmail.com', 'HÐµllÐ¾! \r\n \r\nYou may know that Moz has recently invested a lot of time, research, and money in a new-and-improved Domain Authority. People who use Domain Authority (DA) naturally want to improve their score, which will increase their website`s SEO value and revenue \r\n \r\nDomain Authority is designed to be an indicator of success. \r\nWhat do you want your website to stand for? Having a DA50+ will show everyone that  you have a successful business thatâ€™s worth taking into consideration.\n\r\n \r\nIncrease your website`s SEO metrics and start earning more money. \r\n \r\nGet your famsocials.com to have an outstanding 50/100 Domain Authority with us today \r\nhttps://www.moz-boost.com/ \r\n \r\nor email us for more information to support@moz-boost.com \r\n \r\n \r\nthank you \r\nMike Nevill\r\n'),
(52, 'ericjonesonline@outlook.com', 'ericjonesonline@outlook.com', 'Good day, \r\n\r\nMy name is Eric and unlike a lot of emails you might get, I wanted to instead provide you with a word of encouragement â€“ Congratulations\r\n\r\nWhat for?  \r\n\r\nPart of my job is to check out websites and the work youâ€™ve done with famsocials.com definitely stands out. \r\n\r\nItâ€™s clear you took building a website seriously and made a real investment of time and resources into making it top quality.\r\n\r\nThere is, however, a catchâ€¦ more accurately, a\nquestionâ€¦\r\n\r\nSo when someone like me happens to find your site â€“ maybe at the top of the search results (nice job BTW) or just through a random link, how do you know? \r\n\r\nMore importantly, how do you make a connection with that person?\r\n\r\nStudies show that 7 out of 10 visitors donâ€™t stick around â€“ theyâ€™re there one second and then gone with the wind.\r\n\r\nHereâ€™s a way to create INSTANT engagement that you may not have known aboutâ€¦ \r\n\r\nTalk With Web Visitor is a\nsoftware widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It lets you know INSTANTLY that theyâ€™re interested â€“ so that you can talk to that lead while theyâ€™re literally checking out famsocials.com.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nIt could be a game-changer for your business â€“ and it gets even betterâ€¦ once youâ€™ve\ncaptured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation â€“ immediately (and thereâ€™s literally a 100X difference between contacting someone within 5 minutes versus 30 minutes.)\r\n\r\nPlus then, even if you donâ€™t close a deal right away, you can connect later on with text messages for new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything Iâ€™ve just described is simple, easy, and\neffective. \r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor\nnow.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=famsocials.com\r\n'),
(53, 'famsocials.com@famsocials.com', 'famsocials.com@famsocials.com', 'Your domain name: famsocials.com\r\n\r\nBuy Likes, Followers and Views\r\n\r\nThis announcement  EXPIRES ON: Nov 19, 2020.\r\n\r\n\r\nWe have actually not obtained a settlement from you.\r\nWe  have actually attempted to call you however were not able to reach you.\r\n\r\n\r\nPlease Check Out:  https://cutt.ly/Qhqbdml\r\n\r\n\r\nFor info and also to post a optional settlement for service.\r\n\r\n\r\n11192020114049\r\n'),
(54, 'ericjonesonline@outlook.com', 'ericjonesonline@outlook.com', 'Hello, my nameâ€™s Eric and I just ran across your website at famsocials.com...\r\n\r\nI found it after a quick search, so your SEOâ€™s working outâ€¦\r\n\r\nContent looks pretty goodâ€¦\r\n\r\nOne thingâ€™s missing thoughâ€¦\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds â€“ 7 out of 10 disappear almost instantly, Surf Surf Surfâ€¦ then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor\nis a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to TALK with them - literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a tryâ€¦ it could be huge for your business.\r\n\r\nPlus, now that\nyouâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation prontoâ€¦ which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything Iâ€™ve just described is extremely simple to\nimplement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try\nTalk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=famsocials.com\r\n'),
(55, 'no-replycip@gmail.com', 'no-replycip@gmail.com', 'GÐ¾Ð¾d dÐ°y! \r\n \r\nWhen you order 1000 backlinks with this service you get 1000 unique domains, Only receive 1 backlinks from each domain. All domains come with Good SEO metrics and with actual page high PA values. Simple yet very effective service to improve your linkbase and SEO metrics. \r\n \r\nFix your famsocials.com backlinks profile while having more domains linking to your website \r\nhttps://speed-seo.net/product/unique-domains-backlinks/ \r\n \r\nthank you \r\nSpeed SEO Digital\n\r\nsupport@speed-seo.net'),
(56, 'no-reply@google.com', 'no-reply@google.com', 'GÐ¾Ð¾d dÐ°y! \r\nI have just checked famsocials.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our pricelist here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n \r\nregards\n\r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(57, 'no-replydarbergealk@gmail.com', 'no-replydarbergealk@gmail.com', 'Hi! \r\n \r\nDo you want a quick boost in ranks and sales for your famsocials.com website? \r\nHaving a high DA score, always helps \r\n \r\nGet your famsocials.com to have a 50+ points in Moz DA with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nFYI: \r\nWe also give big discounts for multiple plans \r\n \r\n \r\nthank you \r\nMike Goldman\r\n \r\nsupport@monkeydigital.co'),
(58, 'mcclellan.shella@outlook.com', 'mcclellan.shella@outlook.com', 'Hello.\r\nAre you receiving Spam emails from Contact Us form? Enough, we are here to help you. We specialize in blocking spam. here you can find our website:\r\n\r\nhttps://huit.re/blockspam749914\r\nRegards,\r\n'),
(59, 'nicolaslamm1978@gmail.com', 'nicolaslamm1978@gmail.com', 'Get more Followers, Likes, Views to all your social media channels instantly. \r\n100% Safe, Real Human (No bots). \r\n \r\n250 Instagram followers @ $3.99: https://store.marketingchoice.com/buy-instagram-followers \r\n100 Facebook page followers @ $3.99: https://store.marketingchoice.com/facebook-page-followers \r\n100 LinkedIn followers @ $4.99: https://store.marketingchoice.com/linkedin-company-page-followers \r\n100 TikTok followers @ $3.99: https://store.marketingchoice.com/tiktok-followers\n\r\n \r\nAnd many more channels and options at: https://Store.MarketingChoice.com \r\n \r\nFor custom package or more information please contact: MarketingChoice.com@gmail.com');
INSERT INTO `mails` (`id`, `name`, `email`, `msg`) VALUES
(60, 'vernita.hipple@msn.com', 'vernita.hipple@msn.com', 'Hello!\r\nPlease permit me to quickly introduce to you what will benefit your website significantly as we prepare to enter 2021.\r\nDo you own a business? If yes, definitely your business also has a website. And the purpose is to put your business online and to drive traffic. How do you ensure that your website is in a good position on the search engines to achieve its purpose? In these days of search engine optimization and the wholesale transition to the Internet that many companies are\nundergoing, Alexa traffic rank is one of the most critical metrics for measuring your site performance, especially compared to other websites in your specific niche.\r\nGiven that Alexa ranking provides you information about your website, it is an excellent tool to view search engine optimization. If your website is not optimized in the major search engines such as Google, Bing, Yahoo, etc., it\'s definitely can\'t achieve its purpose.  \r\nSo what should you do? \r\nIt\'s quite easy to get\nstarted. Boost your Alexa ranking! It is considered one of the most important factors in evaluating your website\'s value by search engines. If you own a website that you would also want to monetize by selling text links ads or sponsored ads, you need to boost your Alexa ranking.\r\nInterestingly, I have good news for you today. We can help you to BOOST your website ALEXA RANK up to 29,999 globally. I guess you know what that means, a better SEO for the site. Better website value. \r\nPlease\nvisit alexaspeed.com now to boost your website ALEXA RANK. Thank you.\r\nIf you have any questions, feel free to send an email to support@alexaspeed.com.\r\n\r\nBest regards,\r\nAlexaSpeed Team'),
(61, 'miraclesreport@gmail.com', 'miraclesreport@gmail.com', 'Dropshipping business is a method of retail where the store owner never physically holds the products it sells.... You donâ€™t need upfront investments to get the products that you sells.                            Instead, when the store owner sells one of the products it stocks on its website, the store owner  then buy the item from a third-party supplier (that is after store owner deducts his/her profit) The supplier  then ships the item directly to the end customer on behalf of the store\nowner. \r\nFor only $99.99, get your 100% ready made dropshipping e-commerce store preloaded with 12,000 hot selling products - comes with  support,sales &amp; marketing training to drive traffic to your store \r\nOr create amazing website for your existing business- We Have All the Tools You Need \r\nfor more information or to sign up,  pls visit us at  http://www.NETSKIEL.COM'),
(62, 'ericjonesonline@outlook.com', 'ericjonesonline@outlook.com', 'Hey, this is Eric and I ran across famsocials.com a few minutes ago.\r\n\r\nLooks greatâ€¦ but now what?\r\n\r\nBy that I mean, when someone like me finds your website â€“ either through Search or just bouncing around â€“ what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a siteâ€™s visitors disappear and are gone forever\nafter just a moment.\r\n\r\nHereâ€™s an ideaâ€¦\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your siteâ€¦\r\n \r\nYou can â€“\r\n  \r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It signals you the moment they let you know theyâ€™re interested â€“ so that you can talk to that lead while theyâ€™re literally looking over\nyour site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYouâ€™ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even betterâ€¦ once youâ€™ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if\nyou donâ€™t close a deal right away, you can follow up with text messages for new offers, content links, even just â€œhow you doing?â€ notes to build a relationship.\r\n\r\nPretty sweet â€“ AND effective.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long\nDistance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=famsocials.com\r\n'),
(63, 'no-replycip@gmail.com', 'no-replycip@gmail.com', 'GÐ¾Ð¾d dÐ°y! \r\n \r\nCompetition not playing the game fair and square? \r\nNow you can fight back. \r\n \r\nNegative SEO, to make ranks go down: \r\nhttps://blackhat.to/ \r\n \r\nContact us for any queries: \r\nsupport@blackhat.to'),
(64, 'famsocials.com@famsocials.com', 'famsocials.com@famsocials.com', 'DOMAIN SERVICES EXPIRATION NOTICE FOR famsocials.com\r\n\r\nDomain Notice Expiry ON: Dec 25, 2020\r\n\r\nWe have not obtained a payment from you.\r\nWe have actually attempted to contact you but were not able to contact you.\r\n\r\n\r\nCheck Out: https://bit.ly/3aDwoV1\r\n\r\nFor details as well as to make a discretionary payment for your domain website solutions.\r\n\r\n\r\n\r\n\r\n\r\n122520200652403753688578798famsocials.com'),
(65, 'ahmedkirillov5@gmail.com', 'ahmedkirillov5@gmail.com', '&lt;a href=http://zrenieblog.ru/&gt;Detail&lt;/a&gt;:  &lt;a href=http://zrenieblog.ru/&gt;http://zrenieblog.ru/&lt;/a&gt;  http://zrenieblog.ru/ &lt;a href=&quot;http://zrenieblog.ru/&quot;&gt;http://zrenieblog.ru/&lt;/a&gt; \r\næ­·å² \r\nå…­ä¸ƒåƒå¹´å‰çš„å…ˆæ°‘å°±é–‹å§‹é‡£é­šã€‚å‘¨æ–‡çŽ‹æ›¾å’Œå…’å­å€‘åœ¨éˆæ²¼é‡£é­šå–æ¨‚ã€‚æˆ°åœ‹æ™‚èŒƒè ¡ä¹Ÿæ„›é‡£é­šï¼Œå¸¸æŠŠæ‰€é‡£ä¹‹é­šä¾›çµ¦è¶ŠçŽ‹å‹¾è¸é£Ÿç”¨ã€‚\näºŒåä¸–ç´€å…«åå¹´ä»£ï¼Œä¸­åœ‹å¤§é™¸çš„å„ç´šé‡£é­šå”æœƒæˆç«‹ï¼Œé‡£é­šåœ°é»žä¹Ÿå¾žè‡ªç„¶æ°´åŸŸå‘é¤Šæ®–æ°´åŸŸéŽåº¦ï¼Œæ‰€é‡£ä¹‹é­šå‰‡å¾žç²—é¤Šå‘ç´°é¤ŠéŽåº¦ã€‚äººæ•¸å¢žå¤šã€æ°´é«”æ±¡æŸ“åŠæ¿«æ•æ¿«æ’ˆå°Žè‡´é‡£é­šé›£åº¦ä¸Šå‡ã€‚é‡£é­šå”æœƒé–‹å§‹èˆ‡æ¼æ°‘å’Œè¾²æ°‘ç°½è¨‚æ–‡ä»¶ï¼Œä½¿æ›´å¤šé‡£è€…èƒ½å¤ åœ¨é¤Šæ®–æ°´åŸŸé‡£é­šï¼Œé”åˆ°äº†é›™è´çš„ç›®çš„ã€‚ äºŒåä¸–ç´€ä¹åå¹´ä»£åˆï¼Œä¾†è‡ªå°ç£çš„æ‡¸é‡£æ³•èµ°ç´…å¤§é™¸ï¼Œå„åœ°é–‹å§‹å»ºé€ æ¨™æº–é‡£æ± ã€‚\näºŒåä¸–ç´€æœ«ï¼Œç™¼é”åœ‹å®¶çš„é‡£è€…æå€¡å›žé¡§è‡ªç„¶ï¼Œå¼•ç™¼æ–°ä¸€è¼ªé‡Žé‡£æˆ°ï¼Œè€Œä¸­åœ‹çš„é‡£è€…å‰‡æ›´é’çžç²¾é¤Šé­šæ± ã€‚&lt;&gt;] \r\n \r\nå·¥å…· \r\n \r\nä¸€ç§é’“é±¼ç«¿æœºæ¢°éƒ¨åˆ†ç¤ºæ„å›¾ \r\næœ€åŸºæœ¬çš„é’“å…·åŒ…æ‹¬ï¼šé±¼ç«¿ã€é±¼çº¿ã€é±¼é’©ã€æ²‰å¨ï¼ˆåˆåæ²‰å­ï¼‰ã€æµ®æ ‡ï¼ˆåˆåé±¼æ¼‚ï¼‰ã€é±¼é¥µã€‚&lt;&gt;]:1å…¶ä»–è¾…åŠ©é’“å…·åŒ…æ‹¬ï¼šå¤±æ‰‹ç»³ã€é’“ç®±ã€çº¿è½®ã€æŠ„ç½‘ã€é±¼ç¯“ã€æ¸”å…·ç›’ã€é’“é±¼æœã€é’“é±¼éž‹ç­‰ã€‚&lt;&gt;]:1 \r\n\n\r\né’“ç«¿ä¸€èˆ¬ç”±çŽ»ç’ƒçº–ç¶­æˆ–ç¢³çº–ç¶­è½»è€Œæœ‰åŠ›çš„ç«¿çŠ¶ç‰©è´¨è£½æˆï¼Œé’“ç«¿å’Œé±¼é¥µç”¨ä¸çº¿è”æŽ¥ã€‚ä¸€èˆ¬çš„é±¼é¥µå¯ä»¥æ˜¯èš¯èš“ã€ç±³é¥­ã€è¦å­ã€èœå¶ã€è‹è‡ã€è›†ç­‰ï¼ŒçŽ°ä»£æœ‰ä¸“é—¨åˆ¶ä½œå¥½ï¼ˆå¤šæ•°ç”±è‡ªå·±é…ç½®çš„åŠæˆå“ï¼‰çš„ç²‰è£½é±¼é¥µå‡ºå”®ã€‚é±¼é¥µæŒ‚åœ¨é±¼é‰¤ä¸Šï¼Œä¸åŒçš„å°è±¡é±¼æœ‰ä¸åŒçš„é‡£çµ„é…ç½®ã€‚åœ¨å‘¨å›´æ°´é¢æ’’ä¸€äº›èª˜é¤Œé€šå¸¸ä¼šæœ‰è¼ƒå¥½çš„é›†é­šæ•ˆæžœã€‚ \r\n \r\né’“å…· \r\né±¼ç«¿ \r\nä¸»æ¡ç›®ï¼šé±¼ç«¿\n\r\né’“é±¼çš„é±¼ç«¿æŒ‰ç…§æè´¨åŒ…æ‹¬ï¼šä¼ ç»Ÿç«¹ç«¿ã€çŽ»ç’ƒçº¤ç»´ç«¿ã€ç¢³ç´ ç«¿ï¼ŒæŒ‰ç…§é’“æ³•åŒ…æ‹¬ï¼šæ‰‹ç«¿ã€çŸ¶ç«¿ã€æµ·ç«¿ï¼ˆåˆåç”©ç«¿ï¼‰ï¼ŒæŒ‰ç…§æ‰€é’“é±¼ç±»åŒ…æ‹¬ï¼šæºªæµå°ç»§ç«¿ã€æ—¥é²«ç«¿ï¼ˆåˆåæ²³å†…ç«¿ï¼‰ã€é²¤ç«¿ã€çŸ¶ä¸­å°ç‰©ç«¿ã€‚&lt;&gt;]:6-8 \r\n \r\né±¼é’© \r\nä¸»æ¡ç›®ï¼šé±¼é’© \r\né±¼é’©å°±æ˜¯åž‚é’“ç”¨çš„é’©ï¼Œä¸»è¦åˆ†ä¸ºï¼šæœ‰å€’é’©ã€æ— å€’é’©ã€æ¯›é’©ã€‚&lt;&gt;]:14 \r\n \r\né±¼çº¿ \r\nä¸»æ¡ç›®ï¼šé±¼çº¿\n\r\né±¼çº¿å°±æ˜¯åž‚é’“æ—¶ç»‘æŽ¥é±¼ç«¿å’Œé±¼é’©çš„çº¿ï¼ŒåŽ†å²ä¸Šæ›¾ä½¿ç”¨èš•ä¸ï¼ˆè¿œå¤æ—¥æœ¬ï¼‰ã€å‘ä¸ï¼ˆæ±Ÿæˆ·æ—¶æœŸæ—¥æœ¬ï¼‰ã€é©¬å°¾ï¼ˆè¥¿æ¬§ï¼‰ã€äºŒæžšè´ï¼ˆåœ°ä¸­æµ·ï¼‰ã€è››ç½‘ä¸ï¼ˆå¤å¨å¤·ï¼‰ã€ç¼éº»ï¼ˆä¸œå—äºšï¼‰ã€å°¼é¾™é’“çº¿ï¼ˆç¾Žå›½ï¼‰ã€‚&lt;&gt;]:25 \r\n \r\né±¼æ¼‚ \r\nä¸»æ¡ç›®ï¼šé±¼æ¼‚ \r\né±¼æ¼‚åˆåæµ®æ ‡ï¼Œåž‚é’“æ—¶æ “åœ¨é±¼çº¿ä¸Šçš„èƒ½æ¼‚æµ®çš„ä¸œè¥¿ï¼Œä¸»è¦ç”¨äºŽæœé›†æ°´åº•æƒ…æŠ¥ï¼ŒæŸ¥çœ‹é±¼æ±›ï¼Œè§‚å¯Ÿé±¼é¥µå­˜ç•™çŠ¶æ€ï¼Œä»¥åŠæ°´åº•æ°´æµèµ·ä¼å˜åŒ–ã€‚&lt;&gt;]:36 \r\n\n\r\né±¼é¥µ \r\nä¸»æ¡ç›®ï¼šé±¼é¥µ \r\né±¼é¥µåˆ†ä¸ºè¯±é¥µå’Œé’“é¥µï¼Œæ˜¯ä¸€ç§ç”¨æ¥å¸å¼•é±¼ç¾¤å’Œåž‚é’“æ—¶ä½¿ç”¨çš„ç‰©å“ï¼Œé’“é¥µåˆ†ä¸ºè¤é¥µã€ç´ é¥µã€æ‹Ÿé¥µã€æ‹‰é¥µã€‚&lt;&gt;]:170 \r\n \r\næ²‰å­ \r\nä¸»æ¡ç›®ï¼šæ²‰å­ \r\næ²‰å­åˆåæ²‰å¨ã€é“…é”¤ï¼Œæ˜¯ä¸€ç§è°ƒèŠ‚é±¼æ¼‚çš„å·¥å…·ã€‚&lt;&gt;]:45 \r\n \r\nå·çº¿å™¨ \r\nä¸»æ¡ç›®ï¼šå·çº¿å™¨ \r\nå·çº¿å™¨ä¸»è¦å®‰è£…åœ¨æµ·ç«¿å’ŒçŸ¶ç«¿ä¸Šçš„ä¸€ç§å·çº¿çš„å·¥å…·ã€‚&lt;&gt;]:63 \r\n \r\nè¿žç»“å…· \r\nä¸»æ¡ç›®ï¼šè¿žç»“å…·\n\r\nè¿žç»“å…·æ˜¯è¿žç»“é±¼çº¿ä¸Žé’“ç«¿ã€æ¯çº¿ä¸Žå­çº¿çš„ä¸€ç§è¿žç»“ç‰©ï¼Œä½¿ç”¨æœ€å¹¿æ³›çš„æ˜¯è¿žç»“çŽ¯ã€‚&lt;&gt;]:55 \r\n \r\nè¯†é±¼\n\r\né±¼ç±»çš„è§†åŠ›ä¸å¦‚äººç±»ï¼Œè·ç¦»ã€å®½åº¦å‡æ— æ³•å’Œäººç±»çš„è§†åŠ›æ¯”è¾ƒï¼Œé±¼ç±»å¯¹æ°´è‰²ã€ç»¿è‰²æ¯”è¾ƒæ•æ„Ÿï¼Œé±¼ç±»çš„å—…è§‰éžå¸¸çµæ•ï¼Œé±¼ç±»çš„å¬è§‰ä¹Ÿéžå¸¸çµæ•ï¼Œé’“é²¤é±¼æ—¶ï¼Œä¸èƒ½åœ¨å²¸ä¸Šå¤§å£°è°ˆç¬‘ã€èµ°åŠ¨ä¸åœï¼Œé±¼ç±»çš„æ€è€ƒèƒ½åŠ›éžå¸¸å¼±ï¼Œé±¼ç±»åº”å¯¹å‘¨è¾¹çŽ¯å¢ƒéšç€æ°”è±¡ã€æ°´æ¸©ã€æ°´è‰²ã€æ½®æµã€æµé€Ÿã€æ°´é‡çš„å˜åŒ–è€Œå˜åŒ–ï¼ŒäºŽæ˜¯ä¾¿å‡ºçŽ°äº†åœ¨åŒä¸€ä¸ªæ± å¡˜ã€æ°´åº“ã€æ¹–æ³Šï¼Œå¾€æ—¥é’“é±¼æ”¶èŽ·å¤§ï¼Œä»Šæ—¥å°‘ï¼Œä¸Šåˆæ”¶èŽ·å¤§ï¼Œä¸‹åˆå°‘ï¼Œæ™´å¤©å¤§ï¼Œé›¨å¤©å°‘ç­‰æƒ…å†µã€‚&lt;&gt;]:114-117æ·¡æ°´é’“é±¼ï¼Œä¸­å›½å¤§é™†ç»å¸¸åž‚é’“çš„é±¼ç±»å¯¹è±¡æ˜¯æœ¬åœ°é²«é±¼ã€æ—¥æœ¬é²«ã€éžæ´²é²«ã€é²¤é±¼ã€æ¸¸é±¼ã€ç½—éžé±¼ã€é»„åˆºé±¼ï¼ˆé»„é¸­å«ï¼‰ã€é»„å°¾ã€é³Šé±¼ã€é’é±¼ã€è‰é±¼ã€é²¢é±¼ã€é³™é±¼ï¼Œå°æ¹¾ç»å¸¸åž‚é’“çš„é±¼ç±»å¯¹è±¡æ˜¯æœ¬åœ°é²«é±¼ã€æ—¥æœ¬é²«ã€å´éƒ­é±¼ï¼ˆç½—éžé±¼ï¼‰ã€æºªå“¥ä»”å’Œçº¢çŒ«ï¼ˆç²—é¦–é©¬å£é±²ï¼‰ã€æ–—é±¼ã€ç½—æ±‰é±¼ã€è‹¦èŠ±ã€ä¸‰è§’å§‘ï¼ˆæ²³é® ï¼‰ã€ç«¹è’¿å¤´ï¼ˆå¯†é±¼ï¼‰ã€‚&lt;&gt;]:117\n\r\n \r\nå½±å“é±¼ç±»çš„6å¤§å› ç´ ä¸»è¦æ˜¯ï¼šå­£èŠ‚å˜æ›´ã€æ°”æ¸©é«˜ä½Žã€æ°´çš„æ¶¨è½ã€é£Žçš„å¤§å°ã€æ°´çš„æ¸…æµŠã€å¤©æ°”é˜´æ™´'),
(66, 'primeaux.tessa@gmail.com', 'primeaux.tessa@gmail.com', 'Hi,\r\nI\'m ,\r\nHow are you doing regarding your Business Reviews?\r\nGoogle reviews influence purchase decisions. Online Google reviews might be precisely what a person needs to push them from consideration to acquire.\r\nhttp://fund.school/googlereviews379630 \r\nKind Regards,\r\n'),
(67, 'no-reply@google.com', 'no-reply@google.com', 'Hi there \r\n \r\nI have just took a look on your SEO for  famsocials.com for the ranking keywords and seen that your website could use an upgrade. \r\n \r\nWe will increase your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports and outstanding support. \r\n \r\nPlease check our plans here, we offer SEO at cheap rates. \r\nhttps://www.hilkom-digital.de/cheap-seo-packages/ \r\n \r\nStart increasing your sales and leads with us, today! \r\n\n\r\nregards \r\nMike Gibbs\r\n \r\nHilkom Digital Team \r\nsupport@hilkom-digital.de'),
(68, 'ericjonesonline@outlook.com', 'ericjonesonline@outlook.com', 'Hello, my nameâ€™s Eric and I just ran across your website at famsocials.com...\r\n\r\nI found it after a quick search, so your SEOâ€™s working outâ€¦\r\n\r\nContent looks pretty goodâ€¦\r\n\r\nOne thingâ€™s missing thoughâ€¦\r\n\r\nA QUICK, EASY way to connect with you NOW.\r\n\r\nBecause studies show that a web lead like me will only hang out a few seconds â€“ 7 out of 10 disappear almost instantly, Surf Surf Surfâ€¦ then gone forever.\r\n\r\nI have the solution:\r\n\r\nTalk With Web Visitor\nis a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  Youâ€™ll know immediately theyâ€™re interested and you can call them directly to TALK with them - literally while theyâ€™re still on the web looking at your site.\r\n\r\nCLICK HERE http://www.talkwithcustomer.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works and even give it a tryâ€¦ it could be huge for your business.\r\n\r\nPlus, now that\nyouâ€™ve got that phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation prontoâ€¦ which is so powerful, because connecting with someone within the first 5 minutes is 100 times more effective than waiting 30 minutes or more later.\r\n\r\nThe new text messaging feature lets you follow up regularly with new offers, content links, even just follow up notes to build a relationship.\r\n\r\nEverything Iâ€™ve just described is extremely simple to\nimplement, cost-effective, and profitable.\r\n \r\nCLICK HERE http://www.talkwithcustomer.com to discover what Talk With Web Visitor can do for your business, potentially converting up to 100X more eyeballs into leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long Distance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://www.talkwithcustomer.com to try\nTalk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithcustomer.com/unsubscribe.aspx?d=famsocials.com\r\n'),
(69, 'famsocials.com@famsocials.com', 'famsocials.com@famsocials.com', 'DOMAIN SERVICES EXPIRATION NOTICE FOR famsocials.com\r\n\r\nDomain Notice Expiry ON: Jan 06, 2021\r\n\r\n\r\nWe have actually not gotten a payment from you.\r\nWe\'ve attempted to call you yet were unable to contact you.\r\n\r\n\r\nGo To: https://cutt.ly/Wjf8ovm\r\n\r\nFor details and to process a discretionary payment for your domain website services.\r\n\r\n\r\n\r\n\r\n010620210142223753688578798famsocials.com'),
(70, 'dena.kellogg@gmail.com', 'dena.kellogg@gmail.com', 'Hi people at famsocials.com,\r\nHope youâ€™re excellent. \r\nI\'m ,\r\nHope youâ€™re well, and that business is good. Please allow me to introduce to you this service.\r\nThe easiest method to promote an online site. Just enter your web site URL, and we will do all the job.\r\nhttps://1borsa.com/websitesubmitter526645\r\nBest regards,\r\n'),
(71, 'famsocials.com@famsocials.com', 'famsocials.com@famsocials.com', 'DOMAIN SERVICES EXPIRATION NOTICE FOR famsocials.com\r\n\r\nDomain Notice Expiry ON: Jan 08, 2021\r\n\r\n\r\nWe have not gotten a settlement from you.\r\nWe have actually tried to call you yet were unable to contact you.\r\n\r\n\r\nCheck Out: https://bit.ly/3njlR4c\r\n\r\nFor details and to post a discretionary settlement for your domain website solutions.\r\n\r\n\r\n\r\n\r\n010820210252413753688578798famsocials.com'),
(72, 'HIXENBAUGH8@mozillamail.com', 'HIXENBAUGH0@mozillamail.com', 'Thank you!!1'),
(73, 'ericjonesonline@outlook.com', 'ericjonesonline@outlook.com', 'Hey, this is Eric and I ran across famsocials.com a few minutes ago.\r\n\r\nLooks greatâ€¦ but now what?\r\n\r\nBy that I mean, when someone like me finds your website â€“ either through Search or just bouncing around â€“ what happens next?  Do you get a lot of leads from your site, or at least enough to make you happy?\r\n\r\nHonestly, most business websites fall a bit short when it comes to generating paying customers. Studies show that 70% of a siteâ€™s visitors disappear and are gone forever\nafter just a moment.\r\n\r\nHereâ€™s an ideaâ€¦\r\n \r\nHow about making it really EASY for every visitor who shows up to get a personal phone call you as soon as they hit your siteâ€¦\r\n \r\nYou can â€“\r\n  \r\nTalk With Web Visitor is a software widget thatâ€™s works on your site, ready to capture any visitorâ€™s Name, Email address and Phone Number.  It signals you the moment they let you know theyâ€™re interested â€“ so that you can talk to that lead while theyâ€™re literally looking over\nyour site.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to try out a Live Demo with Talk With Web Visitor now to see exactly how it works.\r\n\r\nYouâ€™ll be amazed - the difference between contacting someone within 5 minutes versus a half-hour or more later could increase your results 100-fold.\r\n\r\nIt gets even betterâ€¦ once youâ€™ve captured their phone number, with our new SMS Text With Lead feature, you can automatically start a text (SMS) conversation.\r\n  \r\nThat way, even if\nyou donâ€™t close a deal right away, you can follow up with text messages for new offers, content links, even just â€œhow you doing?â€ notes to build a relationship.\r\n\r\nPretty sweet â€“ AND effective.\r\n\r\nCLICK HERE http://www.talkwithwebvisitors.com to discover what Talk With Web Visitor can do for your business.\r\n\r\nYou could be converting up to 100X more leads today!\r\n\r\nEric\r\nPS: Talk With Web Visitor offers a FREE 14 days trial â€“ and it even includes International Long\nDistance Calling. \r\nYou have customers waiting to talk with you right nowâ€¦ donâ€™t keep them waiting. \r\nCLICK HERE http://www.talkwithwebvisitors.com to try Talk With Web Visitor now.\r\n\r\nIf you\'d like to unsubscribe click here http://talkwithwebvisitors.com/unsubscribe.aspx?d=famsocials.com\r\n'),
(74, 'see-email-in-message@monkeydigital.co', 'see-email-in-message@monkeydigital.co', 'Hi there \r\n \r\nDo you want a quick boost in ranks and sales for your famsocials.com website? \r\nHaving a high DA score, always helps \r\n \r\nGet your famsocials.com to have a 50+ points in Moz DA with us today and rip the benefits of such a great feat. \r\n \r\nSee our offers here: \r\nhttps://www.monkeydigital.co/product/moz-da50-seo-plan/ \r\n \r\nNEW: \r\nhttps://www.monkeydigital.co/product/ahrefs-dr60/ \r\n \r\n \r\nthank you \r\nMike Foster\r\n \r\nsupport@monkeydigital.co');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `message` text COLLATE utf8_general_ci NOT NULL,
  `chatid` int(11) NOT NULL,
  `sender` int(1) NOT NULL DEFAULT 0,
  `seen` int(1) NOT NULL DEFAULT 0,
  `messageTIMESTAMP` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `message`, `chatid`, `sender`, `seen`, `messageTIMESTAMP`) VALUES
(345, 'hello', 164, 0, 1, '2020-04-24 00:26:17'),
(346, 'hi, Mr ahmed', 164, 1, 1, '2020-04-24 00:27:07'),
(347, 'hi', 165, 0, 1, '2020-04-24 00:28:27'),
(348, 'hello', 165, 1, 1, '2020-04-24 00:28:44'),
(349, 'may i ask you a question ?', 165, 0, 1, '2020-04-24 00:29:18'),
(350, 'yes, go ahead', 165, 1, 1, '2020-04-24 00:29:34'),
(351, 'how could i buy ?', 165, 0, 1, '2020-04-24 00:31:00'),
(352, 'that\\\'s enough', 165, 1, 1, '2020-04-24 00:31:18'),
(353, 'hello i\'m mohamed', 166, 0, 1, '2020-04-24 01:08:56'),
(354, 'hello mohamed', 166, 1, 1, '2020-04-24 01:09:37'),
(355, 'hi', 167, 0, 1, '2020-04-24 01:11:34'),
(356, 'hello', 167, 1, 1, '2020-04-24 01:11:43'),
(357, 'hi', 168, 0, 1, '2020-04-24 01:12:26'),
(358, 'hello', 168, 1, 1, '2020-04-24 01:12:37'),
(359, 'Hello', 169, 0, 1, '2020-05-07 07:46:42'),
(360, 'I want see some works of this website before I buy', 169, 0, 1, '2020-05-07 07:47:25'),
(361, 'Some previous work', 169, 0, 1, '2020-05-07 07:47:50'),
(362, 'Hello anyone there?', 169, 0, 1, '2020-05-07 07:48:06'),
(363, '????', 169, 0, 1, '2020-05-07 07:48:48'),
(364, 'Good morning', 170, 0, 1, '2020-05-07 08:31:38'),
(365, 'I want ask some questions about Facebook likes packages', 170, 0, 1, '2020-05-07 08:32:14'),
(366, 'Hello ðŸ–ï¸', 170, 0, 1, '2020-05-07 08:34:47'),
(367, 'Hello', 171, 0, 1, '2020-05-07 09:00:52'),
(368, 'I want buy youtube subscribes about 1000 subscriber to achieve youtube terms', 172, 0, 1, '2020-05-07 09:03:32'),
(369, 'How much it will cost?', 172, 0, 1, '2020-05-07 09:03:48'),
(370, 'Good morning ðŸŒž', 173, 0, 1, '2020-05-07 09:40:26'),
(371, 'I wanna buy 1000 likes to my facebook page but I want to see some previous work first', 173, 0, 1, '2020-05-07 09:41:29'),
(372, 'Hello ?!', 173, 0, 1, '2020-05-07 09:42:05'),
(373, '??', 173, 0, 1, '2020-05-07 09:45:10'),
(374, 'Hello', 174, 0, 1, '2020-05-07 10:11:46'),
(375, 'Can you tell me more about your Instagram followers packages?', 174, 0, 1, '2020-05-07 10:12:32'),
(376, 'I have a new account and I want to buy some followers specific London followers', 174, 0, 1, '2020-05-07 10:13:33'),
(377, 'My account interested in news', 174, 0, 1, '2020-05-07 10:13:59'),
(378, 'Please if your not online now send me through email', 174, 0, 1, '2020-05-07 10:14:55'),
(379, 'Good morning', 175, 0, 1, '2020-05-07 10:33:36'),
(380, 'We are a new company specialist in affiliate business', 175, 0, 1, '2020-05-07 10:34:57'),
(381, 'Right now we need like and followers on our pages in social media', 175, 0, 1, '2020-05-07 10:35:34'),
(382, 'About 10.000 likes and followers on Facebook and Twitter and Instagram', 175, 0, 1, '2020-05-07 10:36:51'),
(383, 'How much will it costs ?', 175, 0, 1, '2020-05-07 10:37:08'),
(384, '!!', 175, 0, 1, '2020-05-07 10:38:37'),
(385, 'Please get back to us very soon', 175, 0, 1, '2020-05-07 10:41:13'),
(386, 'Good morning', 176, 0, 1, '2020-05-07 11:07:07'),
(387, 'I want to buy Facebook video views about 10 hours', 176, 0, 1, '2020-05-07 11:07:57'),
(388, 'About the cost?', 176, 0, 1, '2020-05-07 11:08:22'),
(389, 'And when it will happen', 176, 0, 1, '2020-05-07 11:08:34'),
(390, 'Anyone online ?', 176, 0, 1, '2020-05-07 11:08:51'),
(391, 'Good morning', 177, 0, 1, '2020-05-07 13:35:31'),
(392, 'I want 1000 follower for Twitter and Instagram', 177, 0, 1, '2020-05-07 13:36:14'),
(393, 'How much it will cost?', 177, 0, 1, '2020-05-07 13:36:27'),
(394, 'And how long will it takes?', 177, 0, 1, '2020-05-07 13:36:46'),
(395, 'Sir?!', 177, 0, 1, '2020-05-07 13:37:40'),
(396, 'Good evening', 178, 0, 1, '2020-05-07 17:17:07'),
(397, 'I want to know some information about YouTube packages', 178, 0, 1, '2020-05-07 17:17:43'),
(398, 'Hello?!', 178, 0, 1, '2020-05-07 17:19:51'),
(399, 'Hello?!', 178, 0, 1, '2020-05-07 17:19:52'),
(400, 'hi', 178, 1, 1, '2020-05-07 20:19:44'),
(401, 'hello mr mohamed', 179, 0, 1, '2020-05-08 00:26:42'),
(402, 'mathhewo1@tempmail.co kianheart67@gmail.com  eliotaky12@gmail.com  dexlanbrown3@gmail.com  kaiwest55@mail.ua open  oliverpikyer@mailuk.com  jamiestar01@gmail.com  jamiestar01@gmail.com  Seanhut100@gmail.com  AaronRhodes@teleworm.u mathhewo1@tempmail.com', 180, 0, 1, '2020-05-08 01:15:31');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `notification` varchar(50) COLLATE utf8_general_ci NOT NULL,
  `amt` varchar(30) COLLATE utf8_general_ci NOT NULL,
  `TIME` varchar(50) COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `notification`, `amt`, `TIME`) VALUES
(1, 'Someone in Argentina purchased', '1000 FaceBook Likes', 'a few seconds ago'),
(2, 'Someone in Egypt purchased', '500 Instagram Views', 'a few seconds ago'),
(3, 'Someone in England purchased', '300 TIKTOK Follwers', 'a few seconds ago'),
(4, 'Someone in USA purchased', '1000 Instagram Likes', 'a few seconds ago'),
(5, 'Someone in Brazil purchased', '1000 YouTube Views', 'a few seconds ago'),
(6, 'Someone in KSA purchased', '500 Instagram Likes', 'a few seconds ago'),
(7, 'Someone in UAE purchased', '1000 TIKTOK Likes', 'a few seconds ago'),
(8, 'Someone in Germany purchased', '300 Instagram Likes', 'a few seconds ago'),
(9, 'Someone in USA purchased', '500 TikTok Likes', 'a few seconds ago'),
(10, 'Someone in Egypt purchased', '500 Instagram Views', 'a few seconds ago'),
(11, 'Someone in RUSSIA purchased', '300 TIKTOK Follwers', 'a few seconds ago'),
(12, 'Someone in USA purchased', '10000 Instagram Likes', 'a few seconds ago'),
(13, 'Someone in EGYPT purchased', '1000 INSTAGRAM Views', 'a few seconds ago'),
(14, 'Someone in KSA purchased', '500 Instagram Likes', 'a few seconds ago'),
(15, 'Someone in UAE purchased', '1000 TIKTOK Likes', 'a few seconds ago'),
(16, 'Someone in Germany purchased', '300 Instagram Likes', 'a few seconds ago');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `payment_id` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `payer_id` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `amount` float(10,2) NOT NULL,
  `currency` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `accountSocial` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `plan` varchar(100) COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `name` varchar(50) COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int(11) NOT NULL,
  `planId` int(11) NOT NULL,
  `featured` double(7,2) DEFAULT NULL,
  `plan1` double(7,2) DEFAULT NULL,
  `plan2` double(7,2) DEFAULT NULL,
  `plan3` double(7,2) DEFAULT NULL,
  `plan4` double(7,2) DEFAULT NULL,
  `plan5` double(7,2) DEFAULT NULL,
  `plan6` double(7,2) DEFAULT NULL,
  `plane1Num` int(11) NOT NULL,
  `plane2Num` int(11) NOT NULL,
  `plane3Num` int(11) NOT NULL,
  `plane4Num` int(11) NOT NULL,
  `plane5Num` int(11) NOT NULL,
  `plane6Num` int(11) NOT NULL,
  `planeFeaturedNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `planId`, `featured`, `plan1`, `plan2`, `plan3`, `plan4`, `plan5`, `plan6`, `plane1Num`, `plane2Num`, `plane3Num`, `plane4Num`, `plane5Num`, `plane6Num`, `planeFeaturedNum`) VALUES
(1, 1, 5.99, 12.99, 19.99, 29.99, 49.99, 69.99, 99.99, 250, 500, 1000, 2500, 5000, 10000, 100),
(2, 2, 5.99, 12.99, 19.99, 29.99, 49.99, 69.99, 99.99, 250, 500, 1000, 2500, 5000, 10000, 100),
(3, 3, 5.99, 12.99, 19.99, 29.99, 49.99, 69.99, 99.99, 250, 500, 1000, 2500, 5000, 10000, 100),
(4, 11, 5.99, 12.99, 19.99, 29.99, 49.99, 69.99, 99.99, 250, 500, 1000, 2500, 5000, 10000, 100),
(5, 4, 5.99, 12.99, 19.99, 29.99, 49.99, 69.99, 99.99, 250, 500, 1000, 2500, 5000, 10000, 100),
(6, 6, 5.99, 12.99, 19.99, 29.99, 49.99, 69.99, 99.99, 250, 500, 1000, 2500, 5000, 10000, 100),
(7, 7, 12.99, 19.99, 39.99, 69.99, 99.99, 169.99, 299.99, 250, 500, 1000, 2500, 5000, 10000, 100),
(8, 8, 12.99, 19.99, 25.99, 39.99, 59.99, 199.99, 379.99, 2500, 3000, 5000, 10000, 50000, 100000, 1000),
(9, 10, 5.99, 12.99, 19.99, 29.99, 49.99, 69.99, 99.99, 250, 500, 1000, 2500, 5000, 10000, 100),
(10, 9, 5.99, 12.99, 19.99, 29.99, 49.99, 69.99, 99.99, 250, 500, 1000, 2500, 5000, 10000, 100),
(11, 12, 5.99, 12.99, 19.99, 29.99, 49.99, 69.99, 99.99, 250, 500, 1000, 2500, 5000, 10000, 100);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_general_ci NOT NULL,
  `stars` int(1) NOT NULL,
  `review` text COLLATE utf8_general_ci NOT NULL,
  `isApproved` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `stars`, `review`, `isApproved`) VALUES
(32, 'Belly', 5, 'I can\'t believe this is true woooooow \nI will tell all my friends about this amazing website good luck â™¥ï¸â™¥ï¸', 1),
(33, 'Ramez', 5, 'it is amazing website and i recommend this website to all people', 1);

-- --------------------------------------------------------

--
-- Table structure for table `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `social`
--

INSERT INTO `social` (`id`, `name`) VALUES
(1, 'F_Likes'),
(2, 'F_Followers'),
(3, 'F_Shares'),
(4, 'I_Likes'),
(6, 'I_Views'),
(7, 'Y_Subscribes'),
(8, 'Y_Views'),
(9, 'T_Views'),
(10, 'T_Likes'),
(11, 'I_Followers'),
(12, 'T_Followers');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `customer_id` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `product` varchar(255) COLLATE utf8_general_ci NOT NULL,
  `amount` int(10) NOT NULL,
  `currency` varchar(10) COLLATE utf8_general_ci NOT NULL,
  `status` varchar(30) COLLATE utf8_general_ci NOT NULL,
  `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `name`, `email`) VALUES
(164, 'ahmed', 'ahmed@gmail.com'),
(165, 'test', 'test@gmail.com'),
(166, 'mohamed', 'mohamed@gmail.com'),
(167, 'karim', 'karim@gmail.com'),
(168, 'mostafa', 'mostafa@gmail.com'),
(169, 'Aaron Rhodes', 'AaronRhodes@teleworm.us'),
(170, 'Sean Hutchinson', 'Seanhut100@gmail.com'),
(171, 'Jamie Joyce', 'jamiestar01@gmail.com'),
(172, 'Jamie Joyce', 'jamiestar01@gmail.com'),
(173, 'Oliver Pickering', 'oliverpikyer@mailuk.com'),
(174, 'Kai West', 'kaiwest55@mail.ua'),
(175, 'Declan brown', 'dexlanbrown3@gmail.com'),
(176, 'Elliot Norman', 'eliotaky12@gmail.com'),
(177, 'Kian Mistry', 'kianheart67@gmail.com'),
(178, 'Matthew Brien', 'mathhewo1@tempmail.com'),
(179, 'ahmed', 'ahmed@gmail.com'),
(180, 'ahmed', 'ahmed@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `chatid` (`chatid`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `planId` (`planId`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=403;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=181;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`chatid`) REFERENCES `visitors` (`id`);

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`planId`) REFERENCES `social` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
