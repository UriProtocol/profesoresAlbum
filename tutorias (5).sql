-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 17, 2023 at 03:24 PM
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
-- Database: `tutorias`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `foto` varchar(250) NOT NULL,
  `clave_profesor` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `foto`, `clave_profesor`) VALUES
(10, 'Captura de pantalla_20221130_112106.png', '89'),
(11, 'Captura de pantalla_20221123_125529.png', '89'),
(12, 'fondo_montanas.jpg', '89'),
(13, 'utd_foto.webp', '89'),
(14, 'fondo_noche.jpg', '89');

-- --------------------------------------------------------

--
-- Table structure for table `curriculums`
--

CREATE TABLE `curriculums` (
  `clave` varchar(11) NOT NULL,
  `centroEducativo` varchar(50) NOT NULL,
  `ubicacionCentro` varchar(50) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `campoEstudio` varchar(50) NOT NULL,
  `graduacion` int(11) NOT NULL,
  `puesto` text NOT NULL,
  `empleador` text NOT NULL,
  `localidad` text NOT NULL,
  `fInicio` text NOT NULL,
  `fFinal` text NOT NULL,
  `descripcion` text NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) NOT NULL,
  `fNacimiento` date NOT NULL,
  `email` varchar(205) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `tCasa` varchar(15) NOT NULL,
  `tCelular` varchar(15) NOT NULL,
  `calle` varchar(250) NOT NULL,
  `colonia` varchar(250) NOT NULL,
  `cp` varchar(6) NOT NULL,
  `competencias` text NOT NULL,
  `hobbies` text NOT NULL,
  `idiomas` text NOT NULL,
  `cursos` text NOT NULL,
  `actExtra` text NOT NULL,
  `redSociales` text NOT NULL,
  `valores` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `curriculums`
--

INSERT INTO `curriculums` (`clave`, `centroEducativo`, `ubicacionCentro`, `titulo`, `campoEstudio`, `graduacion`, `puesto`, `empleador`, `localidad`, `fInicio`, `fFinal`, `descripcion`, `nombres`, `apellidos`, `fNacimiento`, `email`, `sexo`, `tCasa`, `tCelular`, `calle`, `colonia`, `cp`, `competencias`, `hobbies`, `idiomas`, `cursos`, `actExtra`, `redSociales`, `valores`) VALUES
('2', 'Universidad Tecnologica de Durango', 'Durango', 'TECNOLOGIAS DE LA INFORMACION', 'TECNICO', 2025, 'Jefe de departamento', 'Eduardo Garcia Flores', 'Durango', '12 de Febrero de 2021', '12 de Febrero de 2030', 'Eh trabajado como jefe de departamento durante 9 años en la empresa Durango for Life\r\n', 'Eduardo', 'Garcia Flores', '2003-12-03', 'eduardogf312@gmail.com', 'Masculino', '6188235547', '6188235547', 'Ciclon 212', 'Las Nubes 2', '34224', 'Trabajo en equipo, Trabajo bajo presion', 'Tocar la guitarra, leer, y demas', 'Inglés, español, portugués, chino', 'JavaScript , PHP, HTML5, Python', 'Me gusta jugar basquetball', 'Facebook: @Eduardo, Instagram: @NataKong, Twitter: @ElRabos', 'Respeto, responsabilida, empatia');

-- --------------------------------------------------------

--
-- Table structure for table `profesores`
--

CREATE TABLE `profesores` (
  `clave` varchar(11) NOT NULL,
  `nombres` varchar(200) NOT NULL,
  `apellidos` varchar(200) DEFAULT NULL,
  `fnacimiento` date NOT NULL,
  `email` varchar(205) NOT NULL,
  `sexo` varchar(100) NOT NULL,
  `estadocivil` varchar(100) NOT NULL,
  `tcasa` varchar(15) NOT NULL,
  `curp` varchar(18) NOT NULL,
  `tcelular` varchar(15) NOT NULL,
  `calle` varchar(250) NOT NULL,
  `colonia` varchar(250) NOT NULL,
  `cp` varchar(6) NOT NULL,
  `municipio` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  `estatus` varchar(100) NOT NULL,
  `curriculum` tinyint(1) NOT NULL,
  `password` varchar(250) NOT NULL,
  `foto` varchar(250) NOT NULL DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profesores`
--

INSERT INTO `profesores` (`clave`, `nombres`, `apellidos`, `fnacimiento`, `email`, `sexo`, `estadocivil`, `tcasa`, `curp`, `tcelular`, `calle`, `colonia`, `cp`, `municipio`, `estado`, `estatus`, `curriculum`, `password`, `foto`) VALUES
('1', 'Uriel 23', 'González Urrutia', '2023-02-01', 'angurisgonur@gmail.com', '', 'Unión libre', '123456789', 'GDOE031128GDGRRBA0', '123456789', 'Aquiles', 'Madrazo', '66845', 'Guadalajara', 'Durango', 'inactivo', 0, '', ''),
('2', 'Eduardo', 'Garcia Flores', '2003-12-03', 'eduardogf321@gmail.com', '', '', '6188235547', 'GAFE031203HDGRLDA6', '6188235547', 'Ciclon 212', 'Las Nubes 2', '34224', 'Durango', 'Durango', 'inactivo', 1, '', ''),
('3', 'Juan Marquez', 'Monarrez Morales', '2003-12-31', 'traxer3122@gmail.com', 'Masculino', 'Casado', '6188234444', 'FOMA490326HDGLRN04', '6188234444', 'Ciclon 212', 'Las Nubes 2', '34224', 'Durango', 'Durango', 'inactivo', 0, '$2b$10$SnQAn5EwUOr68rhsu4z5vuvv5Jo44d857LuH0yHkwESx3IRSRqi.q', '3.jpeg'),
('80', 'Hola', 'Adios', '2023-03-16', 'hola@hola.com', 'femenino', 'soltero', '(123)4567890', 'GOUA031128HDGNRNA8', '(123)4567890', 'Aquiles', '567', '66845', 'Durango', 'Unión libre', 'inactivo', 0, '$2b$10$aeU9c4GlaTCILtn48Z.fMO853VuPQHsXdhvcERLKNjEskeB.hm3ey', 'default.png'),
('89', 'Ángel Uriel', 'Gonzalez Urrutia', '2003-11-27', 'angurisgonur@gmail.com', 'masculino', 'soltero', '(123)4567890', 'GOUA031128HDGNRNA8', '(123)4567890', 'Aquiles', 'Madrazo', '34075', 'Durango', 'Durango', 'inactivo', 0, '$2b$10$kJEG.2CiUpboBDLygF/6s.k3ZMhhPYebKib76xFH0cq57vFf9uiOG', '89.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `curriculums`
--
ALTER TABLE `curriculums`
  ADD PRIMARY KEY (`clave`);

--
-- Indexes for table `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`clave`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
