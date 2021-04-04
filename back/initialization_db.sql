USE heroku_fbceabe4c54c7ac

-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 30-03-2021 a las 06:26:06
-- Versión del servidor: 10.4.14-MariaDB
-- Versión de PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `q_a_data`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `answers`
--

CREATE TABLE `answers` (
  `id_a` int(11) NOT NULL,
  `id_q` int(11) NOT NULL,
  `date_a` varchar(50) NOT NULL,
  `email_a` varchar(50) NOT NULL,
  `name_a` varchar(70) NOT NULL,
  `answer` varchar(280) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `answers`
--

INSERT INTO `answers` (`id_a`, `id_q`, `date_a`, `email_a`, `name_a`, `answer`) VALUES
(2, 1, '2021-03-28 09:02:09', 'zorro@gmail.com', 'Karen Palacios', '4'),
(5, 5, '2019-11-20 00:00:00', 'metus.In@orciPhasellus.com', 'Olga', 'At Institute'),
(6, 6, '2015-09-20 00:00:00', 'est.mauris.rhoncus@nascetur.net', 'Britanni', 'Pharetra Incorporated'),
(7, 7, '2026-09-20 00:00:00', 'velit@Sed.net', 'Meghan', 'Lorem Vitae Odio LLP'),
(8, 8, '2019-06-20 00:00:00', 'metus.facilisis.lorem@auctorvitae.org', 'Joelle', 'Eu Industries'),
(9, 9, '2015-11-20 00:00:00', 'dui.Cum.sociis@velitSed.org', 'Wallace', 'Felis Nulla Tempor Industries'),
(10, 10, '2031-03-20 00:00:00', 'augue@justonecante.com', 'Linda', 'Cras Vehicula Aliquet Corporation'),
(11, 11, '2028-01-21 00:00:00', 'Etiam@auctorquistristique.org', 'Keaton', 'Phasellus Vitae Mauris Associates'),
(14, 14, '2014-07-20 00:00:00', 'sed@in.org', 'Hyatt', 'Aliquam Adipiscing Ltd'),
(15, 15, '2010-04-20 00:00:00', 'magna.Phasellus.dolor@egetvolutpatornare.org', 'Xavier', 'Pede Associates'),
(16, 16, '2025-12-20 00:00:00', 'Ut.nec@lobortisrisus.net', 'Coby', 'Sapien PC'),
(18, 18, '2012-06-20 00:00:00', 'non.lobortis.quis@eteuismod.edu', 'Shellie', 'Sagittis Nullam PC'),
(19, 19, '2021-01-21 00:00:00', 'posuere.enim@sedpedeCum.edu', 'Zachery', 'Molestie Tellus Foundation'),
(20, 20, '2026-03-20 00:00:00', 'vel@magnanecquam.co.uk', 'Harrison', 'Lobortis Foundation'),
(22, 22, '2011-11-20 00:00:00', 'vehicula.Pellentesque@quam.ca', 'Ruth', 'Ligula Aenean Company'),
(29, 29, '2013-10-20 00:00:00', 'tincidunt.dui@Praesentinterdum.net', 'Scarlett', 'Lorem Eget Mollis PC'),
(35, 35, '2030-11-20 00:00:00', 'in@egestasligula.net', 'Alvin', 'Auctor Mauris Incorporated'),
(36, 36, '2019-04-20 00:00:00', 'ipsum.Phasellus.vitae@pedeCrasvulputate.net', 'Darius', 'Ac Libero Nec Corporation'),
(37, 37, '2028-08-20 00:00:00', 'Nunc.ullamcorper.velit@loremsemper.org', 'Armand', 'Nunc Risus Corporation'),
(38, 38, '2023-05-20 00:00:00', 'Curae.Donec.tincidunt@nondui.edu', 'Armando', 'Egestas Hendrerit Neque Incorporated'),
(39, 39, '2013-10-20 00:00:00', 'amet.ante@euturpis.edu', 'Leandra', 'Eleifend Associates'),
(40, 40, '2026-05-20 00:00:00', 'Duis@montesnasceturridiculus.net', 'Camilla', 'Amet Lorem Semper Ltd'),
(41, 41, '2010-05-20 00:00:00', 'magna@milacinia.org', 'Cameron', 'Morbi Accumsan Institute'),
(42, 42, '2028-08-20 00:00:00', 'Nunc@nasceturridiculus.net', 'Tarik', 'Erat Etiam Vestibulum Ltd'),
(45, 45, '2015-12-20 00:00:00', 'nunc.sed@DuisgravidaPraesent.co.uk', 'Henry', 'Fusce LLP'),
(46, 46, '2014-06-20 00:00:00', 'elementum.lorem@magnaSuspendisse.co.uk', 'Lane', 'Leo Cras Vehicula Corp.'),
(50, 50, '2014-04-20 00:00:00', 'augue@imperdietornareIn.edu', 'Stewart', 'Aenean Euismod Inc.'),
(52, 52, '2015-11-20 00:00:00', 'Duis@atvelitCras.edu', 'Cara', 'Pede Sagittis Augue Institute'),
(54, 54, '2027-08-20 00:00:00', 'enim@velitCraslorem.org', 'Jessamine', 'Tempus Associates'),
(57, 57, '2031-08-20 00:00:00', 'ac@elitpretiumet.co.uk', 'Harding', 'Nibh Dolor PC'),
(58, 58, '2012-12-20 00:00:00', 'ante.dictum@feugiatLorem.org', 'Bianca', 'Sodales Mauris Blandit Inc.'),
(59, 59, '2019-04-20 00:00:00', 'Duis.sit@semper.net', 'Ryan', 'Neque In Ornare Company'),
(60, 60, '2017-05-20 00:00:00', 'vitae.purus.gravida@sem.co.uk', 'Pascale', 'Morbi Incorporated'),
(61, 61, '2011-10-20 00:00:00', 'fringilla.euismod.enim@euismodestarcu.ca', 'Colt', 'Tristique Neque LLC'),
(64, 64, '2029-10-20 00:00:00', 'varius.orci.in@lacusvestibulum.com', 'Camille', 'Gravida Non Sollicitudin Ltd'),
(65, 65, '2031-03-20 00:00:00', 'lorem@aliquamadipiscing.co.uk', 'Lysandra', 'Neque Morbi LLP'),
(67, 67, '2021-12-20 00:00:00', 'Maecenas.iaculis.aliquet@nonsapienmolestie.net', 'Halee', 'Nisi Mauris Company'),
(72, 72, '2011-04-20 00:00:00', 'Nam@tinciduntvehicula.net', 'Perry', 'Odio LLP'),
(73, 73, '2013-11-20 00:00:00', 'consequat@sociis.edu', 'Fitzgerald', 'Eleifend Nunc Risus Industries'),
(74, 74, '2031-07-20 00:00:00', 'urna.nec.luctus@magnaCras.org', 'Graiden', 'Phasellus Limited'),
(76, 76, '2022-01-21 00:00:00', 'Aliquam.fringilla.cursus@NullaaliquetProin.co.uk', 'Hyatt', 'Dolor Industries'),
(79, 79, '2022-11-20 00:00:00', 'nibh.vulputate.mauris@Morbivehicula.edu', 'Melvin', 'Cursus Luctus Ipsum Limited'),
(80, 80, '2015-11-20 00:00:00', 'mi@Ut.ca', 'Ima', 'Rutrum Lorem Ac Consulting'),
(81, 81, '2011-10-20 00:00:00', 'justo@magnis.net', 'Bevis', 'Ut Quam Vel Consulting'),
(83, 83, '2021-12-20 00:00:00', 'odio.Nam@netus.org', 'Quinn', 'Varius Inc.'),
(84, 84, '2027-09-20 00:00:00', 'nunc.nulla@velvenenatisvel.com', 'Grace', 'Nulla In Industries'),
(86, 86, '2021-02-21 00:00:00', 'Morbi.vehicula@NullamnislMaecenas.co.uk', 'Lane', 'Lobortis PC'),
(90, 90, '2015-10-20 00:00:00', 'Nunc.laoreet.lectus@atortor.edu', 'Caleb', 'Eu Accumsan Associates'),
(92, 92, '2015-01-21 00:00:00', 'consequat@dapibusquamquis.co.uk', 'Matthew', 'Et Ultrices Posuere Ltd'),
(93, 93, '2027-04-20 00:00:00', 'et.magnis@euismodin.edu', 'Constance', 'Mi Lacinia Mattis Incorporated'),
(94, 94, '2016-11-20 00:00:00', 'faucibus.id@velitPellentesqueultricies.co.uk', 'Deborah', 'Nec Metus Facilisis Ltd'),
(96, 96, '2017-08-20 00:00:00', 'eleifend.egestas@euultricessit.co.uk', 'Charles', 'Tempor Diam Dictum Industries'),
(97, 97, '2028-06-20 00:00:00', 'non.arcu@quislectusNullam.net', 'Alec', 'Ac Consulting'),
(99, 99, '2029-09-20 00:00:00', 'cursus@ultricessit.org', 'Abel', 'Nunc Inc.'),
(103, 2, '2021-03-28 10:55:19', 'superbreve@gmail.com', 'Super Breve Mateo', '7'),
(104, 110, '2021-03-29 03:54:15', 'supermario@gmail.com', 'Super Mario Bross', '5 años'),
(106, 113, '2021-03-29 03:52:14', 'alejito@gmail.com', 'El viejo Alejo', '7'),
(107, 114, '2021-03-29 09:07:49', 'pc@pc.com', 'mameA.value', 'tiene como 2 metros de altura'),
(109, 108, '2021-03-29 09:16:38', 'supermario@gmail.com', 'Super Mario Bross', '5 años'),
(111, 112, '2021-03-29 09:20:50', 'amadeus@mozart.com', 'Super Mario Bross', '85 años de edad'),
(117, 111, '2021-03-29 14:02:31', 'pikapika@yahoo.com', 'Pikachu Rodriguez', 'es muy fácil, la respuesta es 5, o 3? a no no no, es 4, gracias por la oportunidad.'),
(120, 109, '2021-03-29 14:10:07', 'respuestafinal@gmail.com', 'Respuesta Final de Prueba', 'Con esta respuesta verifico que todo funcione en orden correctamente, la respuesta es 4, gracias y saludos.'),
(121, 115, '2021-03-29 14:14:09', 'otrosalsero@amolasalsa.com', 'Armando Benavides', 'Sin duda, el lugar de nacimiento del jibarito, fue Puerto Rico.'),
(122, 116, '2021-03-29 15:29:10', 'nose@gmail.com', 'Pitufo Tontin', 'Son azules porque comen muchas blue berries.'),
(123, 117, '2021-03-29 15:39:30', 'nose@gmail.com', 'Alejandro Palacios Arévalo', 'Es una pregunta muy compleja, pero creo que es de color verde'),
(124, 107, '2021-03-29 17:56:42', 'asuntoseconomicos@foro.com', 'Florentino Miranda', '😁💧❄️⛈️⛅👩🏻‍🏫🇨🇴'),
(125, 106, '2021-03-29 19:11:43', 'pancho@gmail.com', 'Edgar Poveda', 'el ipc para el año 2021 será del 19% comparado con el año 2020 que fue del 15%'),
(126, 118, '2021-03-29 20:52:16', 'firulais@casa.com', 'Fredy Alberto Lozano', 'De acuerdo a las estimaciones económicas que se preven para el 2020, con un posible crecimiento del 20% en la economía mundial, el precio de la consola puede estar entre los 900 y 100 USD.'),
(141, 105, '2021-03-29 21:11:43', 'cv@gmail.com', 'Mickey Mouse', '!!Hola Amigos, soy yo, Mickey Mouse, el IPC para este año en Mexico será de 10%, adiosssss'),
(142, 119, '2021-03-29 23:14:53', 'salud@gov.co', 'Alvaro Fernando Gomez', 'Se estima que para el mes de abril se vacunarán 1,2 millones de Colombianos.'),
(143, 121, '2021-03-30 00:23:18', 'nose@gmail.com', 'Patricia Teheran', 'En Francia solo se escucha Vallenato.'),
(144, 120, '2021-03-30 00:26:16', 'forex@mex.mx', 'Yamile Diaz', 'Encargado del control y la gestión documental de una empresa.'),
(150, 122, '2021-03-30 00:43:32', 'analogodigital@gmail.com', 'Diego Forero', 'Mi nombre viene de Grecia, del Faraón Tutancamón, por eso soy tan grande y maravilloso'),
(151, 123, '2021-03-30 00:48:36', 'horariotardio@yahoo.es', 'Megan Fox', 'A la misma hora en que sea linearon los planetas para formar un eclipse lunar visto desde toda la superficie de la tierra durante el día.'),
(152, 104, '2021-03-30 01:41:34', 'respuestafinal@gmail.com', 'Leonidas Pulgarín', '70%'),
(156, 126, '2021-03-30 02:12:37', 'mam@gmail.com', 'ned flanders', 'Hola, un gustillo saludar al buen vecinillo, ese número se escribe así CCXXXIV, saludillos'),
(157, 125, '2021-03-30 02:15:20', 'math@gmail.com', 'ruana y botas', 'Es muy sencillo, 4'),
(158, 124, '2021-03-30 02:23:09', 'marge@simpsons.com', 'Bart Simpson', 'Papá, de por Dios, es fácil, la raíz es 2, ¡Hay Caramba!'),
(159, 101, '2021-03-30 02:27:33', 'pacho.ale@hotmail.com', 'Francisco Luna', 'Orale, pero si es muy fácil bro, es 4 el resultado, espero te sirva wey!'),
(160, 63, '2021-03-30 02:30:05', 'Sed.nulla.antesito@molestie.com', 'Yarmet Jamis', 'Lo que sé es que es demasiado grande, adios!!'),
(161, 127, '2021-03-30 02:37:05', 'kevinsegundo@gmail.com', 'Kevin el baquero', 'no se de momento pero algún día lo sabré.  👍🏻 ❤️'),
(162, 102, '2021-03-30 02:41:49', 'phonemobile@gmail.com', 'Lucho Marisco', 'De momento no, pero en cuanto emprenda, sé que no dormiré en días.'),
(163, 128, '2021-03-30 02:45:31', 'minipig@yahoo.es', 'George Pig', 'Querida hermana, lo siento mucho, nunca dejaré de amar a los dinosaurios, adiosss!!'),
(164, 100, '2021-03-30 02:50:07', 'mollis.Integer@yahoo.net', 'El impedido', 'Es el resúmen de mi vida entera.'),
(165, 129, '2021-03-30 02:58:40', 'abogato@comite.com', 'Antonio Hurtado', 'Mi apellido me da prestigio como el mejor abogado del país, de momento no se tu respuesta pero investigaré'),
(166, 130, '2021-03-30 03:04:37', 'info@gmail.com', 'Alberto Chacón', 'De acuerdo al último informe, el resultado fue de 34%.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `questions`
--

CREATE TABLE `questions` (
  `id_q` int(11) NOT NULL,
  `date_q` varchar(50) NOT NULL,
  `email_q` varchar(50) NOT NULL,
  `name_q` varchar(70) NOT NULL,
  `question` varchar(280) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `questions`
--

INSERT INTO `questions` (`id_q`, `date_q`, `email_q`, `name_q`, `question`, `category`) VALUES
(1, '2021-03-28 08:57:25', 'alejo@gmail.com', 'Alejandro Palacios', '¿Cuanto es 2+2?', 'Técnica'),
(2, '2021-03-28 09:00:03', 'kevin@gmail.com', 'Kevin Alejandro', '¿Cuanto es 5+2?', 'Técnica'),
(3, '2028-10-20 00:00:00', 'felis.Nulla.tempor@gravida.com', 'Brenden', '¿qué significa declararse impedido?', 'Legal'),
(4, '2015-10-20 00:00:00', 'Curabitur.vel@risusIn.edu', 'Pamela', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(5, '2021-02-21 00:00:00', 'placerat@sem.org', 'Genevieve', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(6, '2026-09-20 00:00:00', 'Proin@aultriciesadipiscing.ca', 'Veda', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(7, '2012-08-20 00:00:00', 'Suspendisse.tristique.neque@placerateget.net', 'Mohammad', '¿qué significa declararse impedido?', 'Legal'),
(8, '2022-06-20 00:00:00', 'tincidunt@est.edu', 'Ian', '¿El salario mínimo de tu país es?', 'Económica'),
(9, '2020-07-20 00:00:00', 'at.egestas@ametrisus.org', 'Ashton', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(10, '2030-09-20 00:00:00', 'enim@a.edu', 'Georgia', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(11, '2010-10-20 00:00:00', 'rhoncus@cubiliaCurae.org', 'Roary', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(14, '2030-07-20 00:00:00', 'vel.turpis.Aliquam@vel.net', 'Malachi', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(15, '2011-06-20 00:00:00', 'mi@Inornaresagittis.co.uk', 'Mara', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(16, '2021-12-20 00:00:00', 'mollis@utsem.co.uk', 'Echo', '¿qué significa declararse impedido?', 'Legal'),
(18, '2026-01-21 00:00:00', 'ac@non.com', 'Cooper', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(19, '2024-08-20 00:00:00', 'ligula.tortor@neceuismodin.ca', 'Victor', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(20, '2029-01-21 00:00:00', 'felis.adipiscing.fringilla@Quisque.com', 'Ira', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(22, '2013-06-20 00:00:00', 'parturient@massaIntegervitae.net', 'Theodore', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(23, '2027-10-20 00:00:00', 'arcu.Vestibulum.ante@nuncrisusvarius.edu', 'Gage', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(28, '2026-05-20 00:00:00', 'placerat@Nunc.net', 'Jocelyn', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(29, '2030-06-20 00:00:00', 'lorem@antelectus.ca', 'Sawyer', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(33, '2016-05-20 00:00:00', 'dui@luctusCurabitur.co.uk', 'Brynne', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(34, '2012-05-20 00:00:00', 'in.tempus.eu@acarcu.com', 'Xenos', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(35, '2014-01-21 00:00:00', 'ac.mattis@mifringilla.org', 'Jael', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(36, '2017-10-20 00:00:00', 'Sed.et.libero@Incondimentum.com', 'Ima', '¿El salario mínimo de tu país es?', 'Económica'),
(37, '2017-12-20 00:00:00', 'ante@aliquamiaculislacus.com', 'Zachery', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(38, '2030-04-20 00:00:00', 'vel@euismodest.net', 'Charity', '¿El salario mínimo de tu país es?', 'Económica'),
(39, '2025-08-20 00:00:00', 'ut@Donec.edu', 'Lacey', '¿El salario mínimo de tu país es?', 'Económica'),
(40, '2023-08-20 00:00:00', 'arcu@Sed.net', 'Mara', '¿qué significa declararse impedido?', 'Legal'),
(41, '2020-05-20 00:00:00', 'vulputate.mauris.sagittis@sed.net', 'Clementine', '¿qué significa declararse impedido?', 'Legal'),
(42, '2015-05-20 00:00:00', 'euismod.ac@nec.net', 'Nolan', '¿El salario mínimo de tu país es?', 'Económica'),
(44, '2030-06-20 00:00:00', 'tellus@Donec.co.uk', 'Marsden', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(45, '2029-11-20 00:00:00', 'fermentum@pellentesquetellussem.edu', 'Leigh', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(46, '2019-08-20 00:00:00', 'Curabitur.vel@justo.co.uk', 'Honorato', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(47, '2014-05-20 00:00:00', 'eu.sem@dignissim.ca', 'Ima', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(48, '2017-07-20 00:00:00', 'a@justo.co.uk', 'Ruby', '¿qué significa declararse impedido?', 'Legal'),
(49, '2027-08-20 00:00:00', 'congue.a.aliquet@nequeNullam.ca', 'Ishmael', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(50, '2015-12-20 00:00:00', 'diam.eu.dolor@utdolor.org', 'Ivan', '¿El salario mínimo de tu país es?', 'Económica'),
(51, '2022-04-20 00:00:00', 'mattis@magna.co.uk', 'Yen', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(52, '2021-05-20 00:00:00', 'cursus@semmagna.ca', 'Bianca', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(54, '2024-05-20 00:00:00', 'felis.Nulla.tempor@diameu.net', 'Imogene', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(55, '2016-01-21 00:00:00', 'lobortis.quis.pede@montes.org', 'Connor', '¿qué significa declararse impedido?', 'Legal'),
(57, '2021-06-20 00:00:00', 'dui.in.sodales@ultriciesligula.net', 'Trevor', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(58, '2019-01-21 00:00:00', 'ullamcorper.eu.euismod@erosnonenim.net', 'Kameko', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(59, '2013-07-20 00:00:00', 'turpis@quamvelsapien.com', 'Dean', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(60, '2024-05-20 00:00:00', 'Suspendisse.tristique@sitametconsectetuer.ca', 'Alfonso', '¿qué significa declararse impedido?', 'Legal'),
(61, '2011-10-20 00:00:00', 'facilisis.eget.ipsum@Uttinciduntvehicula.com', 'Keegan', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(62, '2029-06-20 00:00:00', 'quam@Suspendissealiquet.com', 'Hammett', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(63, '2027-04-20 00:00:00', 'Sed.nulla.ante@molestie.com', 'Jamal', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(64, '2028-11-20 00:00:00', 'libero@NullaaliquetProin.org', 'Halee', '¿El salario mínimo de tu país es?', 'Económica'),
(65, '2013-06-20 00:00:00', 'diam@odiosagittissemper.co.uk', 'Bruce', '¿qué significa declararse impedido?', 'Legal'),
(66, '2019-05-20 00:00:00', 'blandit.mattis@mollisvitaeposuere.edu', 'Dorian', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(67, '2012-11-20 00:00:00', 'ligula.elit@vestibulummassa.ca', 'Holly', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(72, '2028-02-21 00:00:00', 'facilisis.vitae.orci@pellentesqueegetdictum.com', 'Elliott', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(73, '2022-08-20 00:00:00', 'adipiscing@actellusSuspendisse.net', 'Olivia', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(74, '2013-01-21 00:00:00', 'sem@temporbibendum.com', 'Abel', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(76, '2022-01-21 00:00:00', 'molestie@Sedidrisus.org', 'Adrian', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(79, '2011-12-20 00:00:00', 'mattis@placeratorcilacus.org', 'Declan', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(80, '2014-05-20 00:00:00', 'placerat.velit@odiotristiquepharetra.org', 'Piper', '¿qué significa declararse impedido?', 'Legal'),
(81, '2013-12-20 00:00:00', 'faucibus@nasceturridiculusmus.org', 'Akeem', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(83, '2010-09-20 00:00:00', 'cursus@semutdolor.org', 'Kimberly', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(84, '2023-01-21 00:00:00', 'sapien.gravida@enimdiamvel.net', 'Cheryl', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(86, '2028-11-20 00:00:00', 'rhoncus.Proin@ligula.co.uk', 'Ulysses', '¿El salario mínimo de tu país es?', 'Económica'),
(90, '2024-04-20 00:00:00', 'tellus@convalliserateget.edu', 'Carissa', '¿El salario mínimo de tu país es?', 'Económica'),
(92, '2019-10-20 00:00:00', 'Aenean.euismod@nequeseddictum.com', 'Ignatius', '¿A cuanto equivale la inflación para este año en tu país?', 'Económica'),
(93, '2021-08-20 00:00:00', 'ipsum.sodales.purus@duiaugue.co.uk', 'Ruth', '¿En qué consiste la gestión de las PQRs?', 'Administrativa'),
(94, '2018-05-20 00:00:00', 'pharetra@blandit.org', 'Aurora', '¿qué significa declararse impedido?', 'Legal'),
(96, '2022-06-20 00:00:00', 'amet.risus@eu.com', 'Zachery', '¿Cúal es el tamaño de Marte?', 'Técnica'),
(97, '2027-12-20 00:00:00', 'sem.ut@aliquamenimnec.co.uk', 'Dorian', '¿El salario mínimo de tu país es?', 'Económica'),
(99, '2025-05-20 00:00:00', 'quis.massa@Sedeueros.co.uk', 'Maggie', '¿qué significa declararse impedido?', 'Legal'),
(100, '2029-11-20 00:00:00', 'mollis.Integer@Phaselluselit.net', 'Shaine', '¿qué significa declararse impedido?', 'Legal'),
(101, '2021-03-28 09:18:48', 'alejo@gmail.com', 'Alejandro Palacios', '¿Cuanto es 2+2?', 'Técnica'),
(102, '2021-03-28 10:09:16', 'phone@gmail.com', 'Ana Solorzano', '¿Trabajas los fines de semana?', 'Administrativa'),
(103, '2021-03-28 10:12:03', 'sanmateo@gmail.com', 'Luz Marina Arévalo', '¿De cuánto es el IPC para este año 2021?', 'Económica'),
(104, '2021-03-28 10:12:12', 'sanmateo@gmail.com', 'Luz Marina Arévalo', '¿De cuánto es el IPC para este año 2021?', 'Económica'),
(105, '2021-03-28 10:12:15', 'sanmateo@gmail.com', 'Luz Marina Arévalo', '¿De cuánto es el IPC para este año 2021?', 'Económica'),
(106, '2021-03-28 10:12:30', 'sanmateo@gmail.com', 'Luz Marina Arévalo', '¿De cuánto es el IPC para este año 2021?', 'Económica'),
(107, '2021-03-28 10:12:59', 'sanmateo@gmail.com', 'Luz Marina Arévalo', '¿De cuánto es el IPC para este año 2021?', 'Económica'),
(108, '2021-03-28 10:14:07', 'sanmateo@gmail.com', 'Luz Marina Arévalo', '¿De cuánto es el IPC para este año 2021?', 'Económica'),
(109, '2021-03-28 22:49:33', 'pacho.ale@hotmail.com', 'Alejandro Palacios', '¿Cuanto es 2+2?', 'Técnica'),
(110, '2021-03-29 03:52:00', 'sanmateo@gmail.com', 'Bebe Pig', '¿la edad de pepa pig?', 'Económica'),
(111, '2021-03-28 22:55:49', 'oasis@gmail.com', 'Bebe cerdito', '¿la edad del papá de pepa pig?', 'Económica'),
(112, '2021-03-29 05:44:14', 'nino@gmail.com', 'nino bravo', '¿A qué edad llego este año el gran Nino Bravo?', 'Legal'),
(113, '2021-03-29 08:50:43', 'gato@gmail.com', 'Gato Perro', '¿Cuántas vidas tiene un gato?', 'Técnica'),
(114, '2021-03-29 08:54:33', 'goku@gmail.com', 'Goku Hemilio', '¿Cuál es la altura de Goku?', 'Administrativa'),
(115, '2021-03-29 14:13:00', 'salsa@hotmail.com', 'Salsero a morir', 'cual fue el país de origen de Hector Lavoe?', 'Legal'),
(116, '2021-03-29 15:28:08', 'arce@platzi.com', 'Arce Requena', '¿Por qué los pitufos son azules?', 'Técnica'),
(117, '2021-03-29 15:38:27', 'diana@gmail.com', 'Diana Luna Poveda', '¿De qué color es el cielo azul?', 'Administrativa'),
(118, '2021-03-29 20:50:08', 'alejoplay@sony.com', 'Alejandro Palacios', '¿Cuánto costará el play station 5 a mitad de este año?', 'Económica'),
(119, '2021-03-29 23:07:38', 'dimas@gmail.com', 'Iván Duque', '¿Cuántos Colombianos serán vacunados en abri?', 'Administrativa'),
(120, '2021-03-29 23:15:58', 'forex@mex.mx', 'Farid Yamith Perez', 'Que labor realiza un auxiliar de archivo?', 'Administrativa'),
(121, '2021-03-29 23:30:00', 'ana@hotmail.com', 'Ana Maria LLanos', '¿qué musica escuchan en Francia?', 'Técnica'),
(122, '2021-03-30 00:32:01', 'analogo@gmail.com', 'Andres Palacios', '¿Por qué crees que te llamas como te llamass?', 'Legal'),
(123, '2021-03-30 00:46:29', 'horario@yahoo.es', 'Milena Cordoba', 'A que horas empezó la edad media?', 'Económica'),
(124, '2021-03-30 01:26:36', 'homero@simpsons.com', 'Homero Jai Simpson', '¿Mi pregunta para este exlusivo foro es, cuanto es la raíz cuadrada de 4?\n\nGracias', 'Técnica'),
(125, '2021-03-30 01:56:34', 'math@gmail.com', 'Matias Cardenas', 'Por favor necesito saber cuánto es el resultado de 2*2.\n\nGracias', 'Técnica'),
(126, '2021-03-30 01:57:39', 'mam@gmail.com', 'Tony Stark', '¿Cómo se escribe 234 en número romano?', 'Legal'),
(127, '2021-03-30 02:35:36', 'kevin@gmail.com', 'Kevin Palacios', 'Significado de rollong', 'Técnica'),
(128, '2021-03-30 02:43:42', 'minipig@yahho.es', 'Pepa Pig', '¿Por qué a mi hermano solo le gustan los dinosaurios?', 'Administrativa'),
(129, '2021-03-30 02:51:44', 'abogado@comite.com', 'Santiago Fernandez', 'Por favor información acerca de la ley 1369 de comunicaciones de la SIC, gracias.', 'Legal'),
(130, '2021-03-30 03:03:17', 'finanzas@gmail.com', 'Edgar Poveda', '¿A cuánto equivale el ebibta del año 2020 de Pemex?', 'Económica');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id_a`),
  ADD KEY `fk_q` (`id_q`);

--
-- Indices de la tabla `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id_q`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `answers`
--
ALTER TABLE `answers`
  MODIFY `id_a` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT de la tabla `questions`
--
ALTER TABLE `questions`
  MODIFY `id_q` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `fk_q` FOREIGN KEY (`id_q`) REFERENCES `questions` (`id_q`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

SELECT * FROM questions
SELECT * FROM answers