-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  Dim 10 juin 2018 à 16:11
-- Version du serveur :  10.1.30-MariaDB
-- Version de PHP :  7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `buandobu`
--

-- --------------------------------------------------------

--
-- Structure de la table `controle`
--

CREATE TABLE `controle` (
  `dateDeControle` date DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `pouls` double DEFAULT NULL,
  `TA` double DEFAULT NULL,
  `poids` double DEFAULT NULL,
  `plainteDominante` varchar(250) DEFAULT NULL,
  `autreSigne` varchar(250) DEFAULT NULL,
  `evolution` varchar(250) DEFAULT NULL,
  `glycemie` double DEFAULT NULL,
  `id_patient` int(11) NOT NULL,
  `id_ppm` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `diagnostic`
--

CREATE TABLE `diagnostic` (
  `dateDeDiagnostic` date DEFAULT NULL,
  `diagnostic` varchar(250) DEFAULT NULL,
  `traitement` varchar(250) DEFAULT NULL,
  `medicament` varchar(250) DEFAULT NULL,
  `posologie` varchar(250) DEFAULT NULL,
  `id_patient` int(11) NOT NULL,
  `id_medecin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `medecin`
--

CREATE TABLE `medecin` (
  `id_medecin` int(11) NOT NULL,
  `sexe` varchar(10) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `ville` varchar(250) DEFAULT NULL,
  `reference` int(11) DEFAULT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `hopital` varchar(250) DEFAULT NULL,
  `corps` varchar(250) DEFAULT NULL,
  `specialite` varchar(250) DEFAULT NULL,
  `profil` varchar(250) DEFAULT NULL,
  `id_compte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `medecin`
--

INSERT INTO `medecin` (`id_medecin`, `sexe`, `telephone`, `email`, `ville`, `reference`, `titre`, `hopital`, `corps`, `specialite`, `profil`, `id_compte`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, NULL, 63001258, NULL, NULL, 72, 'Médecin', NULL, NULL, 'ddddddd', NULL, NULL),
(9, NULL, 63001258, NULL, NULL, 72, 'Médecin', 'dddd', NULL, 'ddddddd', NULL, NULL),
(10, NULL, 63001258, NULL, NULL, 72, 'Médecin', 'dddd', NULL, 'ddddddd', NULL, NULL),
(11, NULL, 63001258, NULL, 'PARAKOU', 72, 'Médecin', 'dddd', NULL, 'ddddddd', NULL, NULL),
(12, NULL, 23613640, NULL, 'malanville', 23613650, NULL, 'gynÃ©co', NULL, 'obtÃ©tricien ', NULL, NULL),
(13, NULL, 23613640, NULL, 'malanville', 23613650, NULL, 'gynÃ©co', NULL, 'obtÃ©tricien ', NULL, NULL),
(14, NULL, 23613640, NULL, 'malanville', 23613650, 'Médecin', 'gynéco', NULL, 'obtétricien ', NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `patient`
--

CREATE TABLE `patient` (
  `id_patient` int(11) NOT NULL,
  `sexe` varchar(10) DEFAULT NULL,
  `tel` int(11) DEFAULT NULL,
  `ville` varchar(250) DEFAULT NULL,
  `quartier` varchar(200) DEFAULT NULL,
  `groupe_sanguin` char(2) DEFAULT NULL,
  `dateDeNaissance` date DEFAULT NULL,
  `personeDeConfiance` varchar(250) DEFAULT NULL,
  `allergie` varchar(250) DEFAULT NULL,
  `profil` varchar(250) DEFAULT NULL,
  `vaccination` varchar(250) DEFAULT NULL,
  `observation` varchar(250) DEFAULT NULL,
  `medecinEnCharge` varchar(250) DEFAULT NULL,
  `ethnie` varchar(250) DEFAULT NULL,
  `id_compte` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ppm`
--

CREATE TABLE `ppm` (
  `id_ppm` int(11) NOT NULL,
  `sexe` varchar(10) DEFAULT NULL,
  `telephone` int(11) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `ville` varchar(250) DEFAULT NULL,
  `reference` int(11) DEFAULT NULL,
  `hopital` varchar(250) DEFAULT NULL,
  `specialite` varchar(250) DEFAULT NULL,
  `profil` varchar(250) DEFAULT NULL,
  `id_compte` int(11) DEFAULT NULL,
  `id_medecin` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ppm`
--

INSERT INTO `ppm` (`id_ppm`, `sexe`, `telephone`, `email`, `ville`, `reference`, `hopital`, `specialite`, `profil`, `id_compte`, `id_medecin`) VALUES
(1, NULL, 555585, NULL, 'PARAKOU', 2895, 'kdskjùsd,', 'jkbvskv', NULL, NULL, NULL),
(2, NULL, 61022684, NULL, 'calav', 8965, 'cnhu', 'néant ', NULL, NULL, NULL),
(3, NULL, 61022684, NULL, 'calav', 8965, 'cnhu', 'néant ', NULL, NULL, NULL),
(4, NULL, 61022684, NULL, 'calav', 8965, 'cnhu', 'néant ', NULL, NULL, NULL),
(5, NULL, 61022684, NULL, 'calav', 8965, 'cnhu', 'néant ', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id` int(9) NOT NULL,
  `role` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(9) NOT NULL,
  `fname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wrong_logins` int(9) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_role` int(9) NOT NULL DEFAULT '1',
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `confirm_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `wrong_logins`, `password`, `user_role`, `confirmed`, `confirm_code`) VALUES
(2, 'TOKO', 'KAFID ', 'tkakafid@gmail.com', 1, '$2y$10$zhsdbq38fRo9gSwsy8s0G.giJrEHC7pVL883X8IzGrkrliRxhp8Oq', 1, 1, '$2y$10$Qtr1RCGPKuNq39HAKya4gue1JoPAq.c1rNmXNOJo5r8YWyfybiIuu'),
(3, 'SIDIBE', 'SIDIKOU', 'amadou@gmail.com', 0, '$2y$10$dlXr5IHxU.JWY9.C0WI6nuTwc3RE0pT0q6NOZKfmTKJxvIU./bQmK', 1, 0, '$2y$10$vm4.lhIiDe6BGeyYWLqKmeLh.2M.rVf3M/mE.78ACcAZ3bK97j7aS'),
(8, 'DEL', 'AFFOUKOU', 'afouk@gmail.com', 0, '$2y$10$B89M6PSPXaYec8Psr7I/f.14uQdnstRjMQ3UhAsOkFezx.L7KR3i.', 1, 0, '$2y$10$CBNrhIJW8eSj7H.kD.IF6uUdBf5Qdxt1aVR3KFys4eGbS5jphgO2i'),
(9, 'DEL', 'AFFOUKOU', 'afou@gmail.com', 0, '$2y$10$GIZ5dmN8JrqDsGkWmsXdc.0Vya58j3LqyGv7gA5XHeJtIsK5zyYAi', 1, 0, '$2y$10$o5.PPGMJWdG5MuI/p19Gb.YDozAmfu5DJcB5jXN8Sh3YyqYeMRdDC'),
(10, 'DEL', 'AFFOUKOU', 'afu@gmail.com', 0, '$2y$10$8HM0elji7dM5CLuRbl3Oe.FoeP381p2i9j7Sc4QV3qs7IrCBesPKu', 1, 0, '$2y$10$ovi3uHUW5INHWCSBV0FiiueUkB6Ciobw/a135QGHb6rAQq1vN53VW'),
(11, 'habib', 'allasane ', 'abib@gmail.com', 0, '$2y$10$yKzgWAzMelmWAGUhYXc7DO7/23V2qsY1TbGSpxh76YKSyZTQloD7a', 1, 0, '$2y$10$v2Jm/meVuNvm2ldax0ufY.X3ddV9OgYJdUkQY0MWGr1UKXRBSdaKi'),
(12, 'habib', 'allasane ', 'aib@gmail.com', 0, '$2y$10$PZa2VNW2n7L05ztAwBfyqu9CRN80lKZqRJwkafd8/JehxQvDEN/Mq', 1, 0, '$2y$10$1CpiSj9quvBoJT.1MEY.pe4VqOXxF/PSSKzx6BbgPwx7Ybi93Dq9W'),
(13, 'habib', 'allasane ', 'aibbbb@gmail.com', 0, '$2y$10$8e5mndO6cGyvD4rffK0m6e9Kft8iRvxMJ8uc7gLKVX9QDqSJgTo7K', 1, 0, '$2y$10$jvggU2RxeAwOu67WFd0nf.JNMbI0BqB.IMYRn9mFiqLqgxlZu0hNm'),
(14, 'habib', 'allasane ', 'aibbbbc@gmail.com', 0, '$2y$10$P70dmRxCYvwU6TseSstPWug/o9EhnCJtt7SDyYCAj1bvWL6VNiW0.', 1, 0, '$2y$10$E4L7OAPPuUq.liZde8w.nOKP21Ksgq5lN1g75Z8NNl8KyuPArsKOS'),
(15, 'habib', 'allasane ', 'bobo@gmail.com', 0, '$2y$10$t7Iik2urhdWExJ5IV1mau.o1V3GKcqi1y8x0CHNM0VbS1YFwe32oi', 1, 0, '$2y$10$Dj02wiujCSP8grDhy0axVerBaAdRaI71XNLa6MO0QiS9yrf.i1V.C'),
(16, 'habib', 'allasane ', 'bob@gmail.com', 0, '$2y$10$86rkMWwrqP2jjDSOhbsgF.AAoms8rTAK3rdm6wIvDg1Qxq7XUoEHO', 1, 0, '$2y$10$dhoYOwlJufRzVZiDXBm7HuGp0cNiQhdwkmmzryoKo6esJjKwzYEmm'),
(17, 'habib', 'allasane ', 'yas@gg.com', 0, '$2y$10$pMYRXoEfawNkvy7NTfww/OgcgxYWsf6d5goYLM1avnqcUmBLO2nj6', 1, 0, '$2y$10$kiWqLWb.cVHd50wRjsMMp.ZCiIx12uFW7CfOC5PGUws.a3LNvxVZW'),
(18, 'habib', 'allasane ', 'yas@gmail.com', 0, '$2y$10$J4ZnZA1EbGN29YdhVBQhSOhBPPca552eCr7leQPGQlX3fpmNl7i5G', 1, 0, '$2y$10$tkgDhPohxxj5j.t0hgdK6.OsCZxT62VDcYF2sIQWrKMDeeOBSI/k2'),
(19, 'vqdgeggqeg', 'rgeggr', 'gogoog@gmail.com', 0, '$2y$10$6Lr567CO29EgsmgYEfQg0uwK14Ohq36OK82bkEGxsGhBhJ8EK3QB6', 1, 0, '$2y$10$M7zo9DKglsJGDGu0CaFO0eBShv/mtH.lMqkYvNehfk1ZWR5ioXLaa'),
(20, 'animashau', 'mikel', 'mik@gmail.com', 0, '$2y$10$q2yQWwfI26zs6XE.5jp3cOOOKItdo4MgKBvuYbXfnmGe8OtdUkIQu', 1, 0, '$2y$10$FpHvQxmtTX5esSmgguR3eOW3gl9HzRZplrt1vMPbXH70i1nA8ZgmW'),
(21, 'animashau', 'mikel', 'mikkk@gmail.com', 0, '$2y$10$/VatCPUd9yfz1R9VU9vWoO283sp./YvhyNhgkEL5WMNzVj7Cmir5O', 1, 0, '$2y$10$rV.VE4AfIs14/Kgn5YjOJOX8B7mUFTXLfKf31IJWesuwT1Q9rqA9e'),
(22, 'animashau', 'mikel', 'mikkkff@gmail.com', 0, '$2y$10$5bdwoKRV3WuNgpTPjDD5tueovlxHlV.VXANN3TCfVB6lVNamE9IlK', 1, 0, '$2y$10$lDj7LQMQYE35IPkgFhry9OR7CkORxDmiNtA7nLG6f4LXWEXIsBztO'),
(23, 'animashau', 'mikel', 'mikkcccccckff@gmail.com', 0, '$2y$10$v9ByyzPR2cmsdzrSId7F4OBGau2FUg06WuJ540AhbRRZ/cTjQO/9a', 1, 0, '$2y$10$Vw5YKUfc10jHpiLL2mOlCOz18jlh5iATrKmW97iq/rQ8CJvaX3Kvy'),
(24, 'TOKO', 'KAFID ', 'aks@comd.com', 0, '$2y$10$b/R8r0Kl20880wSmJhZTGu/PEg3hs1OLtdL7w286Pxy6BtXDFiXZy', 1, 0, '$2y$10$ClpZm6ZtRcLAbW2j8WNCrOr1ttgpxWKMKnBZeuPI4nqYBbVp9CcGa'),
(25, 'TOKO', 'KAFID ', 'aAAks@comd.com', 0, '$2y$10$DXjwNfml3yPmNGxKM8f6H..tozn/OORyEJT3dzOzCIghuOhysKxqG', 1, 0, '$2y$10$Uloxn4i85.bEdc3qtNg6JeyaIw7QrL/o7lSaBhhqJx8GmiDOPnVOu'),
(26, 'TOKO', 'KAFID ', 'aAAkss@comd.com', 0, '$2y$10$IY5njWobuBKMYXS5D60csO87wfvUpjgsc70ujnuztT6f3FGODSiXK', 1, 0, '$2y$10$RhLSRxjl6nliWiIJmUAFeuDJgqtbDro/f2aDEi7NVUbexU5CAm8/e'),
(27, 'TOKO', 'SIDIKOU', 'ppm@buandobu.com', 0, '$2y$10$PvM0PtFvJqXfbIyZe6Xpn.v.ga2Spm7hy6chuqBF39TpHSFBVSb9e', 1, 0, '$2y$10$7iy8LlyuK4N6yFZ6ZBwm8.Z3sjogVh9BV.rniXwCoOS5mXdqfCstW'),
(28, 'BALEYA ', 'DINE ', 'baleya@gmail.com', 0, '$2y$10$cDdgmQg4/9uVuueU3uTGeusSnCGTXdcwwSXkbMAECb8kWqFnDOu/q', 1, 0, '$2y$10$2CnzutSQqGbIwVrWxq4gQehyICisaXuTzipydi.cL8cp1ihxKbT.K'),
(29, 'BALEYA ', 'DINE ', 'baleyadine@gmail.com', 0, '$2y$10$ixt4.tDHsLYHRLZJ0Z/rfOUflmKH/Zm6Ffz8PUCjhdhy0Sw.rZm1u', 1, 0, '$2y$10$gdqIWoPIujS6EMEGYxVsZeO7ivEHkzh4i.vdiDiZnPvrJm9elOY36'),
(30, 'BALEYA ', 'DINE ', 'baleyadinem@gmail.com', 0, '$2y$10$EdlTzDjH9q2abITqQbU5TeDYMhLihn90WpuLXP5MXklQqoDR4r.4W', 1, 0, '$2y$10$AVGZfgRDM4xXRyRJKpgyvO/dtiDulFeiycd8IOC36Jf/bZmel51RS'),
(31, 'BALEYA ', 'DINE ', 'baleyadinemm@gmail.com', 0, '$2y$10$Umve8/kau0uSRAbbI86TlO0MqPHKZrSl25UV/6Cs.uD3xcAqqYS86', 1, 0, '$2y$10$YsMSQpwE8qmPakkvlypcoOd7yTyELvf5NssloFb0vwEArlRcNvh/S'),
(32, 'BALEYA ', 'DINE ', 'bale@gmail.com', 0, '$2y$10$w4q8dYzU2YwDOl4/lj71IefMaS.UNqJ4RJ1O383KZncZcgXprdM1W', 1, 0, '$2y$10$tonNi5vvEEZGjyCAzKrOmOrtCRjP9AgTjcD.v79z0x3FLUXL5G2lW'),
(33, 'BALEYA ', 'DINE ', 'baleeee@gmail.com', 0, '$2y$10$syFMLyyQh391uemFVF1Gmu0KkhHZGDSY4e/gDa3xFWFi6iqcWj/9K', 1, 0, '$2y$10$ZI3p9.EP6lLJ9Y8rfVlnr.U4k5k4azNION0bPyFdCcmvfRn1zVsIS'),
(34, 'mouri', 'DINE ', 'baleeeecc@gmail.com', 0, '$2y$10$0wzLx7m1PUI/b1yyIhAvdOmfJCOb1DsTNk9QmOYse5B8DUrSiVaTy', 1, 0, '$2y$10$BEUpJBAgbelUqY8pFoy8vuSnp8K1cfW6UAkjJkjwz5tvFXbPa.bee'),
(35, 'bale', 'moridine ', 'moridi@yahoo.fr', 0, '$2y$10$XzALPxPnduBuOh6OfuJWzOgyygN84iZIK4GYYp.eTdKkw9ND5iHnC', 1, 0, '$2y$10$oCw4wpf1EHDnADd.fFD4nei36Rd9KllPke4VsbFGC4WlcqlPnWQuG'),
(36, 'bale', 'moridine ', 'moridinne@yahoo.fr', 0, '$2y$10$uV63vpRloniKJlmZxoWngeJxB7d.2AQVSzGJMOeUJxoXNDx2XimAq', 1, 0, '$2y$10$5b68jdHi1T.RNrArRW3C5eWBnybP4yzcrXRcly5QUWgMSuG1t1Poy'),
(37, 'bale', 'moridine ', 'now@yahoo.fr', 0, '$2y$10$j/92r3SfbMIoCOSiARAHxO7XClCcqxmwQrTZV97M6SPDXXIAv4B9S', 1, 0, '$2y$10$48fdPvg7/8BQR7n7qD/jguIdGp2DsSKtXlUnomAK9Es2k0H5eeoj6'),
(38, 'bale', 'moridine ', 'noww@yahoo.fr', 0, '$2y$10$zkE4ElJZsJmVccdDRFlASOOTG383m/exhEo1vtNg9MLScnhooUMTO', 1, 0, '$2y$10$f4wuTtaSDNSJ4c2rCDhb3.VNtp8zTdD6.ivorK4U965BUvAAIWsk.'),
(39, 'bale', 'moridine ', 'nowggw@yahoo.fr', 0, '$2y$10$wXmfwlGXArEhXhcL4dTF/OeAIcL5Q/VCndeHL8174TsF6Yv8f7ZQm', 1, 0, '$2y$10$IsoCynOAPxv/dnaOUSl3i.4XRkm.9cJ9LUOBv2cVLEM0LBvRKXkBu'),
(40, 'bale', 'moridine ', 'nowggwd@yahoo.fr', 0, '$2y$10$wMMo3icnqIV/Li0SMtvXmezj2/zdG0tdR/wXilaRoP6cACyjK1d2m', 1, 0, '$2y$10$WG1FQQKo1juj8XAa71sKMO1Crx2K/ViVFB1obuKQw2yPxXvT.H3Eu'),
(41, 'akoto', 'moukadam', 'akoto@gmail.com', 0, '$2y$10$vQFI3SFP7VfkCHHUl21N0emm6i2jECmjXGJnSqYYxCOr5aifzoR1O', 1, 0, '$2y$10$qUxfLj8j0ybrlDQ7dRkYBeu9.pImFPDqLeiTvMF68SZW2lOInz/Z2'),
(42, 'akoto', 'moukadam', 'akotoo@gmail.com', 0, '$2y$10$B7HJz0HkZqCdkQJAbx/ddu8IDTWyhLYEf.Oq3cAB0r8SCpDiqc9ma', 1, 0, '$2y$10$xvRK6UiuLzJMOsKxVy2tLeh/f2jA1SekuLEtw7s3bSOBgjImrqjLq'),
(43, 'akoto', 'moukadam', 'akotooB@gmail.com', 0, '$2y$10$WY0dIKEw2PUzH/JXM3UlHeckOeVHQXB.GnCi.GfuXKH3GgNjXv.OW', 1, 0, '$2y$10$MSnWxF0VWTcFEWnDNVpn8ey5UCtKbRPIZtijoN5b//XwLmB5vUS8a'),
(44, 'bale', 'moridine ', 'nowggwDDd@yahoo.fr', 0, '$2y$10$kpHJGL1cKkXJjvhC0PWCTedqnbRxXExOYdsq/dxCCP1sc1CEqykgq', 1, 0, '$2y$10$wEGybXxAYO5nmFCl5aH94urHjsALnODYjG/dEDQXZpl7U/STtLGnK'),
(45, 'bale', 'moridine ', 'nowggwDDFFd@yahoo.fr', 0, '$2y$10$chDQTqPmirYqNNx1ZiKuneNuJNTb.9V3XFGF4zBsERxKmQ1hnOJCG', 1, 0, '$2y$10$EaZGUv1Ww5eK6w2w4YPg6eFzW/8p7tIC7vUxzNUn4S42wpICWGY7C'),
(46, 'akotoB', 'moukadam', 'akotooBD@gmail.com', 0, '$2y$10$gupRMhrzH8jEuAGIUSP7hecRn25yxD2toqGphAeF7fp/EtrNxUD2y', 1, 0, '$2y$10$JysBK5uea73KDYi0I6yRnuL6iuoU240SpxuROPs83tGTFYA9PETs2'),
(47, 'akotoB', 'moukadam', 'akotiiooBD@gmail.com', 0, '$2y$10$HbDnKskrMzq9Z2AqBAsSQu.Cix32b4MZuH0xExmpimaQqnpkZXOq.', 1, 0, '$2y$10$tV38KnqyCQAlFmhiAbsy0uLFW1mNBU4eI7j36EfPxpYviysjfyPHO'),
(48, 'bale', 'moridine ', 'nowggwnDDFFd@yahoo.fr', 0, '$2y$10$wFu/mwuR8BzzVKX.Wx6jseAGpTDS7xfaQt6wyAgafsuBG8wIpxwQa', 1, 0, '$2y$10$e8Aq6lESi9ZvqRU2XAElsO8YcZQXsez5Ijwq4Wsr0a40lqNsvi56S');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `controle`
--
ALTER TABLE `controle`
  ADD PRIMARY KEY (`id_patient`,`id_ppm`),
  ADD KEY `controle_ibfk_2` (`id_ppm`);

--
-- Index pour la table `diagnostic`
--
ALTER TABLE `diagnostic`
  ADD PRIMARY KEY (`id_patient`,`id_medecin`),
  ADD KEY `id_medecin` (`id_medecin`);

--
-- Index pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD PRIMARY KEY (`id_medecin`),
  ADD KEY `id_compte` (`id_compte`);

--
-- Index pour la table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id_patient`),
  ADD KEY `id_compte` (`id_compte`);

--
-- Index pour la table `ppm`
--
ALTER TABLE `ppm`
  ADD PRIMARY KEY (`id_ppm`),
  ADD KEY `id_compte` (`id_compte`),
  ADD KEY `id_medecin` (`id_medecin`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `medecin`
--
ALTER TABLE `medecin`
  MODIFY `id_medecin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT pour la table `patient`
--
ALTER TABLE `patient`
  MODIFY `id_patient` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `ppm`
--
ALTER TABLE `ppm`
  MODIFY `id_ppm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `controle`
--
ALTER TABLE `controle`
  ADD CONSTRAINT `controle_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id_patient`),
  ADD CONSTRAINT `controle_ibfk_2` FOREIGN KEY (`id_ppm`) REFERENCES `ppm` (`id_ppm`);

--
-- Contraintes pour la table `diagnostic`
--
ALTER TABLE `diagnostic`
  ADD CONSTRAINT `diagnostic_ibfk_1` FOREIGN KEY (`id_patient`) REFERENCES `patient` (`id_patient`),
  ADD CONSTRAINT `diagnostic_ibfk_2` FOREIGN KEY (`id_medecin`) REFERENCES `medecin` (`id_medecin`);

--
-- Contraintes pour la table `medecin`
--
ALTER TABLE `medecin`
  ADD CONSTRAINT `medecin_ibfk_1` FOREIGN KEY (`id_compte`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`id_compte`) REFERENCES `users` (`id`);

--
-- Contraintes pour la table `ppm`
--
ALTER TABLE `ppm`
  ADD CONSTRAINT `ppm_ibfk_1` FOREIGN KEY (`id_compte`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ppm_ibfk_2` FOREIGN KEY (`id_medecin`) REFERENCES `medecin` (`id_medecin`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
