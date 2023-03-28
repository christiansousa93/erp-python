-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: projectninho
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `categoria_a_pagar`
--

DROP TABLE IF EXISTS `categoria_a_pagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_a_pagar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria_a_pagar` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_categoria_a_pagar_categoria_a_pagar` (`categoria_a_pagar`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_a_pagar`
--

LOCK TABLES `categoria_a_pagar` WRITE;
/*!40000 ALTER TABLE `categoria_a_pagar` DISABLE KEYS */;
INSERT INTO `categoria_a_pagar` VALUES (1,'Compra');
/*!40000 ALTER TABLE `categoria_a_pagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_a_receber`
--

DROP TABLE IF EXISTS `categoria_a_receber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_a_receber` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria_a_receber` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_categoria_a_receber_categoria_a_receber` (`categoria_a_receber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_a_receber`
--

LOCK TABLES `categoria_a_receber` WRITE;
/*!40000 ALTER TABLE `categoria_a_receber` DISABLE KEYS */;
INSERT INTO `categoria_a_receber` VALUES (1,'Venda');
/*!40000 ALTER TABLE `categoria_a_receber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria_produto`
--

DROP TABLE IF EXISTS `categoria_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria_produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `categoria_produto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_categoria_produto_categoria_produto` (`categoria_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria_produto`
--

LOCK TABLES `categoria_produto` WRITE;
/*!40000 ALTER TABLE `categoria_produto` DISABLE KEYS */;
INSERT INTO `categoria_produto` VALUES (1,'alimento'),(3,'copa/cozinha'),(4,'descartáveis'),(2,'limpeza');
/*!40000 ALTER TABLE `categoria_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `sobrenome` varchar(40) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `cep` varchar(12) DEFAULT NULL,
  `endereco` varchar(40) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `bairro` varchar(40) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_cliente_nome` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'CATEQ','CATEQ','0000000000','000000000','0000000000','0000000000','','','','','','','',''),(2,'DFDSFSDFDFSDFSDFSD','','00000000000','201723656','1212121221','2121212121','dsada@mail.com','','61654125','RUA JOSÉ MARINHO','566','ARATURI (JUREMA)','CAUCAIA','CE');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_fornecedor` int DEFAULT NULL,
  `data_emissao` date DEFAULT NULL,
  `prazo_entrega` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `categoria` int DEFAULT NULL,
  `desconto` decimal(9,2) DEFAULT NULL,
  `frete` decimal(9,2) DEFAULT NULL,
  `valor_total` decimal(9,2) DEFAULT NULL,
  `valor_pago` decimal(9,2) DEFAULT NULL,
  `valor_pendente` decimal(9,2) DEFAULT NULL,
  `entrega` int DEFAULT NULL,
  `pagamento` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_fornecedor` (`id_fornecedor`),
  KEY `categoria` (`categoria`),
  KEY `entrega` (`entrega`),
  KEY `pagamento` (`pagamento`),
  CONSTRAINT `compra_ibfk_1` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id`),
  CONSTRAINT `compra_ibfk_2` FOREIGN KEY (`categoria`) REFERENCES `categoria_a_pagar` (`id`),
  CONSTRAINT `compra_ibfk_3` FOREIGN KEY (`entrega`) REFERENCES `status_entrega` (`id`),
  CONSTRAINT `compra_ibfk_4` FOREIGN KEY (`pagamento`) REFERENCES `status_pagamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES (1,1,'2023-03-23','2023-03-25','2023-03-23',1,0.00,0.00,10.00,0.00,0.00,1,2),(2,1,'2023-03-24','2023-03-26',NULL,1,15.00,5.00,66.90,0.00,0.00,2,2),(3,1,'2023-03-24','2023-03-26','2023-03-24',1,0.00,0.00,47.45,0.00,0.00,1,2),(4,1,'2023-03-24','2023-03-26','2023-03-24',1,0.00,0.00,5.00,0.00,0.00,1,2);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conta_a_pagar`
--

DROP TABLE IF EXISTS `conta_a_pagar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conta_a_pagar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_compra` int DEFAULT NULL,
  `id_fornecedor` int DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `categoria` int DEFAULT NULL,
  `data_vencimento` date DEFAULT NULL,
  `valor` decimal(9,2) DEFAULT NULL,
  `forma_pagamento` int DEFAULT NULL,
  `data_pagamento` date DEFAULT NULL,
  `valor_pago` decimal(9,2) DEFAULT NULL,
  `pagamento` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_compra` (`id_compra`),
  KEY `id_fornecedor` (`id_fornecedor`),
  KEY `categoria` (`categoria`),
  KEY `forma_pagamento` (`forma_pagamento`),
  KEY `pagamento` (`pagamento`),
  CONSTRAINT `conta_a_pagar_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id`),
  CONSTRAINT `conta_a_pagar_ibfk_2` FOREIGN KEY (`id_fornecedor`) REFERENCES `fornecedor` (`id`),
  CONSTRAINT `conta_a_pagar_ibfk_3` FOREIGN KEY (`categoria`) REFERENCES `categoria_a_pagar` (`id`),
  CONSTRAINT `conta_a_pagar_ibfk_4` FOREIGN KEY (`forma_pagamento`) REFERENCES `forma_de_pagamento` (`id`),
  CONSTRAINT `conta_a_pagar_ibfk_5` FOREIGN KEY (`pagamento`) REFERENCES `status_pagamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conta_a_pagar`
--

LOCK TABLES `conta_a_pagar` WRITE;
/*!40000 ALTER TABLE `conta_a_pagar` DISABLE KEYS */;
INSERT INTO `conta_a_pagar` VALUES (1,1,1,'Pedido de Compra 1. Parcela 1 de 1 ',NULL,1,'2023-04-23',10.00,2,NULL,0.00,2),(2,2,1,'Pedido de Compra 2. Parcela 1 de 1 ',NULL,1,'2023-03-24',66.90,1,NULL,0.00,2),(3,3,1,'Pedido de Compra 3. Parcela 1 de 1 ',NULL,1,'2023-03-24',47.45,1,NULL,0.00,2),(4,4,1,'Pedido de Compra 4. Parcela 1 de 1 ',NULL,1,'2023-03-24',5.00,1,NULL,0.00,2);
/*!40000 ALTER TABLE `conta_a_pagar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conta_a_receber`
--

DROP TABLE IF EXISTS `conta_a_receber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `conta_a_receber` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_venda` int DEFAULT NULL,
  `id_cliente` int DEFAULT NULL,
  `descricao` varchar(100) DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `categoria` int DEFAULT NULL,
  `data_vencimento` date DEFAULT NULL,
  `valor` decimal(9,2) DEFAULT NULL,
  `forma_pagamento` int DEFAULT NULL,
  `data_recebimento` date DEFAULT NULL,
  `valor_recebido` decimal(9,2) DEFAULT NULL,
  `pagamento` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_venda` (`id_venda`),
  KEY `id_cliente` (`id_cliente`),
  KEY `categoria` (`categoria`),
  KEY `forma_pagamento` (`forma_pagamento`),
  KEY `pagamento` (`pagamento`),
  CONSTRAINT `conta_a_receber_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id`),
  CONSTRAINT `conta_a_receber_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `conta_a_receber_ibfk_3` FOREIGN KEY (`categoria`) REFERENCES `categoria_a_receber` (`id`),
  CONSTRAINT `conta_a_receber_ibfk_4` FOREIGN KEY (`forma_pagamento`) REFERENCES `forma_de_pagamento` (`id`),
  CONSTRAINT `conta_a_receber_ibfk_5` FOREIGN KEY (`pagamento`) REFERENCES `status_pagamento` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conta_a_receber`
--

LOCK TABLES `conta_a_receber` WRITE;
/*!40000 ALTER TABLE `conta_a_receber` DISABLE KEYS */;
INSERT INTO `conta_a_receber` VALUES (1,1,1,'Pedido de Venda 1. Parcela 1 de 1 ',NULL,1,'2023-03-23',5.50,1,NULL,0.00,2),(2,2,1,'Pedido de Venda 2. Parcela 1 de 1 ',NULL,1,'2023-03-24',11.00,2,NULL,0.00,2);
/*!40000 ALTER TABLE `conta_a_receber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresa`
--

DROP TABLE IF EXISTS `empresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empresa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_fantasia` varchar(80) DEFAULT NULL,
  `razao_social` varchar(80) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `insc_estadual` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `site` varchar(80) DEFAULT NULL,
  `obs` varchar(80) DEFAULT NULL,
  `cep` varchar(12) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `bairro` varchar(40) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `subtitulo` varchar(80) DEFAULT NULL,
  `logo` longblob,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresa`
--

LOCK TABLES `empresa` WRITE;
/*!40000 ALTER TABLE `empresa` DISABLE KEYS */;
INSERT INTO `empresa` VALUES (1,'JWA TECNOLOGIA','JWA TECNOLOGIA LTDA','01.234.456/0001-00','01234567-89','85991192989','jwatecnologia@gmail.com','jwatecnologia.epizy.com','DADOS EMPRESA JWA TECNOLOGIA','61600090','R. QUINZE DE NOVEMBRO','1478','CENTRO','CAUCAIA','CE','JWA','TECNOLOGIA',_binary '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');
/*!40000 ALTER TABLE `empresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forma_de_pagamento`
--

DROP TABLE IF EXISTS `forma_de_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `forma_de_pagamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `forma_pagamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_forma_de_pagamento_forma_pagamento` (`forma_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forma_de_pagamento`
--

LOCK TABLES `forma_de_pagamento` WRITE;
/*!40000 ALTER TABLE `forma_de_pagamento` DISABLE KEYS */;
INSERT INTO `forma_de_pagamento` VALUES (2,'Cartão'),(1,'Dinheiro');
/*!40000 ALTER TABLE `forma_de_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedor`
--

DROP TABLE IF EXISTS `fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fornecedor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome_fantasia` varchar(80) DEFAULT NULL,
  `razao_social` varchar(80) DEFAULT NULL,
  `cnpj` varchar(20) DEFAULT NULL,
  `insc_estadual` varchar(20) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL,
  `site` varchar(80) DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `cep` varchar(12) DEFAULT NULL,
  `endereco` varchar(50) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `bairro` varchar(40) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_fornecedor_nome_fantasia` (`nome_fantasia`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedor`
--

LOCK TABLES `fornecedor` WRITE;
/*!40000 ALTER TABLE `fornecedor` DISABLE KEYS */;
INSERT INTO `fornecedor` VALUES (1,'CATEQ','CATEQ','01.234.456/0001-00','00000000-11','8532333456','','','','61600090','RUA QUINZE DE NOVEMBRO','1478','CENTRO','CAUCAIA','CE');
/*!40000 ALTER TABLE `fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca_produto`
--

DROP TABLE IF EXISTS `marca_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca_produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `marca_produto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_marca_produto_marca_produto` (`marca_produto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca_produto`
--

LOCK TABLES `marca_produto` WRITE;
/*!40000 ALTER TABLE `marca_produto` DISABLE KEYS */;
INSERT INTO `marca_produto` VALUES (2,'genérico'),(1,'indaia'),(3,'plasutil');
/*!40000 ALTER TABLE `marca_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nivel`
--

DROP TABLE IF EXISTS `nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nivel` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel`
--

LOCK TABLES `nivel` WRITE;
/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
INSERT INTO `nivel` VALUES (1,'Vendedor'),(2,'Compras'),(3,'Financeiro'),(4,'Administrador');
/*!40000 ALTER TABLE `nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `produto` varchar(80) DEFAULT NULL,
  `imagem` longblob,
  `categoria` int DEFAULT NULL,
  `marca` int DEFAULT NULL,
  `estoque_minimo` int DEFAULT NULL,
  `estoque_maximo` int DEFAULT NULL,
  `qtde` int DEFAULT NULL,
  `valor_compra` decimal(9,2) DEFAULT NULL,
  `valor_unitario` decimal(9,2) DEFAULT NULL,
  `valor_atacado` decimal(9,2) DEFAULT NULL,
  `qtde_atacado` int DEFAULT NULL,
  `obs` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categoria` (`categoria`),
  KEY `marca` (`marca`),
  KEY `ix_produto_produto` (`produto`),
  CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`categoria`) REFERENCES `categoria_produto` (`id`),
  CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`marca`) REFERENCES `marca_produto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'AGUA MINERAL','',3,1,10,20,15,1.00,1.20,1.10,5,''),(2,'CANECA FODA','',3,2,5,20,5,7.69,10.00,15.00,10,''),(3,'PACOTE 100 COPOS DESCARTÁVEIS','',4,3,5,20,5,1.80,2.90,3.50,5,'');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relacao_compra`
--

DROP TABLE IF EXISTS `relacao_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relacao_compra` (
  `id` varchar(25) NOT NULL,
  `id_compra` int DEFAULT NULL,
  `id_produto` int DEFAULT NULL,
  `qtde` decimal(9,2) DEFAULT NULL,
  `valor_unitario` decimal(9,2) DEFAULT NULL,
  `valor_total` decimal(9,2) DEFAULT NULL,
  `obs` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_compra` (`id_compra`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `relacao_compra_ibfk_1` FOREIGN KEY (`id_compra`) REFERENCES `compra` (`id`),
  CONSTRAINT `relacao_compra_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relacao_compra`
--

LOCK TABLES `relacao_compra` WRITE;
/*!40000 ALTER TABLE `relacao_compra` DISABLE KEYS */;
INSERT INTO `relacao_compra` VALUES ('1679605644120',1,1,10.00,1.00,10.00,''),('1679658003168',2,2,10.00,7.69,76.90,''),('1679658216766',3,2,5.00,7.69,38.45,''),('1679658222372',3,3,5.00,1.80,9.00,''),('1679669485927',4,1,5.00,1.00,5.00,'');
/*!40000 ALTER TABLE `relacao_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relacao_venda`
--

DROP TABLE IF EXISTS `relacao_venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `relacao_venda` (
  `id` varchar(25) NOT NULL,
  `id_venda` int DEFAULT NULL,
  `id_produto` int DEFAULT NULL,
  `qtde` decimal(9,2) DEFAULT NULL,
  `valor_unitario` decimal(9,2) DEFAULT NULL,
  `valor_total` decimal(9,2) DEFAULT NULL,
  `obs` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_venda` (`id_venda`),
  KEY `id_produto` (`id_produto`),
  CONSTRAINT `relacao_venda_ibfk_1` FOREIGN KEY (`id_venda`) REFERENCES `venda` (`id`),
  CONSTRAINT `relacao_venda_ibfk_2` FOREIGN KEY (`id_produto`) REFERENCES `produto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relacao_venda`
--

LOCK TABLES `relacao_venda` WRITE;
/*!40000 ALTER TABLE `relacao_venda` DISABLE KEYS */;
INSERT INTO `relacao_venda` VALUES ('1679605843082',1,1,5.00,1.10,5.50,''),('1679658042942',2,1,10.00,1.10,11.00,'');
/*!40000 ALTER TABLE `relacao_venda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_entrega`
--

DROP TABLE IF EXISTS `status_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_entrega` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status_entrega` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_status_entrega_status_entrega` (`status_entrega`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_entrega`
--

LOCK TABLES `status_entrega` WRITE;
/*!40000 ALTER TABLE `status_entrega` DISABLE KEYS */;
INSERT INTO `status_entrega` VALUES (1,'ENTREGUE'),(2,'PENDENTE');
/*!40000 ALTER TABLE `status_entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_pagamento`
--

DROP TABLE IF EXISTS `status_pagamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_pagamento` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status_pagamento` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ix_status_pagamento_status_pagamento` (`status_pagamento`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_pagamento`
--

LOCK TABLES `status_pagamento` WRITE;
/*!40000 ALTER TABLE `status_pagamento` DISABLE KEYS */;
INSERT INTO `status_pagamento` VALUES (1,'CONCLUÍDO'),(2,'PENDENTE');
/*!40000 ALTER TABLE `status_pagamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(80) DEFAULT NULL,
  `cpf` varchar(15) DEFAULT NULL,
  `rg` varchar(15) DEFAULT NULL,
  `celular` varchar(15) DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `obs` varchar(100) DEFAULT NULL,
  `cep` varchar(12) DEFAULT NULL,
  `endereco` varchar(40) DEFAULT NULL,
  `numero` varchar(5) DEFAULT NULL,
  `bairro` varchar(40) DEFAULT NULL,
  `cidade` varchar(40) DEFAULT NULL,
  `estado` varchar(2) DEFAULT NULL,
  `usuario` varchar(40) DEFAULT NULL,
  `senha` varchar(40) DEFAULT NULL,
  `nivel` int DEFAULT NULL,
  `ativo` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `nivel` (`nivel`),
  KEY `ix_usuario_nome` (`nome`),
  KEY `ix_usuario_usuario` (`usuario`),
  CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`nivel`) REFERENCES `nivel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'CHRISTIAN SOUSA','603.551.953-99','20.090.101-3','(85) 99612-3246','() -','','','61650-240','','NONE','','','','admin','admin',4,1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `venda`
--

DROP TABLE IF EXISTS `venda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venda` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int DEFAULT NULL,
  `data_emissao` date DEFAULT NULL,
  `prazo_entrega` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `categoria` int DEFAULT NULL,
  `desconto` decimal(9,2) DEFAULT NULL,
  `frete` decimal(9,2) DEFAULT NULL,
  `valor_total` decimal(9,2) DEFAULT NULL,
  `valor_recebido` decimal(9,2) DEFAULT NULL,
  `valor_pendente` decimal(9,2) DEFAULT NULL,
  `entrega` int DEFAULT NULL,
  `pagamento` int DEFAULT NULL,
  `vendedor` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_cliente` (`id_cliente`),
  KEY `categoria` (`categoria`),
  KEY `entrega` (`entrega`),
  KEY `pagamento` (`pagamento`),
  KEY `vendedor` (`vendedor`),
  CONSTRAINT `venda_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `venda_ibfk_2` FOREIGN KEY (`categoria`) REFERENCES `categoria_a_receber` (`id`),
  CONSTRAINT `venda_ibfk_3` FOREIGN KEY (`entrega`) REFERENCES `status_entrega` (`id`),
  CONSTRAINT `venda_ibfk_4` FOREIGN KEY (`pagamento`) REFERENCES `status_pagamento` (`id`),
  CONSTRAINT `venda_ibfk_5` FOREIGN KEY (`vendedor`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venda`
--

LOCK TABLES `venda` WRITE;
/*!40000 ALTER TABLE `venda` DISABLE KEYS */;
INSERT INTO `venda` VALUES (1,1,'2023-03-23','2023-03-25',NULL,1,0.00,0.00,5.50,0.00,0.00,2,2,1),(2,1,'2023-03-24','2023-03-26',NULL,1,0.00,2.00,11.00,0.00,0.00,2,2,1);
/*!40000 ALTER TABLE `venda` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-28 14:26:45
