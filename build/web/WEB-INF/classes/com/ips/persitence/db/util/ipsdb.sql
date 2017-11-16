-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 16-11-2017 a las 16:02:43
-- Versión del servidor: 5.6.20-log
-- Versión de PHP: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `ipsdb`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historyclinical`
--

CREATE TABLE IF NOT EXISTS `historyclinical` (
`ID` int(11) NOT NULL,
  `date` date NOT NULL,
  `current_illness` mediumtext NOT NULL,
  `rasonConsultation` text NOT NULL,
  `diagnostic` text NOT NULL,
  `formula` int(11) NOT NULL,
  `remison` text NOT NULL,
  `patient_id` int(11) NOT NULL,
  `professional_id` int(11) DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=403 ;

--
-- Volcado de datos para la tabla `historyclinical`
--

INSERT INTO `historyclinical` (`ID`, `date`, `current_illness`, `rasonConsultation`, `diagnostic`, `formula`, `remison`, `patient_id`, `professional_id`) VALUES
(303, '2018-06-06', 'dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus', 'amet, consectetuer adipiscing elit. Curabitur sed tortor. Integer aliquam adipiscing lacus. Ut nec urna et arcu imperdiet ullamcorper. Duis', 'orci lacus', 522723, '', 1234567, 644519337),
(304, '2018-01-03', 'dignissim lacus. Aliquam rutrum lorem', 'lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus', 'vitae, posuere', 191014, '', 1234568, 1037549327),
(305, '2018-06-02', 'vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt', 'Morbi sit amet', 'eu neque', 664966, '', 1234569, 1023341141),
(306, '2018-01-07', 'et malesuada fames ac turpis egestas. Aliquam fringilla cursus', 'a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est,', 'ac ipsum.', 475983, '', 1234570, 822436000),
(307, '2018-03-14', 'ullamcorper.', 'elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis', 'sed tortor.', 211300, '', 1234571, 1028722300),
(308, '2018-10-31', 'urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis', 'pede, nonummy ut, molestie in, tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis', 'et, lacinia', 835603, '', 1234572, 15170729),
(309, '2017-09-22', 'lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod', 'magnis dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci,', 'lorem, luctus', 606867, '', 1234573, 574736153),
(310, '2018-05-18', 'ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem', 'et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam', 'Donec tempor,', 628136, '', 1234574, 572882194),
(311, '2018-06-18', 'risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.', 'Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent', 'tempus mauris', 299065, '', 1234575, 242478360),
(312, '2017-01-19', 'vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec', 'accumsan convallis, ante lectus convallis est,', 'rutrum, justo.', 318710, '', 1234576, 697709403),
(313, '2017-04-27', 'ante. Vivamus non', 'non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui.', 'elit. Etiam', 415598, '', 1234577, 349587417),
(314, '2017-09-13', 'sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus,', 'velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper', 'purus. Duis', 340484, '', 1234578, 1083338636),
(315, '2018-09-05', 'Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec,', 'Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec,', 'Aenean gravida', 199412, '', 1234579, 1129657265),
(316, '2018-07-09', 'vel turpis. Aliquam adipiscing lobortis risus. In mi', 'in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi', 'Class aptent', 526384, '', 1234580, 989120433),
(317, '2018-03-17', 'ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui.', 'ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate', 'ornare lectus', 457985, '', 1234581, 378432483),
(318, '2017-01-21', 'arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus.', 'dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae', 'ipsum dolor', 392778, '', 1234582, 573429302),
(319, '2017-11-28', 'tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu', 'consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis', 'pharetra sed,', 1028361, '', 1234583, 170085785),
(320, '2017-07-16', 'non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum', 'felis. Donec tempor, est ac mattis', 'eleifend, nunc', 1172631, '', 1234584, 311529339),
(321, '2017-12-15', 'tempus', 'nec, cursus a, enim. Suspendisse aliquet,', 'Mauris ut', 603539, '', 1234585, 426270931),
(322, '2018-11-08', 'amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non,', 'aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy', 'risus. In', 614979, '', 1234586, 1164058604),
(323, '2016-11-19', 'lorem ut aliquam iaculis, lacus pede sagittis augue, eu', 'In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris', 'nulla. Cras', 767964, '', 1234587, 463710924),
(324, '2018-10-20', 'Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut,', 'lobortis risus. In', 'est ac', 762920, '', 1234588, 716677000),
(325, '2017-04-22', 'justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit', 'commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper', 'Quisque imperdiet,', 773840, '', 1234589, 254904141),
(326, '2018-02-12', 'iaculis nec, eleifend non, dapibus rutrum, justo.', 'leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie', 'interdum ligula', 1080506, '', 1234590, 976840386),
(327, '2017-07-19', 'magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo.', 'orci, in', 270651, '', 1234591, 950945160),
(328, '2018-10-15', 'nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim.', 'lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel,', 'ac mattis', 886915, '', 1234592, 738509599),
(329, '2018-06-22', 'vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam,', 'vulputate eu,', 'scelerisque scelerisque', 541799, '', 1234593, 235681063),
(330, '2018-05-21', 'elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat', 'turpis vitae purus gravida sagittis. Duis', 'magna, malesuada', 747557, '', 1234594, 1123074832),
(331, '2018-04-04', 'ullamcorper. Duis at lacus. Quisque purus sapien,', 'nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac sem', 'vel, mauris.', 189561, '', 1234595, 628408784),
(332, '2018-03-06', 'nonummy ac, feugiat non, lobortis quis, pede.', 'nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui', 'vitae, posuere', 705070, '', 1234596, 817875576),
(333, '2017-10-21', 'mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec', 'ullamcorper, nisl arcu iaculis enim, sit amet ornare lectus justo', 'vitae velit', 558584, '', 1234597, 876769998),
(334, '2018-09-17', 'vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget', 'tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus.', 'a sollicitudin', 881014, '', 1234598, 146953765),
(335, '2017-01-06', 'Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue ut', 'Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis', 'lectus rutrum', 840437, '', 1234599, 658202288),
(336, '2018-01-08', 'cursus et, magna. Praesent interdum', 'Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est', 'Phasellus dolor', 696649, '', 1234600, 646792240),
(337, '2017-06-06', 'mattis velit justo nec', 'luctus. Curabitur egestas nunc sed libero. Proin sed turpis', 'sagittis augue,', 163688, '', 1234601, 88390445),
(338, '2017-02-04', 'Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium', 'placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla', 'id magna', 31168, '', 1234602, 584639731),
(339, '2016-11-30', 'lectus sit amet luctus vulputate, nisi', 'pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id', 'elit. Etiam', 1181376, '', 1234603, 479306981),
(340, '2018-06-15', 'a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris', 'volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor', 'in consequat', 815475, '', 1234604, 385377140),
(341, '2016-11-24', 'turpis vitae purus gravida sagittis.', 'lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis', 'risus. Nulla', 11275, '', 1234605, 190842791),
(342, '2017-12-05', 'risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi.', 'Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at,', 'mauris eu', 481103, '', 1234606, 1175676104),
(343, '2017-06-30', 'commodo ipsum.', 'quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris', 'pharetra nibh.', 1128123, '', 1234607, 399672161),
(344, '2017-08-09', 'dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla', 'Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel,', 'quis, pede.', 609988, '', 1234608, 698378413),
(345, '2017-03-17', 'Ut tincidunt vehicula risus. Nulla', 'Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat', 'a nunc.', 442958, '', 1234609, 536409619),
(346, '2018-05-09', 'facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo', 'lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet,', 'lectus, a', 182138, '', 1234610, 1046147803),
(347, '2017-09-30', 'fermentum arcu. Vestibulum ante ipsum primis', 'tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et', 'vel turpis.', 537913, '', 1234611, 435228167),
(348, '2017-03-02', 'per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In', 'sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue', 'sapien. Cras', 1155564, '', 1234612, 764061323),
(349, '2018-07-10', 'lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus', 'nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus sapien, gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum massa rutrum magna. Cras convallis convallis dolor. Quisque tincidunt pede ac urna.', 'aliquam arcu.', 478611, '', 1234613, 375325817),
(350, '2017-06-01', 'arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet', 'Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in', 'ac risus.', 759602, '', 1234614, 617889879),
(351, '2017-05-04', 'feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit', 'vel nisl.', 'dolor quam,', 674703, '', 1234615, 653926122),
(352, '2017-01-14', 'non quam. Pellentesque habitant morbi tristique senectus et netus et', 'Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et,', 'pede. Cum', 238298, '', 1234616, 367991357),
(353, '2017-03-23', 'Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum', 'tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis', 'bibendum fermentum', 574584, '', 1234617, 515126742),
(354, '2018-11-09', 'lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi', 'pharetra sed, hendrerit a, arcu. Sed et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor', 'nisl. Maecenas', 1008635, '', 1234618, 1172337003),
(355, '2018-04-06', 'blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis', 'amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed', 'nunc id', 601723, '', 1234619, 863587767),
(356, '2017-08-24', 'suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis', 'Donec egestas. Aliquam nec enim. Nunc ut erat. Sed', 'sed, est.', 576490, '', 1234620, 542405504),
(357, '2017-08-24', 'Sed neque. Sed eget lacus. Mauris non dui nec', 'congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam', 'dignissim lacus.', 347720, '', 1234621, 263973490),
(358, '2017-04-02', 'tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula.', 'placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam.', 'auctor, nunc', 639106, '', 1234622, 138815545),
(359, '2017-11-11', 'vehicula', 'Vivamus euismod urna. Nullam lobortis quam', 'imperdiet dictum', 788982, '', 1234623, 365867147),
(360, '2018-03-14', 'amet metus. Aliquam erat volutpat.', 'Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper.', 'elementum at,', 262495, '', 1234624, 704903469),
(361, '2016-12-30', 'tristique ac, eleifend vitae, erat. Vivamus nisi.', 'feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas', 'vel, faucibus', 1173183, '', 1234625, 759545351),
(362, '2017-10-19', 'cursus purus. Nullam scelerisque neque sed sem egestas', 'eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras', 'Phasellus libero', 989064, '', 1234626, 7491484),
(363, '2018-02-26', 'in aliquet', 'et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc', 'ullamcorper. Duis', 937449, '', 1234627, 819287061),
(364, '2017-04-27', 'consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at,', 'Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec', 'iaculis enim,', 1141847, '', 1234628, 134021272),
(365, '2017-07-20', 'tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi.', 'eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis', 'lobortis risus.', 714886, '', 1234629, 869585552),
(366, '2017-06-19', 'dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat', 'tempus eu, ligula. Aenean euismod mauris eu elit. Nulla facilisi. Sed neque. Sed eget lacus. Mauris non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas', 'Mauris non', 796336, '', 1234630, 361620391),
(367, '2018-05-06', 'sed tortor. Integer aliquam adipiscing lacus. Ut', 'vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu,', 'Donec egestas.', 77500, '', 1234631, 718494414),
(368, '2018-04-11', 'sollicitudin adipiscing ligula. Aenean', 'lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum', 'congue turpis.', 169145, '', 1234632, 449942753),
(369, '2017-07-14', 'amet, consectetuer adipiscing', 'bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec', 'ornare tortor', 703737, '', 1234633, 260514522),
(370, '2017-12-08', 'Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim', 'egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id,', 'vulputate, nisi', 1209629, '', 1234634, 575755010),
(371, '2018-01-03', 'Integer vitae nibh. Donec est mauris, rhoncus', 'porttitor eros nec tellus. Nunc lectus pede, ultrices a, auctor non, feugiat nec, diam. Duis mi enim, condimentum eget, volutpat ornare, facilisis eget, ipsum. Donec sollicitudin adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus', 'vehicula risus.', 34908, '', 1234635, 828200559),
(372, '2018-03-27', 'lobortis', 'tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu', 'ridiculus mus.', 817549, '', 1234636, 1094361212),
(373, '2017-04-04', 'rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at,', 'sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor', 'sem, vitae', 290456, '', 1234637, 759448835),
(374, '2017-10-12', 'in sodales elit erat vitae risus. Duis a mi fringilla', 'Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim', 'neque tellus,', 997132, '', 1234638, 243253179),
(375, '2017-04-02', 'Class aptent taciti sociosqu', 'ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod', 'sociis natoque', 1106798, '', 1234639, 438818925),
(376, '2017-10-09', 'imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris', 'eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis. Aliquam adipiscing lobortis risus. In mi pede, nonummy ut, molestie in, tempus eu, ligula.', 'nascetur ridiculus', 834749, '', 1234640, 310351769),
(377, '2018-09-18', 'gravida. Aliquam', 'tristique aliquet. Phasellus fermentum convallis ligula. Donec', 'ante bibendum', 390345, '', 1234641, 600272808),
(378, '2018-03-07', 'magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla.', 'est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis,', 'felis eget', 1181450, '', 1234642, 787307773),
(379, '2018-10-10', 'malesuada fames ac turpis egestas.', 'Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim. Curabitur massa. Vestibulum accumsan neque et nunc. Quisque ornare tortor at risus. Nunc ac', 'lorem ut', 262581, '', 1234643, 975679864),
(380, '2018-09-03', 'vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros', 'risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci,', 'varius orci,', 445351, '', 1234644, 518469775),
(381, '2017-10-14', 'elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis', 'congue a, aliquet vel, vulputate eu,', 'massa non', 891575, '', 1234645, 560376994),
(382, '2017-11-23', 'mauris, rhoncus id,', 'ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non,', 'consequat nec,', 192274, '', 1234646, 1111194457),
(383, '2017-08-19', 'elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate', 'nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'Quisque porttitor', 235440, '', 1234647, 801889231),
(384, '2017-07-06', 'adipiscing ligula. Aenean gravida nunc sed pede. Cum sociis natoque penatibus', 'egestas hendrerit', 'vulputate eu,', 501448, '', 1234648, 761953150),
(385, '2017-02-11', 'pede. Cum', 'metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a,', 'diam lorem,', 1186853, '', 1234649, 165074075),
(386, '2017-09-10', 'ac mattis velit justo nec ante. Maecenas mi', 'ligula elit, pretium et, rutrum non, hendrerit id, ante. Nunc mauris sapien,', 'Nullam suscipit,', 306229, '', 1234650, 65544885),
(387, '2018-09-05', 'egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa.', 'Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget', 'tincidunt pede', 1052390, '', 1234651, 195336539),
(388, '2017-12-14', 'pretium aliquet,', 'consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend', 'Vestibulum ante', 739253, '', 1234652, 728940631),
(389, '2017-12-29', 'bibendum sed, est. Nunc laoreet', 'Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices,', 'Duis at', 993969, '', 1234653, 554264037),
(390, '2018-07-24', 'mi felis, adipiscing', 'dui quis', 'non, egestas', 233547, '', 1234654, 160404402),
(391, '2017-10-21', 'vehicula et, rutrum eu, ultrices sit amet, risus.', 'dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras', 'sollicitudin orci', 1010743, '', 1234655, 1025351725),
(392, '2016-12-06', 'tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet,', 'dolor, nonummy ac, feugiat non, lobortis quis, pede.', 'nunc sed', 1164533, '', 1234656, 659984299),
(393, '2017-04-09', 'sem magna nec quam. Curabitur vel lectus. Cum', 'iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet', 'luctus. Curabitur', 657409, '', 1234657, 916974525),
(394, '2018-07-31', 'non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat.', 'metus.', 'sagittis lobortis', 136168, '', 1234658, 86855526),
(395, '2017-12-16', 'sagittis semper.', 'aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum.', 'et risus.', 1096712, '', 1234659, 923282234),
(396, '2017-01-05', 'tincidunt nibh.', 'ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet, faucibus ut, nulla. Cras eu tellus eu augue', 'sed pede', 865386, '', 1234660, 881192120),
(397, '2018-08-05', 'eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 'dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper', 'Sed dictum.', 348907, '', 1234661, 1108964389),
(398, '2018-10-29', 'Cras vehicula aliquet libero. Integer', 'dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis.', 'Aenean eget', 1203725, '', 1234662, 538692892),
(399, '2017-07-12', 'porttitor vulputate,', 'sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat', 'sem ut', 928856, '', 1234663, 853391769),
(400, '2018-03-31', 'nisl arcu', 'quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum', 'eros non', 451095, '', 1234664, 189731688),
(401, '2017-04-02', 'parturient montes, nascetur ridiculus mus. Proin vel arcu', 'et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus.', 'Morbi metus.', 340378, '', 1234665, 265145911),
(402, '2018-02-24', 'consectetuer mauris id sapien. Cras', 'mauris a nunc.', 'Nunc pulvinar', 439554, '', 1234666, 654525664);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `patient_record`
--

CREATE TABLE IF NOT EXISTS `patient_record` (
`patient_id` int(11) NOT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `patient_email` varchar(50) DEFAULT NULL,
  `patient_gender` varchar(1) DEFAULT NULL,
  `patient_address` varchar(100) DEFAULT NULL,
  `patient_age` int(3) NOT NULL,
  `patient_zone` varchar(10) DEFAULT NULL,
  `patient_numphone` varchar(25) NOT NULL,
  `patient_occupations` varchar(80) DEFAULT NULL,
  `patient_identification` int(11) NOT NULL,
  `patient_birthdate` date NOT NULL,
  `patient_birthplace` varchar(80) NOT NULL,
  `patient_typeReg` varchar(80) NOT NULL DEFAULT 'Contributivo'
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=347 ;

--
-- Volcado de datos para la tabla `patient_record`
--

INSERT INTO `patient_record` (`patient_id`, `patient_name`, `patient_email`, `patient_gender`, `patient_address`, `patient_age`, `patient_zone`, `patient_numphone`, `patient_occupations`, `patient_identification`, `patient_birthdate`, `patient_birthplace`, `patient_typeReg`) VALUES
(232, 'Deirdre Reyes', 'dolor.dapibus@enimcommodohendrerit.edu', 'M', 'Apdo.:318-390 Nibh ', 134, 'Urbano', '1-787-520-6316', 'Obrero', 1234570, '2017-11-06', 'Independence', 'Contributivo'),
(233, 'Zeus P. Pena', 'imperdiet.ornare@dolorsit.co.uk', 'M', 'Apartado núm.: 109, 9608 Placerat Avenida', 146, 'Urbano', '781-0210', 'NA', 1234571, '2018-03-19', 'Curepto', 'Contributivo'),
(234, 'Brian A. Russell', 'dapibus@elementumategestas.co.uk', 'F', 'Apartado núm.: 397, 9638 Ipsum Ctra.', 115, 'Urbano', '1-630-340-0529', 'Estudiate', 1234572, '2018-02-27', 'Santa Luzia', 'Contributivo'),
(235, 'Daquan Ayala', 'Aliquam.fringilla@cursuset.org', 'M', '210-6983 Aliquam Avenida', 81, 'Rural', '', 'empresario', 1234573, '2017-01-09', 'Quillón', 'Contributivo'),
(236, 'Beau Pierce', 'et@ullamcorper.org', 'M', '156-5153 Sed Calle', 17, 'Rural', '394-8872', 'empresario', 1234574, '2017-11-29', 'Istanbul', 'Subsidiado'),
(237, 'Uriel Diaz', 'Sed.eu@ipsum.edu', 'M', '861-8425 Tellus. Calle', 76, 'Rural', '625-0616', 'Obrero', 1234575, '2018-10-18', 'Castle Douglas', 'Subsidiado'),
(238, 'Illana K. Finley', 'pellentesque.a@Innecorci.ca', 'M', '3301 Quisque Avenida', 144, 'Rural', '1-617-334-1155', 'enfermero', 1234576, '2018-11-10', 'Traun', 'Contributivo'),
(239, 'Althea Rivera', 'non.ante@vulputate.ca', 'M', 'Apartado núm.: 218, 9960 Et C.', 25, 'Rural', '233-1671', 'NA', 1234577, '2018-07-20', 'Birmingham', 'Subsidiado'),
(241, 'Angelica Wilkerson', 'lobortis.quis@molestie.net', 'M', '340-1341 Eleifend, Avda.', 6, 'Rural', '1-552-382-9945', 'Medico', 1234579, '2017-12-06', 'Sint-Pieters-Kapelle', 'Subsidiado'),
(242, 'Orla Joyner', 'tincidunt.neque@orciin.net', 'M', 'Apdo.:888-2424 Arcu. Calle', 126, 'Urbano', '757-3529', 'Medico', 1234580, '2018-01-23', 'Bathurst', 'Contributivo'),
(243, 'Lee Nguyen', 'sed.pede.nec@tristiquepellentesque.co.uk', 'F', '133 Ac Ctra.', 89, 'Urbano', '594-4202', 'Estudiate', 1234581, '2016-12-23', 'Loughborough', 'Contributivo'),
(244, 'Perry M. Richards', 'aliquam.eu.accumsan@pretiumet.net', 'F', '134-3066 Ligula. C.', 32, 'Rural', '1-635-852-7939', 'Estudiate', 1234582, '2018-05-30', 'Zaffelare', 'Subsidiado'),
(245, 'Ralph U. Murphy', 'ac.libero.nec@arcuet.ca', 'F', '710-9556 Vulputate Av.', 145, 'Urbano', '737-7726', 'Obrero', 1234583, '2017-08-25', 'Lancaster', 'Subsidiado'),
(246, 'Emma W. Peck', 'tempor.augue@laoreetposuereenim.org', 'F', '498 Nisl Av.', 100, 'Urbano', '860-9741', 'Estudiate', 1234584, '2017-05-23', 'Port Blair', 'Contributivo'),
(247, 'Echo I. Rivera', 'Donec@egestas.org', 'M', 'Apdo.:853-4225 Sagittis C.', 35, 'Urbano', '1-686-913-5547', 'Ingeniero', 1234585, '2018-06-30', 'Bonvicino', 'Contributivo'),
(248, 'Ivy Q. Avila', 'Curae@pedemalesuada.org', 'F', 'Apdo.:586-9570 Laoreet ', 142, 'Urbano', '865-7265', 'Ingeniero', 1234586, '2017-01-06', 'Vaulx-lez-Chimay', 'Subsidiado'),
(249, 'Martha E. Stuart', 'Aliquam@auctorquis.ca', 'F', 'Apartado núm.: 362, 3167 Ac C/', 89, 'Rural', '1-953-460-8810', 'Ingeniero', 1234587, '2016-12-02', 'Oostakker', 'Contributivo'),
(250, 'Merrill Guerra', 'scelerisque.dui@fringillaDonec.org', 'M', '513-9014 Metus. Ctra.', 120, 'Rural', '800-0631', 'empresario', 1234588, '2018-09-25', 'Liers', 'Contributivo'),
(251, 'Blaze G. Lang', 'a.neque.Nullam@esttempor.co.uk', 'M', 'Apdo.:518-5354 Gravida Av.', 122, 'Rural', '1-258-825-3611', 'Ingeniero', 1234589, '2017-12-26', 'Carmen', 'Subsidiado'),
(252, 'Dominic C. Farley', 'justo.sit@semperduilectus.org', 'F', '772-9205 Montes, Carretera', 130, 'Rural', '801-4963', 'NA', 1234590, '2017-11-11', 'Nottingham', 'Contributivo'),
(253, 'Cheyenne Holmes', 'augue.ut@acorciUt.ca', 'F', '6256 Sit Avda.', 47, 'Rural', '190-9837', 'Medico', 1234591, '2017-10-28', 'Litueche', 'Subsidiado'),
(254, 'Tucker H. Lawson', 'elementum@lobortis.ca', 'M', '9572 Rhoncus. Calle', 40, 'Urbano', '231-2829', 'Ingeniero', 1234592, '2017-01-31', 'Okene', 'Subsidiado'),
(255, 'MacKenzie Cameron', 'quis.turpis@eu.org', 'M', '527-5564 Quis C/', 128, 'Urbano', '428-5858', 'Obrero', 1234593, '2018-05-31', 'Ripabottoni', 'Contributivo'),
(256, 'Joan Ortega', 'lorem.lorem@malesuada.com', 'F', '6225 Vel, Calle', 43, 'Rural', '135-8228', 'Ingeniero', 1234594, '2017-11-20', 'Kerikeri', 'Contributivo'),
(257, 'Indira Whitley', 'Nam.interdum@lacinia.org', 'M', 'Apartado núm.: 141, 8531 Eget Ctra.', 126, 'Urbano', '525-5421', 'Obrero', 1234595, '2017-02-06', 'Eschwege', 'Contributivo'),
(258, 'Meredith W. Gilbert', 'nibh.Phasellus@sodales.edu', 'M', 'Apdo.:954-4636 Congue Avda.', 79, 'Urbano', '266-5752', 'Medico', 1234596, '2017-11-21', 'Bon Accord', 'Contributivo'),
(259, 'Oren X. Hood', 'non.enim@luctusCurabitur.org', 'F', 'Apartado núm.: 828, 2319 Erat Avda.', 55, 'Rural', '1-188-988-5874', 'empresario', 1234597, '2017-07-31', 'Charleville-Mézières', 'Subsidiado'),
(260, 'Moses W. Charles', 'erat@at.net', 'M', '223-1531 Cum C.', 86, 'Urbano', '832-5050', 'Obrero', 1234598, '2018-01-05', 'Southend', 'Subsidiado'),
(261, 'Dawn Powers', 'Vestibulum.ut@CuraePhasellusornare.com', 'M', 'Apartado núm.: 877, 2611 Aliquam ', 61, 'Rural', '1-650-117-8057', 'Medico', 1234599, '2018-01-30', 'Pugwash', 'Contributivo'),
(262, 'Nissim Y. Kinney', 'nisi.nibh.lacinia@nisl.com', 'M', '916-9346 Arcu Carretera', 66, 'Urbano', '1-230-934-1403', 'NA', 1234600, '2017-10-09', 'Orilla', 'Contributivo'),
(263, 'Branden Mccullough', 'lobortis.mauris@sitametlorem.edu', 'M', '3801 Nulla Av.', 49, 'Urbano', '834-1888', 'empresario', 1234601, '2018-06-15', 'North Bay', 'Subsidiado'),
(264, 'Maggie D. Smith', 'sed.sapien.Nunc@metusInlorem.org', 'M', '923-8249 Ultricies Avenida', 109, 'Urbano', '1-905-714-2619', 'Obrero', 1234602, '2016-12-21', 'Bazel', 'Contributivo'),
(265, 'Malcolm Z. Montgomery', 'velit@tincidunt.ca', 'M', '9994 Elit ', 113, 'Rural', '379-8167', 'Estudiate', 1234603, '2018-08-09', 'St. John''s', 'Subsidiado'),
(266, 'Chanda O. Klein', 'in.faucibus@massaSuspendisse.net', 'F', 'Apartado núm.: 855, 823 Elit Av.', 138, 'Urbano', '1-875-123-2703', 'Ingeniero', 1234604, '2016-12-05', 'Villers-Poterie', 'Subsidiado'),
(267, 'Oren Leon', 'montes.nascetur.ridiculus@augue.net', 'M', '6134 Laoreet ', 54, 'Urbano', '189-6881', 'NA', 1234605, '2018-10-18', 'Nil-Saint-Vincent-Saint-Martin', 'Subsidiado'),
(268, 'Troy Holt', 'at.egestas.a@nonenim.net', 'M', '224-1188 Nec, C.', 93, 'Rural', '602-1639', 'Obrero', 1234606, '2018-04-03', 'Rawalpindi', 'Subsidiado'),
(269, 'Priscilla Hinton', 'auctor@loremac.org', 'M', '1827 Lobortis Ctra.', 93, 'Rural', '260-6755', 'Ingeniero', 1234607, '2017-01-18', 'Ortonovo', 'Subsidiado'),
(270, 'Jemima Q. Bolton', 'Praesent.interdum.ligula@eratvitae.co.uk', 'M', '336-738 Enim. Avenida', 92, 'Urbano', '123-6662', 'NA', 1234608, '2017-08-14', 'Potsdam', 'Subsidiado'),
(271, 'Hilary Sanders', 'Cum.sociis.natoque@sapienmolestieorci.org', 'M', 'Apdo.:205-7330 Nec Avenida', 137, 'Rural', '815-6831', 'empresario', 1234609, '2017-02-06', 'Chatteris', 'Contributivo'),
(272, 'Brennan B. Aguilar', 'senectus.et.netus@metus.com', 'F', 'Apdo.:730-9371 Lacus ', 82, 'Urbano', '710-1620', 'enfermero', 1234610, '2018-09-16', 'Gavorrano', 'Subsidiado'),
(273, 'Ezra F. Kirby', 'Sed@egetlaoreetposuere.co.uk', 'F', 'Apartado núm.: 561, 2344 Ullamcorper. C.', 17, 'Rural', '1-574-607-7097', 'Medico', 1234611, '2016-12-31', 'Puerto Montt', 'Subsidiado'),
(274, 'Christian Dotson', 'sit.amet.risus@quis.edu', 'F', '1129 In, Av.', 131, 'Urbano', '453-5441', 'Estudiate', 1234612, '2018-04-24', 'Tarragona', 'Subsidiado'),
(275, 'Dale Rich', 'a@Nuncmauriselit.edu', 'F', '677-209 Suspendisse C/', 131, 'Rural', '1-395-488-2025', 'NA', 1234613, '2018-08-15', 'Petorca', 'Contributivo'),
(276, 'Amethyst Hammond', 'nec.quam.Curabitur@iaculislacus.net', 'M', '902-8404 Eu Ctra.', 116, 'Rural', '477-3887', 'NA', 1234614, '2017-03-25', 'Montauban', 'Contributivo'),
(277, 'Violet O. Kinney', 'eu.enim@tellusimperdiet.edu', 'F', 'Apdo.:902-1797 Semper, Avenida', 49, 'Rural', '1-179-898-6124', 'Ingeniero', 1234615, '2017-07-15', 'Fuenlabrada', 'Contributivo'),
(278, 'Tamekah D. Vincent', 'mus@parturientmontesnascetur.com', 'F', '923-7187 Rutrum, Av.', 115, 'Urbano', '283-2714', 'empresario', 1234616, '2018-01-21', 'Chennai', 'Subsidiado'),
(279, 'Medge Alvarado', 'elementum@sapiencursus.ca', 'F', 'Apdo.:460-4213 Sem. C/', 31, 'Urbano', '364-3456', 'NA', 1234617, '2018-06-27', 'Brighton', 'Subsidiado'),
(280, 'Zephr Z. Pratt', 'fringilla.Donec.feugiat@Vestibulumante.org', 'F', '2758 Litora Calle', 17, 'Rural', '712-9434', 'Ingeniero', 1234618, '2018-06-29', 'Mol', 'Contributivo'),
(281, 'Aurelia Sykes', 'Integer@a.co.uk', 'M', 'Apdo.:808-8881 Nisl. Carretera', 126, 'Rural', '272-9625', 'Ingeniero', 1234619, '2018-06-27', 'Ottignies-Louvain-la-Neuve', 'Contributivo'),
(282, 'Daria W. Barron', 'urna.nec@consectetueradipiscing.co.uk', 'F', 'Apartado núm.: 459, 9645 Dolor Avda.', 100, 'Urbano', '841-1241', 'Medico', 1234620, '2018-05-26', 'Limoges', 'Subsidiado'),
(283, 'Bertha Rutledge', 'eget.metus.eu@Etiam.edu', 'M', 'Apdo.:403-8482 Elit. Ctra.', 63, 'Rural', '1-181-675-1119', 'Estudiate', 1234621, '2018-06-04', 'Saint-Nicolas', 'Subsidiado'),
(284, 'Ayanna Poole', 'nonummy.ac.feugiat@Sed.org', 'M', 'Apdo.:253-6499 Ac, Ctra.', 65, 'Urbano', '410-6608', 'empresario', 1234622, '2017-10-07', 'Meldert', 'Subsidiado'),
(285, 'Tatum Best', 'Nunc@vulputatenisisem.co.uk', 'F', 'Apartado núm.: 635, 342 Morbi Ctra.', 39, 'Urbano', '1-253-272-8023', 'Estudiate', 1234623, '2017-06-08', 'Alness', 'Subsidiado'),
(286, 'Salvador Z. Gonzales', 'a@maurisMorbinon.org', 'M', 'Apartado núm.: 317, 7309 Vehicula. ', 27, 'Rural', '1-497-165-6384', 'enfermero', 1234624, '2018-10-19', 'Pradamano', 'Contributivo'),
(287, 'Hilel Howell', 'Donec.est.mauris@ipsumleoelementum.co.uk', 'F', 'Apdo.:369-9956 Enim. Ctra.', 119, 'Rural', '1-499-775-7113', 'NA', 1234625, '2017-03-15', 'Zweibrücken', 'Subsidiado'),
(288, 'Jelani Case', 'Phasellus.vitae@odioPhasellus.net', 'M', 'Apdo.:221-7467 Arcu Carretera', 16, 'Urbano', '876-1752', 'Ingeniero', 1234626, '2018-10-30', 'Wels', 'Subsidiado'),
(289, 'Faith Q. Hartman', 'egestas.Aliquam@tinciduntcongueturpis.net', 'F', '2698 Enim Calle', 27, 'Rural', '605-2394', 'empresario', 1234627, '2018-08-21', 'Newport News', 'Contributivo'),
(290, 'Dahlia D. Carson', 'Nulla.facilisi.Sed@loremegetmollis.ca', 'F', '9927 Ac Av.', 55, 'Urbano', '349-4342', 'Medico', 1234628, '2017-02-04', 'Masone', 'Contributivo'),
(291, 'Maya Rice', 'Sed@Integertinciduntaliquam.edu', 'M', 'Apdo.:243-1232 Faucibus Ctra.', 79, 'Urbano', '1-720-311-4830', 'Ingeniero', 1234629, '2017-09-10', 'Nizip', 'Subsidiado'),
(292, 'Amaya Kidd', 'neque@loremfringilla.com', 'F', '518 Dui. Avenida', 87, 'Rural', '175-6659', 'Estudiate', 1234630, '2017-04-29', 'Uluberia', 'Contributivo'),
(293, 'Nomlanga Witt', 'ligula@cursusdiamat.net', 'M', '5421 Eleifend Ctra.', 96, 'Urbano', '298-1735', 'enfermero', 1234631, '2016-12-01', 'Jönköping', 'Contributivo'),
(294, 'Honorato C. Bell', 'orci@nequeInornare.ca', 'F', '141-6429 Dui. Ctra.', 52, 'Urbano', '1-282-423-6635', 'Ingeniero', 1234632, '2016-11-30', 'Merritt', 'Contributivo'),
(295, 'Frances Sutton', 'faucibus.orci.luctus@Etiambibendumfermentum.co.uk', 'F', 'Apdo.:604-7586 Non C/', 130, 'Rural', '1-464-318-2951', 'Ingeniero', 1234633, '2016-12-05', 'Liverpool', 'Contributivo'),
(296, 'Jason P. Montoya', 'neque.et.nunc@sapienAenean.com', 'M', 'Apdo.:138-4738 Blandit Ctra.', 50, 'Urbano', '1-895-964-5703', 'Obrero', 1234634, '2018-10-02', 'Columbus', 'Contributivo'),
(297, 'Alfonso Scott', 'urna@convallisconvallis.com', 'F', 'Apdo.:712-5026 Et, Avenida', 125, 'Urbano', '838-6441', 'Medico', 1234635, '2017-09-09', 'Tarcento', 'Subsidiado'),
(298, 'Sigourney L. Sweeney', 'in.tempus.eu@mauris.org', 'M', 'Apartado núm.: 622, 8929 Fringilla C.', 144, 'Rural', '181-6578', 'Medico', 1234636, '2017-10-11', 'Aalen', 'Subsidiado'),
(299, 'Edward Calderon', 'nibh.Aliquam@Craslorem.net', 'F', 'Apdo.:871-5435 Adipiscing Avenida', 31, 'Urbano', '543-6781', 'Ingeniero', 1234637, '2016-12-25', 'Corbais', 'Subsidiado'),
(300, 'Diana K. Rollins', 'Curae.Donec.tincidunt@loremlorem.net', 'F', 'Apartado núm.: 672, 7358 Neque Avda.', 25, 'Rural', '1-601-264-1419', 'Obrero', 1234638, '2018-01-01', 'Armento', 'Contributivo'),
(301, 'Barrett Q. Black', 'Nulla.dignissim@tempor.edu', 'M', 'Apartado núm.: 715, 2767 Ultricies Av.', 48, 'Rural', '1-590-605-6110', 'NA', 1234639, '2017-02-02', 'Fraser Lake', 'Subsidiado'),
(302, 'Preston K. Hopkins', 'Curae@sodalesat.co.uk', 'M', 'Apdo.:175-6231 Donec C/', 139, 'Rural', '1-109-152-5173', 'Obrero', 1234640, '2018-05-18', 'Casacalenda', 'Contributivo'),
(303, 'Chancellor M. Gay', 'elit.dictum.eu@venenatis.edu', 'M', 'Apartado núm.: 541, 4531 Aliquet ', 37, 'Rural', '1-805-605-3056', 'Ingeniero', 1234641, '2017-11-23', 'Todi', 'Subsidiado'),
(304, 'Uma Q. Larson', 'ut.aliquam.iaculis@placerat.edu', 'M', 'Apartado núm.: 359, 8081 Ac C.', 26, 'Urbano', '735-9116', 'empresario', 1234642, '2016-12-04', 'Aserrí', 'Subsidiado'),
(305, 'Garth Wood', 'malesuada.ut@dictumPhasellusin.edu', 'F', 'Apartado núm.: 805, 2655 Tempor C/', 128, 'Rural', '1-734-673-4059', 'empresario', 1234643, '2017-12-04', 'Lonquimay', 'Contributivo'),
(306, 'Armand Anderson', 'cursus.non.egestas@ultriciesligulaNullam.com', 'M', '2896 Quam Av.', 28, 'Rural', '144-2637', 'empresario', 1234644, '2018-06-12', 'Orilla', 'Contributivo'),
(307, 'Hedley Prince', 'hendrerit.consectetuer@Nuncmauriselit.co.uk', 'M', 'Apdo.:688-4145 Neque ', 81, 'Rural', '348-2281', 'empresario', 1234645, '2018-09-01', 'Pietraroja', 'Contributivo'),
(308, 'Iona M. Fry', 'Donec.tincidunt.Donec@sit.edu', 'F', '993-3889 Nibh. C/', 9, 'Urbano', '1-633-360-2829', 'Ingeniero', 1234646, '2018-10-08', 'Grande Cache', 'Subsidiado'),
(309, 'Nomlanga M. Craig', 'ipsum.leo.elementum@vehiculaetrutrum.ca', 'F', '119 Ligula Ctra.', 142, 'Urbano', '1-818-366-3498', 'Obrero', 1234647, '2018-09-02', 'Porto Cesareo', 'Contributivo'),
(310, 'Uriel Y. Douglas', 'eget.varius.ultrices@euaugue.net', 'M', '9685 Nunc. Avenida', 80, 'Rural', '312-7419', 'Estudiate', 1234648, '2017-06-02', 'Dunkerque', 'Contributivo'),
(311, 'Carlos Wells', 'molestie.dapibus@Fuscealiquamenim.co.uk', 'M', '485-6532 Arcu Av.', 98, 'Rural', '168-1678', 'Medico', 1234649, '2017-01-22', 'Tauranga', 'Contributivo'),
(312, 'Melodie A. Skinner', 'ipsum.primis@nasceturridiculusmus.co.uk', 'F', '6131 Lobortis. Avenida', 137, 'Urbano', '1-565-621-5212', 'empresario', 1234650, '2018-05-27', 'Stamford', 'Subsidiado'),
(313, 'Halla Richardson', 'arcu.Aliquam.ultrices@ultrices.org', 'F', '3283 Suscipit, Avda.', 82, 'Rural', '769-1273', 'Medico', 1234651, '2018-07-16', 'Zwettl-Niederösterreich', 'Subsidiado'),
(314, 'Whilemina O. Obrien', 'Aliquam.ultrices.iaculis@enimsit.co.uk', 'M', 'Apartado núm.: 739, 7351 In Carretera', 55, 'Rural', '1-904-591-2942', 'Obrero', 1234652, '2017-03-17', 'María Elena', 'Contributivo'),
(315, 'Tyrone X. Lott', 'elit@sedduiFusce.edu', 'M', '648-9738 Tellus Ctra.', 113, 'Rural', '1-400-303-0041', 'NA', 1234653, '2018-07-29', 'Preston', 'Contributivo'),
(316, 'Pandora Banks', 'nec.tellus.Nunc@egetlaoreetposuere.co.uk', 'M', 'Apdo.:177-794 Vel Carretera', 58, 'Rural', '1-674-774-5341', 'empresario', 1234654, '2018-08-01', 'Raymond', 'Subsidiado'),
(317, 'Ila J. Herrera', 'ac.turpis@lectus.org', 'M', 'Apdo.:965-6500 Nec C.', 86, 'Urbano', '1-466-917-8229', 'Medico', 1234655, '2018-10-08', 'Gillette', 'Subsidiado'),
(318, 'Kai S. Emerson', 'Nunc.mauris.sapien@felis.net', 'M', 'Apdo.:396-8577 Lacus. Ctra.', 105, 'Urbano', '260-6860', 'Estudiate', 1234656, '2016-12-24', 'Perugia', 'Contributivo'),
(319, 'Gavin H. Ellis', 'ut.lacus.Nulla@eratvitaerisus.org', 'F', 'Apdo.:499-2573 At, Av.', 26, 'Urbano', '192-7384', 'Obrero', 1234657, '2016-11-28', 'Bayreuth', 'Subsidiado'),
(320, 'Orli M. Carpenter', 'posuere.cubilia@liberolacus.org', 'M', 'Apartado núm.: 158, 9612 Dignissim. C.', 129, 'Urbano', '1-294-271-0794', 'empresario', 1234658, '2016-11-24', 'Lisieux', 'Contributivo'),
(321, 'Patience L. Anthony', 'urna.Vivamus.molestie@Curae.org', 'F', 'Apartado núm.: 435, 948 Diam. C/', 71, 'Rural', '1-285-181-2390', 'enfermero', 1234659, '2018-02-20', 'Dhule', 'Subsidiado'),
(322, 'Hanae Wiley', 'cubilia.Curae@vitae.co.uk', 'F', '3843 Natoque Av.', 145, 'Rural', '576-1899', 'enfermero', 1234660, '2017-11-04', 'Hofheim am Taunus', 'Subsidiado'),
(323, 'Cruz Schwartz', 'Fusce@consectetuercursus.com', 'F', '7701 Orci Avenida', 102, 'Rural', '1-953-793-4101', 'enfermero', 1234661, '2018-08-18', 'Francavilla in Sinni', 'Subsidiado'),
(324, 'Iris House', 'lectus@purus.com', 'M', '205-3340 Ullamcorper. Carretera', 40, 'Rural', '1-936-694-7996', 'Medico', 1234662, '2018-03-21', 'Esslingen', 'Subsidiado'),
(325, 'Matthew Pace', 'erat.neque.non@purusinmolestie.co.uk', 'F', '595-250 Sed Av.', 50, 'Rural', '370-9885', 'empresario', 1234663, '2018-02-11', 'Altavilla Irpina', 'Contributivo'),
(326, 'Nyssa U. Mcdonald', 'sit.amet.ornare@orciconsectetuereuismod.org', 'M', 'Apdo.:889-8939 Semper. Av.', 150, 'Rural', '667-2170', 'Medico', 1234664, '2017-06-11', 'Dampremy', 'Contributivo'),
(327, 'Clementine C. Franklin', 'Nullam.vitae@Vestibulum.org', 'F', '9034 Rhoncus. C.', 75, 'Rural', '1-225-991-2223', 'Obrero', 1234665, '2017-06-12', 'Siracusa', 'Subsidiado'),
(328, 'Graham X. Calderon', 'mauris@Curabiturconsequatlectus.org', 'M', 'Apdo.:782-3854 Molestie C.', 54, 'Urbano', '1-893-960-9125', 'Obrero', 1234666, '2017-09-13', 'Montalto Uffugo', 'Subsidiado'),
(346, 'Daniel Eduardo Pusil Rojas', 'danielpusil@unicauca.edu.co', 'M', 'calle 1 cn 45 a 09', 7, 'Rural', '(057) 123-4562345', 'Estudiante', 1234567, '2017-11-07', 'popayan', 'Contributivo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `professional`
--

CREATE TABLE IF NOT EXISTS `professional` (
`professional_id` int(11) NOT NULL,
  `professional_cc` int(11) NOT NULL,
  `professional_name` varchar(80) NOT NULL,
  `professional_reg` int(11) NOT NULL,
  `professional_speciality` varchar(80) NOT NULL,
  `professional_signatue` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `historyclinical`
--
ALTER TABLE `historyclinical`
 ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `patient_record`
--
ALTER TABLE `patient_record`
 ADD PRIMARY KEY (`patient_id`);

--
-- Indices de la tabla `professional`
--
ALTER TABLE `professional`
 ADD PRIMARY KEY (`professional_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historyclinical`
--
ALTER TABLE `historyclinical`
MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=403;
--
-- AUTO_INCREMENT de la tabla `patient_record`
--
ALTER TABLE `patient_record`
MODIFY `patient_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=347;
--
-- AUTO_INCREMENT de la tabla `professional`
--
ALTER TABLE `professional`
MODIFY `professional_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
