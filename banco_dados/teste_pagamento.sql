-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: teste_pagamento
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `sec_apps`
--

DROP TABLE IF EXISTS `sec_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_apps` (
  `app_name` varchar(128) NOT NULL,
  `app_type` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`app_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_apps`
--

LOCK TABLES `sec_apps` WRITE;
/*!40000 ALTER TABLE `sec_apps` DISABLE KEYS */;
INSERT INTO `sec_apps` VALUES ('app_change_pswd','contr','Security Application'),('app_form_add_users','form','Security Application'),('app_form_edit_users','form','Security Application'),('app_form_sec_apps','form','Security Application'),('app_form_sec_users_apps','form','Security Application'),('app_grid_sec_apps','cons','Security Application'),('app_grid_sec_users','cons','Security Application'),('app_grid_sec_users_apps','cons','Security Application'),('app_Login','contr','Security Application'),('app_menu','menu','Security Application'),('app_retrieve_pswd','contr','Security Application'),('app_search_sec_users','contr','Security Application'),('app_sync_apps','contr','Security Application'),('formulario_transacao_usuario','form',''),('formulario_usuario','form',''),('form_transacao_usuario','form',''),('relatorio_transacao','cons',''),('tabs_lojista','aba',''),('tabs_usuario','aba',''),('treemenu_usuario','menutree','');
/*!40000 ALTER TABLE `sec_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_settings`
--

DROP TABLE IF EXISTS `sec_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_settings` (
  `set_name` varchar(255) NOT NULL,
  `set_value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`set_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_settings`
--

LOCK TABLES `sec_settings` WRITE;
/*!40000 ALTER TABLE `sec_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `sec_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_users`
--

DROP TABLE IF EXISTS `sec_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_users` (
  `login` varchar(255) NOT NULL,
  `pswd` varchar(255) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `active` varchar(1) DEFAULT NULL,
  `activation_code` varchar(32) DEFAULT NULL,
  `priv_admin` varchar(1) DEFAULT NULL,
  `mfa` varchar(255) DEFAULT NULL,
  `picture` longblob,
  `tipo_usuario` varchar(10) DEFAULT NULL,
  `cpf_cnpj` varchar(20) DEFAULT NULL,
  `saldo_bancario` decimal(11,2) DEFAULT NULL,
  `senha_transferencia` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`login`),
  UNIQUE KEY `login` (`login`),
  UNIQUE KEY `cpf_cnpj` (`cpf_cnpj`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_users`
--

LOCK TABLES `sec_users` WRITE;
/*!40000 ALTER TABLE `sec_users` DISABLE KEYS */;
INSERT INTO `sec_users` VALUES ('admin','21232f297a57a5a743894a0e4a801fc3','Admin','vancouvertec@gmail.com','Y',NULL,'Y',NULL,NULL,'Usuário','39083116751',147.89,'123456'),('Benedito','21232f297a57a5a743894a0e4a801fc3','Benedito Victor Otávio da Rosa','benedito_darosa@virage.com.br','Y',NULL,'Y',NULL,NULL,'Usuário','01176990128',258.69,'123456'),('Brenda','21232f297a57a5a743894a0e4a801fc3','Brenda e Davi Locações de Automóveis Ltda','presidencia@brendaedavilocacoesdeautomoveisltda.com.br','Y',NULL,'Y',NULL,NULL,'Lojista','50399745000143',0.00,'123456'),('Elias','21232f297a57a5a743894a0e4a801fc3','Elias Manuel Renato Martins','eliasmanuelmartins@oliveiraesouza.adv.br','Y',NULL,'Y',NULL,NULL,'Usuário','78075590988',132.98,'123456'),('Nina','21232f297a57a5a743894a0e4a801fc3','Nina e Raimunda Pizzaria Delivery ME','almoxarifado@ninaeraimundapizzariadeliveryme.com.br','Y',NULL,'Y',NULL,NULL,'Lojista','53646572000109',44.00,'123456'),('rafael.silva','e10adc3949ba59abbe56e057f20f883e','rafael silva','rafaelferreira2312@gmail.com','Y','','','','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sec_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec_users_apps`
--

DROP TABLE IF EXISTS `sec_users_apps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sec_users_apps` (
  `login` varchar(255) NOT NULL,
  `app_name` varchar(128) NOT NULL,
  `priv_access` varchar(1) DEFAULT NULL,
  `priv_insert` varchar(1) DEFAULT NULL,
  `priv_delete` varchar(1) DEFAULT NULL,
  `priv_update` varchar(1) DEFAULT NULL,
  `priv_export` varchar(1) DEFAULT NULL,
  `priv_print` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`login`,`app_name`),
  KEY `sec_users_apps_ibfk_2` (`app_name`),
  CONSTRAINT `sec_users_apps_ibfk_1` FOREIGN KEY (`login`) REFERENCES `sec_users` (`login`) ON DELETE CASCADE,
  CONSTRAINT `sec_users_apps_ibfk_2` FOREIGN KEY (`app_name`) REFERENCES `sec_apps` (`app_name`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec_users_apps`
--

LOCK TABLES `sec_users_apps` WRITE;
/*!40000 ALTER TABLE `sec_users_apps` DISABLE KEYS */;
INSERT INTO `sec_users_apps` VALUES ('admin','app_change_pswd','Y','N','N','N','N','N'),('admin','app_form_add_users','Y','Y','Y','Y','Y','Y'),('admin','app_form_edit_users','Y','Y','Y','Y','Y','Y'),('admin','app_form_sec_apps','Y','Y','Y','Y','Y','Y'),('admin','app_form_sec_users_apps','Y','Y','Y','Y','Y','Y'),('admin','app_grid_sec_apps','Y','N','N','N','Y','Y'),('admin','app_grid_sec_users','Y','N','N','N','Y','Y'),('admin','app_grid_sec_users_apps','Y','N','N','N','Y','Y'),('admin','app_Login','Y','N','N','N','N','N'),('admin','app_menu','Y','N','N','N','N','N'),('admin','app_retrieve_pswd','Y','N','N','N','N','N'),('admin','app_search_sec_users','Y','N','N','N','N','N'),('admin','app_sync_apps','Y','N','N','N','N','N'),('admin','formulario_transacao_usuario','Y','Y','Y','Y','Y','Y'),('admin','formulario_usuario','Y','Y','Y','Y','Y','Y'),('admin','form_transacao_usuario','Y','Y','Y','Y','Y','Y'),('admin','relatorio_transacao','Y','N','N','N','Y','Y'),('admin','tabs_lojista','Y','N','N','N','N','N'),('admin','tabs_usuario','Y','N','N','N','N','N'),('admin','treemenu_usuario','Y','N','N','N','N','N'),('rafael.silva','app_change_pswd',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_form_add_users',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_form_edit_users',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_form_sec_apps',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_form_sec_users_apps',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_grid_sec_apps',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_grid_sec_users',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_grid_sec_users_apps',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_Login',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_menu',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_retrieve_pswd',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_search_sec_users',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','app_sync_apps',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','formulario_transacao_usuario',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','formulario_usuario',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','form_transacao_usuario',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','relatorio_transacao',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','tabs_lojista',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','tabs_usuario',NULL,NULL,NULL,NULL,NULL,NULL),('rafael.silva','treemenu_usuario',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `sec_users_apps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_transacao`
--

DROP TABLE IF EXISTS `tbl_transacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_transacao` (
  `id_transacao` int NOT NULL AUTO_INCREMENT,
  `tipo_cliente` varchar(10) DEFAULT NULL,
  `login_usuario` varchar(255) DEFAULT NULL,
  `cpf_cnpj` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `valor` decimal(11,2) DEFAULT NULL,
  `data_cadastro` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `enviar_email` varchar(300) DEFAULT NULL,
  `payload` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id_transacao`),
  KEY `fk_id_login_idx` (`login_usuario`),
  CONSTRAINT `fk_id_login` FOREIGN KEY (`login_usuario`) REFERENCES `sec_users` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_transacao`
--

LOCK TABLES `tbl_transacao` WRITE;
/*!40000 ALTER TABLE `tbl_transacao` DISABLE KEYS */;
INSERT INTO `tbl_transacao` VALUES (2,'Usuário','admin','','','123456',34.56,'2022-03-12 09:12:21','Autorizado',NULL,NULL),(3,'Lojista','Brenda','','','123456',2.56,'2022-03-12 09:21:37','Autorizado',NULL,NULL),(4,'Usuário','admin','39083116751','vancouvertec@gmail.com','123456',5.43,'2022-03-12 09:27:11','Autorizado',NULL,NULL),(5,'Usuário','Brenda','','','123456',2.56,'2022-03-12 10:11:03','Autorizado',NULL,NULL),(6,'Usuário','Brenda','50399745000143','presidencia@brendaedavilocacoesdeautomoveisltda.com.br','123456',5.64,'2022-03-12 10:19:24','Autorizado',NULL,NULL),(7,'Lojista','Nina','53646572000109','almoxarifado@ninaeraimundapizzariadeliveryme.com.br','123456',35.66,'2022-03-12 11:01:47','Autorizado','Success','{\"success\":\"true\"}');
/*!40000 ALTER TABLE `tbl_transacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'teste_pagamento'
--

--
-- Dumping routines for database 'teste_pagamento'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-12 11:55:28
