-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-10-2022 a las 04:49:54
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `practicoespecial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `nombre` varchar(53) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(50) CHARACTER SET latin1 NOT NULL,
  `idTipoDeProducto` int(11) NOT NULL,
  `idProducto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`nombre`, `precio`, `descripcion`, `imagen`, `idTipoDeProducto`, `idProducto`) VALUES
('Geforce RTX 3070 8Gb Gigabyte Aorus', 199999, 'Marca : Gigabyte\r\nModelo : AORUS GeForce RTX 3070 Master\r\nP/N : GV-N3070AORUS M-8GD\r\nUPC/EAN : 889523029329\r\nChipset : NVIDIA GeForce RTX 3070\r\nCoolers : 3\r\nPci Express : PCIe 4.0\r\nDirectX : 12\r\nOpenGl : 4.6\r\nMemoria : GDDR6 8GB\r\nBits : 256\r\nCUDA Cores : 5888\r\nCore Clock : 1845 MHz\r\nMem Clock : 14000 MHz\r\nAlimen. Suple : 2 x 8-pin\r\nFuente optima : 650w\r\nVga : No\r\nDvi : No\r\nHdmi : 3\r\nDisplay Port : 3\r\nMáximos displays soportados : 4\r\nPerfil Bajo : No\r\nBackplate : Si\r\nDimensiones : 290 x 131 x 60 mm\r\nSlots PCI-e : 2\r\nIluminacion : Si', 'img/product/634b29fe749e4.jpg', 5, 1),
('Radeon RX 6900 XT 16Gb Asus Rog LC', 365999, 'Marca : ASUS\r\nModelo : ROG Strix LC Radeon RX 6900 XT\r\nP/N : ROG-STRIX-LC-RX6900XT-T16G-GAMING\r\nUPC : 195553251815\r\nChipset : AMD Radeon RX 6900 XT\r\nCoolers : 2\r\nPci Express : PCIe 4.0 16x\r\nDirectX : 12\r\nOpenGl : 4.6\r\nMemoria : GDDR6 16GB\r\nBits : 192\r\nCores : 5120\r\nCore Clock : 2525 MHz\r\nMem Clock : 16 Gbps\r\nAlimen. Suple : 3 x 8-pin\r\nFuente optima : 850w\r\nVga : No\r\nDvi : No\r\nHdmi : 1\r\nDisplay Port : 2\r\nUSB-C : 1\r\nMáximos displays soportados : 4\r\nPerfil Bajo : No\r\nBackplate : Si\r\nDimensiones : Placa 27.7 x 13.1 x 4.36 cm, Radiador 27.6 x 12 x 5.17 cm (incluyendo fan)Slots PCI-e : 2,2\r\nIluminacion : Si', 'img/product/634c8b1879900.jpg', 5, 2),
('Amd Ryzen 5 5600X 3.7 Ghz - AM4', 49989, 'Marca : AMD\r\nLínea : Ryzen 5\r\nModelo : 5600X\r\nModelo alfanumérico : 100-100000065BOX\r\nUPC : 0730143312042\r\nGPU integrado : No\r\nCaché : 32 MB\r\nCantidad de núcleos de CPU : 6\r\nHilos : 12\r\nTipos de memoria RAM soportadas : DDR4\r\nSocket : AM4\r\nFrecuencia mínima de reloj : 3,7 GHz\r\nFrecuencia máxima de reloj : 4,6 GHz\r\nDesbloqueado para OC : Si\r\nAccesorios incluidos : Air cooler\r\nTDP : 65W', 'img/product/6346621858930.jpg', 6, 3),
('Amd Ryzen 5 3600 4.2 Ghz - AM4', 36989, 'Marca : AMD\r\nLínea : Ryzen\r\nModelo : Ryzen 5 3600\r\nP/N : 100-100000031BOX\r\nCaché : 32 MB\r\nCantidad de núcleos : 6\r\nTipos de memoria RAM soportadas : DDR4\r\nMáximo de memoria RAM soportada: 128 GB\r\nArquitectura : Zen2\r\nFrecuencia mínima de reloj : 3.6 GHz\r\nFrecuencia máxima de reloj : 4.2 GHz\r\nSolución térmica : Wraith Stealth\r\nTDP/TDP predeterminado : 65W\r\nVelocidad máxima de memoria : 3200MHz', 'img/product/6346622744cbe.jpg', 6, 4),
('Intel Core i5 10400F 4.3 Ghz Comet Lake - 1200', 29399, 'Marca : Intel\r\nLínea : Comet Lake\r\nModelo : i5-10400F SRH3D\r\nGPU integrado : No incluye\r\nCaché : 12 MB\r\nCantidad de núcleos de CPU : 6\r\nHilos : 12\r\nTipos de memoria RAM soportadas : DDR4\r\nCantidad de RAM soportada : 128 GB\r\nSocket : LGA 1200\r\nFrecuencia mínima de reloj : 2,90 GHz\r\nFrecuencia máxima de reloj : 4,30 GHz\r\nDesbloqueado para OC : No\r\nTDP : 65 W', 'img/product/634662b31af0c.jpg', 6, 5),
('Intel Core i3 10100F 3.6 Ghz Comet Lake - 1200', 16999, 'Marca : Intel\r\nLínea : Core i3\r\nModelo : i3-10100F\r\nModelo alfanumérico : BX8070110100F\r\nUPC : 5032037192620\r\nGPU integrado : No\r\nCaché : 6 MB\r\nCantidad de núcleos de CPU : 4\r\nHilos : 8\r\nTipos de memoria RAM soportadas : DDR4\r\nCantidad de RAM soportada : 128GB\r\nSocket : LGA1200\r\nFrecuencia mínima de reloj : 3,6 GHz\r\nFrecuencia máxima de reloj : 4,3 GHz\r\nDesbloqueado para OC : No\r\nAccesorios incluidos : Air cooler\r\nTDP : 65 W', 'img/product/6346624c184cb.jpg', 6, 7),
('GeForce RTX 3090 24Gb Asus Rog Strix', 499999, 'Marca : ASUS\r\nModelo : ROG STRIX GeForce RTX 3090 White Edition\r\nP/N : ROG-STRIX-RTX3090-O24G-WHITE\r\nUPC/EAN : 4711081002642\r\nChipset : NVIDIA GeForce RTX 3090\r\nCoolers : 3\r\nPci Express : PCIe 4.0\r\nDirectX : 12\r\nOpenGl : 4.6\r\nMemoria : GDDR6X 24GB\r\nBits : 384\r\nCUDA Cores : 10496\r\nCore Clock : 1890 MHz\r\nMem Clock : 19,5 Gbps\r\nAlimen. Suple : 3 x 8-pin\r\nFuente optima : 850w\r\nVga : No\r\nDvi : No\r\nHdmi : 2\r\nDisplay Port : 3\r\nMáximos displays soportados : 4\r\nPerfil Bajo : No\r\nBackplate : Si\r\nDimensiones : 31.85 x 14.01 x 5.78 cm\r\nSlots PCI-e : 2,9\r\nIluminacion : Si', 'img/product/634c896772cda.jpg', 5, 19),
('Radeon RX 6800 XT 16Gb Asus Rog Strix Gaming Oc', 238999, 'Marca : ASUS\r\nModelo : ROG Strix LC Radeon RX 6800 XT OC Edition\r\nP/N : ROG-STRIX-LC-RX6800XT-O16G-GAMING\r\nUPC/EAN : 4718017987837\r\nChipset : AMD Radeon RX 6800 XT\r\nCoolers : Radiador de 240 mm\r\nPci Express : PCIe 4.0\r\nDirectX : 12\r\nOpenGl : 4.6\r\nMemoria : GDDR6 16GB\r\nBits : 192\r\nCUDA Cores : 4608\r\nCore Clock : 2360 MHz\r\nMem Clock : 16 Gbps\r\nAlimen. Suple : 2 x 8-pin\r\nFuente optima : 750w\r\nVga : No\r\nDvi : No\r\nHdmi : 1\r\nDisplay Port : 2\r\nUSB-C : 1\r\nMáximos displays soportados : 4\r\nPerfil Bajo : No\r\nBackplate : Si\r\nDimensiones : Placa 27.7 x 13.08 x 4.36 cm, Radiador 27.6 x 12 x 5.17 cm\r\nIluminacion : Si', 'img/product/634c8c4b7f46a.jpg', 5, 20),
('Ram DDR5 - 16Gb 5200 Mhz Lancer Xpg Negro', 29869, 'Marca : Adata\r\nLínea : XPG Lancer\r\nModelo : AX5U5200C3816G-CLABK\r\nUPC : 4711085936769\r\nTipo : DIMM\r\nLatencia : 38\r\nVoltaje : 1.25V\r\nCapacidad : 16 GB\r\nVelocidad : 5200 MHz\r\nTecnología : DDR5 (288 pines)\r\nAplicación : PC\r\nColor : Negro\r\nDisipador : Si\r\nIluminacion : No', 'img/product/634c8cd67a939.jpg', 7, 21),
('Ram DDR5 - 32Gb 2x16 5200 Mhz Beast Kingston Fury', 69989, 'Marca : Kingston\r\nLínea : Fury Beast\r\nModelo : KF552C40BBK2/32\r\nUPC : 740617324358\r\nTipo : DIMM\r\nLatencia : 40\r\nVoltaje : 1.25V\r\nCapacidad : 32 GB (2 X 16GB)\r\nVelocidad : 5200 MHz\r\nTecnología : DDR5 (288 pines)\r\nAplicación : PC\r\nColor : Negro\r\nDisipador : Si\r\nIluminacion : No', 'img/product/634c8d20306ef.jpg', 7, 22),
('Ram DDR4 - 8Gb 3600 Mhz Xpg Spectrix D60G Rgb', 11779, 'Marca : Adata XPG\r\nLínea : Spectrix\r\nModelo : AX4U36008G18I-ST60\r\nUPC : 4711085934567\r\nTipo : DIMM\r\nLatencia : 19\r\nVoltaje : 1.35V\r\nCapacidad : 8 GB\r\nVelocidad : 3600 MHz\r\nTecnología : DDR4\r\nAplicación : PC\r\nColor : Negro\r\nDisipador : Si\r\nIluminacion : RGB', 'img/product/634c8dd5d9121.jpg', 7, 23),
('Ram DDR4 - 16Gb 2x8 2666 Mhz Corsair Vengeance Rgb', 25829, 'Marca : Corsair\r\nLínea : VENGEANCE RGB PRO\r\nModelo : CMW16GX4M2A2666C16W\r\nUPC : 843591078696\r\nTipo : DIMM\r\nLatencia : 16\r\nVoltaje : 1.35V\r\nCapacidad : 16 GB (2x8GB)\r\nVelocidad : 2666 MHz\r\nTecnología : DDR4 (288 pines)\r\nAplicación : PC\r\nColor : Blanco\r\nDisipador : Si\r\nIluminacion : RGB', 'img/product/634c8f3028eba.jpg', 7, 24),
('12°Gen - Asus Tuf GAMING Z690-PLUS WIFI DDR4', 83269, 'Marca : ASUS\r\nModelo : TUF GAMING Z690-PLUS WIFI D4\r\nUPC : 4711081438779\r\nSocket : LGA1700\r\nChipset : Intel Z690\r\nFuente : ATX\r\nMemoria : 4 x DIMM, Max. 128GB, DDR4 5333(OC) / 5133(OC)/ 5000(OC)/ 4800(OC)/ 4600(OC)/ 4400(OC)/ 4266(OC)/ 4133(OC)/ 4000(OC)/ 3866(OC)/ 3733(OC)/ 3600(OC)/ 3466(OC)/ 3400(OC)/ 3333(OC)/ 3200/ 3000/ 2933/ 2800/ 2666/ 2400/ 2133 Non-ECC, Un-buffered\r\nPci-e x16 : 2\r\nPci-e x4 : 1\r\nPci-e x1 : 2\r\nPci : No\r\nVga : No\r\nDvi : No\r\nHdmi : 1\r\nDisplayPort : 1\r\nSonido : Realtek 7.1 Surround Sound High Definition Audio CODEC\r\nRed : 10/100/1000*1\r\nPs2 : No\r\nUsb traseros : Total 8, 1 x USB 3.2 Gen 2x2 port (1 x USB Type-C), 2 x USB 3.2 Gen 2 ports (2 x Type-A), 5 x USB 3.2 Gen 1 ports (4 x Type-A + 1 x USB Type-C)\r\nUsb internos : Total 7, 1 x USB 3.2 Gen 2 connector (supports USB Type-C), 1 x USB 3.2 Gen 1 header supports additional 2 USB 3.2 Gen 1 ports, 2 x USB 2.0 headers support additional 4 USB 2.0 ports\r\nWifi : Si\r\nBluetooth : Si\r\nOptica : Si\r\nIluminacion : Si\r\nE-sata : No\r\nLpt : No\r\nCom : No\r\nSata : 4 x Sata 3\r\nM.2 : 4\r\nRaid : 0, 1, 5, 10\r\nSLI : No\r\nCrossfire : No\r\nFormato : ATX\r\nDimensiones : 30,5 cm x 24,4 cm', 'img/product/634c90900c37b.jpg', 8, 25),
('11°Gen - Gigabyte B560M AORUS PRO', 38089, 'Marca : Gigabyte\r\nModelo : B560M Aorus Pro\r\nUPC : 889523027318\r\nSocket : LGA1200\r\nChipset : Intel B560\r\nFuente : ATX\r\nMemoria : 4 x DDR4 5333(O.C.)/ DDR4 5133(O.C.)/DDR4 5000(O.C.)/4933(O.C.)/4800(O.C.)/ 4700(O.C.)/ 4600(O.C.)/ 4500(O.C.)/ 4400(O.C.)/ 4300(O.C.)/4266(O.C.) / 4133(O.C.) / 4000(O.C.) / 3866(O.C.) / 3800(O.C.) / 3733(O.C.) / 3666(O.C.) / 3600(O.C.) / 3466(O.C.) / 3400(O.C.) / 3333(O.C.) / 3300(O.C.) / 3200 / 3000 / 2933 / 2800 / 2666 / 2400 / 2133 MHz\r\nPci-e x16 : 2\r\nPci-e x1 : 1\r\nPci : No\r\nVga : No\r\nDvi : No\r\nHdmi : 1\r\nDisplayPort : 1\r\nSonido : Realtek ALC892\r\nRed : 10/100/1000*1\r\nPs2 : 1\r\nUsb traseros : 10 ( 6 x 2.0 + 3 x 3.2 + 1 x USB-C )\r\nUsb internos : 4 ( 2 x 2.0 + 1 x 3.2 + 1 x USB-C )\r\nWifi : No\r\nBluetooth : No\r\nOptica : No\r\nIluminacion : No\r\nE-sata : No\r\nLpt : No\r\nCom : No\r\nSata : 6 x Sata 3\r\nM.2 : 2\r\nSLI : No\r\nCrossfire : Si\r\nFormato : micro ATX\r\nDimensiones : 24,4 cm x 24,4 cm', 'img/product/634c91297e67c.jpg', 8, 26),
('AM4 - Msi B550 GAMING PLUS', 39999, 'Marca : MSI\r\nModelo : B550M PRO-VDH\r\nSocket : AM4\r\nChipset : AMD B550\r\nFuente : ATX\r\nMemoria : 4 x DIMM, Max. 128GB, DDR4 2667/ 2800/ 2933/ 3000/ 3066/ 3200/ 3466/ 3600/ 3733/ 3866/ 4000/ 4133/ 4266/ 4400+ MHz\r\nPci-e x16 : 2\r\nPci-e x1 : 2\r\nPci : No\r\nVga : No\r\nDvi : No\r\nHdmi : 1\r\nDisplayPort : 1\r\nSonido : Realtek ALC892 codec\r\nRed : 10/100/1000*1\r\nPs2 : 1\r\nUsb traseros : 8 ( 2 x 2.0 + 5 x 3.2 + 1 x USB-C )\r\nUsb internos : 6 ( 2 x 3.2 + 4 x 2.0 + 1 x USB-C )\r\nWifi : No\r\nBluetooth : No\r\nOptica : Si\r\nIluminacion : Si\r\nE-sata : No\r\nLpt : No\r\nCom : No\r\nSata : 6 x Sata 3\r\nM.2 : 2\r\nRaid : 0, 1, 10\r\nSLI : No\r\nCrossfire : Si\r\nFan connector : 6\r\nFormato : ATX\r\nDimensiones : 30.5 cm x 24.4 cm', 'img/product/634c91c022d3e.jpg', 8, 27),
('AM4 - Gigabyte GA-B550 AORUS PRO V2', 53149, 'Marca : Gigabyte\r\nModelo : B550 AORUS PRO V2\r\nUPC : 889523024089\r\nSocket : AM4\r\nChipset : B550\r\nFuente : ATX\r\nMemoria : 4 x DIMM, Max. 128GB, DDR4 5100(O.C.) / 5000(O.C.) / 4866(O.C.) / 4600(O.C.) / 4400(O.C.) / 4000(O.C.) / 3600(O.C.) / 3333(O.C.) /3200/2933/2667/2400/2133 MHz\r\nPci-e x16 : 3\r\nPci-e x1 : 2\r\nPci : No\r\nVga : No\r\nDvi : No\r\nHdmi : 1\r\nDisplayPort : 1\r\nSonido : Realtek ALC892\r\nRed : 10/100/1000*1\r\nPs2 : 1\r\nUsb traseros : 11 ( 6 x 2.0 + 4 x 3.2 + 1 x USB-C )\r\nUsb internos : 3 ( 2 x 3.2 + 1 x USB-C)\r\nWifi : No\r\nBluetooth : No\r\nOptica : No\r\nIluminacion : No\r\nE-sata : No\r\nLpt : No\r\nCom : No\r\nSata : 6 x Sata 3\r\nM.2 : 2\r\nRaid : 0, 1, 10\r\nSLI : No\r\nCrossfire : Si\r\nFormato : ATX\r\nDimensiones : 30,5 cm x 24,4 cm', 'img/product/634c925e6d17f.jpg', 8, 28),
('Disco Rigido 1Tb WD Blue', 8619, 'Marca : Western Digital\r\nLínea : Caviar Blue\r\nP/N : SH20K17927\r\nModelo : WD10EZEX-08WN4A0\r\nCapacidad : 1 TB\r\nInterfaz : SATA III\r\nFactor de formato : 3,5\"\r\nVelocidad de rotación : 7200rpm\r\nVelocidad de transferencia : 150MB/s\r\nCaché : 64 Mb\r\nTipo : Interno', 'img/product/634c9327efe03.jpg', 9, 29),
('Disco Rigido 2Tb WD Black', 27589, 'Marca : Western Digital\r\nLínea : Caviar Black\r\nP/N : WD2003FZEX\r\nModelo : WD2003FZEX-00SRLA0\r\nCapacidad : 2 TB\r\nInterfaz : SATA III\r\nFactor de formato : 3,5\"\r\nVelocidad de rotación : 7200rpm\r\nVelocidad de transferencia : 164MB/s\r\nCaché : 64Mb\r\nTipo : Interno', 'img/product/634c936f7f94b.jpg', 9, 30),
('Ssd M2 Pci-E 480Gb WD SN350 Dd Green', 9999, 'Marca : Western Digital\r\nLínea : Green SN350 NVMe SSD\r\nP/N : WDS480G2G0C\r\nUPC : 718037882406\r\nCapacidad : 480 GB\r\nInterfaces : PCIe\r\nFactor de formato : M.2 2280\r\nRendimiento de lectura secuencial : 2400MB/s\r\nRendimiento de escritura secuencial : 900MB/s\r\nAplicaciones : PC, Notebook\r\nUbicación del disco : Interno', 'img/product/634c93f12cb22.jpg', 9, 31),
('Ssd M2 Pci-E 1Tb Kingston KC3000', 34999, 'Marca : Kingston\r\nModelo : KC3000\r\nUPC / EAN : 740617324433\r\nPN : SKC3000S/1024G\r\nFactor de forma : M.2 2280\r\nInterfaz : PCIe 4.0 NVMe\r\nCapacidades : 1024 GB\r\nControlador : Phison E18\r\nNAND : TLC 3D\r\nLectura/escritura secuencial : 7.000/6.000 MB/s\r\nLectura/escritura aleatoria 4K1 : hasta 900.000/1.000.000 IOPS\r\nTotal Bytes Written (TBW) : 800 TBW\r\nConsumo eléctrico : 5 mW en reposo / 0,33 W promedio / 2,8 W (máx) en lectura / 6,3 W (máx) en escritura\r\nTemperatura de almacenamiento : -40 °C ~ 85 °C\r\nTemperatura de servicio : 0 °C ~ 70 °C\r\nDimensiones : 80 mm x 22 mm x 2,21 mm (512 GB-1024 GB)\r\nPeso : 7 g\r\nVibraciones en servicio : 2,17 G máxima (7-800 Hz)\r\nVibraciones en reposo : 20 G máxima (20-1000 Hz)\r\nMTBF : 1.800.000 horas', 'img/product/634c9453e5712.jpg', 9, 32),
('Thermaltake Smart Rgb 600W 80 Plus White', 17519, 'Marca : Thermaltake\r\nP / N : SPR-0600NHFAW\r\nWatts : 600W\r\nVentilador RGB : Sí\r\nFactor de forma : ATX\r\nModelo : SPR-0600NHFAW\r\nTipo : Intel ATX 12V 2.3\r\nMax. Capacidad de salida : 60W\r\nColor : Negro\r\nPFC (corrección del factor de potencia) : PFC activo\r\nBuena señal de potencia : 100-500 ms\r\nTiempo de espera : 16 ms (mínimo) dentro del 60% de carga\r\nCorriente de entrada : 10A máx.\r\nRango de frecuencia de entrada : 50 Hz\r\nVoltaje de entrada : 100Vac\r\nTemperatura de funcionamiento : 5 ? a + 40 ?\r\nTemperatura de almacenamiento : -40 ? a +55 ?\r\nSistema de refrigeración : Ventilador de 120 mm\r\nEficiencia : 80-87% de eficiencia @ 20-100% de carga\r\nSalida Max. de Corriente -12V (A) : 0.5A\r\nPotencia Max. -12V (W) : 6W\r\nRail de +12V : Single\r\nSalida Max. de Corriente +12V1 (A) : 42A\r\nPotencia Max. +12V1 (W) : 504W\r\nSalida Max. de Corriente +3.3V (A) : 22A\r\nSalida Max. de Corriente +5V (A) : 17A\r\nPotencia Max. +3.3V & +5V (W) : 100W\r\nSalida Max. de Corriente +5VSB (A) : 2.5A\r\nPotencia Max. +5VSB (W) : 12.5W\r\nSalida Max. de Corriente -12V (A) : 0.5A\r\nPotencia Max. -12V (W) : 6W\r\nRail de +12V : Single\r\nSalida Max. de Corriente +12V1 (A) : 42A\r\nPotencia Max. +12V1 (W) : 504W\r\nSalida Max. de Corriente +3.3V (A) : 22A\r\nSalida Max. de Corriente +5V (A) : 17A\r\nPotencia Max. +3.3V & +5V (W) : 105W\r\nSalida Max. de Corriente +5VSB (A) : 2.5A\r\nPotencia Max. +5VSB (W) : 12.5W', 'img/product/634c95544ad55.jpg', 10, 33),
('Adata XPG Pylon 750W 80 Plus Bronze', 17079, 'Marca : XPG\r\nModelo : XPG Pylon 750 Bronze\r\nP/N : PYLON750B-BKCAR\r\nUPC : 842243020786\r\nDimensiones (L x An x Al) : 150 x 140 x 86 mm\r\nClasificación 80 PLUS : BRONZE\r\nVersión ATX : Intel ATX 12V V2.4 (la sincronización cumple con las pautas específicas de Intel ATX12V para la versión 2.52)\r\nProtecciones : OCP / OVP / UVP / OPP / SCP / OTP / NLO / SIP\r\nCertificados : CE / UKCA / CB / FCC (IC) / EAC / CCC / TUV / cTUVus / TUV S-Mark / RCM / NOM / BSMI / KCPFC : 0,99\r\nVoltaje de entrada : 100-240V\r\nCorriente de entrada : 10A/5A\r\nFrecuencia de entrada : 50Hz\r\nTemperatura de operación : 50?\r\nTamaño del ventilador : 120mm\r\nRodamiento del ventilador : Rodamiento hidráulico (FDB, Fluid Dynamic Bearing)\r\nVelocidad del ventilador : 2000 r.p.m.\r\nMTBF : 100 000 horas a 25 ?\r\nConector ATX de 24 contactos : 1\r\nConector EPS de 8 (4+4) contactos : 1\r\nConector PCI-E de 6+2 contactos : 4\r\nConector SATA : 8\r\nConector periférico de 4 contactos : 1\r\nPeso : Producto 2,12 kg (4,7 lb) ±5 %, con el paquete 2,63 kg (5,8 lb) ±5 %', 'img/product/634c95cae29fa.jpg', 10, 34),
('Gigabyte 450W 80 Plus Bronze', 9869, 'Marca : Gigabyte\r\nModelo : P450B\r\nUPC : 813567028666\r\nTipo : Factor de forma Intel ATX 12V v2.31\r\nPFC : PFC activo (> 0,9 típico)\r\nVoltaje de entrada : 100-240 Vac (rango completo)\r\nCorriente de entrada : 8-4 A\r\nFrecuencia de entrada : 60-50 Hz\r\nCapacidad de salida : 450W\r\nDimensión : 150 x 140 x 86 mm\r\nTipo de ventilador : ventilador con cojinete hidráulico (HYB) de 20 mm\r\n80 PLUS : Bronce\r\nEficiencia : 85% a carga típica\r\nMTBF : > 100,000 horas\r\nProteccion : OVP / OPP / SCP / UVP / OCP / OTP\r\nPotencia buena señal : 100-500 ms\r\nTiempo de espera : > 16 ms\r\nTipo de cable : Plano, Todo negro\r\nConectores : ATX / MB 20 + 4 pines x 1 550 mm * 1, CPU / EPS 4 + 4 pines x 1 600 mm * 1, PCI-e 6 + 2 pines x 2 550 mm + 150 mm * 1, SATA x 6 500 mm + 120 mm + 120 mm * 2, Periférico de 4 pines x 3 + disquete de 4 pines x 1 500 mm + 120 mm + 120 mm + 120 mm * 1\r\nSalida Max. de Corriente -12V (A) : 0.3A\r\nPotencia Max. -12V (W) : 3.6W\r\nRail de +12V : Single\r\nSalida Max. de Corriente +12V1 (A) : 36A\r\nPotencia Max. +12V1 (W) : 432W\r\nSalida Max. de Corriente +3.3V (A) : 18A\r\nSalida Max. de Corriente +5V (A) : 15A\r\nPotencia Max. +3.3V & +5V (W) : 103W\r\nSalida Max. de Corriente +5VSB (A) : 3A\r\nPotencia Max. +5VSB (W) : 15W', 'img/product/634c96766700f.jpg', 10, 35),
('Cooler Master 1050W Gold Full Modular', 43999, 'Marca : Cooler Master\r\nModelo : MWE GOLD 1050\r\nP/N : MPE-A501-AFCAG\r\nUPC / EAN : 4719512085721\r\nVersión ATX : ATX 12V V2.52\r\nPotencia : 1050W\r\nPFC : PFC activo\r\nVoltaje de entrada : 100-240V\r\nCorriente de entrada : 13-6A\r\nFrecuencia de entrada : 47-63Hz\r\nDimensiones (L x An x Al) : 180x150x86mm\r\nTamaño del ventilador : 140 mm\r\nCojinete de ventilador : FDB\r\nVelocidad del ventilador : 2200 RPM\r\nNivel de ruido @ 20% : 0 dBA\r\nNivel de ruido @ 50% : 14,9 dBA\r\nNivel de ruido @ 100% : 27,3 dB\r\nAEficiencia : =90% a carga típica\r\nCalificación 80 PLUS : 80 PLUS oro\r\nTemperatura de funcionamiento : 0-50°C\r\nPotencia buena señal : 100-150ms\r\nTiempo de espera : >20ms al 100% de carga\r\nMTBF : >100.000 horas\r\nProtecciones : OVP, UVP, OPP, OTP, SCP, OCP\r\nRegulador : TUV, cTUVus, CE, BSMI, FCC, CCC, EAC, RCM, CB, UKCA\r\nConectores ATX de 24 pines : 1\r\nConectores EPS de 4+4 pines : 1\r\nConector EPS de 8 pines : 1\r\nConectores SATA : 12\r\nConectores periféricos de 4 pines : 4\r\nConectores PCI-e de 6+2 pines : 6\r\nModular : Full Modular', 'img/product/634c96ef05b30.jpg', 10, 36),
('Mini Tower Gamemax H608 Mini Abyss Rgb', 16999, 'Marca : Gamemax\r\nModelo : Mini Abyss H608\r\nP/N : MFG.H608\r\nUPC : 6931858771146\r\nFormatos de mother compatibles : Mini iTX, Micro ATX\r\nColor Exterior : Negro\r\nColor Interior : Negro\r\nVentana : Si\r\nFuente : No\r\nDisplay : No\r\nUsb : 3.0 x 2\r\nAudio/Mic : HD Audio x 1\r\nCard Reader : No\r\nUbicacion de la fuente : Abajo\r\nUbicacion de botones : Superior\r\nIluminacion : RGB\r\nCooler Superior soportado : 2 x 120 mm (No incluídos)\r\nCooler Frontal soportado : 3 x 120 mm (No incluidos)\r\nCooler Trasero soportado : 1 x 120 mm (incluido)\r\nCooler Inferior soportado : No\r\nBahias Ext. 5 1/4 : No\r\nBahias Ext. 3 1/2 : No\r\nTamaño máximo placa de video : 340mm\r\nAltura máxima CPU cooler : 155mm\r\nBahias Int. : 2 x 3.5\" 2 x 2.5\"\r\nExpansiones PCIe : 4\r\nWatercooling : Si\r\nDimensiones : 403 x 193 x 415 mm\r\nPeso : 3,6 kg', 'img/product/634c9a52b7477.jpg', 11, 37),
('Mid Tower Thermaltake H200 Rgb Vidrio Templado Snow', 18499, 'Marca : Thermaltake\r\nModelo : H200 TG RGB\r\nP/N : CA-1M3-00M6WN-00\r\nEAN : 4713227521536\r\nUPC : 841163071540\r\nColor : Blanco\r\nRGB : Si, Barra de luz RGB\r\nTipo : Middle Tower\r\nPanel lateral : Vidrio Templado 4mm x1\r\nCoolers incluidos : 1 x 120mm trasero\r\nBahías : 2 x 2.5\" o 3 x 3.5\"\r\nSlot de expansión : 7\r\nPlacas madre : MiniITX. MicroATX, ATX\r\nPuertos : USB 3.0 x2, 3.5mm x2, Botón RGB\r\nWatercooler : Si , superior (No incluido)\r\nSoporte de coolers frontal : 3 x 120mm o 2 x 140mm (No incluidos)\r\nSoporte de coolers superior : 2 x 120mm o 2 x 140mm\r\nSoporte de coolers traseros : 1 x 120 o 1 x 140mm (Incluido de 120mm)\r\nSoporte de radiador frontal : 1 x 240mm o 1 x 280mm\r\nSoporte de radiador superior : 1 x 240mm\r\nLargo máximo del Cooler para CPU : 180mm\r\nLargo máximo de placa de video : 320mm\r\nDimensiones : 416 x 210 x 454 mm\r\nDimensiones del embalaje : 515 x 265 x 485 mm\r\nPeso : 8 Kg\r\nPeso del embalaje: 9 Kg', 'img/product/634c9ad2c2a73.jpg', 11, 38),
('Mid Tower Thermaltake H550 TG Rgb', 21629, 'Marca : Thermaltake\r\nModelo : H550 TG ARGB\r\nP/N : CA-1P4-00M1WN-00\r\nUPC : 4713227522915\r\nFormatos de mother compatibles : Mini iTX, Micro ATX, ATX\r\nColor Exterior : Aluminio\r\nColor Interior : Aluminio\r\nVentana : Si\r\nFuente : No\r\nDisplay : No\r\nUsb : USB 3.0 x 1, USB 2.0 x 2\r\nAudio/Mic : HD Audio x 1\r\nCard Reader : No\r\nUbicacion de la fuente : Abajo\r\nUbicacion de botones : Superior\r\nIluminacion : RGB\r\nCooler Superior soportado : 2 x 120 mm o 2 x 140 mm\r\nCooler Frontal soportado : 3 x 120 mm o 2 x 140 mm\r\nCooler Trasero soportado : 1 x 120 mm (incluido, ARGB, 1000rpm) o 1 x 140 mm\r\nBahias Ext. 5 1/4 : No\r\nBahias Ext. 3 1/2 : No\r\nTamaño máximo placa de video : 300mm\r\nAltura máxima CPU cooler : 165mm\r\nBahias Int. : 2 x 3.5\", 2 x 2.5\"\r\nExpansiones PCIe : 7+2\r\nWatercooling : S\r\niDimensiones : 472 x 225 x 441 mm\r\nPeso : 7,65 kg', 'img/product/634c9b5453d7e.jpg', 11, 39),
('Mid Tower Thermaltake View 51 Tg Blanco Argb', 55149, 'Marca : Thermaltake\r\nModelo : View 51 Tempered Glass Snow ARGB\r\nP/N : CA-1Q6-00M6WN-00\r\nUPC : 4713227523851\r\nFormatos de mother compatibles : Mini iTX, Micro ATX, ATX, E-ATX\r\nColor Exterior : Blanco\r\nColor Interior : Blanco\r\nVentana : Si\r\nFuente : No\r\nDisplay : No\r\nUsb : 1 x USB 3.1 (Gen 2) Tipo C, 2 x USB 2.0, 2 x USB 3.0\r\nAudio/Mic : HD Audio x 1\r\nCard Reader : No\r\nUbicacion de la fuente : Abajo\r\nUbicacion de botones : Frontal\r\nIluminacion : RGB\r\nCooler Superior soportado : 3 x 120mm o 3 x 140mm o 2 x 200mm (no incluídos)\r\nCooler Frontal soportado : 3 x 120mm o 3 x 140mm o 2 x 200mm (incluídos 2 x 200mm ARGB 1000 rpm)\r\nCooler Trasero soportado : 1 x 120 mm (incluido ARGB 1000 rpm)\r\nCooler Interior soportado (al lado de la bandeja del MB) : 3 x 120mm o 2 x 140mm\r\nCooler Inferior soportado : 3 x 120 mm (no incluídos)\r\nBahias Ext. 5 1/4 : No\r\nBahias Ext. 3 1/2 : No\r\nTamaño máximo placa de video : 300 mm (con radiador), 440 mm (con radiador)\r\nAltura máxima CPU cooler : 175mm\r\nBahias Int. : 2 x 3.5\", 2 x 2.5\"\r\nExpansiones PCIe : 8\r\nWatercooling : Si\r\nDimensiones : 550 x 315 x 525 mm\r\nPeso : 14,95 kg', 'img/product/634c9bc30d990.jpg', 11, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipodeproductos`
--

CREATE TABLE `tipodeproductos` (
  `tipoDeProducto` varchar(40) NOT NULL,
  `idTipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipodeproductos`
--

INSERT INTO `tipodeproductos` (`tipoDeProducto`, `idTipo`) VALUES
('Placas de video', 5),
('Procesadores', 6),
('Memorias RAM', 7),
('Motherboards', 8),
('Almacenamiento', 9),
('Fuentes', 10),
('Gabinetes', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nombre` text NOT NULL,
  `email` text NOT NULL,
  `contrasenia` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `nombre`, `email`, `contrasenia`) VALUES
(1, 'Gonzalo', 'prueba@gmail.com', '$2a$12$HNAaeFEeYxZsxhAJ5znhDOdhrHoZaUIq6hlyaEZ5dw9oOAImBcudC');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`idProducto`),
  ADD KEY `idTipoDeProducto` (`idTipoDeProducto`);

--
-- Indices de la tabla `tipodeproductos`
--
ALTER TABLE `tipodeproductos`
  ADD PRIMARY KEY (`idTipo`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `idProducto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT de la tabla `tipodeproductos`
--
ALTER TABLE `tipodeproductos`
  MODIFY `idTipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`idTipoDeProducto`) REFERENCES `tipodeproductos` (`idTipo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
