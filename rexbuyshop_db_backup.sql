-- MySQL dump 10.13  Distrib 8.0.44, for Linux (x86_64)
--
-- Host: localhost    Database: rexbuyshopdb
-- ------------------------------------------------------
-- Server version	8.0.44-0ubuntu0.24.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `add_fund_bonus_categories`
--

DROP TABLE IF EXISTS `add_fund_bonus_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_fund_bonus_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `bonus_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bonus_amount` double(14,2) NOT NULL DEFAULT '0.00',
  `min_add_money_amount` double(14,2) NOT NULL DEFAULT '0.00',
  `max_bonus_amount` double(14,2) NOT NULL DEFAULT '0.00',
  `start_date_time` datetime DEFAULT NULL,
  `end_date_time` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_fund_bonus_categories`
--

LOCK TABLES `add_fund_bonus_categories` WRITE;
/*!40000 ALTER TABLE `add_fund_bonus_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_fund_bonus_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addon_settings`
--

DROP TABLE IF EXISTS `addon_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addon_settings` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `live_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `test_values` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `settings_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mode` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'live',
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`),
  KEY `payment_settings_id_index` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addon_settings`
--

LOCK TABLES `addon_settings` WRITE;
/*!40000 ALTER TABLE `addon_settings` DISABLE KEYS */;
INSERT INTO `addon_settings` VALUES ('070c6bbd-d777-11ed-96f4-0c7a158e4469','twilio','{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}','{\"gateway\":\"twilio\",\"mode\":\"live\",\"status\":\"0\",\"sid\":\"data\",\"messaging_service_sid\":\"data\",\"token\":\"data\",\"from\":\"data\",\"otp_template\":\"data\"}','sms_config','live',0,NULL,'2023-08-12 07:01:29',NULL),('070c766c-d777-11ed-96f4-0c7a158e4469','2factor','{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"otp_template\":\"OTP1\"}','{\"gateway\":\"2factor\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"otp_template\":\"OTP1\"}','sms_config','live',0,NULL,'2025-05-11 07:50:11',NULL),('0d8a9308-d6a5-11ed-962c-0c7a158e4469','mercadopago','{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}','{\"gateway\":\"mercadopago\",\"mode\":\"live\",\"status\":0,\"access_token\":\"\",\"public_key\":\"\"}','payment_config','test',0,NULL,'2023-08-27 11:57:11','{\"gateway_title\":\"Mercadopago\",\"gateway_image\":null}'),('0d8a9e49-d6a5-11ed-962c-0c7a158e4469','liqpay','{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}','{\"gateway\":\"liqpay\",\"mode\":\"live\",\"status\":0,\"private_key\":\"\",\"public_key\":\"\"}','payment_config','test',0,NULL,'2023-08-12 06:32:31','{\"gateway_title\":\"Liqpay\",\"gateway_image\":null}'),('101befdf-d44b-11ed-8564-0c7a158e4469','paypal','{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}','{\"gateway\":\"paypal\",\"mode\":\"live\",\"status\":\"0\",\"client_id\":\"\",\"client_secret\":\"\"}','payment_config','test',0,NULL,'2023-08-30 03:41:32','{\"gateway_title\":\"Paypal\",\"gateway_image\":null}'),('133d9647-cabb-11ed-8fec-0c7a158e4469','hyper_pay','{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}','{\"gateway\":\"hyper_pay\",\"mode\":\"test\",\"status\":\"0\",\"entity_id\":\"data\",\"access_code\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:32:42','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('1821029f-d776-11ed-96f4-0c7a158e4469','msg91','{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}','{\"gateway\":\"msg91\",\"mode\":\"live\",\"status\":\"0\",\"template_id\":\"data\",\"auth_key\":\"data\"}','sms_config','live',0,NULL,'2023-08-12 07:01:48',NULL),('18210f2b-d776-11ed-96f4-0c7a158e4469','nexmo','{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"nexmo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"api_secret\":\"\",\"token\":\"\",\"from\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,'2023-04-10 02:14:44',NULL),('18fbb21f-d6ad-11ed-962c-0c7a158e4469','foloosi','{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}','{\"gateway\":\"foloosi\",\"mode\":\"test\",\"status\":\"0\",\"merchant_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:34:33','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('2767d142-d6a1-11ed-962c-0c7a158e4469','paytm','{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}','{\"gateway\":\"paytm\",\"mode\":\"live\",\"status\":0,\"merchant_key\":\"\",\"merchant_id\":\"\",\"merchant_website_link\":\"\"}','payment_config','test',0,NULL,'2023-08-22 06:30:55','{\"gateway_title\":\"Paytm\",\"gateway_image\":null}'),('3201d2e6-c937-11ed-a424-0c7a158e4469','amazon_pay','{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}','{\"gateway\":\"amazon_pay\",\"mode\":\"test\",\"status\":\"0\",\"pass_phrase\":\"data\",\"access_code\":\"data\",\"merchant_identifier\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:36:07','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('33a90207-7315-4bfe-a9af-d16049cc0b7c','cashfree','\"{\\\"gateway\\\":\\\"cashfree\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"','\"{\\\"gateway\\\":\\\"cashfree\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"','payment_config','test',0,'2024-12-21 06:51:28','2024-12-21 06:51:28',NULL),('4593b25c-d6a1-11ed-962c-0c7a158e4469','paytabs','{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}','{\"gateway\":\"paytabs\",\"mode\":\"live\",\"status\":0,\"profile_id\":\"\",\"server_key\":\"\",\"base_url\":\"https:\\/\\/secure-egypt.paytabs.com\\/\"}','payment_config','test',0,NULL,'2023-08-12 06:34:51','{\"gateway_title\":\"Paytabs\",\"gateway_image\":null}'),('4e9b8dfb-e7d1-11ed-a559-0c7a158e4469','bkash','{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}','{\"gateway\":\"bkash\",\"mode\":\"live\",\"status\":\"0\",\"app_key\":\"\",\"app_secret\":\"\",\"username\":\"\",\"password\":\"\"}','payment_config','test',0,NULL,'2023-08-12 06:39:42','{\"gateway_title\":\"Bkash\",\"gateway_image\":null}'),('544a24a4-c872-11ed-ac7a-0c7a158e4469','fatoorah','{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}','{\"gateway\":\"fatoorah\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:36:24','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('58c1bc8a-d6ac-11ed-962c-0c7a158e4469','ccavenue','{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}','{\"gateway\":\"ccavenue\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"working_key\":\"data\",\"access_code\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 03:42:38','{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-643783f01d386.png\"}'),('5e2d2ef9-d6ab-11ed-962c-0c7a158e4469','thawani','{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}','{\"gateway\":\"thawani\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"private_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:50:40','{\"gateway_title\":null,\"gateway_image\":\"2023-04-13-64378f9856f29.png\"}'),('60cc83cc-d5b9-11ed-b56f-0c7a158e4469','sixcash','{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}','{\"gateway\":\"sixcash\",\"mode\":\"test\",\"status\":\"0\",\"public_key\":\"data\",\"secret_key\":\"data\",\"merchant_number\":\"data\",\"base_url\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:16:17','{\"gateway_title\":null,\"gateway_image\":\"2023-04-12-6436774e77ff9.png\"}'),('68579846-d8e8-11ed-8249-0c7a158e4469','alphanet_sms','{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"alphanet_sms\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('6857a2e8-d8e8-11ed-8249-0c7a158e4469','sms_to','{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"sms_to\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('74c30c00-d6a6-11ed-962c-0c7a158e4469','hubtel','{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}','{\"gateway\":\"hubtel\",\"mode\":\"test\",\"status\":\"0\",\"account_number\":\"data\",\"api_id\":\"data\",\"api_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:37:43','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('74e46b0a-d6aa-11ed-962c-0c7a158e4469','tap','{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}','{\"gateway\":\"tap\",\"mode\":\"test\",\"status\":\"0\",\"secret_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:50:09','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('761ca96c-d1eb-11ed-87ca-0c7a158e4469','swish','{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}','{\"gateway\":\"swish\",\"mode\":\"test\",\"status\":\"0\",\"number\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:17:02','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('7b1c3c5f-d2bd-11ed-b485-0c7a158e4469','payfast','{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}','{\"gateway\":\"payfast\",\"mode\":\"test\",\"status\":\"0\",\"merchant_id\":\"data\",\"secured_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:18:13','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('8592417b-d1d1-11ed-a984-0c7a158e4469','esewa','{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}','{\"gateway\":\"esewa\",\"mode\":\"test\",\"status\":\"0\",\"merchantCode\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:17:38','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('888e7b84-27b3-497d-a5ef-cd69d65a798e','instamojo','\"{\\\"gateway\\\":\\\"instamojo\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":\\\"0\\\",\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"','\"{\\\"gateway\\\":\\\"instamojo\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":\\\"0\\\",\\\"client_id\\\":\\\"\\\",\\\"client_secret\\\":\\\"\\\"}\"','payment_config','test',0,'2024-12-21 06:51:28','2024-12-21 06:51:28',NULL),('9162a1dc-cdf1-11ed-affe-0c7a158e4469','viva_wallet','{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n','{\"gateway\":\"viva_wallet\",\"mode\":\"test\",\"status\":\"0\",\"client_id\": \"\",\"client_secret\": \"\", \"source_code\":\"\"}\n','payment_config','test',0,NULL,NULL,NULL),('998ccc62-d6a0-11ed-962c-0c7a158e4469','stripe','{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}','{\"gateway\":\"stripe\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"published_key\":null}','payment_config','test',0,NULL,'2025-12-30 20:26:58','{\"gateway_title\":\"Stripe\",\"gateway_image\":null}'),('a3313755-c95d-11ed-b1db-0c7a158e4469','iyzi_pay','{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}','{\"gateway\":\"iyzi_pay\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\",\"secret_key\":\"data\",\"base_url\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:20:02','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('a76c8993-d299-11ed-b485-0c7a158e4469','momo','{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}','{\"gateway\":\"momo\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"data\",\"api_user\":\"data\",\"subscription_key\":\"data\"}','payment_config','live',0,NULL,'2023-08-30 04:19:28','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('a8608119-cc76-11ed-9bca-0c7a158e4469','moncash','{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}','{\"gateway\":\"moncash\",\"mode\":\"test\",\"status\":\"0\",\"client_id\":\"data\",\"secret_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:47:34','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('ad5af1c1-d6a2-11ed-962c-0c7a158e4469','razor_pay','{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}','{\"gateway\":\"razor_pay\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":null,\"api_secret\":null}','payment_config','test',0,NULL,'2023-08-30 04:47:00','{\"gateway_title\":\"Razor pay\",\"gateway_image\":null}'),('ad5b02a0-d6a2-11ed-962c-0c7a158e4469','senang_pay','{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}','{\"gateway\":\"senang_pay\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"secret_key\":null,\"merchant_id\":null}','payment_config','test',0,NULL,'2023-08-27 09:58:57','{\"gateway_title\":\"Senang pay\",\"gateway_image\":null}'),('b043c880-874b-4ee7-b945-b19e3bb2cabc','phonepe','\"{\\\"gateway\\\":\\\"phonepe\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"merchant_id\\\":\\\"\\\",\\\"salt_Key\\\":\\\"\\\",\\\"salt_index\\\":\\\"\\\"}\"','\"{\\\"gateway\\\":\\\"phonepe\\\",\\\"mode\\\":\\\"test\\\",\\\"status\\\":0,\\\"merchant_id\\\":\\\"\\\",\\\"salt_Key\\\":\\\"\\\",\\\"salt_index\\\":\\\"\\\"}\"','payment_config','test',0,'2024-12-21 06:51:28','2024-12-21 06:51:28',NULL),('b6c333f6-d8e9-11ed-8249-0c7a158e4469','akandit_sms','{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"akandit_sms\",\"mode\":\"live\",\"status\":0,\"username\":\"\",\"password\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('b6c33c87-d8e9-11ed-8249-0c7a158e4469','global_sms','{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"global_sms\",\"mode\":\"live\",\"status\":0,\"user_name\":\"\",\"password\":\"\",\"from\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('b8992bd4-d6a0-11ed-962c-0c7a158e4469','paymob_accept','{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\",\"supported_country\":\"\",\"public_key\":\"\",\"secret_key\":\"\"}','{\"gateway\":\"paymob_accept\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":null,\"api_key\":\"\",\"iframe_id\":\"\",\"integration_id\":\"\",\"hmac\":\"\",\"supported_country\":\"\",\"public_key\":\"\",\"secret_key\":\"\"}','payment_config','test',0,NULL,'2025-05-11 07:50:11','{\"gateway_title\":\"Paymob accept\",\"gateway_image\":null}'),('c41c0dcd-d119-11ed-9f67-0c7a158e4469','maxicash','{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}','{\"gateway\":\"maxicash\",\"mode\":\"test\",\"status\":\"0\",\"merchantId\":\"data\",\"merchantPassword\":\"data\"}','payment_config','test',0,NULL,'2023-08-30 04:49:15','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('c9249d17-cd60-11ed-b879-0c7a158e4469','pvit','{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}','{\"gateway\":\"pvit\",\"mode\":\"test\",\"status\":\"0\",\"mc_tel_merchant\": \"\",\"access_token\": \"\", \"mc_merchant_code\": \"\"}','payment_config','test',0,NULL,NULL,NULL),('cb0081ce-d775-11ed-96f4-0c7a158e4469','releans','{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"releans\",\"mode\":\"live\",\"status\":0,\"api_key\":\"\",\"from\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,'2023-04-10 02:14:44',NULL),('d4f3f5f1-d6a0-11ed-962c-0c7a158e4469','flutterwave','{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}','{\"gateway\":\"flutterwave\",\"mode\":\"live\",\"status\":0,\"secret_key\":\"\",\"public_key\":\"\",\"hash\":\"\"}','payment_config','test',0,NULL,'2023-08-30 04:41:03','{\"gateway_title\":\"Flutterwave\",\"gateway_image\":null}'),('d822f1a5-c864-11ed-ac7a-0c7a158e4469','paystack','{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}','{\"gateway\":\"paystack\",\"mode\":\"live\",\"status\":\"0\",\"callback_url\":\"https:\\/\\/api.paystack.co\",\"public_key\":null,\"secret_key\":null,\"merchant_email\":null}','payment_config','test',0,NULL,'2023-08-30 04:20:45','{\"gateway_title\":\"Paystack\",\"gateway_image\":null}'),('daec8d59-c893-11ed-ac7a-0c7a158e4469','xendit','{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}','{\"gateway\":\"xendit\",\"mode\":\"test\",\"status\":\"0\",\"api_key\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:35:46','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('dc0f5fc9-d6a5-11ed-962c-0c7a158e4469','worldpay','{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}','{\"gateway\":\"worldpay\",\"mode\":\"test\",\"status\":\"0\",\"OrgUnitId\":\"data\",\"jwt_issuer\":\"data\",\"mac\":\"data\",\"merchantCode\":\"data\",\"xml_password\":\"data\"}','payment_config','test',0,NULL,'2023-08-12 06:35:26','{\"gateway_title\":null,\"gateway_image\":\"\"}'),('e0450278-d8eb-11ed-8249-0c7a158e4469','signal_wire','{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"signal_wire\",\"mode\":\"live\",\"status\":0,\"project_id\":\"\",\"token\":\"\",\"space_url\":\"\",\"from\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('e0450b40-d8eb-11ed-8249-0c7a158e4469','paradox','{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}','{\"gateway\":\"paradox\",\"mode\":\"live\",\"status\":\"0\",\"api_key\":\"\",\"sender_id\":\"\"}','sms_config','live',0,NULL,'2023-09-10 01:14:01',NULL),('ea346efe-cdda-11ed-affe-0c7a158e4469','ssl_commerz','{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":1,\"store_id\":\"42505550\",\"store_password\":\"782090\"}','{\"gateway\":\"ssl_commerz\",\"mode\":\"live\",\"status\":1,\"store_id\":\"42505550\",\"store_password\":\"782090\"}','payment_config','live',1,NULL,'2023-08-30 03:43:49','{\"gateway_title\":\"Ssl commerz\",\"gateway_image\":\"2025-07-06-686a437e13bd8.png\"}'),('eed88336-d8ec-11ed-8249-0c7a158e4469','hubtel','{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"hubtel\",\"mode\":\"live\",\"status\":0,\"sender_id\":\"\",\"client_id\":\"\",\"client_secret\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('f149c546-d8ea-11ed-8249-0c7a158e4469','viatech','{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"viatech\",\"mode\":\"live\",\"status\":0,\"api_url\":\"\",\"api_key\":\"\",\"sender_id\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL),('f149cd9c-d8ea-11ed-8249-0c7a158e4469','019_sms','{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}','{\"gateway\":\"019_sms\",\"mode\":\"live\",\"status\":0,\"password\":\"\",\"username\":\"\",\"username_for_token\":\"\",\"sender\":\"\",\"otp_template\":\"\"}','sms_config','live',0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `addon_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_roles`
--

DROP TABLE IF EXISTS `admin_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `module_access` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_roles`
--

LOCK TABLES `admin_roles` WRITE;
/*!40000 ALTER TABLE `admin_roles` DISABLE KEYS */;
INSERT INTO `admin_roles` VALUES (1,'Master Admin',NULL,1,NULL,NULL),(7,'Admin','[\"dashboard\",\"pos_management\",\"order_management\",\"product_management\",\"promotion_management\",\"support_section\",\"report\",\"blog_management\",\"user_section\",\"business_settings\",\"system_settings\",\"3rd_party_setup\"]',1,'2025-09-02 23:46:08','2026-01-02 19:18:52'),(8,'superadmin','[\"dashboard\",\"pos_management\",\"order_management\",\"product_management\",\"promotion_management\",\"support_section\",\"report\",\"blog_management\",\"user_section\",\"business_settings\",\"system_settings\",\"3rd_party_setup\",\"themes_and_addons\"]',1,'2025-12-30 21:15:04','2025-12-30 21:15:04');
/*!40000 ALTER TABLE `admin_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_wallet_histories`
--

DROP TABLE IF EXISTS `admin_wallet_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_wallet_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `payment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_wallet_histories`
--

LOCK TABLES `admin_wallet_histories` WRITE;
/*!40000 ALTER TABLE `admin_wallet_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_wallet_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_wallets`
--

DROP TABLE IF EXISTS `admin_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_wallets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `admin_id` bigint DEFAULT NULL,
  `inhouse_earning` double NOT NULL DEFAULT '0',
  `withdrawn` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_earned` double(8,2) NOT NULL DEFAULT '0.00',
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT '0.00',
  `pending_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `total_tax_collected` double(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_wallets`
--

LOCK TABLES `admin_wallets` WRITE;
/*!40000 ALTER TABLE `admin_wallets` DISABLE KEYS */;
INSERT INTO `admin_wallets` VALUES (3,1,1689.75,0,'2026-01-02 18:32:31','2026-01-02 18:32:31',0.00,140.00,0.00,0.00);
/*!40000 ALTER TABLE `admin_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_role_id` bigint NOT NULL DEFAULT '2',
  `image` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `identify_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `identify_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identify_number` int DEFAULT NULL,
  `email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'Projukti Sheba','+8801712377406',1,'def.png',NULL,NULL,NULL,'support@projuktisheba.com',NULL,'$2y$10$SpXm3S8sE8AgqFWxGmTT2uFwY40Cn.KesmrAopI8auVqD0zwj6b5C','X2Tm7JUW9UlZbNVodMqh4gWECf9EoqsJA9HGLrOFDHgth5kZStCQMff0XYxa','2025-06-24 19:25:18','2025-09-02 23:42:56',1),(2,'Iqbal Hossain','+966545898051',7,'2025-12-28-6951470525abb.webp','[]',NULL,NULL,'rexbuyshop@gmail.com',NULL,'$2y$10$CD8tBHu9W14QxDfGyQHpj.Pth8TR/V3dmZQQ6dTrASjayh9J.3492','PlK6H4apTZ1wvrpTZ6oHG45S4sve6E2Qdoa49cGn0ZHgSOwNNXJhRYKXe7Ph','2025-09-02 23:49:59','2025-12-30 21:34:57',1);
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `analytic_scripts`
--

DROP TABLE IF EXISTS `analytic_scripts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `analytic_scripts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `script` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `analytic_scripts`
--

LOCK TABLES `analytic_scripts` WRITE;
/*!40000 ALTER TABLE `analytic_scripts` DISABLE KEYS */;
/*!40000 ALTER TABLE `analytic_scripts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attachments`
--

DROP TABLE IF EXISTS `attachments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attachments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `attachable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attachable_id` bigint unsigned NOT NULL,
  `file_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_disk` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `attachments_attachable_type_attachable_id_index` (`attachable_type`,`attachable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attachments`
--

LOCK TABLES `attachments` WRITE;
/*!40000 ALTER TABLE `attachments` DISABLE KEYS */;
INSERT INTO `attachments` VALUES (1,'App\\Models\\BusinessPage',8,'banner','2026-01-02-695772f7b0b6f.webp','public','2026-01-02 13:25:43','2026-01-02 13:25:43');
/*!40000 ALTER TABLE `attachments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attributes`
--

DROP TABLE IF EXISTS `attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attributes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attributes`
--

LOCK TABLES `attributes` WRITE;
/*!40000 ALTER TABLE `attributes` DISABLE KEYS */;
INSERT INTO `attributes` VALUES (9,'Gender','2025-12-28 15:45:26','2025-12-28 15:45:26'),(10,'Size','2025-12-28 15:45:30','2025-12-28 15:45:30'),(11,'Color','2025-12-28 15:45:33','2025-12-28 15:45:33'),(12,'Occasion','2026-01-04 12:53:40','2026-01-04 12:53:40'),(13,'Closure Type','2026-01-04 12:54:06','2026-01-04 12:54:06');
/*!40000 ALTER TABLE `attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banners` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `published` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `resource_id` bigint DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `background_color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banners`
--

LOCK TABLES `banners` WRITE;
/*!40000 ALTER TABLE `banners` DISABLE KEYS */;
INSERT INTO `banners` VALUES (6,'2026-01-02-6957d4c85a851.webp','Main Banner','default',1,'2025-12-28 20:51:17','2026-01-02 20:23:04','https://rexbuyshop.com','category',1,NULL,NULL,NULL,NULL),(7,'2026-01-04-6959ff2498c36.webp','Main Section Banner','default',1,'2026-01-04 11:48:20','2026-01-04 11:49:52','https://rexbuyshop.com','category',1,NULL,NULL,NULL,NULL),(8,'2026-01-04-695a002e610e8.webp','Footer Banner','default',0,'2026-01-04 11:52:46','2026-01-04 11:56:23','https://rexbuyshop.com','product',8,NULL,NULL,NULL,NULL),(9,'2026-01-04-695a00765c679.webp','Bottom Banner','default',1,'2026-01-04 11:53:58','2026-01-04 11:55:10','https://rexbuyshop.com','category',29,NULL,NULL,NULL,NULL),(10,'2026-01-04-695a00972ded7.webp','Popup Banner','default',1,'2026-01-04 11:54:31','2026-01-04 11:54:39','https://rexbuyshop.com','category',12,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_addresses`
--

DROP TABLE IF EXISTS `billing_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `billing_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint unsigned DEFAULT NULL,
  `contact_person_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_addresses`
--

LOCK TABLES `billing_addresses` WRITE;
/*!40000 ALTER TABLE `billing_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_categories`
--

DROP TABLE IF EXISTS `blog_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '1',
  `click_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blog_categories_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_categories`
--

LOCK TABLES `blog_categories` WRITE;
/*!40000 ALTER TABLE `blog_categories` DISABLE KEYS */;
INSERT INTO `blog_categories` VALUES (1,'Guide by RexBuyShop','',1,0,'2026-01-04 12:02:23','2026-01-04 12:02:23');
/*!40000 ALTER TABLE `blog_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_seos`
--

DROP TABLE IF EXISTS `blog_seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_seos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_follow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_image_index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_archive` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_seos`
--

LOCK TABLES `blog_seos` WRITE;
/*!40000 ALTER TABLE `blog_seos` DISABLE KEYS */;
INSERT INTO `blog_seos` VALUES (1,1,NULL,NULL,'','','','','0','0','-1','0','-1','0','large','2026-01-04-695a2a741ddc9.webp','2026-01-04 14:53:08','2026-01-04 14:53:08'),(2,2,NULL,NULL,'','','','','0','0','-1','0','-1','0','large','2026-01-04-695a64c3617a0.webp','2026-01-04 19:01:55','2026-01-04 19:01:55');
/*!40000 ALTER TABLE `blog_seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blog_translations`
--

DROP TABLE IF EXISTS `blog_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blog_translations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `translation_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_id` bigint unsigned NOT NULL,
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_draft` tinyint DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `blog_translations_translation_id_index` (`translation_id`),
  KEY `blog_translations_locale_index` (`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blog_translations`
--

LOCK TABLES `blog_translations` WRITE;
/*!40000 ALTER TABLE `blog_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `blog_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `blogs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `slug` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `readable_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` bigint unsigned DEFAULT NULL,
  `writer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_storage_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `draft_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `draft_image_storage_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `publish_date` datetime NOT NULL DEFAULT '2025-02-13 14:40:55',
  `is_published` tinyint NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `is_draft` tinyint NOT NULL DEFAULT '0',
  `draft_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `click_count` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `blogs`
--

LOCK TABLES `blogs` WRITE;
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` VALUES (2,'how-to-choose-the-perfect-pair-of-shoes-for-every-occasion-oxlgKP','100001',1,'Admin','How to Choose the Perfect Pair of Shoes for Every Occasion','<p>Shoes are more than just an accessory—they’re the foundation of your outfit and a key part of your comfort throughout the day. Whether you’re heading to work, going out with friends, or planning an active weekend, choosing the right pair of shoes can make all the difference. Here’s a simple guide to help you find the perfect footwear for every occasion.</p><h3>1. Everyday Comfort Starts with the Right Fit</h3><p>No matter how stylish a shoe looks, it won’t serve you well if it doesn’t fit properly. Always make sure there’s enough room for your toes, good arch support, and a snug (but not tight) heel. Comfortable shoes reduce foot fatigue and help prevent long-term foot problems.</p><h3>2. Casual Shoes: Style Meets Ease</h3><p>For daily wear, casual shoes like sneakers, loafers, or slip-ons are ideal. Look for breathable materials and lightweight soles that keep your feet comfortable all day. Neutral colors such as white, black, or tan are versatile and pair well with almost any outfit.</p><h3>3. Formal Shoes: Make a Strong Impression</h3><p>When it comes to formal occasions or office wear, classic styles like oxfords, brogues, or elegant heels never go out of fashion. High-quality materials and clean designs elevate your look and show attention to detail. Investing in a good pair of formal shoes is always worth it.</p><h3>4. Sports &amp; Active Shoes: Performance Matters</h3><p>If you’re active, your shoes should support your movement. Running, training, or walking shoes are designed for specific activities, offering cushioning, grip, and stability. Wearing the right sports shoes not only improves performance but also helps prevent injuries.</p><h3>5. Seasonal Choices: Dress for the Weather</h3><p>Different seasons call for different footwear. Breathable shoes and sandals work best in warmer months, while boots and insulated shoes keep your feet warm and protected during colder seasons. Choosing season-appropriate shoes keeps you comfortable year-round.</p><h3>6. Quality Over Quantity</h3><p>A few well-made pairs can serve you better than many low-quality ones. Durable materials, strong stitching, and reliable soles ensure your shoes last longer and look good even after regular use.</p><h3>Final Thoughts</h3><p>The right pair of shoes combines comfort, style, and purpose. Whether you’re dressing up or keeping it casual, choosing footwear that fits your lifestyle will boost both your confidence and your comfort.</p><p>Explore our latest shoe collections and step into a perfect blend of style and comfort—because your feet deserve the best.</p>','2026-01-04-695a64c353d9f.webp','public','',NULL,'2026-01-04 00:00:00',1,1,0,'\"[]\"',2,'2026-01-04 19:01:55','2026-01-05 00:10:32');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `image_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `image_alt_text` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (2,'Nike','2026-01-02-6957d6811f816.webp','public','Nike',1,'2026-01-02 20:30:25','2026-01-02 20:30:25'),(3,'Adidas','2026-01-02-6957d75842ad1.webp','public','Adidas',1,'2026-01-02 20:34:00','2026-01-02 20:34:00'),(4,'Puma','2026-01-02-6957d773d74b8.webp','public','Puma',1,'2026-01-02 20:34:27','2026-01-02 20:34:27'),(5,'Reebok','2026-01-02-6957d78ec8c9c.webp','public','Reebok',1,'2026-01-02 20:34:54','2026-01-02 20:34:54'),(6,'Skechers','2026-01-02-6957d7f58eee9.webp','public','Skechers',1,'2026-01-02 20:36:37','2026-01-02 20:36:37');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_pages`
--

DROP TABLE IF EXISTS `business_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_pages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `default_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_pages`
--

LOCK TABLES `business_pages` WRITE;
/*!40000 ALTER TABLE `business_pages` DISABLE KEYS */;
INSERT INTO `business_pages` VALUES (1,'About Us','about-us','<p>Welcome to <strong>RexBuyShop</strong>, your trusted online destination for quality footwear in Bangladesh.</p><p>At <strong>RexBuyShop</strong>, we offer a wide range of <strong>stylish, comfortable, and durable shoes</strong> for men, women, and kids. Our collection includes <strong>casual shoes, formal shoes, sports footwear, sandals, slippers, and traditional footwear</strong>, carefully selected to suit everyday needs and lifestyle in Bangladesh.</p><p>We are committed to providing:</p><p>✔ Quality products with proper fitting</p><p>✔ Affordable and competitive prices</p><p>✔ Popular local and international brands</p><p>✔ A smooth and reliable shopping experience</p><p><br></p><p>Each product at <strong>RexBuyShop</strong> is sourced from trusted suppliers and checked to maintain quality standards. Customer satisfaction is our top priority, and we continuously work to improve our service based on customer feedback.</p><p>Whether you need shoes for <strong>daily use, office wear, sports activities, or special occasions</strong>, <strong>RexBuyShop</strong> is here to serve you with honesty, care, and dedication.</p><p>Thank you for choosing <strong>RexBuyShop</strong>.</p>',1,1,'2025-05-11 07:50:11','2026-01-02 20:42:32'),(2,'Terms And Conditions','terms-and-conditions','<p>Welcome to <strong>RexBuyShop</strong>. These Terms and Conditions govern your access to and use of our website and services. By visiting, browsing, or purchasing from RexBuyShop, you agree to be legally bound by these terms.</p><p>If you do not agree with any part of these Terms and Conditions, you must not use our website or services.</p><h5>1. Website Usage</h5><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>This website is intended for personal and lawful use only.</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>You agree not to misuse the website for illegal, harmful, or fraudulent activities.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Attempting to hack, damage, overload, or disrupt our website is strictly prohibited.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>RexBuyShop reserves the right to suspend or permanently ban users violating these terms.</li></ol><h5>2. Account Responsibility</h5><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Customers are responsible for maintaining the confidentiality of their account information.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>You must provide accurate and complete personal details.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>RexBuyShop is not responsible for losses caused by incorrect information provided by customers.</li></ol><h4>3. Product Descriptions &amp; Availability</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>We aim to provide accurate product details including size, material, color, and price.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Slight variations may occur due to screen resolution, lighting, or manufacturing updates.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Product availability is subject to change without prior notice.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>RexBuyShop reserves the right to limit product quantities per order.</li></ol><h4>4. Pricing &amp; Payment</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>All prices are displayed in Bangladeshi Taka (BDT).</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Prices may change without prior notice.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Payment must be completed before order processing (except Cash on Delivery).</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>In case of pricing errors, RexBuyShop reserves the right to cancel affected orders.</li></ol><h4>5. Order Acceptance</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Orders are confirmed only after successful payment verification.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>RexBuyShop may refuse or cancel any order at its discretion.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Confirmation messages do not guarantee shipment until processed.</li></ol><h4>6. Intellectual Property Rights</h4><p>All website content, including logos, images, graphics, text, and designs, is the exclusive property of RexBuyShop. Unauthorized use or reproduction is strictly prohibited.</p><h4>7. Governing Law</h4><p>These Terms are governed by the laws of Bangladesh. Any disputes shall fall under Bangladeshi jurisdiction.</p>',1,1,'2025-05-11 07:50:11','2026-01-04 12:19:28'),(3,'Privacy Policy','privacy-policy','<p>At <strong>RexBuyShop</strong>, protecting customer privacy is a top priority. This Privacy Policy explains how we collect, use, store, and protect your personal information.</p><h4>1. Information We Collect</h4><p>We may collect the following information:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Full name</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Phone number</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Email address</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Delivery and billing address</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Order history and payment information</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>IP address and browsing behavior</li></ol><h4>2. How We Use Customer Information</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>To process and deliver orders</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>To communicate order updates</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>To improve website functionality</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>To prevent fraud</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>To comply with legal requirements</li></ol><h4>3. Data Protection &amp; Security</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>We use secure servers and encrypted systems.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Access to customer data is limited to authorized staff only.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>We do not store sensitive payment information.</li></ol><h4>4. Third-Party Sharing</h4><p>Customer data may be shared only with:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Courier services</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Payment gateways</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Legal authorities (if required)</li></ol><p>We never sell customer information.</p><h4>5. Cookies Policy</h4><p>Cookies help us enhance user experience. Users may disable cookies via browser settings, but some features may not function properly.&nbsp;</p>',1,1,'2025-05-11 07:50:11','2026-01-04 10:25:52'),(4,'Refund Policy','refund-policy','<h4>1. Refund Eligibility</h4><p>Refunds are applicable if:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Product received is damaged or defective</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Incorrect product or size delivered</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Order cancelled before shipment</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Product becomes unavailable after payment</li></ol><h4>2. Refund Request Process</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Customers must contact support within the return window.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Proof (photos/videos) may be required.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Products must be returned for inspection.</li></ol><h4>3. Refund Method &amp; Timeline</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Refunds are processed through original payment method.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Processing time: 7–14 working days.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Shipping charges are usually non-refundable.</li></ol><h4>4. Non-Refundable Items</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Used or worn footwear</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Clearance or discounted items</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Products without original packaging</li></ol><h4><br></h4>',1,1,'2025-05-11 07:50:11','2026-01-04 10:33:57'),(5,'Return Policy','return-policy','<h4>Return Conditions</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Product must be unused and unworn.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Original box, tags, and invoice must be intact.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Return request must be placed within specified time.</li></ol><h4>2. Return Procedure</h4><ol><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Contact customer support</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Receive return authorization</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Ship product back</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Inspection</li><li data-list=\"ordered\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Replacement or refund</li></ol><h4>3. Return Shipping</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Customer bears return shipping cost unless the fault is ours.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>RexBuyShop is not responsible for lost return shipments.</li></ol><h4>4. Return Rejection</h4><p>Returns may be rejected if:</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Product is damaged by customer</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Signs of usage found</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Return request submitted late</li></ol><p><br></p>',1,1,'2025-05-11 07:50:11','2026-01-04 10:37:36'),(6,'Cancellation Policy','cancellation-policy','',1,1,'2025-05-11 07:50:11','2025-05-11 07:50:11'),(7,'Shipping Policy','shipping-policy','<h4>1. Delivery Coverage</h4><p>We deliver across all districts in Bangladesh through trusted courier partners.</p><h4>2. Delivery Timeline</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Dhaka: 1–3 working days</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Outside Dhaka: 3–7 working days</li></ol><p>Delays may occur due to weather, holidays, or courier issues.</p><h4>3. Shipping Charges</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Charges depend on location and order value.</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>COD charges may apply.</li></ol><h4>4. Address Accuracy</h4><p>Customers must provide correct address and contact details. RexBuyShop is not responsible for failed deliveries due to incorrect information.</p>',1,1,'2025-05-11 07:50:11','2026-01-04 10:41:40');
/*!40000 ALTER TABLE `business_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_settings`
--

DROP TABLE IF EXISTS `business_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business_settings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=217 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_settings`
--

LOCK TABLES `business_settings` WRITE;
/*!40000 ALTER TABLE `business_settings` DISABLE KEYS */;
INSERT INTO `business_settings` VALUES (1,'system_default_currency','2','2020-10-11 07:43:44','2026-01-04 10:47:26'),(2,'language','[{\"id\":\"1\",\"name\":\"english\",\"direction\":\"ltr\",\"code\":\"en\",\"status\":1,\"default\":true},{\"id\":2,\"name\":\"Bangla\",\"direction\":\"ltr\",\"code\":\"bd\",\"status\":1,\"default\":false}]','2020-10-11 07:53:02','2025-12-30 20:46:33'),(3,'mail_config','{\"status\":\"1\",\"name\":\"EK Mart Valley\",\"host\":\"smtp.hostinger.com\",\"driver\":\"SMTP\",\"port\":\"465\",\"username\":\"no-reply@ekmartvalley.store\",\"email_id\":\"no-reply@ekmartvalley.store\",\"encryption\":\"SSL\",\"password\":\"EKmartvalley123@!?\"}','2020-10-12 10:29:18','2025-06-25 00:19:25'),(4,'cash_on_delivery','{\"status\":\"1\"}',NULL,'2026-01-04 10:47:26'),(6,'ssl_commerz_payment','{\"status\":\"0\",\"environment\":\"sandbox\",\"store_id\":\"\",\"store_password\":\"\"}','2020-11-09 08:36:51','2023-01-10 05:51:56'),(10,'company_phone','+8801309173521',NULL,'2026-01-04 10:47:26'),(11,'company_name','Rexbuy Shop',NULL,'2026-01-04 10:47:26'),(12,'company_web_logo','{\"image_name\":\"2025-12-29-6952ade9a9dc5.webp\",\"storage\":\"public\"}',NULL,'2025-12-29 22:35:53'),(13,'company_mobile_logo','{\"image_name\":\"2025-12-29-6952af8394847.webp\",\"storage\":\"public\"}',NULL,'2025-12-29 22:42:43'),(16,'sms_nexmo','{\"status\":\"0\",\"nexmo_key\":\"custo5cc042f7abf4c\",\"nexmo_secret\":\"custo5cc042f7abf4c@ssl\"}',NULL,NULL),(17,'company_email','rexbuyshop@gmail.com',NULL,'2026-01-04 10:47:26'),(18,'colors','{\"primary\":\"#994f0a\",\"secondary\":\"#ff7801\",\"panel-sidebar\":\"#000000\",\"primary_light\":null,\"app-primary\":null,\"app-secondary\":null}','2020-10-11 13:53:02','2026-01-04 20:47:22'),(19,'company_footer_logo','{\"image_name\":\"2025-12-29-6952aec827f9e.webp\",\"storage\":\"public\"}',NULL,'2025-12-29 22:39:36'),(20,'company_copyright_text','© 2026 Projukti Sheba . All Rights Reserved.',NULL,'2026-01-04 10:47:26'),(21,'download_app_apple_stroe','{\"status\":\"1\",\"link\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\"}',NULL,'2020-12-08 12:54:53'),(22,'download_app_google_stroe','{\"status\":\"1\",\"link\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\"}',NULL,'2020-12-08 12:54:48'),(23,'company_fav_icon','{\"image_name\":\"2025-12-29-6952aebca455a.webp\",\"storage\":\"public\"}','2020-10-11 13:53:02','2025-12-29 22:39:24'),(24,'fcm_topic','',NULL,NULL),(25,'fcm_project_id','',NULL,NULL),(26,'push_notification_key','Put your firebase server key here.',NULL,NULL),(27,'order_pending_message','{\"status\":\"1\",\"message\":\"order pen message\"}',NULL,NULL),(28,'order_confirmation_msg','{\"status\":\"1\",\"message\":\"Order con Message\"}',NULL,NULL),(29,'order_processing_message','{\"status\":\"1\",\"message\":\"Order pro Message\"}',NULL,NULL),(30,'out_for_delivery_message','{\"status\":\"1\",\"message\":\"Order ouut Message\"}',NULL,NULL),(31,'order_delivered_message','{\"status\":\"1\",\"message\":\"Order del Message\"}',NULL,NULL),(33,'sales_commission','0',NULL,'2026-01-04 10:47:26'),(34,'seller_registration','1',NULL,'2025-06-25 00:08:21'),(35,'pnc_language','[\"en\",\"bd\"]',NULL,'2025-12-30 20:38:36'),(36,'order_returned_message','{\"status\":\"1\",\"message\":\"Order hh Message\"}',NULL,NULL),(37,'order_failed_message','{\"status\":null,\"message\":\"Order fa Message\"}',NULL,NULL),(40,'delivery_boy_assign_message','{\"status\":0,\"message\":\"\"}',NULL,NULL),(41,'delivery_boy_start_message','{\"status\":0,\"message\":\"\"}',NULL,NULL),(42,'delivery_boy_delivered_message','{\"status\":0,\"message\":\"\"}',NULL,NULL),(43,'terms_and_conditions','',NULL,NULL),(44,'minimum_order_value','1',NULL,NULL),(48,'currency_model','single_currency',NULL,NULL),(49,'social_login','[{\"login_medium\":\"google\",\"client_id\":\"54515444vryhg65ht\",\"client_secret\":\"54515444vryhg65ht\",\"status\":1},{\"login_medium\":\"facebook\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":1}]',NULL,'2025-07-22 18:05:28'),(50,'digital_payment','{\"status\":\"1\"}',NULL,'2026-01-04 10:47:26'),(51,'phone_verification','0',NULL,NULL),(52,'email_verification','0',NULL,NULL),(53,'order_verification','0',NULL,'2026-01-02 17:10:06'),(54,'country_code','BD',NULL,'2026-01-04 10:47:26'),(55,'pagination_limit','10',NULL,'2026-01-04 10:47:26'),(56,'shipping_method','inhouse_shipping',NULL,'2025-09-04 16:12:52'),(59,'forgot_password_verification','email',NULL,NULL),(61,'stock_limit','10',NULL,NULL),(64,'announcement','{\"status\":\"1\",\"color\":\"#464444\",\"text_color\":\"#ffffff\",\"announcement\":\"\\ud83c\\udf89 \\u09b6\\u09c1\\u09ad \\u09a8\\u09ac\\u09ac\\u09b0\\u09cd\\u09b7 \\u09e8\\u09e6\\u09e8\\u09ec \\u0989\\u09aa\\u09b2\\u0995\\u09cd\\u09b7\\u09cd\\u09af\\u09c7 \\u09b8\\u09ac \\u09aa\\u09cd\\u09b0\\u09cb\\u09a1\\u09be\\u0995\\u09cd\\u099f\\u09c7\\u09b0 \\u0989\\u09aa\\u09b0 \\u09a5\\u09be\\u0995\\u099b\\u09c7 \\u0986\\u0995\\u09b0\\u09cd\\u09b7\\u09a3\\u09c0\\u09af\\u09bc \\u099b\\u09be\\u09a1\\u09bc!\\ud83c\\udf89\"}',NULL,'2026-01-02 17:35:23'),(65,'fawry_pay','{\"status\":0,\"merchant_code\":\"\",\"security_key\":\"\"}',NULL,'2022-01-18 09:46:30'),(66,'recaptcha','{\"status\":0,\"site_key\":\"\",\"secret_key\":\"\"}',NULL,'2022-01-18 09:46:30'),(67,'seller_pos','1',NULL,'2025-06-25 00:08:21'),(70,'refund_day_limit','0',NULL,NULL),(71,'business_mode','single',NULL,'2026-01-04 10:47:26'),(72,'mail_config_sendgrid','{\"status\":0,\"name\":\"\",\"host\":\"\",\"driver\":\"\",\"port\":\"\",\"username\":\"\",\"email_id\":\"\",\"encryption\":\"\",\"password\":\"\"}',NULL,'2025-06-25 00:19:25'),(73,'decimal_point_settings','0',NULL,'2026-01-04 10:47:26'),(74,'shop_address','keshabpur \r\nkeshabpur 7450\r\nJessore',NULL,'2026-01-04 10:47:26'),(75,'billing_input_by_customer','0',NULL,'2026-01-02 17:10:06'),(76,'wallet_status','0',NULL,NULL),(77,'loyalty_point_status','0',NULL,NULL),(78,'wallet_add_refund','0',NULL,NULL),(79,'loyalty_point_exchange_rate','0',NULL,NULL),(80,'loyalty_point_item_purchase_point','0',NULL,NULL),(81,'loyalty_point_minimum_point','0',NULL,NULL),(82,'minimum_order_limit','1',NULL,NULL),(83,'product_brand','1',NULL,NULL),(84,'digital_product','1',NULL,NULL),(85,'delivery_boy_expected_delivery_date_message','{\"status\":0,\"message\":\"\"}',NULL,NULL),(86,'order_canceled','{\"status\":0,\"message\":\"\"}',NULL,NULL),(90,'offline_payment','{\"status\":0}',NULL,'2026-01-04 10:47:26'),(91,'temporary_close','{\"status\":0}',NULL,'2026-01-04 12:04:55'),(92,'vacation_add','{\"status\":0,\"vacation_start_date\":null,\"vacation_end_date\":null,\"vacation_note\":null}',NULL,'2023-03-04 06:25:36'),(93,'cookie_setting','{\"status\":\"1\",\"cookie_text\":\"We use cookies to improve your browsing experience, personalize content, and analyze our traffic. By\"}',NULL,'2026-01-04 10:47:26'),(94,'maximum_otp_hit','0',NULL,'2023-06-13 13:04:49'),(95,'otp_resend_time','0',NULL,'2023-06-13 13:04:49'),(96,'temporary_block_time','0',NULL,'2023-06-13 13:04:49'),(97,'maximum_login_hit','0',NULL,'2023-06-13 13:04:49'),(98,'temporary_login_block_time','0',NULL,'2023-06-13 13:04:49'),(104,'apple_login','[{\"login_medium\":\"apple\",\"client_id\":\"\",\"client_secret\":\"\",\"status\":1,\"team_id\":\"\",\"key_id\":\"\",\"service_file\":\"\",\"redirect_url\":\"\"}]',NULL,'2025-05-11 07:50:11'),(105,'ref_earning_status','0',NULL,'2023-10-13 05:34:53'),(106,'ref_earning_exchange_rate','0',NULL,'2023-10-13 05:34:53'),(107,'guest_checkout','1',NULL,'2026-01-02 17:10:06'),(108,'minimum_order_amount','0',NULL,'2023-10-13 11:34:53'),(109,'minimum_order_amount_by_seller','0',NULL,'2025-06-25 00:08:21'),(110,'minimum_order_amount_status','0',NULL,'2026-01-02 17:10:06'),(111,'admin_login_url','superadmin',NULL,'2025-12-30 20:30:49'),(112,'employee_login_url','admin',NULL,'2025-12-30 20:30:55'),(113,'free_delivery_status','1',NULL,'2026-01-02 17:10:06'),(114,'free_delivery_responsibility','admin',NULL,'2026-01-02 17:10:06'),(115,'free_delivery_over_amount','0',NULL,'2023-10-13 11:34:53'),(116,'free_delivery_over_amount_seller','1',NULL,'2026-01-02 17:10:06'),(117,'add_funds_to_wallet','0',NULL,'2023-10-13 11:34:53'),(118,'minimum_add_fund_amount','0',NULL,'2023-10-13 11:34:53'),(119,'maximum_add_fund_amount','0',NULL,'2023-10-13 11:34:53'),(120,'user_app_version_control','{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}',NULL,'2023-10-13 11:34:53'),(121,'seller_app_version_control','{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}',NULL,'2023-10-13 11:34:53'),(122,'delivery_man_app_version_control','{\"for_android\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"},\"for_ios\":{\"status\":1,\"version\":\"14.1\",\"link\":\"\"}}',NULL,'2023-10-13 11:34:53'),(123,'whatsapp','{\"status\":\"1\",\"phone\":\"+8801309173521\"}',NULL,'2025-12-30 20:12:20'),(124,'currency_symbol_position','left',NULL,'2026-01-04 10:47:26'),(148,'company_reliability','[{\"item\":\"delivery_info\",\"title\":\"Fast Delivery all across the country\",\"image\":\"\",\"status\":1},{\"item\":\"safe_payment\",\"title\":\"Safe Payment\",\"image\":\"\",\"status\":1},{\"item\":\"return_policy\",\"title\":\"7 Days Return Policy\",\"image\":\"\",\"status\":1},{\"item\":\"authentic_product\",\"title\":\"100% Authentic Products\",\"image\":\"\",\"status\":1}]',NULL,NULL),(149,'react_setup','{\"status\":0,\"react_license_code\":\"\",\"react_domain\":\"\",\"react_platform\":\"\"}',NULL,'2024-01-09 04:05:15'),(150,'app_activation','{\"software_id\":\"\",\"is_active\":0}',NULL,'2024-01-09 04:05:15'),(151,'shop_banner','{\"image_name\":\"2025-12-30-6953e89edc0a4.webp\",\"storage\":\"public\"}',NULL,'2025-12-30 20:58:38'),(152,'map_api_status','0',NULL,'2025-07-28 16:34:57'),(153,'vendor_registration_header','{\"title\":\"Vendor Registration\",\"sub_title\":\"Create your own store.Already have store?\",\"image\":\"\"}',NULL,NULL),(154,'vendor_registration_sell_with_us','{\"title\":\"Why Sell With Us\",\"sub_title\":\"Boost your sales! Join us for a seamless, profitable experience with vast buyer reach and top-notch support. Sell smarter today!\",\"image\":\"\"}',NULL,NULL),(155,'download_vendor_app','{\"title\":\"Download Free Vendor App\",\"sub_title\":\"Download our free seller app and start reaching millions of buyers on the go! Easy setup, manage listings, and boost sales anywhere.\",\"image\":null,\"download_google_app\":null,\"download_google_app_status\":0,\"download_apple_app\":null,\"download_apple_app_status\":0}',NULL,NULL),(156,'business_process_main_section','{\"title\":\"3 Easy Steps To Start Selling\",\"sub_title\":\"Start selling quickly! Register, upload your products with detailed info and images, and reach millions of buyers instantly.\",\"image\":\"\"}',NULL,NULL),(157,'business_process_step','[{\"title\":\"Get Registered\",\"description\":\"Sign up easily and create your seller account in just a few minutes. It fast and simple to get started.\",\"image\":\"\"},{\"title\":\"Upload Products\",\"description\":\"List your products with detailed descriptions and high-quality images to attract more buyers effortlessly.\",\"image\":\"\"},{\"title\":\"Start Selling\",\"description\":\"Go live and start reaching millions of potential buyers immediately. Watch your sales grow with our vast audience.\",\"image\":\"\"}]',NULL,NULL),(158,'brand_list_priority','{\"custom_sorting_status\":\"1\",\"sort_by\":\"most_order\"}','2024-05-18 10:57:03','2026-01-04 12:03:53'),(159,'category_list_priority','{\"custom_sorting_status\":\"0\",\"sort_by\":\"first_created\"}','2024-05-18 10:57:03','2026-01-02 17:57:59'),(160,'vendor_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(161,'flash_deal_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(162,'featured_product_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(163,'feature_deal_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(164,'new_arrival_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(165,'top_vendor_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(166,'category_wise_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(167,'top_rated_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(168,'best_selling_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(169,'searched_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(170,'vendor_product_list_priority','','2024-05-18 10:57:03','2024-05-18 10:57:03'),(171,'storage_connection_type','public','2024-09-24 07:52:17','2024-09-24 07:52:17'),(172,'google_search_console_code','','2024-09-24 07:52:17','2024-09-24 07:52:17'),(173,'bing_webmaster_code','','2024-09-24 07:52:17','2024-09-24 07:52:17'),(174,'baidu_webmaster_code','','2024-09-24 07:52:17','2024-09-24 07:52:17'),(175,'yandex_webmaster_code','','2024-09-24 07:52:17','2024-09-24 07:52:17'),(176,'firebase_otp_verification','{\"status\":0,\"web_api_key\":\"\"}','2024-09-24 07:52:17','2024-09-24 07:52:17'),(177,'maintenance_system_setup','{\"user_app\":0,\"user_website\":0,\"vendor_app\":0,\"deliveryman_app\":0,\"vendor_panel\":0}','2024-09-24 07:52:17','2024-09-24 07:52:17'),(178,'maintenance_duration_setup','{\"maintenance_duration\":\"until_change\",\"start_date\":null,\"end_date\":null}',NULL,NULL),(179,'maintenance_message_setup','{\"business_number\":1,\"business_email\":1,\"maintenance_message\":\"We are Working On Something Special\",\"message_body\":\"We apologize for any inconvenience. For immediate assistance, please contact with our support team\"}',NULL,NULL),(181,'vendor_forgot_password_method','email','2024-10-27 08:14:24','2025-06-25 00:08:21'),(182,'deliveryman_forgot_password_method','phone','2024-10-27 08:14:24','2024-10-27 08:14:24'),(183,'stock_clearance_product_list_priority','{\"custom_sorting_status\":0,\"sort_by\":\"latest_created\",\"out_of_stock_product\":\"hide\",\"temporary_close_sorting\":\"desc\"}','2025-02-13 08:41:39','2025-02-13 08:41:39'),(184,'stock_clearance_vendor_priority','','2025-02-13 08:41:39','2025-02-13 08:41:39'),(185,'setup_guide_requirements_for_admin','{\"general_setup\":true,\"shipping_method\":true,\"language_setup\":true,\"currency_setup\":true,\"customer_login\":true,\"google_map_apis\":true,\"notification_configuration\":true,\"digital_payment_setup\":true,\"offline_payment_setup\":true,\"category_setup\":true,\"brand_setup\":true,\"inhouse_shop_setup\":true,\"add_new_product\":true}','2025-05-11 07:50:11','2025-07-06 15:38:22'),(186,'refund-policy','{\"status\":0,\"content\":\"\"}','2025-06-24 19:25:18','2025-06-24 19:25:18'),(187,'return-policy','{\"status\":0,\"content\":\"\"}','2025-06-24 19:25:18','2025-06-24 19:25:18'),(188,'cancellation-policy','{\"status\":0,\"content\":\"\"}','2025-06-24 19:25:18','2025-06-24 19:25:18'),(189,'download_app_apple_store','{\"status\":0,\"link\":\"https:\\/\\/www.target.com\\/s\\/apple+store++now?ref=tgt_adv_XS000000&AFID=msn&fndsrc=tgtao&DFA=71700000012505188&CPNG=Electronics_Portable+Computers&adgroup=Portable+Computers&LID=700000001176246&LNM=apple+store+near+me+now&MT=b&network=s&device=c&location=12&targetid=kwd-81913773633608:loc-12&ds_rl=1246978&ds_rl=1248099&gclsrc=ds\"}',NULL,'2026-01-04 20:47:22'),(190,'download_app_google_store','{\"status\":0,\"link\":\"https:\\/\\/play.google.com\\/store?hl=en_US&gl=US\"}',NULL,'2026-01-04 20:47:22'),(191,'default_location','{\"lat\":\"-33.8688\",\"lng\":\"151.2195\"}',NULL,'2026-01-04 10:47:26'),(192,'timezone','Asia/Dhaka',NULL,'2026-01-04 10:47:26'),(193,'loader_gif','{\"image_name\":\"2026-01-04-695a3b2041137.gif\",\"storage\":\"public\"}',NULL,'2026-01-04 16:04:16'),(194,'vendor_review_reply_status','1',NULL,'2025-06-25 00:08:21'),(195,'company_web_logo_png','{\"image_name\":\"2025-12-29-6952ade9ae443.png\",\"storage\":\"public\"}',NULL,'2025-12-29 22:35:53'),(196,'map_api_key','AIzaSyCf8ue0W4CSrZwgWPIyPAwEd_Uw9l9bqyw',NULL,'2025-07-28 16:34:56'),(197,'map_api_key_server','AIzaSyCf8ue0W4CSrZwgWPIyPAwEd_Uw9l9bqyw',NULL,'2025-07-28 16:34:56'),(198,'invoice_settings','{\"business_identity_status\":0,\"invoice_logo_status\":0,\"invoice_logo_type\":\"default\",\"terms_and_condition\":null,\"business_identity\":null,\"business_identity_value\":null,\"image\":{\"image_name\":\"\",\"storage\":\"public\"}}',NULL,'2025-07-23 17:37:10'),(200,'shipping_method_status','1',NULL,'2026-01-02 17:10:06'),(201,'delivery_country_restriction','1',NULL,'2025-12-30 21:12:52'),(202,'bdcourier','{\"status\":0,\"api_key\":\"JjgMmlQnbHq4jM55ko6VVGdjk02GvsUFBzKNMaMb59Tg7dQ2KfprMw6d0Pid\",\"api_url\":\"https:\\/\\/bdcourier.com\\/api\\/courier-check\"}',NULL,'2025-12-31 19:04:39'),(203,'delivery_zip_code_area_restriction','0',NULL,'2026-01-02 15:24:44'),(204,'pathao','{\"status\":1,\"client_id\":\"l9avZ3naG1\",\"store_id\":\"357776\",\"client_secret\":\"j2xim7McvjfYME1GwOMf00EqmW3s0O2y3ZliW1Gg\",\"username\":\"dev.khalidmahmud01@gmail.com\",\"password\":\"Khalid123@!?\",\"base_url\":\"https://api-hermes.pathao.com\"}','2026-01-02 09:35:04',NULL),(205,'steadfast','{\"status\":1,\"api_key\":\"y60m6jkjyolq49hrqdvt0mk4xpqksq1r\",\"secret_key\":\"o0cepevrm7ueruklkup34ga9\"}','2026-01-02 09:35:38',NULL),(206,'redx','{\"status\":1,\"base_url\":\"openapi.redx.com.bd/v1.0.0-beta\",\"jwt_token\":\"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMDM1MzYzIiwiaWF0IjoxNzY2OTM5MzUxLCJpc3MiOiJRWGpQZnRFZGdPZkQ2MEQwZmxYaTZ1ZDhXQ09IQUdFVCIsInNob3BfaWQiOjEwMzUzNjMsInVzZXJfaWQiOjEwNzU0ODIzfQ.ZF6DAYWwgekuj3fcEvoc8umL3cfBWWYYed8adKY8ubY\"}','2026-01-02 09:36:03',NULL),(207,'blog_feature_download_app_title','{\"en\":\"App Download\",\"bd\":null}',NULL,'2026-01-02 17:13:57'),(208,'blog_feature_download_app_subtitle','{\"en\":\"App Download\",\"bd\":null}',NULL,'2026-01-02 17:13:57'),(209,'blog_feature_download_google_app_button_status','1',NULL,'2026-01-02 17:13:57'),(210,'blog_feature_download_apple_app_button_status','0',NULL,'2026-01-02 17:13:57'),(211,'blog_feature_download_app_icon','{\"image_name\":\"2026-01-02-6957a84c97da4.webp\",\"storage\":\"public\"}',NULL,'2026-01-02 17:13:16'),(212,'blog_feature_download_app_background','{\"image_name\":\"2026-01-02-6957a84f877e9.webp\",\"storage\":\"public\"}',NULL,'2026-01-02 17:13:19'),(213,'blog_feature_download_app_status','1',NULL,'2026-01-02 17:13:41'),(214,'blog_feature_active_status','1',NULL,'2026-01-04 12:03:02'),(215,'blog_feature_title','{\"en\":\"Blogs\",\"bd\":null}',NULL,'2026-01-04 12:06:50'),(216,'blog_feature_sub_title','{\"en\":\"This is our shop blogs\",\"bd\":null}',NULL,'2026-01-04 12:06:50');
/*!40000 ALTER TABLE `business_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_shippings`
--

DROP TABLE IF EXISTS `cart_shippings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_shippings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cart_group_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method_id` bigint DEFAULT '10',
  `shipping_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_shippings`
--

LOCK TABLES `cart_shippings` WRITE;
/*!40000 ALTER TABLE `cart_shippings` DISABLE KEYS */;
INSERT INTO `cart_shippings` VALUES (1,'guest-Ty0IF-1767039773',12,140.00,'2025-12-30 02:22:57','2025-12-30 02:22:57'),(4,'guest-hae5J-1767044492',12,140.00,'2025-12-30 03:46:22','2025-12-30 03:46:22'),(5,'guest-euejE-1767067286',0,140.00,'2025-12-30 10:01:39','2025-12-30 10:01:52'),(6,'guest-qx02k-1767079358',12,140.00,'2025-12-30 13:22:53','2025-12-30 13:22:53'),(8,'guest-WmL7j-1767081621',12,140.00,'2025-12-30 14:03:49','2025-12-30 14:03:49'),(10,'guest-s6CJ0-1767088274',12,140.00,'2025-12-30 15:52:36','2025-12-30 15:52:36'),(17,'guest-wtqnb-1767088553',12,140.00,'2025-12-30 16:02:40','2025-12-30 16:02:40'),(20,'guest-cb6EI-1767090188',12,140.00,'2025-12-30 16:23:18','2025-12-30 16:23:18'),(21,'guest-BGJX0-1767091428',12,140.00,'2025-12-30 17:20:57','2025-12-30 17:20:57'),(23,'guest-zXIRw-1767100625',12,140.00,'2025-12-30 19:40:06','2025-12-30 19:40:06'),(25,'guest-kCOli-1767103434',13,80.00,'2025-12-30 20:04:31','2025-12-30 20:04:31'),(26,'guest-ojDYW-1767103658',12,140.00,'2025-12-30 21:12:04','2025-12-30 21:12:04'),(27,'guest-ECkTD-1767117386',12,140.00,'2025-12-30 23:56:29','2025-12-30 23:56:29'),(28,'guest-jVpQu-1767185900',12,140.00,'2025-12-31 18:58:25','2025-12-31 18:58:25'),(29,'guest-jPu47-1767342756',12,140.00,'2026-01-02 14:32:55','2026-01-02 14:32:55'),(31,'guest-RrJW4-1767349676',12,140.00,'2026-01-02 16:27:59','2026-01-02 16:27:59'),(32,'guest-V1r8Y-1767349960',12,140.00,'2026-01-02 16:32:58','2026-01-02 16:32:58'),(34,'guest-0HnkX-1767350068',12,140.00,'2026-01-02 16:34:45','2026-01-02 16:34:45'),(38,'guest-2vUXK-1767350808',12,140.00,'2026-01-02 16:48:15','2026-01-02 16:48:15'),(43,'1-lYKQt-1767353270',12,140.00,'2026-01-02 17:27:52','2026-01-02 17:27:52'),(44,'guest-8kSIf-1767353160',12,140.00,'2026-01-02 17:35:46','2026-01-02 17:35:46'),(46,'guest-HhQe1-1767379860',12,140.00,'2026-01-03 00:51:07','2026-01-03 00:51:07'),(47,'guest-ED4Q6-1767457441',12,140.00,'2026-01-03 22:24:13','2026-01-03 22:24:13'),(51,'guest-AGzpG-1767476486',12,140.00,'2026-01-04 03:41:57','2026-01-04 03:41:57'),(55,'guest-CTdUr-1767511613',12,140.00,'2026-01-04 13:26:58','2026-01-04 13:26:58'),(58,'guest-dMtJj-1767513519',12,140.00,'2026-01-04 14:01:36','2026-01-04 14:01:36'),(60,'guest-SWMdO-1767513822',12,140.00,'2026-01-04 14:06:42','2026-01-04 14:06:42'),(62,'guest-rbsLF-1767515974',12,140.00,'2026-01-04 14:44:37','2026-01-04 14:44:37'),(63,'guest-ge2Ro-1767516720',13,80.00,'2026-01-04 14:52:49','2026-01-04 14:52:49'),(65,'1-fGWNu-1767508920',0,140.00,'2026-01-04 15:21:31','2026-01-04 15:21:31'),(68,'1-7JAK1-1767519700',12,140.00,'2026-01-04 15:41:42','2026-01-04 15:41:42'),(71,'3-Go8FE-1767519503',12,140.00,'2026-01-04 16:37:12','2026-01-04 16:37:12'),(72,'guest-LqnIE-1767533360',12,140.00,'2026-01-04 19:29:22','2026-01-04 19:29:22'),(73,'1-fP7Eb-1767533455',0,140.00,'2026-01-04 19:31:16','2026-01-04 19:31:16'),(74,'guest-47bj3-1767534682',12,140.00,'2026-01-04 19:51:24','2026-01-04 19:51:24'),(75,'4-zGsTp-1767534851',12,140.00,'2026-01-04 19:54:12','2026-01-04 19:54:12'),(76,'5-0x9P0-1767536471',12,140.00,'2026-01-04 20:21:14','2026-01-04 20:21:14'),(77,'guest-9Bvtz-1767551630',12,140.00,'2026-01-05 00:33:55','2026-01-05 00:33:55');
/*!40000 ALTER TABLE `cart_shippings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `cart_group_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `product_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `digital_product_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choices` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variant` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `quantity` int NOT NULL DEFAULT '1',
  `price` double NOT NULL DEFAULT '1',
  `tax` double NOT NULL DEFAULT '1',
  `discount` double NOT NULL DEFAULT '1',
  `tax_model` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'exclude',
  `is_checked` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `seller_is` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_info` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `shipping_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (3,136,'guest-pjCGc-1766949511',2,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Yellow\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Yellow\"}','40-Men-Yellow',1,2520,0,630,'include',1,'fabric-mesh-soft-sole-sport-shoes-rNpDLd','Fabric Mesh Soft Sole Sport Shoes','2025-12-28-6951011f997ff.webp',1,'admin','2025-12-29 01:18:31','2025-12-29 01:18:31','Rexbuy Shop',0.00,'order_wise',1),(4,189,'guest-lblrG-1766960947',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',1,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-29-695185ce7b5a8.webp',1,'admin','2025-12-29 04:29:07','2025-12-29 04:29:07','Rexbuy Shop',0.00,'order_wise',1),(5,284,'guest-snmfm-1767000438',5,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,1987,0,496.75,'include',1,'generisch-non-slip-fitness-lightweight-shoes-tH2etv','Generisch Non-Slip, Fitness Lightweight Shoes','2025-12-28-695106afd49db.webp',1,'admin','2025-12-29 15:27:18','2025-12-29 15:27:18','Rexbuy Shop',0.00,'order_wise',1),(6,288,'guest-shPrh-1767003274',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',1,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-29-695185ce7b5a8.webp',1,'admin','2025-12-29 16:14:34','2025-12-29 16:14:34','Rexbuy Shop',0.00,'order_wise',1),(8,304,'guest-wfMHX-1767009914',3,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Rose Pink\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Rose Pink\"}','40-Men-RosePink',1,2520,0,630,'include',1,'mens-breathable-mesh-dad-sneakers-thick-sole-casual-shoes-Qvvss6','Men’s Breathable Mesh Sneakers','2025-12-29-695188b999b29.webp',1,'admin','2025-12-29 18:05:17','2025-12-29 18:05:17','Rexbuy Shop',0.00,'order_wise',1),(9,327,'guest-GQaiU-1767016239',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',1,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-29-695185ce7b5a8.webp',1,'admin','2025-12-29 19:50:39','2025-12-29 19:51:28','Rexbuy Shop',0.00,'order_wise',1),(10,327,'guest-GQaiU-1767016239',5,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,1987,0,496.75,'include',1,'generisch-non-slip-fitness-lightweight-shoes-tH2etv','Generisch Non-Slip, Fitness Lightweight Shoes','2025-12-28-695106afd49db.webp',1,'admin','2025-12-29 19:51:02','2025-12-29 19:51:28','Rexbuy Shop',0.00,'order_wise',1),(11,327,'guest-GQaiU-1767016239',2,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,2253,0,563.25,'include',1,'fabric-mesh-soft-sole-sport-shoes-rNpDLd','Fabric Mesh Soft Sole Sport Shoes','2025-12-28-6951011f997ff.webp',1,'admin','2025-12-29 19:51:05','2025-12-29 19:51:28','Rexbuy Shop',0.00,'order_wise',1),(12,381,'guest-0qRkd-1767029380',5,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,1987,0,496.75,'include',1,'generisch-non-slip-fitness-lightweight-shoes-tH2etv','Generisch Non-Slip, Fitness Lightweight Shoes','2025-12-28-695106afd49db.webp',1,'admin','2025-12-29 23:29:40','2025-12-29 23:29:40','Rexbuy Shop',0.00,'order_wise',1),(13,335,'guest-Ty0IF-1767039773',2,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,2253,0,563.25,'include',1,'fabric-mesh-soft-sole-sport-shoes-rNpDLd','Fabric Mesh Soft Sole Sport Shoes','2025-12-28-6951011f997ff.webp',1,'admin','2025-12-30 02:22:57','2025-12-30 02:22:57','Rexbuy Shop',0.00,'order_wise',1),(17,483,'guest-euejE-1767067286',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',1,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2025-12-30 10:01:26','2025-12-30 10:01:26','Rexbuy Shop',0.00,'order_wise',1),(18,490,'guest-qx02k-1767079358',2,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,2253,0,563.25,'include',1,'fabric-mesh-soft-sole-sport-shoes-rNpDLd','Fabric Mesh Soft Sole Sport Shoes','2025-12-28-6951011f997ff.webp',1,'admin','2025-12-30 13:22:53','2025-12-30 13:22:53','Rexbuy Shop',0.00,'order_wise',1),(19,498,'guest-WmL7j-1767081621',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',0,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2025-12-30 14:00:31','2025-12-30 14:03:49','Rexbuy Shop',0.00,'order_wise',1),(20,498,'guest-WmL7j-1767081621',5,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,1987,0,496.75,'include',1,'generisch-non-slip-fitness-lightweight-shoes-tH2etv','Generisch Non-Slip, Fitness Lightweight Shoes','2025-12-28-695106afd49db.webp',1,'admin','2025-12-30 14:03:49','2025-12-30 14:03:49','Rexbuy Shop',0.00,'order_wise',1),(24,522,'guest-wtqnb-1767088553',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',1,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2025-12-30 16:05:27','2025-12-30 16:05:27','Rexbuy Shop',0.00,'order_wise',1),(25,522,'guest-wtqnb-1767088553',2,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,2253,0,563.25,'include',0,'fabric-mesh-soft-sole-sport-shoes-rNpDLd','Fabric Mesh Soft Sole Sport Shoes','2025-12-28-6951011f997ff.webp',1,'admin','2025-12-30 16:04:10','2025-12-30 16:05:27','Rexbuy Shop',0.00,'order_wise',1),(27,507,'guest-BGJX0-1767091428',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',0,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2025-12-30 16:43:48','2025-12-30 17:20:57','Rexbuy Shop',0.00,'order_wise',1),(28,507,'guest-BGJX0-1767091428',3,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Rose Pink\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Rose Pink\"}','40-Men-RosePink',1,2520,0,630,'include',1,'mens-breathable-mesh-dad-sneakers-thick-sole-casual-shoes-Qvvss6','Men’s Breathable Mesh Sneakers','2025-12-30-6952c2a3a21a7.webp',1,'admin','2025-12-30 17:20:57','2025-12-30 17:20:57','Rexbuy Shop',0.00,'order_wise',1),(34,544,'guest-L8H3S-1767104058',5,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,1987,0,496.75,'include',1,'generisch-non-slip-fitness-lightweight-shoes-tH2etv','Generisch Non-Slip, Fitness Lightweight Shoes','2025-12-28-695106afd49db.webp',1,'admin','2025-12-30 20:14:18','2025-12-30 20:14:18','Rexbuy Shop',0.00,'order_wise',1),(36,571,'guest-ig0aY-1767108788',2,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,2253,0,563.25,'include',1,'fabric-mesh-soft-sole-sport-shoes-rNpDLd','Fabric Mesh Soft Sole Sport Shoes','2025-12-28-6951011f997ff.webp',1,'admin','2025-12-30 21:33:08','2025-12-30 21:33:08','Rexbuy Shop',0.00,'order_wise',1),(41,593,'guest-ECkTD-1767117386',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',1,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2025-12-30 23:56:29','2025-12-30 23:56:29','Rexbuy Shop',0.00,'order_wise',1),(43,677,'guest-jVpQu-1767185900',5,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,1987,0,496.75,'include',1,'generisch-non-slip-fitness-lightweight-shoes-tH2etv','Generisch Non-Slip, Fitness Lightweight Shoes','2025-12-28-695106afd49db.webp',1,'admin','2025-12-31 18:58:25','2025-12-31 18:58:25','Rexbuy Shop',0.00,'order_wise',1),(44,763,'guest-EJEzj-1767256579',5,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,1987,0,496.75,'include',0,'generisch-non-slip-fitness-lightweight-shoes-tH2etv','Generisch Non-Slip, Fitness Lightweight Shoes','2025-12-28-695106afd49db.webp',1,'admin','2026-01-01 14:36:28','2026-01-01 14:36:32','Rexbuy Shop',0.00,'order_wise',1),(45,763,'guest-EJEzj-1767256579',3,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Rose Pink\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Rose Pink\"}','40-Men-RosePink',1,2520,0,630,'include',1,'mens-breathable-mesh-dad-sneakers-thick-sole-casual-shoes-Qvvss6','Men’s Breathable Mesh Sneakers','2025-12-30-6952c2a3a21a7.webp',1,'admin','2026-01-01 14:36:32','2026-01-01 14:36:32','Rexbuy Shop',0.00,'order_wise',1),(48,830,'guest-CXfT1-1767337364',3,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Rose Pink\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Rose Pink\"}','40-Men-RosePink',1,2520,0,630,'include',1,'mens-breathable-mesh-dad-sneakers-thick-sole-casual-shoes-Qvvss6','Men’s Breathable Mesh Sneakers','2025-12-30-6952c2a3a21a7.webp',1,'admin','2026-01-02 13:02:46','2026-01-02 13:02:46','Rexbuy Shop',0.00,'order_wise',1),(50,842,'guest-LudEH-1767343185',3,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Rose Pink\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Rose Pink\"}','40-Men-RosePink',1,2520,0,630,'include',1,'mens-breathable-mesh-dad-sneakers-thick-sole-casual-shoes-Qvvss6','Men’s Breathable Mesh Dad Sneakers – Thick Sole Casual Shoes','2025-12-30-6952c2a3a21a7.webp',1,'admin','2026-01-02 14:39:45','2026-01-02 14:39:45','Rexbuy Shop',0.00,'order_wise',1),(58,849,'guest-WPSsK-1767350039',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',0,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2026-01-02 16:34:01','2026-01-02 16:44:53','Rexbuy Shop',0.00,'order_wise',1),(69,855,'guest-rZrSj-1767355454',8,'physical',NULL,NULL,'{\"choice_10\":\"43\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"43\",\"Gender\":\"Men\",\"Color\":\"Black\"}','43-Men-Black',1,2200,0,550,'include',0,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2026-01-02 18:04:14','2026-01-02 18:31:45','Rexbuy Shop',0.00,'order_wise',1),(72,957,'guest-HhQe1-1767379860',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',1,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2026-01-03 00:51:07','2026-01-03 00:51:07','Rexbuy Shop',0.00,'order_wise',1),(73,1179,'guest-ED4Q6-1767457441',3,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Rose Pink\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Rose Pink\"}','40-Men-RosePink',1,2520,0,630,'include',1,'mens-breathable-mesh-dad-sneakers-thick-sole-casual-shoes-Qvvss6','Men’s Breathable Mesh Sneakers','2025-12-30-6952c2a3a21a7.webp',1,'admin','2026-01-03 22:24:13','2026-01-03 22:24:13','Rexbuy Shop',0.00,'order_wise',1),(80,1221,'guest-J7RKf-1767477941',3,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Rose Pink\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Rose Pink\"}','40-Men-RosePink',1,2520,0,630,'include',1,'mens-breathable-mesh-dad-sneakers-thick-sole-casual-shoes-Qvvss6','Men’s Breathable Mesh Sneakers','2025-12-30-6952c2a3a21a7.webp',1,'admin','2026-01-04 04:05:41','2026-01-04 04:05:41','Rexbuy Shop',0.00,'order_wise',1),(90,1304,'guest-SWMdO-1767513822',5,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,1987,0,496.75,'include',0,'generisch-non-slip-fitness-lightweight-shoes-tH2etv','Generisch Non-Slip, Fitness Lightweight Shoes','2025-12-28-695106afd49db.webp',1,'admin','2026-01-04 14:03:42','2026-01-04 14:06:42','Rexbuy Shop',0.00,'order_wise',1),(91,1304,'guest-SWMdO-1767513822',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',0,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2026-01-04 14:06:21','2026-01-04 14:06:42','Rexbuy Shop',0.00,'order_wise',1),(92,1304,'guest-SWMdO-1767513822',3,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Rose Pink\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Rose Pink\"}','40-Men-RosePink',1,2520,0,630,'include',1,'mens-breathable-mesh-dad-sneakers-thick-sole-casual-shoes-Qvvss6','Men’s Breathable Mesh Sneakers','2025-12-30-6952c2a3a21a7.webp',1,'admin','2026-01-04 14:06:42','2026-01-04 14:06:42','Rexbuy Shop',0.00,'order_wise',1),(93,1289,'guest-MFcxK-1767515754',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',1,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2026-01-04 14:35:54','2026-01-04 14:35:54','Rexbuy Shop',0.00,'order_wise',1),(94,1309,'guest-rbsLF-1767515974',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',0,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2026-01-04 14:39:39','2026-01-04 14:44:36','Rexbuy Shop',0.00,'order_wise',1),(95,1309,'guest-rbsLF-1767515974',5,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,1987,0,496.75,'include',1,'generisch-non-slip-fitness-lightweight-shoes-tH2etv','Generisch Non-Slip, Fitness Lightweight Shoes','2025-12-28-695106afd49db.webp',1,'admin','2026-01-04 14:44:36','2026-01-04 14:44:36','Rexbuy Shop',0.00,'order_wise',1),(96,1310,'guest-ge2Ro-1767516720',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',1,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2026-01-04 14:52:49','2026-01-04 14:52:49','Rexbuy Shop',0.00,'order_wise',1),(101,1337,'guest-z25XW-1767525954',2,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Black\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','40-Men-Black',1,2253,0,563.25,'include',1,'fabric-mesh-soft-sole-sport-shoes-rNpDLd','Fabric Mesh Soft Sole Sport Shoes','2025-12-28-6951011f997ff.webp',1,'admin','2026-01-04 17:25:54','2026-01-04 17:25:54','Rexbuy Shop',0.00,'order_wise',1),(110,4,'4-zGsTp-1767534851',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',1,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2026-01-04 19:54:12','2026-01-04 19:54:19','Rexbuy Shop',0.00,'order_wise',0),(111,5,'5-0x9P0-1767536471',8,'physical',NULL,NULL,'{\"choice_10\":\"40\",\"choice_9\":\"Men\",\"choice_11\":\"Red\"}','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','40-Men-Red',1,2253,0,563.25,'include',1,'trendy-casual-spring-shoes-fl6SAE','Trendy Casual Spring Shoes','2025-12-30-6952c7b31eb07.webp',1,'admin','2026-01-04 20:21:14','2026-01-04 20:28:41','Rexbuy Shop',0.00,'order_wise',0);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `parent_id` int NOT NULL,
  `position` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `home_status` tinyint(1) NOT NULL DEFAULT '0',
  `priority` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Shoes & Sneakers','shoes-sneakers','2025-12-28-6950fb55d1015.webp','public',0,0,'2025-12-28 15:41:41','2026-01-02 18:48:18',1,3),(4,'Casual Shoes','casual-shoes','2026-01-02-6957be61b7345.webp','public',0,0,'2026-01-02 18:47:29','2026-01-02 19:00:47',1,2),(5,'Sneakers','sneakers','def.png',NULL,4,1,'2026-01-02 18:49:27','2026-01-02 19:07:05',1,1),(6,'Canvas','canvas','def.png',NULL,5,2,'2026-01-02 18:50:12','2026-01-02 18:50:12',1,NULL),(7,'High-Top','high-top','def.png',NULL,5,2,'2026-01-02 18:50:24','2026-01-02 18:50:24',1,NULL),(8,'Low-Top','low-top','def.png',NULL,5,2,'2026-01-02 18:50:39','2026-01-02 18:50:39',1,NULL),(9,'Moccasins','moccasins','def.png',NULL,4,1,'2026-01-02 18:51:43','2026-01-02 19:07:17',1,1),(10,'Slip-On Shoes','slip-on-shoes','def.png',NULL,4,1,'2026-01-02 18:52:31','2026-01-02 19:06:48',1,1),(11,'Loafers','loafers','def.png',NULL,4,1,'2026-01-02 18:52:44','2026-01-02 18:59:07',1,1),(12,'Formal Shoes','formal-shoes','2026-01-02-6957c028467e3.webp','public',0,0,'2026-01-02 18:55:04','2026-01-02 19:00:35',1,1),(13,'Oxford','oxford','def.png',NULL,12,1,'2026-01-02 19:02:23','2026-01-02 19:08:06',1,2),(14,'Derby','derby','def.png',NULL,12,1,'2026-01-02 19:05:15','2026-01-02 19:07:37',1,2),(15,'Brogue','brogue','def.png',NULL,12,1,'2026-01-02 19:05:39','2026-01-02 19:07:49',1,2),(16,'Monk Strap','monk-strap','def.png',NULL,12,1,'2026-01-02 19:08:36','2026-01-02 19:11:46',1,2),(17,'Lace-Up Shoes','lace-up-shoes','def.png',NULL,12,1,'2026-01-02 19:11:19','2026-01-02 19:11:57',1,2),(18,'Sports Shoes','sports-shoes','2026-01-02-6957c4d6ed8ea.webp','public',0,0,'2026-01-02 19:15:02','2026-01-02 19:16:47',1,4),(19,'Running Shoes','running-shoes','def.png',NULL,18,1,'2026-01-02 19:24:33','2026-01-02 19:24:42',1,3),(20,'Training / Gym Shoes','training-gym-shoes','def.png',NULL,18,1,'2026-01-02 19:25:07','2026-01-02 19:25:17',1,3),(21,'Walking Shoes','walking-shoes','def.png',NULL,18,1,'2026-01-02 19:26:01','2026-01-02 19:26:10',1,3),(22,'Football Shoes','football-shoes','def.png',NULL,18,1,'2026-01-02 19:26:35','2026-01-02 19:26:50',1,3),(23,'Cricket Shoes','cricket-shoes','def.png',NULL,18,1,'2026-01-02 19:27:15','2026-01-02 19:27:23',1,3),(24,'Sandals & Floaters','sandals-floaters','2026-01-02-6957c8879a066.webp','public',0,0,'2026-01-02 19:30:47','2026-01-02 19:31:01',1,5),(25,'Leather Sandals','leather-sandals','def.png',NULL,24,1,'2026-01-02 19:32:43','2026-01-02 19:33:36',1,5),(26,'Sports Sandals','sports-sandals','def.png',NULL,24,1,'2026-01-02 19:32:55','2026-01-02 19:34:17',1,5),(27,'Floaters','floaters','def.png',NULL,24,1,'2026-01-02 19:33:07','2026-01-02 19:34:04',1,5),(28,'Velcro Sandals','velcro-sandals','def.png',NULL,24,1,'2026-01-02 19:33:28','2026-01-02 19:33:49',1,5),(29,'Boots','boots','2026-01-02-6957c9e4db47a.webp','public',0,0,'2026-01-02 19:36:36','2026-01-02 19:39:29',1,6),(30,'Work / Safety Boots','work-safety-boots','def.png',NULL,29,1,'2026-01-02 19:37:31','2026-01-02 19:38:37',1,6),(31,'Chelsea Boots','chelsea-boots','def.png',NULL,29,1,'2026-01-02 19:37:41','2026-01-02 19:38:23',1,6),(32,'Ankle Boots','ankle-boots','def.png',NULL,29,1,'2026-01-02 19:37:53','2026-01-02 19:38:11',1,6),(33,'Slippers','slippers','2026-01-02-6957cb4480a47.webp','public',0,0,'2026-01-02 19:40:53','2026-01-02 19:42:28',1,7),(34,'Flip-Flops','flip-flops','def.png',NULL,33,1,'2026-01-02 19:43:16','2026-01-02 19:44:48',1,7),(35,'Outdoor Slippers','outdoor-slippers','def.png',NULL,33,1,'2026-01-02 19:44:06','2026-01-02 19:44:35',1,7),(36,'Indoor Slippers','indoor-slippers','def.png',NULL,33,1,'2026-01-02 19:44:16','2026-01-02 19:44:25',1,7),(37,'Women’s Shoes','womens-shoes','2026-01-02-6957cc64f080a.webp','public',0,0,'2026-01-02 19:47:16','2026-01-02 21:04:06',1,8),(38,'Casual Shoes','casual-shoes','def.png',NULL,37,1,'2026-01-02 19:51:38','2026-01-02 19:55:55',1,8),(39,'Formal / Party Shoes','formal-party-shoes','def.png',NULL,37,1,'2026-01-02 19:51:40','2026-01-02 19:53:04',1,8),(40,'Heels','heels','def.png',NULL,37,1,'2026-01-02 19:51:43','2026-01-02 19:53:00',1,8),(41,'Flats','flats','def.png',NULL,37,1,'2026-01-02 19:51:45','2026-01-02 19:52:55',1,8),(42,'Wedges','wedges','def.png',NULL,37,1,'2026-01-02 19:51:47','2026-01-02 19:52:36',1,8),(43,'Sandals & Slides','sandals-slides','def.png',NULL,37,1,'2026-01-02 19:51:49','2026-01-02 19:52:40',1,8),(44,'Slippers','slippers','def.png',NULL,37,1,'2026-01-02 19:51:52','2026-01-02 19:52:45',1,8),(45,'Boots','boots','def.png',NULL,37,1,'2026-01-02 19:51:55','2026-01-02 19:52:48',1,8),(46,'Loafers','loafers','def.png',NULL,38,2,'2026-01-02 19:57:08','2026-01-02 19:57:08',1,NULL),(47,'Slip-On Shoes','slip-on-shoes','def.png',NULL,38,2,'2026-01-02 19:57:27','2026-01-02 19:57:27',1,NULL),(48,'Sneakers','sneakers','def.png',NULL,38,2,'2026-01-02 19:57:42','2026-01-02 19:57:42',1,NULL),(49,'Pointed-Toe Shoes','pointed-toe-shoes','def.png',NULL,39,2,'2026-01-02 19:59:08','2026-01-02 19:59:08',1,NULL),(50,'Court Shoes','court-shoes','def.png',NULL,39,2,'2026-01-02 19:59:42','2026-01-02 19:59:42',1,NULL),(51,'Pumps','pumps','def.png',NULL,39,2,'2026-01-02 19:59:55','2026-01-02 19:59:55',1,NULL),(52,'Stiletto Heels','stiletto-heels','def.png',NULL,40,2,'2026-01-02 20:01:08','2026-01-02 20:01:08',1,NULL),(53,'Block Heels','block-heels','def.png',NULL,40,2,'2026-01-02 20:01:24','2026-01-02 20:01:24',1,NULL),(54,'Mid Heels','mid-heels','def.png',NULL,40,2,'2026-01-02 20:01:36','2026-01-02 20:01:36',1,NULL),(55,'High Heels','high-heels','def.png',NULL,40,2,'2026-01-02 20:02:01','2026-01-02 20:02:01',1,NULL),(56,'Peep-Toe Flats','peep-toe-flats','def.png',NULL,41,2,'2026-01-02 20:02:41','2026-01-02 20:02:41',1,NULL),(57,'Flat Sandals','flat-sandals','def.png',NULL,41,2,'2026-01-02 20:02:56','2026-01-02 20:02:56',1,NULL),(58,'Ballerina Flats','ballerina-flats','def.png',NULL,41,2,'2026-01-02 20:03:18','2026-01-02 20:03:18',1,NULL),(59,'Party Wedges','party-wedges','def.png',NULL,42,2,'2026-01-02 20:03:53','2026-01-02 20:03:53',1,NULL),(60,'Casual Wedges','casual-wedges','def.png',NULL,42,2,'2026-01-02 20:04:06','2026-01-02 20:04:06',1,NULL),(61,'Slides','slides','def.png',NULL,43,2,'2026-01-02 20:04:48','2026-01-02 20:04:48',1,NULL),(62,'Flat Sandals','flat-sandals','def.png',NULL,43,2,'2026-01-02 20:05:04','2026-01-02 20:05:04',1,NULL),(63,'Fashion Sandals','fashion-sandals','def.png',NULL,43,2,'2026-01-02 20:05:28','2026-01-02 20:05:28',1,NULL),(64,'Outdoor Slippers','outdoor-slippers','def.png',NULL,44,2,'2026-01-02 20:06:20','2026-01-02 20:06:20',1,NULL),(65,'Home Slippers','home-slippers','def.png',NULL,44,2,'2026-01-02 20:07:56','2026-01-02 20:07:56',1,NULL),(66,'Long Boots','long-boots','def.png',NULL,45,2,'2026-01-02 20:08:38','2026-01-02 20:08:38',1,NULL),(67,'Ankle Boots','ankle-boots','def.png',NULL,45,2,'2026-01-02 20:08:48','2026-01-02 20:08:48',1,NULL),(68,'Boot','boot','2026-01-04-695a0764a3a5a.webp','public',0,0,'2026-01-04 12:23:32','2026-01-04 12:24:23',1,3);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_shipping_costs`
--

DROP TABLE IF EXISTS `category_shipping_costs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category_shipping_costs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned DEFAULT NULL,
  `category_id` int unsigned DEFAULT NULL,
  `cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_shipping_costs`
--

LOCK TABLES `category_shipping_costs` WRITE;
/*!40000 ALTER TABLE `category_shipping_costs` DISABLE KEYS */;
INSERT INTO `category_shipping_costs` VALUES (1,0,1,0.00,NULL,'2025-12-28 16:12:53','2025-12-28 16:12:53'),(2,0,2,0.00,NULL,'2026-01-02 15:18:17','2026-01-02 15:18:17');
/*!40000 ALTER TABLE `category_shipping_costs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chattings`
--

DROP TABLE IF EXISTS `chattings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chattings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `delivery_man_id` bigint DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `sent_by_customer` tinyint(1) NOT NULL DEFAULT '0',
  `sent_by_seller` tinyint(1) NOT NULL DEFAULT '0',
  `sent_by_admin` tinyint(1) DEFAULT NULL,
  `sent_by_delivery_man` tinyint(1) DEFAULT NULL,
  `seen_by_customer` tinyint(1) NOT NULL DEFAULT '1',
  `seen_by_seller` tinyint(1) NOT NULL DEFAULT '1',
  `seen_by_admin` tinyint(1) DEFAULT NULL,
  `seen_by_delivery_man` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `notification_receiver` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'admin, seller, customer, deliveryman',
  `seen_notification` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chattings`
--

LOCK TABLES `chattings` WRITE;
/*!40000 ALTER TABLE `chattings` DISABLE KEYS */;
/*!40000 ALTER TABLE `chattings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_drafts`
--

DROP TABLE IF EXISTS `checkout_drafts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `checkout_drafts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_drafts`
--

LOCK TABLES `checkout_drafts` WRITE;
/*!40000 ALTER TABLE `checkout_drafts` DISABLE KEYS */;
INSERT INTO `checkout_drafts` VALUES (1,'vKNFzsJv2TWtEACuyO2dPV6zfW1P9KC0ATkEBfwX','Iqbal Hossain',NULL,'+88001764323129','keshabpur','draft','2025-12-30 02:23:31','2025-12-30 02:25:30'),(2,'Bn0Tufi6QRop4tQx565cdW71WlcnD3LZpOjvcFQv','check',NULL,'+880017421350932','jgjhjhjhjh','draft','2025-12-30 14:01:42','2025-12-30 14:01:48'),(3,'sz9mazZPoDQ5DWyl0F4NAp7H37HdT4xwXckO5b2a','Nifat',NULL,'+88001796143041','Dhaka mirpur 1 number','draft','2025-12-30 15:59:18','2025-12-30 16:03:13'),(4,'Beu4dIxW0rTqFcdQ7ftEFfeuNv5sK72Wfk08xrHZ','Iqbal Hossain',NULL,'+88001764323129','keshabpur','draft','2025-12-30 17:21:11','2025-12-30 17:21:44'),(5,'2Ys4J8rotHsERTlRwqqueOEP3qc0j69ELn9t3TKj','test kabbo',NULL,'+880','uigyufyufyufyu','draft','2026-01-02 16:43:52','2026-01-02 16:45:09'),(6,'Vg3Zh2udguSZ0Dlut0B7ztsml1sP9am2ZPCI5WdK','ajijul',NULL,'+88017421350','address','ordered','2026-01-02 16:44:57','2026-01-02 17:18:03'),(7,'I6wJ9OcttcPNkvUiQ51I0X5qDVIliqk4AX2wuyoS','asdsad',NULL,'+88065465465','sdfsd','draft','2026-01-02 17:20:38','2026-01-02 18:31:55'),(8,'oupyWdpxlzk7ZH7BMvYiZghGsVjMgtqWXaltfYWm','Iqbal Hossain',NULL,'+88001764323129','keshabpur','draft','2026-01-04 03:45:07','2026-01-04 03:46:00');
/*!40000 ALTER TABLE `checkout_drafts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colors`
--

DROP TABLE IF EXISTS `colors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `colors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colors`
--

LOCK TABLES `colors` WRITE;
/*!40000 ALTER TABLE `colors` DISABLE KEYS */;
/*!40000 ALTER TABLE `colors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `feedback` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `reply` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coupons`
--

DROP TABLE IF EXISTS `coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `added_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `coupon_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_bearer` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inhouse',
  `seller_id` bigint DEFAULT NULL COMMENT 'NULL=in-house, 0=all seller',
  `customer_id` bigint DEFAULT NULL COMMENT '0 = all customer',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `min_purchase` decimal(8,2) NOT NULL DEFAULT '0.00',
  `max_discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `limit` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coupons`
--

LOCK TABLES `coupons` WRITE;
/*!40000 ALTER TABLE `coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `currencies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
INSERT INTO `currencies` VALUES (1,'USD','$','USD','1',0,NULL,'2025-12-30 20:43:32'),(2,'BDT','৳','BDT','84',1,NULL,'2021-07-06 11:52:58'),(3,'Indian Rupi','₹','INR','60',0,'2020-10-15 17:23:04','2025-12-30 20:43:27'),(4,'Euro','€','EUR','100',0,'2021-05-25 21:00:23','2025-12-30 20:43:25'),(5,'YEN','¥','JPY','110',0,'2021-06-10 22:08:31','2025-12-30 20:43:19'),(6,'Ringgit','RM','MYR','4.16',0,'2021-07-03 11:08:33','2025-12-30 20:43:15'),(7,'Rand','R','ZAR','14.26',0,'2021-07-03 11:12:38','2025-12-30 20:43:12'),(8,'Dirham','*','DIr','1',0,'2025-06-25 00:13:14','2025-06-25 00:13:14');
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_wallet_histories`
--

DROP TABLE IF EXISTS `customer_wallet_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_wallet_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `transaction_amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `transaction_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_method` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_wallet_histories`
--

LOCK TABLES `customer_wallet_histories` WRITE;
/*!40000 ALTER TABLE `customer_wallet_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_wallet_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_wallets`
--

DROP TABLE IF EXISTS `customer_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_wallets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `balance` decimal(8,2) NOT NULL DEFAULT '0.00',
  `royality_points` decimal(8,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_wallets`
--

LOCK TABLES `customer_wallets` WRITE;
/*!40000 ALTER TABLE `customer_wallets` DISABLE KEYS */;
/*!40000 ALTER TABLE `customer_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deal_of_the_days`
--

DROP TABLE IF EXISTS `deal_of_the_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deal_of_the_days` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'amount',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deal_of_the_days`
--

LOCK TABLES `deal_of_the_days` WRITE;
/*!40000 ALTER TABLE `deal_of_the_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `deal_of_the_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_country_codes`
--

DROP TABLE IF EXISTS `delivery_country_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_country_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `country_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_country_codes`
--

LOCK TABLES `delivery_country_codes` WRITE;
/*!40000 ALTER TABLE `delivery_country_codes` DISABLE KEYS */;
INSERT INTO `delivery_country_codes` VALUES (3,'BD','2026-01-02 16:30:15','2026-01-02 16:30:15'),(4,'IN','2026-01-02 17:37:29','2026-01-02 17:37:29');
/*!40000 ALTER TABLE `delivery_country_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_histories`
--

DROP TABLE IF EXISTS `delivery_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `deliveryman_id` bigint DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_histories`
--

LOCK TABLES `delivery_histories` WRITE;
/*!40000 ALTER TABLE `delivery_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_man_transactions`
--

DROP TABLE IF EXISTS `delivery_man_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_man_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `user_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `debit` decimal(50,2) NOT NULL DEFAULT '0.00',
  `credit` decimal(50,2) NOT NULL DEFAULT '0.00',
  `transaction_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_man_transactions`
--

LOCK TABLES `delivery_man_transactions` WRITE;
/*!40000 ALTER TABLE `delivery_man_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_man_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_men`
--

DROP TABLE IF EXISTS `delivery_men`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_men` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `f_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `country_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_number` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `is_online` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `auth_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '6yIRXJRRfp78qJsAoKZZ6TTqhzuNJ3TcdvPBmk6n',
  `fcm_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_men`
--

LOCK TABLES `delivery_men` WRITE;
/*!40000 ALTER TABLE `delivery_men` DISABLE KEYS */;
INSERT INTO `delivery_men` VALUES (1,0,'Forid','MIa','Netrakona','+880','01611324136','forid@gmail.com','015214585687','nid','[{\"image_name\":\"2026-01-04-695a17e6967cd.webp\",\"storage\":\"public\"}]','2026-01-04-695a17e6a5f54.webp','$2y$10$I0FxietC8HpDz6X/BUUlee0V/G48R57MWCSmHneVTRqpbwH4heDMW',NULL,NULL,NULL,NULL,1,1,'2026-01-04 13:33:58','2026-01-04 13:33:58','6yIRXJRRfp78qJsAoKZZ6TTqhzuNJ3TcdvPBmk6n',NULL,'en');
/*!40000 ALTER TABLE `delivery_men` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery_zip_codes`
--

DROP TABLE IF EXISTS `delivery_zip_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery_zip_codes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery_zip_codes`
--

LOCK TABLES `delivery_zip_codes` WRITE;
/*!40000 ALTER TABLE `delivery_zip_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery_zip_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryman_notifications`
--

DROP TABLE IF EXISTS `deliveryman_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryman_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryman_notifications`
--

LOCK TABLES `deliveryman_notifications` WRITE;
/*!40000 ALTER TABLE `deliveryman_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliveryman_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deliveryman_wallets`
--

DROP TABLE IF EXISTS `deliveryman_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `deliveryman_wallets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `delivery_man_id` bigint NOT NULL,
  `current_balance` decimal(50,2) NOT NULL DEFAULT '0.00',
  `cash_in_hand` decimal(50,2) NOT NULL DEFAULT '0.00',
  `pending_withdraw` decimal(50,2) NOT NULL DEFAULT '0.00',
  `total_withdraw` decimal(50,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveryman_wallets`
--

LOCK TABLES `deliveryman_wallets` WRITE;
/*!40000 ALTER TABLE `deliveryman_wallets` DISABLE KEYS */;
/*!40000 ALTER TABLE `deliveryman_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_product_authors`
--

DROP TABLE IF EXISTS `digital_product_authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digital_product_authors` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `author_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_product_authors`
--

LOCK TABLES `digital_product_authors` WRITE;
/*!40000 ALTER TABLE `digital_product_authors` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_product_authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_product_otp_verifications`
--

DROP TABLE IF EXISTS `digital_product_otp_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digital_product_otp_verifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_details_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `identity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_product_otp_verifications`
--

LOCK TABLES `digital_product_otp_verifications` WRITE;
/*!40000 ALTER TABLE `digital_product_otp_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_product_otp_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_product_publishing_houses`
--

DROP TABLE IF EXISTS `digital_product_publishing_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digital_product_publishing_houses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `publishing_house_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_product_publishing_houses`
--

LOCK TABLES `digital_product_publishing_houses` WRITE;
/*!40000 ALTER TABLE `digital_product_publishing_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_product_publishing_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `digital_product_variations`
--

DROP TABLE IF EXISTS `digital_product_variations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `digital_product_variations` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `variant_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(24,8) DEFAULT NULL,
  `file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `digital_product_variations`
--

LOCK TABLES `digital_product_variations` WRITE;
/*!40000 ALTER TABLE `digital_product_variations` DISABLE KEYS */;
/*!40000 ALTER TABLE `digital_product_variations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `email_templates` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `template_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `template_design_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `social_media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `hide_field` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `button_content_status` tinyint NOT NULL DEFAULT '1',
  `product_information_status` tinyint NOT NULL DEFAULT '1',
  `order_information_status` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email_templates`
--

LOCK TABLES `email_templates` WRITE;
/*!40000 ALTER TABLE `email_templates` DISABLE KEYS */;
INSERT INTO `email_templates` VALUES (1,'order-received','admin','order-received','New Order Received','<p><b>Hi {adminName},</b></p><p>We have sent you this email to notify that you have a new order.You will be able to see your orders after login to your panel.</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"icon\",\"product_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(2,'order-place','customer','order-place','Order # {orderId} Has Been Placed Successfully!','<p><b>Hi {userName},</b></p><p>Your order from {shopName} has been placed to know the current status of your order click track order</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"icon\",\"product_information\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(3,'registration-verification','customer','registration-verification','Registration Verification','<p><b>Hi {userName},</b></p><p>Your verification code is</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(4,'registration-from-pos','customer','registration-from-pos','Registration Complete','<p><b>Hi {userName},</b></p><p>Thank you for joining  Shop.If you want to become a registered customer then reset your password below by using this email. Then you’ll be able to explore the website and app as a registered customer.</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_url\",\"button_content_status\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(5,'account-block','customer','account-block','Account Blocked','<div><b>Hi {userName},</b></div><div><b><br></b></div><div>Your account has been blocked due to suspicious activity by the admin .To resolve this issue please contact with admin or support center. We apologize for any inconvenience caused.</div><div><br></div><div>Meanwhile, click here to visit theshop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(6,'account-unblock','customer','account-unblock','Account Unblocked','<div><b>Hi {userName},</b></div><div><b><br></b></div><div>Your account has been successfully unblocked. We appreciate your cooperation in resolving this issue. Thank you for your understanding and patience. </div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(7,'digital-product-download','customer','digital-product-download','Congratulations','<p>Thank you for choosing  shop! Your digital product is ready for download. To download your product use your email <b>{emailId}</b> and order # {orderId} below.</b><br></p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(8,'digital-product-otp','customer','digital-product-otp','Digital Product Download OTP Verification','<p><b>Hi {userName},</b></p><p>Your verification code is</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(9,'add-fund-to-wallet','customer','add-fund-to-wallet','Transaction Successful','<div style=\"text-align: center; \">Amount successfully credited to your wallet .</div><div style=\"text-align: center; \"><br></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(10,'registration','vendor','registration','Registration Complete','<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Congratulation! Your registration request has been send to admin successfully! Please wait until admin reviewal. </div><div><br></div><div>meanwhile click here to visit the  Shop Website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(11,'registration-approved','vendor','registration-approved','Registration Approved','<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your registration request has been approved by admin. Now you can complete your store setting and start selling your product on  Shop. </div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(12,'registration-denied','vendor','registration-denied','Registration Denied','<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your registration request has been denied by admin. Please contact with admin or support center if you have any queries.</div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(13,'account-suspended','vendor','account-suspended','Account Suspended','<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your account access has been suspended by admin.From now you can access your app and panel again Please contact us for any queries we’re always happy to help.</div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(14,'account-activation','vendor','account-activation','Account Activation','<div><b>Hi {vendorName},</b></div><div><b><br></b></div><div>Your account suspension has been revoked by admin. From now you can access your app and panel again Please contact us for any queries we’re always happy to help.</div><div><br></div><div>Meanwhile, click here to visit the shop website</div><div><font color=\"#0000ff\"> <a href=\"https://ekmartvalley.store\" target=\"_blank\">https://ekmartvalley.store</a></font></div>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(15,'forgot-password','vendor','forgot-password','Change Password Request','<p><b>Hi {vendorName},</b></p><p>Please click the link below to change your password.</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(16,'order-received','vendor','order-received','New Order Received','<p><b>Hi {vendorName},</b></p><p>We have sent you this email to notify that you have a new order.You will be able to see your orders after login to your panel.</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"icon\",\"product_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19'),(17,'reset-password-verification','delivery-man','reset-password-verification','OTP Verification For Password Reset','<p><b>Hi {deliveryManName},</b></p><p>Your verification code is</p>',NULL,NULL,NULL,NULL,NULL,'Please contact us for any queries, we are always happy to help.','Copyright 2025 . All right reserved.',NULL,NULL,'[\"product_information\",\"order_information\",\"button_content\",\"banner_image\"]',1,1,1,1,'2025-06-24 19:25:19','2025-06-24 19:25:19');
/*!40000 ALTER TABLE `email_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emergency_contacts`
--

DROP TABLE IF EXISTS `emergency_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emergency_contacts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergency_contacts`
--

LOCK TABLES `emergency_contacts` WRITE;
/*!40000 ALTER TABLE `emergency_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `emergency_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `error_logs`
--

DROP TABLE IF EXISTS `error_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `error_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `status_code` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_counts` int NOT NULL DEFAULT '0',
  `redirect_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=189 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `error_logs`
--

LOCK TABLES `error_logs` WRITE;
/*!40000 ALTER TABLE `error_logs` DISABLE KEYS */;
INSERT INTO `error_logs` VALUES (2,404,'https://rexbuyshop.com/config/app.yml',1,NULL,NULL,'2025-12-28 05:01:22','2025-12-28 05:01:22'),(3,404,'https://rexbuyshop.com/keys.json',1,NULL,NULL,'2025-12-28 05:01:22','2025-12-28 05:01:22'),(4,404,'https://rexbuyshop.com/tokens.json',1,NULL,NULL,'2025-12-28 05:01:24','2025-12-28 05:01:24'),(5,404,'https://rexbuyshop.com/secrets.yml',1,NULL,NULL,'2025-12-28 05:01:24','2025-12-28 05:01:24'),(6,404,'https://rexbuyshop.com/apikeys.json',1,NULL,NULL,'2025-12-28 05:01:26','2025-12-28 05:01:26'),(7,404,'https://rexbuyshop.com/aws.json',1,NULL,NULL,'2025-12-28 05:01:27','2025-12-28 05:01:27'),(8,404,'https://rexbuyshop.com/settings.json',1,NULL,NULL,'2025-12-28 05:01:27','2025-12-28 05:01:27'),(9,404,'https://rexbuyshop.com/config/database.yml',1,NULL,NULL,'2025-12-28 05:01:28','2025-12-28 05:01:28'),(10,404,'https://rexbuyshop.com/credentials.json',1,NULL,NULL,'2025-12-28 05:01:31','2025-12-28 05:01:31'),(11,404,'https://rexbuyshop.com/config.yml',1,NULL,NULL,'2025-12-28 05:01:38','2025-12-28 05:01:38'),(12,404,'https://rexbuyshop.com/config.php',1,NULL,NULL,'2025-12-28 05:01:38','2025-12-28 05:01:38'),(13,404,'https://rexbuyshop.com/gcp-credentials.json',1,NULL,NULL,'2025-12-28 05:01:39','2025-12-28 05:01:39'),(14,404,'https://rexbuyshop.com/config/config.yml',1,NULL,NULL,'2025-12-28 05:01:39','2025-12-28 05:01:39'),(15,404,'https://rexbuyshop.com/settings.yml',1,NULL,NULL,'2025-12-28 05:01:39','2025-12-28 05:01:39'),(16,404,'https://rexbuyshop.com/auth.json',1,NULL,NULL,'2025-12-28 05:01:40','2025-12-28 05:01:40'),(17,404,'https://rexbuyshop.com/config.yaml',1,NULL,NULL,'2025-12-28 05:01:40','2025-12-28 05:01:40'),(18,404,'https://rexbuyshop.com/application.yml',1,NULL,NULL,'2025-12-28 05:01:41','2025-12-28 05:01:41'),(19,404,'https://rexbuyshop.com/phpinfo.php',1,NULL,NULL,'2025-12-28 05:01:42','2025-12-28 05:01:42'),(20,404,'https://rexbuyshop.com/debug.log',1,NULL,NULL,'2025-12-28 05:01:42','2025-12-28 05:01:42'),(21,404,'https://rexbuyshop.com/_debug',1,NULL,NULL,'2025-12-28 05:01:43','2025-12-28 05:01:43'),(22,404,'https://rexbuyshop.com/_profiler/phpinfo',1,NULL,NULL,'2025-12-28 05:01:43','2025-12-28 05:01:43'),(23,404,'https://rexbuyshop.com/error.log',1,NULL,NULL,'2025-12-28 05:01:44','2025-12-28 05:01:44'),(24,404,'https://rexbuyshop.com/Dockerfile',1,NULL,NULL,'2025-12-28 05:01:45','2025-12-28 05:01:45'),(25,404,'https://rexbuyshop.com/docker-compose.yaml',1,NULL,NULL,'2025-12-28 05:01:45','2025-12-28 05:01:45'),(26,404,'https://rexbuyshop.com/errors.log',1,NULL,NULL,'2025-12-28 05:01:46','2025-12-28 05:01:46'),(27,404,'https://rexbuyshop.com/php_error.log',1,NULL,NULL,'2025-12-28 05:01:47','2025-12-28 05:01:47'),(28,404,'https://rexbuyshop.com/secrets.json',1,NULL,NULL,'2025-12-28 05:01:48','2025-12-28 05:01:48'),(29,404,'https://rexbuyshop.com/aws-config.json',1,NULL,NULL,'2025-12-28 05:01:50','2025-12-28 05:01:50'),(30,404,'https://rexbuyshop.com/config.json',1,NULL,NULL,'2025-12-28 05:01:50','2025-12-28 05:01:50'),(31,404,'https://rexbuyshop.com/api_keys.json',1,NULL,NULL,'2025-12-28 05:01:51','2025-12-28 05:01:51'),(32,404,'https://rexbuyshop.com/application.properties',1,NULL,NULL,'2025-12-28 05:01:52','2025-12-28 05:01:52'),(33,404,'https://rexbuyshop.com/s3.yml',1,NULL,NULL,'2025-12-28 05:01:52','2025-12-28 05:01:52'),(34,404,'https://rexbuyshop.com/app.config',1,NULL,NULL,'2025-12-28 05:01:54','2025-12-28 05:01:54'),(35,404,'https://rexbuyshop.com/configuration.json',1,NULL,NULL,'2025-12-28 05:01:54','2025-12-28 05:01:54'),(36,404,'https://rexbuyshop.com/oauth.json',1,NULL,NULL,'2025-12-28 05:01:56','2025-12-28 05:01:56'),(37,404,'https://rexbuyshop.com/kubernetes.yml',1,NULL,NULL,'2025-12-28 05:02:00','2025-12-28 05:02:00'),(38,404,'https://rexbuyshop.com/info.php',1,NULL,NULL,'2025-12-28 05:02:00','2025-12-28 05:02:00'),(39,404,'https://rexbuyshop.com/phpinfo',1,NULL,NULL,'2025-12-28 05:02:01','2025-12-28 05:02:01'),(40,404,'https://rexbuyshop.com/docker-compose.yml',1,NULL,NULL,'2025-12-28 05:02:01','2025-12-28 05:02:01'),(41,404,'https://rexbuyshop.com/php_info.php',1,NULL,NULL,'2025-12-28 05:02:01','2025-12-28 05:02:01'),(42,404,'https://rexbuyshop.com/debug.php',1,NULL,NULL,'2025-12-28 05:02:04','2025-12-28 05:02:04'),(43,404,'https://rexbuyshop.com/test.php',1,NULL,NULL,'2025-12-28 05:02:04','2025-12-28 05:02:04'),(44,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/feed',1,NULL,NULL,'2025-12-28 12:38:28','2025-12-28 12:38:28'),(45,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/xmlrpc.php',1,NULL,NULL,'2025-12-28 12:38:34','2025-12-28 12:38:34'),(46,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/blog/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:38:39','2025-12-28 12:38:39'),(47,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/web/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:38:42','2025-12-28 12:38:42'),(48,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/wordpress/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:38:46','2025-12-28 12:38:46'),(49,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/wp/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:38:50','2025-12-28 12:38:50'),(50,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/2020/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:38:53','2025-12-28 12:38:53'),(51,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/2019/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:38:57','2025-12-28 12:38:57'),(52,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/2021/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:39:01','2025-12-28 12:39:01'),(53,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/shop/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:39:05','2025-12-28 12:39:05'),(54,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/wp1/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:39:08','2025-12-28 12:39:08'),(55,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/test/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:39:13','2025-12-28 12:39:13'),(56,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/site/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:39:17','2025-12-28 12:39:17'),(57,404,'https://rexbuyshop.com/wp-includes/id3/license.txt/cms/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-28 12:39:20','2025-12-28 12:39:20'),(58,404,'https://rexbuyshop.com/ads.txt',1,NULL,NULL,'2025-12-28 13:43:37','2025-12-28 13:43:37'),(59,404,'https://rexbuyshop.com/app-ads.txt',1,NULL,NULL,'2025-12-28 13:43:38','2025-12-28 13:43:38'),(60,404,'https://rexbuyshop.com/sellers.json',1,NULL,NULL,'2025-12-28 13:43:39','2025-12-28 13:43:39'),(61,404,'https://rexbuyshop.com/admin/products/view/admin/5',1,NULL,NULL,'2025-12-29 00:08:49','2025-12-29 00:08:49'),(62,404,'https://rexbuyshop.com/assets/backend/libs/bootstrap/bootstrap.bundle.min.js.map',3,NULL,NULL,'2025-12-29 01:26:46','2026-01-02 16:35:00'),(63,404,'https://rexbuyshop.com/assets/new/back-end/libs/lightbox/lightbox.min.map',3,NULL,NULL,'2025-12-29 01:26:46','2026-01-02 16:35:00'),(64,404,'https://rexbuyshop.com/assets/new/back-end/libs/tags-input/bootstrap-tagsinput.min.js.map',3,NULL,NULL,'2025-12-29 01:26:46','2026-01-02 16:35:00'),(65,404,'https://rexbuyshop.com/assets/new/back-end/libs/swiper/swiper-bundle.min.js.map',3,NULL,NULL,'2025-12-29 01:26:46','2026-01-02 16:35:00'),(66,404,'https://rexbuyshop.com/sm/f07d8d7b2652873f485707eab4f3d300bf1f6f3b42912e189c8933b1b9b3dfde.map',3,NULL,NULL,'2025-12-29 01:26:46','2026-01-02 16:35:00'),(67,404,'https://rexbuyshop.com/assets/backend/libs/firebase/firebase.js.map',4,NULL,NULL,'2025-12-29 01:26:47','2026-01-02 16:35:00'),(68,404,'https://rexbuyshop.com/assets/back-end/libs/quill-editor/quill.js.map',1,NULL,NULL,'2025-12-29 01:26:47','2025-12-29 01:26:47'),(69,404,'https://rexbuyshop.com/assets/backend/libs/bootstrap/bootstrap.min.css.map',3,NULL,NULL,'2025-12-29 01:26:47','2026-01-02 16:35:00'),(70,404,'https://rexbuyshop.com/assets/new/back-end/css/style_neha.css.map',3,NULL,NULL,'2025-12-29 01:26:47','2026-01-02 16:35:00'),(71,404,'https://rexbuyshop.com/assets/new/back-end/css/style.css.map',3,NULL,NULL,'2025-12-29 01:26:47','2026-01-02 16:35:00'),(72,404,'https://rexbuyshop.com/assets/back-end/libs/quill-editor/quill.snow.css.map',2,NULL,NULL,'2025-12-29 01:26:47','2025-12-29 01:27:00'),(73,404,'https://rexbuyshop.com/assets/front-end/vendor/bs-custom-file-input/dist/bs-custom-file-input.min.js.map',54,NULL,NULL,'2025-12-29 02:14:37','2026-01-04 20:30:06'),(74,404,'https://rexbuyshop.com/js/lightbox.min.map',54,NULL,NULL,'2025-12-29 02:14:37','2026-01-04 20:30:06'),(75,404,'https://rexbuyshop.com/assets/front-end/vendor/drift-zoom/dist/Drift.min.js.map',54,NULL,NULL,'2025-12-29 02:14:37','2026-01-04 20:30:06'),(76,404,'https://rexbuyshop.com/assets/front-end/vendor/bootstrap/dist/js/bootstrap.bundle.min.js.map',54,NULL,NULL,'2025-12-29 02:14:37','2026-01-04 20:30:06'),(77,404,'https://rexbuyshop.com/assets/back-end/js/toastr.js.map',86,NULL,NULL,'2025-12-29 02:14:37','2026-01-04 20:30:07'),(78,404,'https://rexbuyshop.com/assets/front-end/vendor/tiny-slider/dist/sourcemaps/tiny-slider.js.map',54,NULL,NULL,'2025-12-29 02:14:38','2026-01-04 20:30:07'),(79,404,'https://rexbuyshop.com/assets/front-end/vendor/tiny-slider/dist/sourcemaps/tiny-slider.css.map',55,NULL,NULL,'2025-12-29 02:14:38','2026-01-04 20:30:07'),(80,404,'https://rexbuyshop.com/assets/front-end/css/style.css.map',53,NULL,NULL,'2025-12-29 02:14:38','2026-01-04 20:30:07'),(81,404,'https://rexbuyshop.com/assets/front-end/vendor/firebase/firebase.js.map',52,NULL,NULL,'2025-12-29 02:14:38','2026-01-04 20:30:07'),(82,404,'https://rexbuyshop.com/assets/front-end/css/theme.min.css.map',54,NULL,NULL,'2025-12-29 02:14:38','2026-01-04 20:30:07'),(83,404,'https://rexbuyshop.com/wp-admin/setup-config.php',2,NULL,NULL,'2025-12-29 05:10:46','2026-01-04 09:24:37'),(84,404,'https://rexbuyshop.com/wp-admin/install.php',2,NULL,NULL,'2025-12-29 05:10:47','2026-01-04 09:24:38'),(85,404,'https://rexbuyshop.com/wordpress/wp-admin/setup-config.php',2,NULL,NULL,'2025-12-29 05:10:48','2026-01-04 09:24:38'),(86,404,'https://rexbuyshop.com/wordpress/wp-admin/install.php',2,NULL,NULL,'2025-12-29 05:10:49','2026-01-04 09:24:38'),(87,404,'https://rexbuyshop.com/wp/wp-admin/setup-config.php',2,NULL,NULL,'2025-12-29 05:10:51','2026-01-04 09:24:39'),(88,404,'https://rexbuyshop.com/wp/wp-admin/install.php',2,NULL,NULL,'2025-12-29 05:10:53','2026-01-04 09:24:39'),(89,404,'https://rexbuyshop.com/new/wp-admin/setup-config.php',2,NULL,NULL,'2025-12-29 05:10:53','2026-01-04 09:24:39'),(90,404,'https://rexbuyshop.com/new/wp-admin/install.php',2,NULL,NULL,'2025-12-29 05:11:04','2026-01-04 09:24:40'),(91,404,'https://rexbuyshop.com/old/wp-admin/setup-config.php',2,NULL,NULL,'2025-12-29 05:11:24','2026-01-04 09:24:40'),(92,404,'https://rexbuyshop.com/old/wp-admin/install.php',2,NULL,NULL,'2025-12-29 05:11:25','2026-01-04 09:24:40'),(93,404,'https://rexbuyshop.com/blog/wp-admin/setup-config.php',2,NULL,NULL,'2025-12-29 05:11:25','2026-01-04 09:24:41'),(94,404,'https://rexbuyshop.com/blog/wp-admin/install.php',2,NULL,NULL,'2025-12-29 05:11:25','2026-01-04 09:24:41'),(95,404,'https://rexbuyshop.com/test/wp-admin/setup-config.php',2,NULL,NULL,'2025-12-29 05:11:26','2026-01-04 09:24:41'),(96,404,'https://rexbuyshop.com/test/wp-admin/install.php',2,NULL,NULL,'2025-12-29 05:11:26','2026-01-04 09:24:41'),(97,404,'https://rexbuyshop.com/shop/wp-admin/setup-config.php',2,NULL,NULL,'2025-12-29 05:11:28','2026-01-04 09:24:42'),(98,404,'https://rexbuyshop.com/shop/wp-admin/install.php',2,NULL,NULL,'2025-12-29 05:11:28','2026-01-04 09:24:43'),(99,404,'https://www.rexbuyshop.com/sendgrid.env',1,NULL,NULL,'2025-12-29 08:41:48','2025-12-29 08:41:48'),(100,404,'https://rexbuyshop.com/.well-known/traffic-advice',2,NULL,NULL,'2025-12-29 11:22:50','2026-01-03 22:16:44'),(101,404,'https://rexbuyshop.com/sendgrid.env',1,NULL,NULL,'2025-12-29 17:26:33','2025-12-29 17:26:33'),(102,404,'https://www.rexbuyshop.com/.well-known/traffic-advice',4,NULL,NULL,'2025-12-29 19:55:06','2026-01-02 13:16:34'),(103,404,'https://www.rexbuyshop.com/assets/front-end/vendor/drift-zoom/dist/Drift.min.js.map',4,NULL,NULL,'2025-12-29 19:57:44','2025-12-29 21:37:07'),(104,404,'https://www.rexbuyshop.com/assets/front-end/css/theme.min.css.map',5,NULL,NULL,'2025-12-29 19:57:44','2025-12-29 21:37:07'),(105,404,'https://www.rexbuyshop.com/assets/front-end/vendor/tiny-slider/dist/sourcemaps/tiny-slider.js.map',4,NULL,NULL,'2025-12-29 19:57:44','2025-12-29 21:37:07'),(106,404,'https://www.rexbuyshop.com/assets/front-end/vendor/bootstrap/dist/js/bootstrap.bundle.min.js.map',4,NULL,NULL,'2025-12-29 19:57:44','2025-12-29 21:37:07'),(107,404,'https://www.rexbuyshop.com/assets/front-end/vendor/bs-custom-file-input/dist/bs-custom-file-input.min.js.map',4,NULL,NULL,'2025-12-29 19:57:44','2025-12-29 21:37:07'),(108,404,'https://www.rexbuyshop.com/assets/front-end/css/style.css.map',5,NULL,NULL,'2025-12-29 19:57:44','2025-12-29 21:37:07'),(109,404,'https://www.rexbuyshop.com/assets/front-end/vendor/tiny-slider/dist/sourcemaps/tiny-slider.css.map',5,NULL,NULL,'2025-12-29 19:57:44','2025-12-29 21:37:07'),(110,404,'https://www.rexbuyshop.com/js/lightbox.min.map',4,NULL,NULL,'2025-12-29 19:57:44','2025-12-29 21:37:07'),(111,404,'https://www.rexbuyshop.com/assets/back-end/js/toastr.js.map',4,NULL,NULL,'2025-12-29 19:57:44','2025-12-29 21:37:07'),(112,404,'https://www.rexbuyshop.com/assets/front-end/vendor/firebase/firebase.js.map',4,NULL,NULL,'2025-12-29 19:58:23','2025-12-29 21:37:07'),(113,404,'https://rexbuyshop.com/cmd_sco',1,NULL,NULL,'2025-12-29 22:29:48','2025-12-29 22:29:48'),(114,404,'https://rexbuyshop.com/customer/auth/cmd_sco',1,NULL,NULL,'2025-12-29 22:41:40','2025-12-29 22:41:40'),(115,404,'https://www.rexbuyshop.com/customer/auth/code/captcha',1,NULL,NULL,'2025-12-29 23:01:56','2025-12-29 23:01:56'),(116,404,'https://rexbuyshop.com//wp-includes/ID3/license.txt',1,NULL,NULL,'2025-12-29 23:31:32','2025-12-29 23:31:32'),(117,404,'https://rexbuyshop.com//feed',1,NULL,NULL,'2025-12-29 23:31:39','2025-12-29 23:31:39'),(118,404,'https://rexbuyshop.com//xmlrpc.php',1,NULL,NULL,'2025-12-29 23:31:45','2025-12-29 23:31:45'),(119,404,'https://rexbuyshop.com//blog/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:31:50','2025-12-29 23:31:50'),(120,404,'https://rexbuyshop.com//web/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:31:55','2025-12-29 23:31:55'),(121,404,'https://rexbuyshop.com//wordpress/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:32:00','2025-12-29 23:32:00'),(122,404,'https://rexbuyshop.com//wp/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:32:05','2025-12-29 23:32:05'),(123,404,'https://rexbuyshop.com//2020/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:32:09','2025-12-29 23:32:09'),(124,404,'https://rexbuyshop.com//2019/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:32:15','2025-12-29 23:32:15'),(125,404,'https://rexbuyshop.com//2021/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:32:20','2025-12-29 23:32:20'),(126,404,'https://rexbuyshop.com//shop/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:32:24','2025-12-29 23:32:24'),(127,404,'https://rexbuyshop.com//wp1/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:32:30','2025-12-29 23:32:30'),(128,404,'https://rexbuyshop.com//test/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:32:35','2025-12-29 23:32:35'),(129,404,'https://rexbuyshop.com//site/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:32:39','2025-12-29 23:32:39'),(130,404,'https://rexbuyshop.com//cms/wp-includes/wlwmanifest.xml',1,NULL,NULL,'2025-12-29 23:32:45','2025-12-29 23:32:45'),(131,404,'https://rexbuyshop.com/apps',1,NULL,NULL,'2025-12-30 05:05:37','2025-12-30 05:05:37'),(132,404,'https://rexbuyshop.com/api/action',1,NULL,NULL,'2025-12-30 05:05:37','2025-12-30 05:05:37'),(133,404,'https://rexbuyshop.com/api/actions',1,NULL,NULL,'2025-12-30 05:05:38','2025-12-30 05:05:38'),(134,404,'https://rexbuyshop.com/_next/data',1,NULL,NULL,'2025-12-30 05:05:38','2025-12-30 05:05:38'),(135,404,'https://rexbuyshop.com/wp-login.php',1,NULL,NULL,'2025-12-30 15:21:55','2025-12-30 15:21:55'),(136,404,'https://rexbuyshop.com/login/superadmin',3,NULL,NULL,'2025-12-30 17:51:47','2025-12-30 17:51:56'),(137,404,'https://rexbuyshop.com/login/demo',1,NULL,NULL,'2025-12-30 21:36:27','2025-12-30 21:36:27'),(138,404,'https://rexbuyshop.com/admin/dashboard',4,NULL,NULL,'2025-12-30 23:20:39','2026-01-02 16:26:53'),(139,404,'https://rexbuyshop.com/xmlrpc.php',4,NULL,NULL,'2025-12-31 01:07:04','2026-01-03 04:33:44'),(140,404,'https://rexbuyshop.com/admin/undefined',3,NULL,NULL,'2025-12-31 03:27:42','2026-01-04 12:54:31'),(141,404,'https://rexbuyshop.com/admin/third-party/payment-method',3,NULL,NULL,'2025-12-31 03:34:53','2025-12-31 03:34:54'),(142,404,'https://rexbuyshop.com/admin/third-party/offline-payment-method/index',3,NULL,NULL,'2025-12-31 03:35:30','2025-12-31 03:35:30'),(143,404,'https://www.rexbuyshop.com/js/twint_ch.js',1,NULL,NULL,'2025-12-31 14:57:19','2025-12-31 14:57:19'),(144,404,'https://www.rexbuyshop.com/js/lkk_ch.js',1,NULL,NULL,'2025-12-31 14:57:53','2025-12-31 14:57:53'),(145,404,'https://www.rexbuyshop.com/css/support_parent.css',1,NULL,NULL,'2025-12-31 14:58:14','2025-12-31 14:58:14'),(146,404,'https://rexbuyshop.com/js/lkk_ch.js',1,NULL,NULL,'2025-12-31 14:59:47','2025-12-31 14:59:47'),(147,404,'https://rexbuyshop.com/css/support_parent.css',1,NULL,NULL,'2025-12-31 15:00:02','2025-12-31 15:00:02'),(148,404,'https://rexbuyshop.com/admin',272,NULL,NULL,'2026-01-01 03:51:41','2026-01-05 00:45:14'),(149,404,'https://rexbuyshop.com/api',269,NULL,NULL,'2026-01-01 03:51:41','2026-01-05 00:45:15'),(150,404,'https://rexbuyshop.com/admin/dashboard/real-time-activities',19,NULL,NULL,'2026-01-01 14:34:52','2026-01-04 20:23:05'),(151,404,'https://rexbuyshop.com/admin/third-party/fraud-checker/view',1,NULL,NULL,'2026-01-01 14:35:08','2026-01-01 14:35:08'),(152,404,'https://rexbuyshop.com/favicon.png',1,NULL,NULL,'2026-01-01 23:05:23','2026-01-01 23:05:23'),(153,404,'https://rexbuyshop.com/admin/login',1,NULL,NULL,'2026-01-02 13:01:08','2026-01-02 13:01:08'),(154,404,'https://rexbuyshop.com/admin/attribute/view',1,NULL,NULL,'2026-01-02 13:11:37','2026-01-02 13:11:37'),(155,404,'https://rexbuyshop.com/admin/products/stock-limit-status/in_house',1,NULL,NULL,'2026-01-02 15:58:20','2026-01-02 15:58:20'),(156,404,'https://rexbuyshop.com/admin/business-settings/web-config',1,NULL,NULL,'2026-01-02 15:58:40','2026-01-02 15:58:40'),(157,404,'https://rexbuyshop.com/orders/pathao/webhook',5,NULL,NULL,'2026-01-02 16:06:44','2026-01-04 15:26:14'),(158,404,'https://rexbuyshop.com/orders/pathao',1,NULL,NULL,'2026-01-02 16:06:57','2026-01-02 16:06:57'),(159,404,'https://rexbuyshop.com/orders/steadfast/webhook',2,NULL,NULL,'2026-01-02 16:08:32','2026-01-04 15:26:32'),(160,404,'https://rexbuyshop.com/orders/redx/webhook',1,NULL,NULL,'2026-01-02 16:08:42','2026-01-02 16:08:42'),(161,404,'https://rexbuyshop.com/admin/system-setup/environment-setup',2,NULL,NULL,'2026-01-02 16:29:32','2026-01-03 22:19:28'),(162,404,'https://rexbuyshop.com/admin/system-setup/app-settings',1,NULL,NULL,'2026-01-02 16:29:55','2026-01-02 16:29:55'),(163,404,'https://rexbuyshop.com/admin/system-setup/software-update',1,NULL,NULL,'2026-01-02 16:30:03','2026-01-02 16:30:03'),(164,404,'https://rexbuyshop.com/assets/back-end/fonts/fontawesome-webfont.woff?v=4.7.0',2,NULL,NULL,'2026-01-02 16:30:16','2026-01-02 16:30:47'),(165,404,'https://rexbuyshop.com/admin/system-setup/login-settings/customer-login-setup',1,NULL,NULL,'2026-01-02 16:30:26','2026-01-02 16:30:26'),(166,404,'https://rexbuyshop.com/assets/front-end/fonts/fontawesome-webfont.woff?v=4.7.0',1,NULL,NULL,'2026-01-02 16:49:44','2026-01-02 16:49:44'),(167,404,'https://rexbuyshop.com/assets/front-end/img/empty-msg.png',3,NULL,NULL,'2026-01-02 16:49:51','2026-01-02 17:07:18'),(168,404,'https://rexbuyshop.com/assets/back-end/img/pathao.svg',10,NULL,NULL,'2026-01-02 16:50:16','2026-01-04 20:28:14'),(169,404,'https://rexbuyshop.com/assets/back-end/img/redx.svg',10,NULL,NULL,'2026-01-02 16:50:16','2026-01-04 20:28:14'),(170,404,'https://rexbuyshop.com/assets/back-end/img/steadfast.svg',10,NULL,NULL,'2026-01-02 16:50:16','2026-01-04 20:28:14'),(171,404,'https://rexbuyshop.com/admin/third-party/analytics-index',1,NULL,NULL,'2026-01-02 16:59:52','2026-01-02 16:59:52'),(172,404,'https://rexbuyshop.com/admin/system-setup/language',1,NULL,NULL,'2026-01-02 17:01:15','2026-01-02 17:01:15'),(173,404,'https://rexbuyshop.com/login/super-admin',2,NULL,NULL,'2026-01-02 19:15:22','2026-01-04 20:31:03'),(174,404,'https://rexbuyshop.com/wordpress',2,NULL,NULL,'2026-01-03 02:11:58','2026-01-03 15:35:22'),(175,404,'https://rexbuyshop.com/admin/orders/generate-invoice/100010',1,NULL,NULL,'2026-01-04 03:56:59','2026-01-04 03:56:59'),(176,404,'https://rexbuyshop.com/admin/orders/export-excel/pending',1,NULL,NULL,'2026-01-04 03:57:20','2026-01-04 03:57:20'),(177,404,'https://rexbuyshop.com/login/vandor',1,NULL,NULL,'2026-01-04 13:07:20','2026-01-04 13:07:20'),(178,404,'https://rexbuyshop.com/login/endor',1,NULL,NULL,'2026-01-04 13:08:02','2026-01-04 13:08:02'),(179,404,'https://rexbuyshop.com/assets/back-end/img/icons/product-upload-icon.svg-dummy',1,NULL,NULL,'2026-01-04 13:13:55','2026-01-04 13:13:55'),(180,404,'https://rexbuyshop.com/delivery-man/products/add',1,NULL,NULL,'2026-01-04 13:34:58','2026-01-04 13:34:58'),(181,404,'https://rexbuyshop.com/delivery-man',1,NULL,NULL,'2026-01-04 13:35:02','2026-01-04 13:35:02'),(182,404,'https://rexbuyshop.com/delivery-man/auth/login',1,NULL,NULL,'2026-01-04 13:36:06','2026-01-04 13:36:06'),(183,404,'https://rexbuyshop.com/deliveryman/auth/login',1,NULL,NULL,'2026-01-04 13:36:14','2026-01-04 13:36:14'),(184,404,'https://rexbuyshop.com/admin/vendors/list',1,NULL,NULL,'2026-01-04 13:36:21','2026-01-04 13:36:21'),(185,404,'https://rexbuyshop.com/deliveryman/auth/sign-up',1,NULL,NULL,'2026-01-04 13:39:18','2026-01-04 13:39:18'),(186,404,'https://rexbuyshop.com/delivery-man/auth/sign-up',1,NULL,NULL,'2026-01-04 13:39:27','2026-01-04 13:39:27'),(187,404,'https://rexbuyshop.com/deliveryman//auth/login',1,NULL,NULL,'2026-01-04 13:39:49','2026-01-04 13:39:49'),(188,404,'https://rexbuyshop.com/asset',1,NULL,NULL,'2026-01-04 17:22:52','2026-01-04 17:22:52');
/*!40000 ALTER TABLE `error_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_deals`
--

DROP TABLE IF EXISTS `feature_deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `feature_deals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_deals`
--

LOCK TABLES `feature_deals` WRITE;
/*!40000 ALTER TABLE `feature_deals` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature_deals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_deal_products`
--

DROP TABLE IF EXISTS `flash_deal_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_deal_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `flash_deal_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_deal_products`
--

LOCK TABLES `flash_deal_products` WRITE;
/*!40000 ALTER TABLE `flash_deal_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `flash_deal_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flash_deals`
--

DROP TABLE IF EXISTS `flash_deals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flash_deals` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `background_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_color` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `banner` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `deal_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flash_deals`
--

LOCK TABLES `flash_deals` WRITE;
/*!40000 ALTER TABLE `flash_deals` DISABLE KEYS */;
INSERT INTO `flash_deals` VALUES (1,'Black Friday','2026-01-02','2026-01-05',0,0,NULL,NULL,'2026-01-02-695782412f688.webp','black-friday','2026-01-02 14:30:57','2026-01-04 12:46:04',NULL,'flash_deal'),(2,'Happy New Year 2026','2026-01-04','2026-01-06',0,0,NULL,NULL,'2026-01-04-695a0c17a42ee.webp','happy-new-year-2026','2026-01-04 12:43:35','2026-01-04 12:48:09',NULL,'flash_deal'),(3,'Happy New Year 2026','2026-01-04','2026-01-05',0,0,NULL,NULL,'def.webp','happy-new-year-2026','2026-01-04 12:49:44','2026-01-04 18:12:24',NULL,'feature_deal');
/*!40000 ALTER TABLE `flash_deals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guest_users`
--

DROP TABLE IF EXISTS `guest_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `guest_users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1460 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guest_users`
--

LOCK TABLES `guest_users` WRITE;
/*!40000 ALTER TABLE `guest_users` DISABLE KEYS */;
INSERT INTO `guest_users` VALUES (5,'142.44.228.242',NULL,'2025-12-28 00:11:10','2025-12-28 00:11:10'),(6,'54.39.6.8',NULL,'2025-12-28 00:24:30','2025-12-28 00:24:30'),(7,'54.39.0.222',NULL,'2025-12-28 00:46:54','2025-12-28 00:46:54'),(8,'51.222.168.195',NULL,'2025-12-28 01:13:52','2025-12-28 01:13:52'),(9,'152.53.210.225',NULL,'2025-12-28 01:43:02','2025-12-28 01:43:02'),(10,'51.161.37.118',NULL,'2025-12-28 02:05:39','2025-12-28 02:05:39'),(11,'147.135.253.47',NULL,'2025-12-28 02:20:39','2025-12-28 02:20:39'),(12,'43.135.148.92',NULL,'2025-12-28 02:32:01','2025-12-28 02:32:01'),(13,'148.113.128.163',NULL,'2025-12-28 02:32:30','2025-12-28 02:32:30'),(14,'113.31.186.146',NULL,'2025-12-28 02:47:00','2025-12-28 02:47:00'),(15,'113.31.186.146',NULL,'2025-12-28 02:47:40','2025-12-28 02:47:40'),(16,'183.134.59.133',NULL,'2025-12-28 02:49:43','2025-12-28 02:49:43'),(17,'113.31.186.146',NULL,'2025-12-28 02:49:56','2025-12-28 02:49:56'),(18,'113.31.186.146',NULL,'2025-12-28 02:50:25','2025-12-28 02:50:25'),(19,'183.134.59.133',NULL,'2025-12-28 02:51:30','2025-12-28 02:51:30'),(20,'43.153.49.151',NULL,'2025-12-28 03:04:30','2025-12-28 03:04:30'),(21,'54.39.210.136',NULL,'2025-12-28 03:16:49','2025-12-28 03:16:49'),(22,'192.71.142.176',NULL,'2025-12-28 03:24:39','2025-12-28 03:24:39'),(23,'192.71.142.134',NULL,'2025-12-28 03:24:40','2025-12-28 03:24:40'),(24,'192.71.126.207',NULL,'2025-12-28 03:24:41','2025-12-28 03:24:41'),(25,'192.71.142.146',NULL,'2025-12-28 03:24:42','2025-12-28 03:24:42'),(26,'147.135.252.138',NULL,'2025-12-28 03:37:56','2025-12-28 03:37:56'),(27,'147.135.252.138',NULL,'2025-12-28 03:37:58','2025-12-28 03:37:58'),(28,'147.135.252.138',NULL,'2025-12-28 03:38:01','2025-12-28 03:38:01'),(29,'147.135.252.138',NULL,'2025-12-28 03:38:03','2025-12-28 03:38:03'),(30,'147.135.252.138',NULL,'2025-12-28 03:38:06','2025-12-28 03:38:06'),(31,'147.135.252.138',NULL,'2025-12-28 03:38:08','2025-12-28 03:38:08'),(32,'147.135.252.138',NULL,'2025-12-28 03:38:10','2025-12-28 03:38:10'),(33,'147.135.252.138',NULL,'2025-12-28 03:38:12','2025-12-28 03:38:12'),(34,'147.135.252.138',NULL,'2025-12-28 03:38:19','2025-12-28 03:38:19'),(35,'147.135.252.138',NULL,'2025-12-28 03:38:21','2025-12-28 03:38:21'),(36,'147.135.252.138',NULL,'2025-12-28 03:38:23','2025-12-28 03:38:23'),(37,'147.135.252.138',NULL,'2025-12-28 03:38:25','2025-12-28 03:38:25'),(38,'147.135.252.138',NULL,'2025-12-28 03:38:27','2025-12-28 03:38:27'),(39,'147.135.252.138',NULL,'2025-12-28 03:38:29','2025-12-28 03:38:29'),(40,'147.135.252.138',NULL,'2025-12-28 03:38:31','2025-12-28 03:38:31'),(41,'147.135.252.138',NULL,'2025-12-28 03:38:33','2025-12-28 03:38:33'),(42,'147.135.252.138',NULL,'2025-12-28 03:38:35','2025-12-28 03:38:35'),(43,'66.249.72.165',NULL,'2025-12-28 03:41:01','2025-12-28 03:41:01'),(44,'43.157.179.227',NULL,'2025-12-28 04:02:13','2025-12-28 04:02:13'),(45,'142.44.233.169',NULL,'2025-12-28 04:29:01','2025-12-28 04:29:01'),(46,'13.56.238.176',NULL,'2025-12-28 05:02:06','2025-12-28 05:02:06'),(47,'51.222.95.248',NULL,'2025-12-28 05:05:52','2025-12-28 05:05:52'),(48,'72.13.46.6',NULL,'2025-12-28 05:12:11','2025-12-28 05:12:11'),(49,'91.98.178.80',NULL,'2025-12-28 05:19:27','2025-12-28 05:19:27'),(50,'51.161.65.77',NULL,'2025-12-28 05:26:45','2025-12-28 05:26:45'),(51,'182.77.74.209',NULL,'2025-12-28 05:42:48','2025-12-28 05:42:48'),(52,'142.44.220.226',NULL,'2025-12-28 05:47:44','2025-12-28 05:47:44'),(53,'51.222.95.213',NULL,'2025-12-28 06:07:52','2025-12-28 06:07:52'),(54,'15.235.98.48',NULL,'2025-12-28 06:21:04','2025-12-28 06:21:04'),(55,'51.161.37.28',NULL,'2025-12-28 06:28:47','2025-12-28 06:28:47'),(56,'54.39.6.195',NULL,'2025-12-28 06:32:46','2025-12-28 06:32:46'),(57,'43.155.157.239',NULL,'2025-12-28 07:03:21','2025-12-28 07:03:21'),(58,'93.158.90.70',NULL,'2025-12-28 07:13:44','2025-12-28 07:13:44'),(59,'93.158.90.74',NULL,'2025-12-28 07:13:45','2025-12-28 07:13:45'),(60,'93.158.90.69',NULL,'2025-12-28 07:13:46','2025-12-28 07:13:46'),(61,'93.158.90.67',NULL,'2025-12-28 07:13:47','2025-12-28 07:13:47'),(62,'51.161.37.216',NULL,'2025-12-28 07:20:16','2025-12-28 07:20:16'),(63,'34.141.130.179',NULL,'2025-12-28 07:23:36','2025-12-28 07:23:36'),(64,'101.33.81.73',NULL,'2025-12-28 08:04:00','2025-12-28 08:04:00'),(65,'139.59.88.26',NULL,'2025-12-28 09:12:58','2025-12-28 09:12:58'),(66,'148.113.130.35',NULL,'2025-12-28 09:23:18','2025-12-28 09:23:18'),(67,'49.51.38.193',NULL,'2025-12-28 11:03:08','2025-12-28 11:03:08'),(68,'36.111.67.189',NULL,'2025-12-28 11:18:07','2025-12-28 11:18:07'),(69,'43.153.15.51',NULL,'2025-12-28 12:31:21','2025-12-28 12:31:21'),(70,'165.232.64.121',NULL,'2025-12-28 13:22:43','2025-12-28 13:22:43'),(71,'62.210.198.181',NULL,'2025-12-28 13:43:11','2025-12-28 13:43:11'),(72,'103.99.176.74',NULL,'2025-12-28 15:41:46','2025-12-28 15:41:46'),(73,'37.111.212.13',NULL,'2025-12-28 15:58:17','2025-12-28 15:58:17'),(74,'13.76.223.54',NULL,'2025-12-28 15:59:45','2025-12-28 15:59:45'),(75,'135.181.116.37',NULL,'2025-12-28 16:33:33','2025-12-28 16:33:33'),(76,'14.232.208.159',NULL,'2025-12-28 16:34:08','2025-12-28 16:34:08'),(77,'23.27.145.252',NULL,'2025-12-28 16:34:51','2025-12-28 16:34:51'),(78,'180.110.203.108',NULL,'2025-12-28 17:31:22','2025-12-28 17:31:22'),(79,'103.96.37.225',NULL,'2025-12-28 17:32:16','2025-12-28 17:32:16'),(80,'103.96.37.225',NULL,'2025-12-28 17:35:04','2025-12-28 17:35:04'),(81,'43.131.26.226',NULL,'2025-12-28 18:04:25','2025-12-28 18:04:25'),(82,'54.160.193.131',NULL,'2025-12-28 18:14:22','2025-12-28 18:14:22'),(83,'54.160.193.131',NULL,'2025-12-28 18:14:22','2025-12-28 18:14:22'),(84,'170.106.165.76',NULL,'2025-12-28 18:36:34','2025-12-28 18:36:34'),(85,'43.155.140.157',NULL,'2025-12-28 19:19:58','2025-12-28 19:19:58'),(86,'43.133.187.11',NULL,'2025-12-28 19:30:33','2025-12-28 19:30:33'),(87,'43.157.175.122',NULL,'2025-12-28 19:40:37','2025-12-28 19:40:37'),(88,'43.157.53.115',NULL,'2025-12-28 19:46:31','2025-12-28 19:46:31'),(89,'17.241.227.182',NULL,'2025-12-28 19:46:55','2025-12-28 19:46:55'),(90,'17.22.245.93',NULL,'2025-12-28 19:48:28','2025-12-28 19:48:28'),(91,'43.130.57.46',NULL,'2025-12-28 20:20:12','2025-12-28 20:20:12'),(92,'59.14.17.48',NULL,'2025-12-28 20:35:02','2025-12-28 20:35:02'),(93,'59.14.17.48',NULL,'2025-12-28 20:35:05','2025-12-28 20:35:05'),(94,'59.14.17.48',NULL,'2025-12-28 20:35:09','2025-12-28 20:35:09'),(95,'103.99.176.75',NULL,'2025-12-28 20:38:18','2025-12-28 20:38:18'),(96,'17.241.219.28',NULL,'2025-12-28 20:40:13','2025-12-28 20:40:13'),(97,'43.166.131.228',NULL,'2025-12-28 20:40:50','2025-12-28 20:40:50'),(98,'43.153.35.128',NULL,'2025-12-28 20:50:43','2025-12-28 20:50:43'),(99,'51.158.191.233',NULL,'2025-12-28 20:53:51','2025-12-28 20:53:51'),(100,'66.249.81.167',NULL,'2025-12-28 20:53:54','2025-12-28 20:53:54'),(101,'66.249.81.165',NULL,'2025-12-28 20:53:55','2025-12-28 20:53:55'),(102,'66.102.9.4',NULL,'2025-12-28 20:53:55','2025-12-28 20:53:55'),(103,'49.0.237.195',NULL,'2025-12-28 20:56:45','2025-12-28 20:56:45'),(104,'49.0.237.214',NULL,'2025-12-28 20:56:46','2025-12-28 20:56:46'),(105,'66.249.81.165',NULL,'2025-12-28 20:57:05','2025-12-28 20:57:05'),(106,'66.102.9.5',NULL,'2025-12-28 20:57:06','2025-12-28 20:57:06'),(107,'66.102.9.4',NULL,'2025-12-28 20:57:06','2025-12-28 20:57:06'),(108,'66.249.81.165',NULL,'2025-12-28 21:00:00','2025-12-28 21:00:00'),(109,'74.125.210.106',NULL,'2025-12-28 21:00:01','2025-12-28 21:00:01'),(110,'66.102.9.5',NULL,'2025-12-28 21:00:01','2025-12-28 21:00:01'),(111,'103.99.176.75',NULL,'2025-12-28 21:01:39','2025-12-28 21:01:39'),(112,'103.99.176.75',NULL,'2025-12-28 21:01:42','2025-12-28 21:01:42'),(113,'103.99.176.75',NULL,'2025-12-28 21:01:43','2025-12-28 21:01:43'),(114,'49.51.183.84',NULL,'2025-12-28 21:03:31','2025-12-28 21:03:31'),(115,'17.241.219.123',NULL,'2025-12-28 21:07:41','2025-12-28 21:07:41'),(116,'17.246.15.131',NULL,'2025-12-28 21:25:53','2025-12-28 21:25:53'),(117,'103.99.176.74',NULL,'2025-12-28 21:34:11','2025-12-28 21:34:11'),(118,'103.99.176.74',NULL,'2025-12-28 21:45:31','2025-12-28 21:45:31'),(119,'136.37.3.211',NULL,'2025-12-28 22:37:46','2025-12-28 22:37:46'),(120,'37.125.16.38',NULL,'2025-12-28 22:54:11','2025-12-28 22:54:11'),(121,'74.125.210.96',NULL,'2025-12-28 22:54:13','2025-12-28 22:54:13'),(122,'74.125.210.96',NULL,'2025-12-28 22:54:13','2025-12-28 22:54:13'),(123,'66.249.93.130',NULL,'2025-12-28 22:55:12','2025-12-28 22:55:12'),(124,'74.125.210.96',NULL,'2025-12-28 22:55:13','2025-12-28 22:55:13'),(125,'74.125.213.32',NULL,'2025-12-28 22:55:13','2025-12-28 22:55:13'),(126,'17.246.19.37',NULL,'2025-12-28 23:03:30','2025-12-28 23:03:30'),(127,'17.22.253.170',NULL,'2025-12-28 23:20:47','2025-12-28 23:20:47'),(128,'66.249.93.129',NULL,'2025-12-28 23:20:53','2025-12-28 23:20:53'),(129,'74.125.213.34',NULL,'2025-12-28 23:20:54','2025-12-28 23:20:54'),(130,'66.249.93.130',NULL,'2025-12-28 23:20:54','2025-12-28 23:20:54'),(131,'175.6.217.4',NULL,'2025-12-28 23:50:37','2025-12-28 23:50:37'),(132,'142.44.228.181',NULL,'2025-12-28 23:58:14','2025-12-28 23:58:14'),(133,'103.99.176.74',NULL,'2025-12-29 00:49:23','2025-12-29 00:49:23'),(134,'54.39.203.140',NULL,'2025-12-29 00:51:56','2025-12-29 00:51:56'),(135,'167.114.139.120',NULL,'2025-12-29 00:55:53','2025-12-29 00:55:53'),(136,'103.99.176.74',NULL,'2025-12-29 00:56:57','2025-12-29 00:56:57'),(137,'128.192.12.109',NULL,'2025-12-29 00:59:59','2025-12-29 00:59:59'),(138,'205.169.39.7',NULL,'2025-12-29 01:00:21','2025-12-29 01:00:21'),(139,'128.192.12.115',NULL,'2025-12-29 01:00:33','2025-12-29 01:00:33'),(140,'51.161.65.89',NULL,'2025-12-29 01:04:56','2025-12-29 01:04:56'),(141,'51.161.37.112',NULL,'2025-12-29 01:06:29','2025-12-29 01:06:29'),(142,'51.222.95.51',NULL,'2025-12-29 01:17:49','2025-12-29 01:17:49'),(143,'43.130.228.73',NULL,'2025-12-29 01:18:50','2025-12-29 01:18:50'),(144,'142.44.220.71',NULL,'2025-12-29 01:21:04','2025-12-29 01:21:04'),(145,'54.39.210.209',NULL,'2025-12-29 01:30:37','2025-12-29 01:30:37'),(146,'43.157.168.43',NULL,'2025-12-29 01:31:23','2025-12-29 01:31:23'),(147,'15.235.98.108',NULL,'2025-12-29 01:43:16','2025-12-29 01:43:16'),(148,'43.157.53.115',NULL,'2025-12-29 01:51:55','2025-12-29 01:51:55'),(149,'34.141.215.20',NULL,'2025-12-29 01:53:55','2025-12-29 01:53:55'),(150,'51.222.95.235',NULL,'2025-12-29 01:56:11','2025-12-29 01:56:11'),(151,'17.22.253.60',NULL,'2025-12-29 01:56:37','2025-12-29 01:56:37'),(152,'54.39.136.185',NULL,'2025-12-29 02:08:55','2025-12-29 02:08:55'),(153,'37.125.16.38',NULL,'2025-12-29 02:09:31','2025-12-29 02:09:31'),(154,'74.125.213.32',NULL,'2025-12-29 02:09:33','2025-12-29 02:09:33'),(155,'74.125.210.96',NULL,'2025-12-29 02:09:33','2025-12-29 02:09:33'),(156,'113.31.186.146',NULL,'2025-12-29 02:11:24','2025-12-29 02:11:24'),(157,'142.44.228.230',NULL,'2025-12-29 02:11:25','2025-12-29 02:11:25'),(158,'113.31.186.146',NULL,'2025-12-29 02:12:11','2025-12-29 02:12:11'),(159,'113.31.186.146',NULL,'2025-12-29 02:12:25','2025-12-29 02:12:25'),(160,'183.134.59.133',NULL,'2025-12-29 02:18:03','2025-12-29 02:18:03'),(161,'51.222.95.189',NULL,'2025-12-29 02:21:11','2025-12-29 02:21:11'),(162,'15.235.27.78',NULL,'2025-12-29 02:25:55','2025-12-29 02:25:55'),(163,'37.125.16.38',NULL,'2025-12-29 02:29:26','2025-12-29 02:29:26'),(164,'37.125.16.38',NULL,'2025-12-29 02:29:27','2025-12-29 02:29:27'),(165,'37.125.16.38',NULL,'2025-12-29 02:29:28','2025-12-29 02:29:28'),(166,'43.157.142.101',NULL,'2025-12-29 02:30:59','2025-12-29 02:30:59'),(167,'54.39.0.30',NULL,'2025-12-29 02:33:58','2025-12-29 02:33:58'),(168,'43.157.179.227',NULL,'2025-12-29 02:35:13','2025-12-29 02:35:13'),(169,'142.44.228.183',NULL,'2025-12-29 02:36:16','2025-12-29 02:36:16'),(170,'66.249.93.129',NULL,'2025-12-29 02:39:50','2025-12-29 02:39:50'),(171,'66.249.93.128',NULL,'2025-12-29 02:39:50','2025-12-29 02:39:50'),(172,'66.249.93.130',NULL,'2025-12-29 02:42:20','2025-12-29 02:42:20'),(173,'66.249.83.98',NULL,'2025-12-29 02:42:21','2025-12-29 02:42:21'),(174,'66.249.83.98',NULL,'2025-12-29 02:42:21','2025-12-29 02:42:21'),(175,'176.103.92.234',NULL,'2025-12-29 02:47:39','2025-12-29 02:47:39'),(176,'43.156.204.134',NULL,'2025-12-29 02:51:10','2025-12-29 02:51:10'),(177,'54.39.89.203',NULL,'2025-12-29 02:52:22','2025-12-29 02:52:22'),(178,'15.235.98.244',NULL,'2025-12-29 02:55:59','2025-12-29 02:55:59'),(179,'113.31.186.146',NULL,'2025-12-29 02:59:17','2025-12-29 02:59:17'),(180,'217.31.60.53',NULL,'2025-12-29 03:03:01','2025-12-29 03:03:01'),(181,'49.51.243.95',NULL,'2025-12-29 03:03:32','2025-12-29 03:03:32'),(182,'49.51.203.164',NULL,'2025-12-29 03:11:51','2025-12-29 03:11:51'),(183,'43.163.206.70',NULL,'2025-12-29 03:31:15','2025-12-29 03:31:15'),(184,'54.39.210.231',NULL,'2025-12-29 03:31:51','2025-12-29 03:31:51'),(185,'198.23.243.111',NULL,'2025-12-29 03:43:16','2025-12-29 03:43:16'),(186,'17.22.245.69',NULL,'2025-12-29 03:45:35','2025-12-29 03:45:35'),(187,'43.135.186.135',NULL,'2025-12-29 03:51:20','2025-12-29 03:51:20'),(188,'51.161.37.133',NULL,'2025-12-29 04:09:29','2025-12-29 04:09:29'),(189,'109.82.114.102',NULL,'2025-12-29 04:25:56','2025-12-29 04:25:56'),(190,'66.249.93.128',NULL,'2025-12-29 04:25:58','2025-12-29 04:25:58'),(191,'66.249.83.97',NULL,'2025-12-29 04:25:59','2025-12-29 04:25:59'),(192,'74.125.210.108',NULL,'2025-12-29 04:25:59','2025-12-29 04:25:59'),(193,'66.249.93.130',NULL,'2025-12-29 04:27:39','2025-12-29 04:27:39'),(194,'66.249.83.96',NULL,'2025-12-29 04:27:40','2025-12-29 04:27:40'),(195,'74.125.210.107',NULL,'2025-12-29 04:27:40','2025-12-29 04:27:40'),(196,'66.249.93.130',NULL,'2025-12-29 04:28:00','2025-12-29 04:28:00'),(197,'66.249.83.96',NULL,'2025-12-29 04:28:01','2025-12-29 04:28:01'),(198,'74.125.210.107',NULL,'2025-12-29 04:28:01','2025-12-29 04:28:01'),(199,'109.82.114.102',NULL,'2025-12-29 04:30:21','2025-12-29 04:30:21'),(200,'109.82.114.102',NULL,'2025-12-29 04:30:22','2025-12-29 04:30:22'),(201,'109.82.114.102',NULL,'2025-12-29 04:30:24','2025-12-29 04:30:24'),(202,'109.82.114.102',NULL,'2025-12-29 04:31:06','2025-12-29 04:31:06'),(203,'217.61.18.206',NULL,'2025-12-29 04:31:26','2025-12-29 04:31:26'),(204,'31.6.11.7',NULL,'2025-12-29 05:10:42','2025-12-29 05:10:42'),(205,'17.246.15.47',NULL,'2025-12-29 05:17:18','2025-12-29 05:17:18'),(206,'17.22.237.50',NULL,'2025-12-29 05:25:24','2025-12-29 05:25:24'),(207,'17.22.245.158',NULL,'2025-12-29 05:34:26','2025-12-29 05:34:26'),(208,'17.241.219.73',NULL,'2025-12-29 05:46:08','2025-12-29 05:46:08'),(209,'176.17.29.214',NULL,'2025-12-29 05:49:22','2025-12-29 05:49:22'),(210,'101.91.148.219',NULL,'2025-12-29 05:51:14','2025-12-29 05:51:14'),(211,'17.246.15.140',NULL,'2025-12-29 05:56:19','2025-12-29 05:56:19'),(212,'17.241.227.157',NULL,'2025-12-29 06:30:25','2025-12-29 06:30:25'),(213,'49.51.132.100',NULL,'2025-12-29 07:04:26','2025-12-29 07:04:26'),(214,'17.241.219.217',NULL,'2025-12-29 07:23:08','2025-12-29 07:23:08'),(215,'43.133.253.253',NULL,'2025-12-29 07:42:57','2025-12-29 07:42:57'),(216,'170.106.35.137',NULL,'2025-12-29 08:04:25','2025-12-29 08:04:25'),(217,'185.181.247.197',NULL,'2025-12-29 08:13:01','2025-12-29 08:13:01'),(218,'104.197.69.115',NULL,'2025-12-29 08:47:47','2025-12-29 08:47:47'),(219,'205.169.39.210',NULL,'2025-12-29 08:47:51','2025-12-29 08:47:51'),(220,'205.169.39.210',NULL,'2025-12-29 08:47:59','2025-12-29 08:47:59'),(221,'34.123.170.104',NULL,'2025-12-29 08:48:31','2025-12-29 08:48:31'),(222,'43.133.220.37',NULL,'2025-12-29 08:55:37','2025-12-29 08:55:37'),(223,'43.166.247.155',NULL,'2025-12-29 09:09:22','2025-12-29 09:09:22'),(224,'205.169.39.21',NULL,'2025-12-29 09:10:17','2025-12-29 09:10:17'),(225,'170.106.84.136',NULL,'2025-12-29 09:18:55','2025-12-29 09:18:55'),(226,'43.166.237.57',NULL,'2025-12-29 09:39:41','2025-12-29 09:39:41'),(227,'149.88.26.225',NULL,'2025-12-29 09:45:03','2025-12-29 09:45:03'),(228,'106.161.65.206',NULL,'2025-12-29 09:45:05','2025-12-29 09:45:05'),(229,'149.50.212.203',NULL,'2025-12-29 09:49:53','2025-12-29 09:49:53'),(230,'149.50.212.203',NULL,'2025-12-29 09:49:55','2025-12-29 09:49:55'),(231,'43.167.232.38',NULL,'2025-12-29 10:18:29','2025-12-29 10:18:29'),(232,'17.246.19.25',NULL,'2025-12-29 10:22:08','2025-12-29 10:22:08'),(233,'37.111.225.23',NULL,'2025-12-29 10:40:50','2025-12-29 10:40:50'),(234,'45.127.247.64',NULL,'2025-12-29 10:40:51','2025-12-29 10:40:51'),(235,'172.82.65.38',NULL,'2025-12-29 10:57:03','2025-12-29 10:57:03'),(236,'49.51.233.95',NULL,'2025-12-29 10:58:49','2025-12-29 10:58:49'),(237,'43.135.148.92',NULL,'2025-12-29 11:17:50','2025-12-29 11:17:50'),(238,'47.236.19.155',NULL,'2025-12-29 11:22:19','2025-12-29 11:22:19'),(239,'47.237.1.83',NULL,'2025-12-29 11:22:20','2025-12-29 11:22:20'),(240,'162.120.185.2',NULL,'2025-12-29 11:22:50','2025-12-29 11:22:50'),(241,'66.249.77.198',NULL,'2025-12-29 11:36:27','2025-12-29 11:36:27'),(242,'17.241.75.151',NULL,'2025-12-29 11:37:17','2025-12-29 11:37:17'),(243,'17.22.253.107',NULL,'2025-12-29 11:46:09','2025-12-29 11:46:09'),(244,'64.227.64.68',NULL,'2025-12-29 11:46:50','2025-12-29 11:46:50'),(245,'64.227.64.68',NULL,'2025-12-29 11:46:52','2025-12-29 11:46:52'),(246,'159.223.2.235',NULL,'2025-12-29 11:46:52','2025-12-29 11:46:52'),(247,'136.243.42.180',NULL,'2025-12-29 11:46:52','2025-12-29 11:46:52'),(248,'159.223.2.235',NULL,'2025-12-29 11:46:53','2025-12-29 11:46:53'),(249,'45.127.247.64',NULL,'2025-12-29 11:47:23','2025-12-29 11:47:23'),(250,'182.40.104.255',NULL,'2025-12-29 11:58:21','2025-12-29 11:58:21'),(251,'3.251.205.72',NULL,'2025-12-29 12:06:01','2025-12-29 12:06:01'),(252,'52.16.128.79',NULL,'2025-12-29 12:14:45','2025-12-29 12:14:45'),(253,'66.249.77.198',NULL,'2025-12-29 12:53:27','2025-12-29 12:53:27'),(254,'45.127.247.64',NULL,'2025-12-29 13:00:43','2025-12-29 13:00:43'),(255,'17.22.253.192',NULL,'2025-12-29 13:03:46','2025-12-29 13:03:46'),(256,'34.96.41.3',NULL,'2025-12-29 13:18:01','2025-12-29 13:18:01'),(257,'34.34.253.119',NULL,'2025-12-29 13:20:09','2025-12-29 13:20:09'),(258,'34.34.231.33',NULL,'2025-12-29 13:20:51','2025-12-29 13:20:51'),(259,'109.82.114.102',NULL,'2025-12-29 13:30:11','2025-12-29 13:30:11'),(260,'66.249.83.96',NULL,'2025-12-29 13:30:14','2025-12-29 13:30:14'),(261,'66.249.83.97',NULL,'2025-12-29 13:30:14','2025-12-29 13:30:14'),(262,'103.99.176.74',NULL,'2025-12-29 13:39:32','2025-12-29 13:39:32'),(263,'66.249.77.198',NULL,'2025-12-29 13:40:30','2025-12-29 13:40:30'),(264,'129.226.93.214',NULL,'2025-12-29 13:49:27','2025-12-29 13:49:27'),(265,'103.112.55.160',NULL,'2025-12-29 14:01:48','2025-12-29 14:01:48'),(266,'69.63.189.15',NULL,'2025-12-29 14:06:04','2025-12-29 14:06:04'),(267,'69.171.231.45',NULL,'2025-12-29 14:06:08','2025-12-29 14:06:08'),(268,'173.252.107.26',NULL,'2025-12-29 14:06:08','2025-12-29 14:06:08'),(269,'31.13.127.41',NULL,'2025-12-29 14:06:09','2025-12-29 14:06:09'),(270,'34.96.41.5',NULL,'2025-12-29 14:15:49','2025-12-29 14:15:49'),(271,'34.34.231.119',NULL,'2025-12-29 14:17:04','2025-12-29 14:17:04'),(272,'34.34.253.129',NULL,'2025-12-29 14:17:19','2025-12-29 14:17:19'),(273,'17.22.245.70',NULL,'2025-12-29 14:28:13','2025-12-29 14:28:13'),(274,'37.125.16.38',NULL,'2025-12-29 14:39:47','2025-12-29 14:39:47'),(275,'66.249.83.96',NULL,'2025-12-29 14:39:49','2025-12-29 14:39:49'),(276,'66.249.83.98',NULL,'2025-12-29 14:39:49','2025-12-29 14:39:49'),(277,'66.249.93.129',NULL,'2025-12-29 14:40:15','2025-12-29 14:40:15'),(278,'66.249.83.96',NULL,'2025-12-29 14:40:16','2025-12-29 14:40:16'),(279,'66.249.83.97',NULL,'2025-12-29 14:40:16','2025-12-29 14:40:16'),(280,'38.135.25.97',NULL,'2025-12-29 14:46:01','2025-12-29 14:46:01'),(281,'43.159.136.201',NULL,'2025-12-29 15:01:13','2025-12-29 15:01:13'),(282,'34.34.231.135',NULL,'2025-12-29 15:15:35','2025-12-29 15:15:35'),(283,'34.96.62.146',NULL,'2025-12-29 15:20:41','2025-12-29 15:20:41'),(284,'45.127.247.64',NULL,'2025-12-29 15:22:45','2025-12-29 15:22:45'),(285,'103.99.176.74',NULL,'2025-12-29 15:37:24','2025-12-29 15:37:24'),(286,'103.99.176.74',NULL,'2025-12-29 15:37:24','2025-12-29 15:37:24'),(287,'15.235.98.146',NULL,'2025-12-29 15:58:53','2025-12-29 15:58:53'),(288,'37.125.16.38',NULL,'2025-12-29 16:08:57','2025-12-29 16:08:57'),(289,'66.249.83.96',NULL,'2025-12-29 16:08:59','2025-12-29 16:08:59'),(290,'74.125.210.97',NULL,'2025-12-29 16:08:59','2025-12-29 16:08:59'),(291,'34.96.41.40',NULL,'2025-12-29 16:16:43','2025-12-29 16:16:43'),(292,'34.34.231.54',NULL,'2025-12-29 16:18:41','2025-12-29 16:18:41'),(293,'66.249.72.166',NULL,'2025-12-29 16:42:28','2025-12-29 16:42:28'),(294,'17.241.75.222',NULL,'2025-12-29 16:43:40','2025-12-29 16:43:40'),(295,'34.34.231.39',NULL,'2025-12-29 17:15:38','2025-12-29 17:15:38'),(296,'66.249.72.164',NULL,'2025-12-29 17:34:34','2025-12-29 17:34:34'),(297,'51.15.109.37',NULL,'2025-12-29 17:50:17','2025-12-29 17:50:17'),(298,'74.125.210.97',NULL,'2025-12-29 17:50:20','2025-12-29 17:50:20'),(299,'66.102.9.4',NULL,'2025-12-29 17:50:20','2025-12-29 17:50:20'),(300,'66.249.81.166',NULL,'2025-12-29 17:50:56','2025-12-29 17:50:56'),(301,'74.125.210.96',NULL,'2025-12-29 17:50:56','2025-12-29 17:50:56'),(302,'66.102.9.5',NULL,'2025-12-29 17:50:57','2025-12-29 17:50:57'),(303,'66.249.72.164',NULL,'2025-12-29 17:59:34','2025-12-29 17:59:34'),(304,'37.111.225.164',NULL,'2025-12-29 18:02:04','2025-12-29 18:02:04'),(305,'103.99.176.74',NULL,'2025-12-29 18:02:59','2025-12-29 18:02:59'),(306,'43.157.22.109',NULL,'2025-12-29 18:04:26','2025-12-29 18:04:26'),(307,'43.138.68.113',NULL,'2025-12-29 18:04:43','2025-12-29 18:04:43'),(308,'66.249.81.165',NULL,'2025-12-29 18:08:45','2025-12-29 18:08:45'),(309,'74.125.210.98',NULL,'2025-12-29 18:08:46','2025-12-29 18:08:46'),(310,'66.249.81.166',NULL,'2025-12-29 18:08:46','2025-12-29 18:08:46'),(311,'34.96.52.97',NULL,'2025-12-29 18:16:50','2025-12-29 18:16:50'),(312,'34.96.62.128',NULL,'2025-12-29 18:17:36','2025-12-29 18:17:36'),(313,'66.249.81.166',NULL,'2025-12-29 18:22:16','2025-12-29 18:22:16'),(314,'74.125.210.98',NULL,'2025-12-29 18:22:17','2025-12-29 18:22:17'),(315,'66.102.9.5',NULL,'2025-12-29 18:22:17','2025-12-29 18:22:17'),(316,'23.20.151.186',NULL,'2025-12-29 18:22:47','2025-12-29 18:22:47'),(317,'74.125.210.98',NULL,'2025-12-29 18:27:26','2025-12-29 18:27:26'),(318,'74.125.210.96',NULL,'2025-12-29 18:27:26','2025-12-29 18:27:26'),(319,'103.99.177.150',NULL,'2025-12-29 18:33:47','2025-12-29 18:33:47'),(320,'103.99.177.150',NULL,'2025-12-29 18:33:47','2025-12-29 18:33:47'),(321,'54.163.193.113',NULL,'2025-12-29 18:59:59','2025-12-29 18:59:59'),(322,'54.163.193.113',NULL,'2025-12-29 18:59:59','2025-12-29 18:59:59'),(323,'34.34.231.37',NULL,'2025-12-29 19:16:39','2025-12-29 19:16:39'),(324,'34.34.253.146',NULL,'2025-12-29 19:16:46','2025-12-29 19:16:46'),(325,'18.212.141.72',NULL,'2025-12-29 19:29:55','2025-12-29 19:29:55'),(326,'43.166.238.12',NULL,'2025-12-29 19:48:12','2025-12-29 19:48:12'),(327,'103.99.176.74',NULL,'2025-12-29 19:50:30','2025-12-29 19:50:30'),(328,'162.120.184.35',NULL,'2025-12-29 19:55:06','2025-12-29 19:55:06'),(329,'193.186.4.130',NULL,'2025-12-29 19:56:14','2025-12-29 19:56:14'),(330,'162.120.185.34',NULL,'2025-12-29 19:56:33','2025-12-29 19:56:33'),(331,'162.120.185.35',NULL,'2025-12-29 19:56:42','2025-12-29 19:56:42'),(332,'103.99.176.74',NULL,'2025-12-29 20:01:36','2025-12-29 20:01:36'),(333,'37.111.225.164',NULL,'2025-12-29 20:05:40','2025-12-29 20:05:40'),(334,'66.249.77.197',NULL,'2025-12-29 20:07:38','2025-12-29 20:07:38'),(335,'37.217.150.114',NULL,'2025-12-29 20:16:36','2025-12-29 20:16:36'),(336,'74.125.210.97',NULL,'2025-12-29 20:16:39','2025-12-29 20:16:39'),(337,'74.125.210.96',NULL,'2025-12-29 20:16:39','2025-12-29 20:16:39'),(338,'34.96.41.3',NULL,'2025-12-29 20:19:18','2025-12-29 20:19:18'),(339,'34.34.231.9',NULL,'2025-12-29 20:20:31','2025-12-29 20:20:31'),(340,'34.34.253.97',NULL,'2025-12-29 20:21:12','2025-12-29 20:21:12'),(341,'43.159.143.190',NULL,'2025-12-29 20:48:41','2025-12-29 20:48:41'),(342,'37.111.225.227',NULL,'2025-12-29 20:53:19','2025-12-29 20:53:19'),(343,'43.130.78.203',NULL,'2025-12-29 21:03:06','2025-12-29 21:03:06'),(344,'103.115.101.40',NULL,'2025-12-29 21:06:39','2025-12-29 21:06:39'),(345,'195.178.110.155',NULL,'2025-12-29 21:08:05','2025-12-29 21:08:05'),(346,'103.99.176.74',NULL,'2025-12-29 21:09:59','2025-12-29 21:09:59'),(347,'103.99.176.74',NULL,'2025-12-29 21:12:11','2025-12-29 21:12:11'),(348,'162.120.184.35',NULL,'2025-12-29 21:14:23','2025-12-29 21:14:23'),(349,'162.120.184.34',NULL,'2025-12-29 21:14:57','2025-12-29 21:14:57'),(350,'34.34.253.115',NULL,'2025-12-29 21:17:35','2025-12-29 21:17:35'),(351,'74.125.210.106',NULL,'2025-12-29 21:17:43','2025-12-29 21:17:43'),(352,'66.102.9.4',NULL,'2025-12-29 21:17:43','2025-12-29 21:17:43'),(353,'66.249.81.165',NULL,'2025-12-29 21:18:10','2025-12-29 21:18:10'),(354,'74.125.210.106',NULL,'2025-12-29 21:18:11','2025-12-29 21:18:11'),(355,'74.125.210.106',NULL,'2025-12-29 21:18:11','2025-12-29 21:18:11'),(356,'34.34.231.96',NULL,'2025-12-29 21:18:19','2025-12-29 21:18:19'),(357,'103.120.110.85',NULL,'2025-12-29 21:19:19','2025-12-29 21:19:19'),(358,'66.249.81.166',NULL,'2025-12-29 21:19:24','2025-12-29 21:19:24'),(359,'74.125.210.108',NULL,'2025-12-29 21:19:25','2025-12-29 21:19:25'),(360,'66.102.9.3',NULL,'2025-12-29 21:19:25','2025-12-29 21:19:25'),(361,'66.249.81.167',NULL,'2025-12-29 21:20:18','2025-12-29 21:20:18'),(362,'74.125.210.107',NULL,'2025-12-29 21:20:19','2025-12-29 21:20:19'),(363,'74.125.210.106',NULL,'2025-12-29 21:20:19','2025-12-29 21:20:19'),(364,'43.163.104.54',NULL,'2025-12-29 21:32:21','2025-12-29 21:32:21'),(365,'43.157.168.43',NULL,'2025-12-29 21:41:03','2025-12-29 21:41:03'),(366,'37.217.150.114',NULL,'2025-12-29 21:44:15','2025-12-29 21:44:15'),(367,'66.102.8.102',NULL,'2025-12-29 21:44:17','2025-12-29 21:44:17'),(368,'66.102.8.100',NULL,'2025-12-29 21:44:17','2025-12-29 21:44:17'),(369,'74.125.210.106',NULL,'2025-12-29 22:05:48','2025-12-29 22:05:48'),(370,'74.125.210.108',NULL,'2025-12-29 22:05:48','2025-12-29 22:05:48'),(371,'34.34.253.139',NULL,'2025-12-29 22:15:29','2025-12-29 22:15:29'),(372,'103.99.176.74',NULL,'2025-12-29 22:15:50','2025-12-29 22:15:50'),(373,'119.28.140.106',NULL,'2025-12-29 22:33:05','2025-12-29 22:33:05'),(374,'103.112.55.160',NULL,'2025-12-29 22:57:00','2025-12-29 22:57:00'),(375,'74.125.213.32',NULL,'2025-12-29 23:08:50','2025-12-29 23:08:50'),(376,'74.125.210.98',NULL,'2025-12-29 23:08:50','2025-12-29 23:08:50'),(377,'37.111.225.95',NULL,'2025-12-29 23:20:14','2025-12-29 23:20:14'),(378,'142.44.228.219',NULL,'2025-12-29 23:20:21','2025-12-29 23:20:21'),(379,'34.96.62.84',NULL,'2025-12-29 23:20:58','2025-12-29 23:20:58'),(380,'34.34.253.147',NULL,'2025-12-29 23:23:19','2025-12-29 23:23:19'),(381,'162.120.187.213',NULL,'2025-12-29 23:29:18','2025-12-29 23:29:18'),(382,'37.111.225.182',NULL,'2025-12-29 23:43:44','2025-12-29 23:43:44'),(383,'103.99.176.74',NULL,'2025-12-29 23:47:15','2025-12-29 23:47:15'),(384,'74.125.210.96',NULL,'2025-12-29 23:50:53','2025-12-29 23:50:53'),(385,'74.125.210.96',NULL,'2025-12-29 23:50:54','2025-12-29 23:50:54'),(386,'66.249.83.98',NULL,'2025-12-29 23:51:03','2025-12-29 23:51:03'),(387,'66.249.93.129',NULL,'2025-12-29 23:51:03','2025-12-29 23:51:03'),(388,'74.125.213.34',NULL,'2025-12-29 23:55:27','2025-12-29 23:55:27'),(389,'74.125.210.96',NULL,'2025-12-29 23:55:27','2025-12-29 23:55:27'),(390,'66.249.93.129',NULL,'2025-12-30 00:10:26','2025-12-30 00:10:26'),(391,'74.125.213.34',NULL,'2025-12-30 00:10:27','2025-12-30 00:10:27'),(392,'74.125.213.34',NULL,'2025-12-30 00:10:27','2025-12-30 00:10:27'),(393,'175.6.217.4',NULL,'2025-12-30 00:15:07','2025-12-30 00:15:07'),(394,'34.34.231.73',NULL,'2025-12-30 00:17:15','2025-12-30 00:17:15'),(395,'74.125.210.96',NULL,'2025-12-30 00:28:41','2025-12-30 00:28:41'),(396,'74.125.210.97',NULL,'2025-12-30 00:28:41','2025-12-30 00:28:41'),(397,'74.125.210.97',NULL,'2025-12-30 00:29:05','2025-12-30 00:29:05'),(398,'74.125.213.33',NULL,'2025-12-30 00:29:05','2025-12-30 00:29:05'),(399,'66.249.93.130',NULL,'2025-12-30 00:58:33','2025-12-30 00:58:33'),(400,'74.125.213.32',NULL,'2025-12-30 00:58:34','2025-12-30 00:58:34'),(401,'74.125.210.97',NULL,'2025-12-30 00:58:34','2025-12-30 00:58:34'),(402,'66.249.83.96',NULL,'2025-12-30 01:04:47','2025-12-30 01:04:47'),(403,'66.249.83.98',NULL,'2025-12-30 01:04:47','2025-12-30 01:04:47'),(404,'66.249.93.130',NULL,'2025-12-30 01:13:54','2025-12-30 01:13:54'),(405,'74.125.210.97',NULL,'2025-12-30 01:13:55','2025-12-30 01:13:55'),(406,'74.125.210.96',NULL,'2025-12-30 01:13:55','2025-12-30 01:13:55'),(407,'34.96.62.44',NULL,'2025-12-30 01:17:04','2025-12-30 01:17:04'),(408,'34.34.253.110',NULL,'2025-12-30 01:19:03','2025-12-30 01:19:03'),(409,'37.217.150.114',NULL,'2025-12-30 01:19:55','2025-12-30 01:19:55'),(410,'66.102.8.102',NULL,'2025-12-30 01:19:57','2025-12-30 01:19:57'),(411,'66.102.8.100',NULL,'2025-12-30 01:19:57','2025-12-30 01:19:57'),(412,'66.249.77.197',NULL,'2025-12-30 01:21:34','2025-12-30 01:21:34'),(413,'43.166.142.76',NULL,'2025-12-30 01:44:09','2025-12-30 01:44:09'),(414,'103.99.176.74',NULL,'2025-12-30 01:44:58','2025-12-30 01:44:58'),(415,'66.249.83.97',NULL,'2025-12-30 02:12:51','2025-12-30 02:12:51'),(416,'66.249.93.129',NULL,'2025-12-30 02:12:51','2025-12-30 02:12:51'),(417,'66.249.88.101',NULL,'2025-12-30 02:14:07','2025-12-30 02:14:07'),(418,'66.102.8.101',NULL,'2025-12-30 02:14:07','2025-12-30 02:14:07'),(419,'66.249.83.96',NULL,'2025-12-30 02:14:51','2025-12-30 02:14:51'),(420,'66.249.93.128',NULL,'2025-12-30 02:14:51','2025-12-30 02:14:51'),(421,'34.96.52.48',NULL,'2025-12-30 02:16:34','2025-12-30 02:16:34'),(422,'34.96.41.97',NULL,'2025-12-30 02:18:26','2025-12-30 02:18:26'),(423,'34.34.231.83',NULL,'2025-12-30 02:20:19','2025-12-30 02:20:19'),(424,'74.125.210.96',NULL,'2025-12-30 02:21:35','2025-12-30 02:21:35'),(425,'74.125.210.97',NULL,'2025-12-30 02:21:35','2025-12-30 02:21:35'),(426,'66.249.93.128',NULL,'2025-12-30 02:23:00','2025-12-30 02:23:00'),(427,'66.249.93.128',NULL,'2025-12-30 02:23:00','2025-12-30 02:23:00'),(428,'183.134.59.133',NULL,'2025-12-30 02:47:18','2025-12-30 02:47:18'),(429,'183.134.59.133',NULL,'2025-12-30 02:47:19','2025-12-30 02:47:19'),(430,'113.31.186.146',NULL,'2025-12-30 02:47:19','2025-12-30 02:47:19'),(431,'113.31.186.146',NULL,'2025-12-30 02:47:36','2025-12-30 02:47:36'),(432,'183.134.59.133',NULL,'2025-12-30 02:49:00','2025-12-30 02:49:00'),(433,'113.31.186.146',NULL,'2025-12-30 02:49:00','2025-12-30 02:49:00'),(434,'220.167.232.135',NULL,'2025-12-30 02:52:05','2025-12-30 02:52:05'),(435,'43.135.144.81',NULL,'2025-12-30 02:53:22','2025-12-30 02:53:22'),(436,'109.82.114.102',NULL,'2025-12-30 03:41:03','2025-12-30 03:41:03'),(437,'74.125.210.96',NULL,'2025-12-30 03:41:06','2025-12-30 03:41:06'),(438,'74.125.210.97',NULL,'2025-12-30 03:41:06','2025-12-30 03:41:06'),(439,'74.125.210.98',NULL,'2025-12-30 03:41:21','2025-12-30 03:41:21'),(440,'66.249.83.98',NULL,'2025-12-30 03:41:21','2025-12-30 03:41:21'),(441,'66.249.77.199',NULL,'2025-12-30 03:42:39','2025-12-30 03:42:39'),(442,'66.249.93.128',NULL,'2025-12-30 03:44:32','2025-12-30 03:44:32'),(443,'74.125.210.98',NULL,'2025-12-30 03:44:33','2025-12-30 03:44:33'),(444,'74.125.210.98',NULL,'2025-12-30 03:44:33','2025-12-30 03:44:33'),(445,'74.125.210.97',NULL,'2025-12-30 03:45:39','2025-12-30 03:45:39'),(446,'74.125.210.96',NULL,'2025-12-30 03:45:39','2025-12-30 03:45:39'),(447,'43.159.143.190',NULL,'2025-12-30 03:45:59','2025-12-30 03:45:59'),(448,'66.249.93.130',NULL,'2025-12-30 03:46:46','2025-12-30 03:46:46'),(449,'74.125.210.96',NULL,'2025-12-30 03:46:47','2025-12-30 03:46:47'),(450,'74.125.210.98',NULL,'2025-12-30 03:46:47','2025-12-30 03:46:47'),(451,'15.235.27.100',NULL,'2025-12-30 03:53:47','2025-12-30 03:53:47'),(452,'152.53.195.17',NULL,'2025-12-30 04:00:25','2025-12-30 04:00:25'),(453,'152.53.195.17',NULL,'2025-12-30 04:00:28','2025-12-30 04:00:28'),(454,'142.44.220.21',NULL,'2025-12-30 04:09:50','2025-12-30 04:09:50'),(455,'34.34.253.208',NULL,'2025-12-30 04:16:06','2025-12-30 04:16:06'),(456,'14.232.208.159',NULL,'2025-12-30 04:22:38','2025-12-30 04:22:38'),(457,'142.44.220.126',NULL,'2025-12-30 04:25:05','2025-12-30 04:25:05'),(458,'54.39.89.76',NULL,'2025-12-30 04:44:05','2025-12-30 04:44:05'),(459,'54.39.136.151',NULL,'2025-12-30 05:03:47','2025-12-30 05:03:47'),(460,'45.79.252.28',NULL,'2025-12-30 05:05:14','2025-12-30 05:05:14'),(461,'34.248.140.255',NULL,'2025-12-30 05:05:36','2025-12-30 05:05:36'),(462,'54.39.0.203',NULL,'2025-12-30 05:20:57','2025-12-30 05:20:57'),(463,'34.34.231.129',NULL,'2025-12-30 05:28:13','2025-12-30 05:28:13'),(464,'15.235.27.60',NULL,'2025-12-30 05:39:18','2025-12-30 05:39:18'),(465,'51.161.65.219',NULL,'2025-12-30 05:56:38','2025-12-30 05:56:38'),(466,'51.161.65.46',NULL,'2025-12-30 06:05:18','2025-12-30 06:05:18'),(467,'148.113.130.146',NULL,'2025-12-30 06:13:52','2025-12-30 06:13:52'),(468,'43.138.68.113',NULL,'2025-12-30 06:18:22','2025-12-30 06:18:22'),(469,'15.235.27.149',NULL,'2025-12-30 06:21:46','2025-12-30 06:21:46'),(470,'15.235.98.197',NULL,'2025-12-30 06:33:11','2025-12-30 06:33:11'),(471,'124.156.157.91',NULL,'2025-12-30 07:02:17','2025-12-30 07:02:17'),(472,'34.58.92.14',NULL,'2025-12-30 07:03:33','2025-12-30 07:03:33'),(473,'167.114.139.67',NULL,'2025-12-30 07:04:31','2025-12-30 07:04:31'),(474,'142.44.225.181',NULL,'2025-12-30 07:32:18','2025-12-30 07:32:18'),(475,'43.159.128.237',NULL,'2025-12-30 07:52:13','2025-12-30 07:52:13'),(476,'142.44.220.92',NULL,'2025-12-30 08:00:35','2025-12-30 08:00:35'),(477,'162.62.231.139',NULL,'2025-12-30 08:02:48','2025-12-30 08:02:48'),(478,'43.166.226.57',NULL,'2025-12-30 08:07:52','2025-12-30 08:07:52'),(479,'66.249.77.198',NULL,'2025-12-30 08:12:27','2025-12-30 08:12:27'),(480,'185.181.247.197',NULL,'2025-12-30 08:13:28','2025-12-30 08:13:28'),(481,'43.156.202.34',NULL,'2025-12-30 09:05:23','2025-12-30 09:05:23'),(482,'51.222.95.198',NULL,'2025-12-30 09:12:11','2025-12-30 09:12:11'),(483,'103.99.176.74',NULL,'2025-12-30 10:01:18','2025-12-30 10:01:18'),(484,'54.39.0.187',NULL,'2025-12-30 11:46:23','2025-12-30 11:46:23'),(485,'51.222.95.167',NULL,'2025-12-30 11:47:14','2025-12-30 11:47:14'),(486,'182.44.8.254',NULL,'2025-12-30 12:17:36','2025-12-30 12:17:36'),(487,'51.254.204.161',NULL,'2025-12-30 12:29:53','2025-12-30 12:29:53'),(488,'45.148.10.63',NULL,'2025-12-30 12:32:15','2025-12-30 12:32:15'),(489,'45.148.10.63',NULL,'2025-12-30 12:35:32','2025-12-30 12:35:32'),(490,'109.82.114.102',NULL,'2025-12-30 13:22:15','2025-12-30 13:22:15'),(491,'66.249.83.97',NULL,'2025-12-30 13:22:17','2025-12-30 13:22:17'),(492,'66.249.83.98',NULL,'2025-12-30 13:22:17','2025-12-30 13:22:17'),(493,'66.249.93.130',NULL,'2025-12-30 13:22:33','2025-12-30 13:22:33'),(494,'66.249.83.98',NULL,'2025-12-30 13:22:34','2025-12-30 13:22:34'),(495,'66.249.83.96',NULL,'2025-12-30 13:22:34','2025-12-30 13:22:34'),(496,'66.249.93.128',NULL,'2025-12-30 13:22:56','2025-12-30 13:22:56'),(497,'66.249.93.129',NULL,'2025-12-30 13:22:57','2025-12-30 13:22:57'),(498,'103.96.37.225',NULL,'2025-12-30 13:52:15','2025-12-30 13:52:15'),(499,'35.167.176.47',NULL,'2025-12-30 14:06:06','2025-12-30 14:06:06'),(500,'157.245.64.128',NULL,'2025-12-30 14:08:33','2025-12-30 14:08:33'),(501,'170.106.192.3',NULL,'2025-12-30 14:18:51','2025-12-30 14:18:51'),(502,'157.245.64.128',NULL,'2025-12-30 14:30:21','2025-12-30 14:30:21'),(503,'135.181.116.37',NULL,'2025-12-30 14:33:36','2025-12-30 14:33:36'),(504,'51.68.25.8',NULL,'2025-12-30 14:45:35','2025-12-30 14:45:35'),(505,'51.68.25.8',NULL,'2025-12-30 14:46:38','2025-12-30 14:46:38'),(506,'43.156.228.27',NULL,'2025-12-30 15:25:54','2025-12-30 15:25:54'),(507,'51.158.177.43',NULL,'2025-12-30 15:50:52','2025-12-30 15:50:52'),(508,'74.125.210.96',NULL,'2025-12-30 15:50:56','2025-12-30 15:50:56'),(509,'66.249.81.165',NULL,'2025-12-30 15:50:56','2025-12-30 15:50:56'),(510,'66.249.81.165',NULL,'2025-12-30 15:51:19','2025-12-30 15:51:19'),(511,'74.125.210.97',NULL,'2025-12-30 15:51:20','2025-12-30 15:51:20'),(512,'74.125.210.98',NULL,'2025-12-30 15:51:20','2025-12-30 15:51:20'),(513,'66.249.81.167',NULL,'2025-12-30 15:51:27','2025-12-30 15:51:27'),(514,'66.249.81.165',NULL,'2025-12-30 15:51:27','2025-12-30 15:51:27'),(515,'66.102.9.4',NULL,'2025-12-30 15:51:28','2025-12-30 15:51:28'),(516,'66.249.81.165',NULL,'2025-12-30 15:52:57','2025-12-30 15:52:57'),(517,'74.125.210.97',NULL,'2025-12-30 15:52:57','2025-12-30 15:52:57'),(518,'66.102.9.5',NULL,'2025-12-30 15:52:58','2025-12-30 15:52:58'),(519,'66.249.81.165',NULL,'2025-12-30 15:54:19','2025-12-30 15:54:19'),(520,'74.125.210.97',NULL,'2025-12-30 15:54:20','2025-12-30 15:54:20'),(521,'74.125.210.96',NULL,'2025-12-30 15:54:20','2025-12-30 15:54:20'),(522,'45.127.247.64',NULL,'2025-12-30 15:55:36','2025-12-30 15:55:36'),(523,'122.162.149.240',NULL,'2025-12-30 16:11:32','2025-12-30 16:11:32'),(524,'66.249.77.197',NULL,'2025-12-30 16:11:56','2025-12-30 16:11:56'),(525,'74.125.210.97',NULL,'2025-12-30 16:21:58','2025-12-30 16:21:58'),(526,'74.125.210.96',NULL,'2025-12-30 16:21:58','2025-12-30 16:21:58'),(527,'66.102.9.3',NULL,'2025-12-30 16:23:01','2025-12-30 16:23:01'),(528,'66.102.9.5',NULL,'2025-12-30 16:23:01','2025-12-30 16:23:01'),(529,'185.188.61.9',NULL,'2025-12-30 16:30:02','2025-12-30 16:30:02'),(530,'103.96.37.225',NULL,'2025-12-30 17:14:10','2025-12-30 17:14:10'),(531,'66.249.83.98',NULL,'2025-12-30 17:20:19','2025-12-30 17:20:19'),(532,'66.249.83.98',NULL,'2025-12-30 17:20:19','2025-12-30 17:20:19'),(533,'74.125.210.98',NULL,'2025-12-30 17:20:37','2025-12-30 17:20:37'),(534,'74.125.210.97',NULL,'2025-12-30 17:20:37','2025-12-30 17:20:37'),(535,'66.249.93.129',NULL,'2025-12-30 17:20:59','2025-12-30 17:20:59'),(536,'66.249.93.130',NULL,'2025-12-30 17:21:00','2025-12-30 17:21:00'),(537,'66.249.93.128',NULL,'2025-12-30 17:21:48','2025-12-30 17:21:48'),(538,'66.249.93.129',NULL,'2025-12-30 17:21:49','2025-12-30 17:21:49'),(539,'66.249.93.128',NULL,'2025-12-30 17:49:08','2025-12-30 17:49:08'),(540,'66.249.93.128',NULL,'2025-12-30 17:49:08','2025-12-30 17:49:08'),(541,'18.206.235.134',NULL,'2025-12-30 18:08:13','2025-12-30 18:08:13'),(542,'18.206.235.134',NULL,'2025-12-30 18:08:13','2025-12-30 18:08:13'),(543,'74.7.241.11',NULL,'2025-12-30 18:14:44','2025-12-30 18:14:44'),(544,'37.42.73.160',NULL,'2025-12-30 19:15:09','2025-12-30 19:15:09'),(545,'74.125.210.96',NULL,'2025-12-30 19:15:12','2025-12-30 19:15:12'),(546,'74.125.210.96',NULL,'2025-12-30 19:15:12','2025-12-30 19:15:12'),(547,'74.125.210.98',NULL,'2025-12-30 19:16:28','2025-12-30 19:16:28'),(548,'74.125.210.98',NULL,'2025-12-30 19:16:29','2025-12-30 19:16:29'),(549,'74.125.210.96',NULL,'2025-12-30 19:16:36','2025-12-30 19:16:36'),(550,'74.125.210.96',NULL,'2025-12-30 19:16:36','2025-12-30 19:16:36'),(551,'171.25.193.80',NULL,'2025-12-30 19:37:28','2025-12-30 19:37:28'),(552,'66.249.83.96',NULL,'2025-12-30 19:38:21','2025-12-30 19:38:21'),(553,'74.125.210.98',NULL,'2025-12-30 19:48:23','2025-12-30 19:48:23'),(554,'74.125.210.98',NULL,'2025-12-30 19:48:23','2025-12-30 19:48:23'),(555,'45.127.247.64',NULL,'2025-12-30 19:50:57','2025-12-30 19:50:57'),(556,'66.249.72.166',NULL,'2025-12-30 19:50:59','2025-12-30 19:50:59'),(557,'37.217.150.114',NULL,'2025-12-30 19:51:48','2025-12-30 19:51:48'),(558,'173.252.87.12',NULL,'2025-12-30 19:53:02','2025-12-30 19:53:02'),(559,'173.252.87.15',NULL,'2025-12-30 19:53:07','2025-12-30 19:53:07'),(560,'37.217.150.114',NULL,'2025-12-30 20:08:16','2025-12-30 20:08:16'),(561,'66.102.8.102',NULL,'2025-12-30 20:08:19','2025-12-30 20:08:19'),(562,'66.102.8.100',NULL,'2025-12-30 20:08:19','2025-12-30 20:08:19'),(563,'74.125.210.96',NULL,'2025-12-30 20:08:50','2025-12-30 20:08:50'),(564,'74.125.210.98',NULL,'2025-12-30 20:08:50','2025-12-30 20:08:50'),(565,'43.130.71.237',NULL,'2025-12-30 20:12:00','2025-12-30 20:12:00'),(566,'74.125.210.98',NULL,'2025-12-30 20:14:15','2025-12-30 20:14:15'),(567,'74.125.210.97',NULL,'2025-12-30 20:14:15','2025-12-30 20:14:15'),(568,'43.166.136.153',NULL,'2025-12-30 21:04:39','2025-12-30 21:04:39'),(569,'67.21.83.185',NULL,'2025-12-30 21:06:37','2025-12-30 21:06:37'),(570,'43.159.141.150',NULL,'2025-12-30 21:21:04','2025-12-30 21:21:04'),(571,'37.111.221.130',NULL,'2025-12-30 21:31:06','2025-12-30 21:31:06'),(572,'104.197.69.115',NULL,'2025-12-30 21:36:06','2025-12-30 21:36:06'),(573,'34.122.147.229',NULL,'2025-12-30 21:37:01','2025-12-30 21:37:01'),(574,'66.249.72.166',NULL,'2025-12-30 21:44:15','2025-12-30 21:44:15'),(575,'66.249.72.164',NULL,'2025-12-30 21:44:26','2025-12-30 21:44:26'),(576,'103.96.37.225',NULL,'2025-12-30 21:45:35','2025-12-30 21:45:35'),(577,'103.96.37.225',NULL,'2025-12-30 21:45:39','2025-12-30 21:45:39'),(578,'103.96.37.225',NULL,'2025-12-30 21:45:40','2025-12-30 21:45:40'),(579,'37.217.150.114',NULL,'2025-12-30 21:51:12','2025-12-30 21:51:12'),(580,'62.149.111.8',NULL,'2025-12-30 21:51:25','2025-12-30 21:51:25'),(581,'103.96.37.225',NULL,'2025-12-30 21:55:02','2025-12-30 21:55:02'),(582,'66.249.72.164',NULL,'2025-12-30 22:15:39','2025-12-30 22:15:39'),(583,'66.249.72.166',NULL,'2025-12-30 22:15:40','2025-12-30 22:15:40'),(584,'46.184.53.222',NULL,'2025-12-30 22:16:19','2025-12-30 22:16:19'),(585,'66.249.72.166',NULL,'2025-12-30 22:16:21','2025-12-30 22:16:21'),(586,'66.249.72.164',NULL,'2025-12-30 22:16:22','2025-12-30 22:16:22'),(587,'103.99.176.74',NULL,'2025-12-30 22:34:45','2025-12-30 22:34:45'),(588,'23.27.145.209',NULL,'2025-12-30 23:00:42','2025-12-30 23:00:42'),(589,'185.191.171.11',NULL,'2025-12-30 23:06:24','2025-12-30 23:06:24'),(590,'37.42.73.160',NULL,'2025-12-30 23:46:25','2025-12-30 23:46:25'),(591,'66.249.88.100',NULL,'2025-12-30 23:46:27','2025-12-30 23:46:27'),(592,'66.249.88.102',NULL,'2025-12-30 23:46:27','2025-12-30 23:46:27'),(593,'37.111.215.199',NULL,'2025-12-30 23:55:58','2025-12-30 23:55:58'),(594,'202.134.14.234',NULL,'2025-12-31 00:02:43','2025-12-31 00:02:43'),(595,'149.57.180.56',NULL,'2025-12-31 00:08:11','2025-12-31 00:08:11'),(596,'37.111.215.46',NULL,'2025-12-31 00:09:38','2025-12-31 00:09:38'),(597,'37.111.215.46',NULL,'2025-12-31 00:09:39','2025-12-31 00:09:39'),(598,'37.111.215.46',NULL,'2025-12-31 00:09:40','2025-12-31 00:09:40'),(599,'37.111.213.180',NULL,'2025-12-31 00:10:26','2025-12-31 00:10:26'),(600,'37.111.213.180',NULL,'2025-12-31 00:10:29','2025-12-31 00:10:29'),(601,'37.111.213.180',NULL,'2025-12-31 00:10:33','2025-12-31 00:10:33'),(602,'51.222.168.239',NULL,'2025-12-31 02:28:48','2025-12-31 02:28:48'),(603,'101.33.66.34',NULL,'2025-12-31 02:29:42','2025-12-31 02:29:42'),(604,'15.235.98.4',NULL,'2025-12-31 02:30:01','2025-12-31 02:30:01'),(605,'113.31.186.146',NULL,'2025-12-31 02:48:36','2025-12-31 02:48:36'),(606,'113.31.186.146',NULL,'2025-12-31 02:48:43','2025-12-31 02:48:43'),(607,'183.134.59.133',NULL,'2025-12-31 02:51:22','2025-12-31 02:51:22'),(608,'43.133.91.48',NULL,'2025-12-31 02:51:56','2025-12-31 02:51:56'),(609,'183.134.59.133',NULL,'2025-12-31 02:52:20','2025-12-31 02:52:20'),(610,'113.31.186.146',NULL,'2025-12-31 02:52:39','2025-12-31 02:52:39'),(611,'109.82.114.102',NULL,'2025-12-31 03:22:18','2025-12-31 03:22:18'),(612,'66.249.83.98',NULL,'2025-12-31 03:22:20','2025-12-31 03:22:20'),(613,'66.249.93.128',NULL,'2025-12-31 03:22:21','2025-12-31 03:22:21'),(614,'43.165.70.220',NULL,'2025-12-31 03:22:47','2025-12-31 03:22:47'),(615,'109.82.114.102',NULL,'2025-12-31 03:23:54','2025-12-31 03:23:54'),(616,'66.249.83.102',NULL,'2025-12-31 03:23:55','2025-12-31 03:23:55'),(617,'66.249.83.101',NULL,'2025-12-31 03:23:56','2025-12-31 03:23:56'),(618,'109.82.114.102',NULL,'2025-12-31 03:28:54','2025-12-31 03:28:54'),(619,'170.106.113.159',NULL,'2025-12-31 03:34:27','2025-12-31 03:34:27'),(620,'101.33.80.42',NULL,'2025-12-31 03:42:31','2025-12-31 03:42:31'),(621,'49.51.233.95',NULL,'2025-12-31 03:52:47','2025-12-31 03:52:47'),(622,'43.130.71.237',NULL,'2025-12-31 04:13:05','2025-12-31 04:13:05'),(623,'43.130.47.33',NULL,'2025-12-31 04:32:45','2025-12-31 04:32:45'),(624,'49.51.132.100',NULL,'2025-12-31 04:43:49','2025-12-31 04:43:49'),(625,'43.167.236.228',NULL,'2025-12-31 04:52:28','2025-12-31 04:52:28'),(626,'51.222.95.63',NULL,'2025-12-31 04:54:19','2025-12-31 04:54:19'),(627,'24.144.77.78',NULL,'2025-12-31 06:10:32','2025-12-31 06:10:32'),(628,'176.126.245.48',NULL,'2025-12-31 06:10:34','2025-12-31 06:10:34'),(629,'176.126.245.48',NULL,'2025-12-31 06:11:21','2025-12-31 06:11:21'),(630,'62.109.145.84',NULL,'2025-12-31 06:53:35','2025-12-31 06:53:35'),(631,'136.114.205.129',NULL,'2025-12-31 07:03:31','2025-12-31 07:03:31'),(632,'101.33.80.42',NULL,'2025-12-31 07:04:31','2025-12-31 07:04:31'),(633,'43.155.157.239',NULL,'2025-12-31 08:02:45','2025-12-31 08:02:45'),(634,'17.22.253.184',NULL,'2025-12-31 08:03:56','2025-12-31 08:03:56'),(635,'185.181.247.197',NULL,'2025-12-31 08:14:34','2025-12-31 08:14:34'),(636,'18.213.113.18',NULL,'2025-12-31 08:44:00','2025-12-31 08:44:00'),(637,'51.222.168.17',NULL,'2025-12-31 08:49:27','2025-12-31 08:49:27'),(638,'49.51.72.76',NULL,'2025-12-31 08:54:21','2025-12-31 08:54:21'),(639,'17.246.19.108',NULL,'2025-12-31 09:14:37','2025-12-31 09:14:37'),(640,'54.39.210.31',NULL,'2025-12-31 09:18:03','2025-12-31 09:18:03'),(641,'142.44.220.114',NULL,'2025-12-31 09:45:19','2025-12-31 09:45:19'),(642,'43.133.139.6',NULL,'2025-12-31 09:58:15','2025-12-31 09:58:15'),(643,'54.39.210.230',NULL,'2025-12-31 10:11:51','2025-12-31 10:11:51'),(644,'182.44.10.67',NULL,'2025-12-31 12:44:07','2025-12-31 12:44:07'),(645,'103.96.37.225',NULL,'2025-12-31 14:08:00','2025-12-31 14:08:00'),(646,'35.222.228.235',NULL,'2025-12-31 14:08:45','2025-12-31 14:08:45'),(647,'103.96.37.225',NULL,'2025-12-31 14:09:22','2025-12-31 14:09:22'),(648,'103.96.37.225',NULL,'2025-12-31 14:09:23','2025-12-31 14:09:23'),(649,'103.96.37.225',NULL,'2025-12-31 14:09:24','2025-12-31 14:09:24'),(650,'103.96.37.225',NULL,'2025-12-31 14:13:57','2025-12-31 14:13:57'),(651,'103.96.37.225',NULL,'2025-12-31 14:14:56','2025-12-31 14:14:56'),(652,'103.96.37.225',NULL,'2025-12-31 14:14:57','2025-12-31 14:14:57'),(653,'103.96.37.225',NULL,'2025-12-31 14:14:58','2025-12-31 14:14:58'),(654,'192.71.142.176',NULL,'2025-12-31 14:17:12','2025-12-31 14:17:12'),(655,'192.71.2.119',NULL,'2025-12-31 14:17:13','2025-12-31 14:17:13'),(656,'192.71.142.176',NULL,'2025-12-31 14:17:14','2025-12-31 14:17:14'),(657,'192.71.126.249',NULL,'2025-12-31 14:17:15','2025-12-31 14:17:15'),(658,'84.254.106.197',NULL,'2025-12-31 14:56:30','2025-12-31 14:56:30'),(659,'84.254.106.197',NULL,'2025-12-31 14:59:13','2025-12-31 14:59:13'),(660,'43.166.250.187',NULL,'2025-12-31 15:03:47','2025-12-31 15:03:47'),(661,'84.254.106.197',NULL,'2025-12-31 15:54:36','2025-12-31 15:54:36'),(662,'84.254.106.197',NULL,'2025-12-31 16:00:14','2025-12-31 16:00:14'),(663,'192.121.136.190',NULL,'2025-12-31 16:02:44','2025-12-31 16:02:44'),(664,'192.165.45.205',NULL,'2025-12-31 16:02:45','2025-12-31 16:02:45'),(665,'192.36.217.48',NULL,'2025-12-31 16:02:46','2025-12-31 16:02:46'),(666,'192.36.173.21',NULL,'2025-12-31 16:02:47','2025-12-31 16:02:47'),(667,'170.106.15.3',NULL,'2025-12-31 16:03:23','2025-12-31 16:03:23'),(668,'149.57.180.123',NULL,'2025-12-31 16:40:25','2025-12-31 16:40:25'),(669,'37.217.150.114',NULL,'2025-12-31 17:32:41','2025-12-31 17:32:41'),(670,'66.249.93.130',NULL,'2025-12-31 17:32:44','2025-12-31 17:32:44'),(671,'66.249.93.128',NULL,'2025-12-31 17:32:44','2025-12-31 17:32:44'),(672,'66.249.93.128',NULL,'2025-12-31 17:33:46','2025-12-31 17:33:46'),(673,'66.249.83.97',NULL,'2025-12-31 17:33:47','2025-12-31 17:33:47'),(674,'66.249.83.98',NULL,'2025-12-31 17:33:47','2025-12-31 17:33:47'),(675,'18.204.15.42',NULL,'2025-12-31 18:09:22','2025-12-31 18:09:22'),(676,'18.204.15.42',NULL,'2025-12-31 18:09:22','2025-12-31 18:09:22'),(677,'103.96.37.225',NULL,'2025-12-31 18:57:37','2025-12-31 18:57:37'),(678,'1.15.52.154',NULL,'2025-12-31 18:57:53','2025-12-31 18:57:53'),(679,'194.230.158.210',NULL,'2025-12-31 18:58:10','2025-12-31 18:58:10'),(680,'37.217.150.114',NULL,'2025-12-31 19:46:27','2025-12-31 19:46:27'),(681,'74.125.210.96',NULL,'2025-12-31 19:46:30','2025-12-31 19:46:30'),(682,'74.125.210.97',NULL,'2025-12-31 19:46:30','2025-12-31 19:46:30'),(683,'43.130.14.245',NULL,'2025-12-31 20:52:21','2025-12-31 20:52:21'),(684,'43.157.191.20',NULL,'2025-12-31 21:02:44','2025-12-31 21:02:44'),(685,'43.153.102.138',NULL,'2025-12-31 22:03:54','2025-12-31 22:03:54'),(686,'66.249.72.193',NULL,'2025-12-31 22:12:32','2025-12-31 22:12:32'),(687,'43.166.245.120',NULL,'2025-12-31 22:26:36','2025-12-31 22:26:36'),(688,'17.22.237.194',NULL,'2025-12-31 22:28:59','2025-12-31 22:28:59'),(689,'49.51.38.193',NULL,'2025-12-31 22:57:11','2025-12-31 22:57:11'),(690,'49.51.47.100',NULL,'2025-12-31 23:06:33','2025-12-31 23:06:33'),(691,'37.111.245.153',NULL,'2025-12-31 23:17:04','2025-12-31 23:17:04'),(692,'43.135.135.57',NULL,'2025-12-31 23:17:14','2025-12-31 23:17:14'),(693,'43.130.131.18',NULL,'2025-12-31 23:28:46','2025-12-31 23:28:46'),(694,'43.130.72.177',NULL,'2025-12-31 23:47:59','2025-12-31 23:47:59'),(695,'49.51.72.236',NULL,'2026-01-01 00:17:33','2026-01-01 00:17:33'),(696,'43.130.16.140',NULL,'2026-01-01 00:26:20','2026-01-01 00:26:20'),(697,'43.130.16.140',NULL,'2026-01-01 00:26:26','2026-01-01 00:26:26'),(698,'199.45.155.109',NULL,'2026-01-01 00:27:28','2026-01-01 00:27:28'),(699,'199.45.155.109',NULL,'2026-01-01 00:30:00','2026-01-01 00:30:00'),(700,'37.42.199.52',NULL,'2026-01-01 00:44:45','2026-01-01 00:44:45'),(701,'167.94.138.192',NULL,'2026-01-01 00:49:30','2026-01-01 00:49:30'),(702,'167.94.138.192',NULL,'2026-01-01 00:50:07','2026-01-01 00:50:07'),(703,'123.187.240.242',NULL,'2026-01-01 01:02:19','2026-01-01 01:02:19'),(704,'17.246.19.66',NULL,'2026-01-01 01:03:44','2026-01-01 01:03:44'),(705,'17.241.75.232',NULL,'2026-01-01 01:06:04','2026-01-01 01:06:04'),(706,'199.45.155.76',NULL,'2026-01-01 01:10:43','2026-01-01 01:10:43'),(707,'199.45.155.76',NULL,'2026-01-01 01:11:40','2026-01-01 01:11:40'),(708,'113.31.186.146',NULL,'2026-01-01 02:38:50','2026-01-01 02:38:50'),(709,'183.134.59.133',NULL,'2026-01-01 02:39:59','2026-01-01 02:39:59'),(710,'113.31.186.146',NULL,'2026-01-01 02:41:11','2026-01-01 02:41:11'),(711,'183.134.59.133',NULL,'2026-01-01 02:41:57','2026-01-01 02:41:57'),(712,'113.31.186.146',NULL,'2026-01-01 02:42:53','2026-01-01 02:42:53'),(713,'54.39.136.58',NULL,'2026-01-01 03:00:27','2026-01-01 03:00:27'),(714,'17.22.245.218',NULL,'2026-01-01 03:18:17','2026-01-01 03:18:17'),(715,'43.166.247.82',NULL,'2026-01-01 03:52:45','2026-01-01 03:52:45'),(716,'170.106.181.163',NULL,'2026-01-01 04:15:54','2026-01-01 04:15:54'),(717,'43.164.197.209',NULL,'2026-01-01 04:35:23','2026-01-01 04:35:23'),(718,'43.153.96.79',NULL,'2026-01-01 04:55:42','2026-01-01 04:55:42'),(719,'43.165.69.68',NULL,'2026-01-01 05:05:05','2026-01-01 05:05:05'),(720,'43.133.69.37',NULL,'2026-01-01 05:06:40','2026-01-01 05:06:40'),(721,'66.249.75.3',NULL,'2026-01-01 05:33:51','2026-01-01 05:33:51'),(722,'66.249.72.193',NULL,'2026-01-01 05:39:03','2026-01-01 05:39:03'),(723,'43.153.86.78',NULL,'2026-01-01 05:45:26','2026-01-01 05:45:26'),(724,'49.51.166.228',NULL,'2026-01-01 05:55:47','2026-01-01 05:55:47'),(725,'37.42.199.52',NULL,'2026-01-01 06:09:26','2026-01-01 06:09:26'),(726,'94.247.172.129',NULL,'2026-01-01 06:27:11','2026-01-01 06:27:11'),(727,'66.249.75.3',NULL,'2026-01-01 06:49:51','2026-01-01 06:49:51'),(728,'34.59.247.25',NULL,'2026-01-01 07:02:04','2026-01-01 07:02:04'),(729,'43.130.3.122',NULL,'2026-01-01 07:03:36','2026-01-01 07:03:36'),(730,'66.249.72.192',NULL,'2026-01-01 07:04:55','2026-01-01 07:04:55'),(731,'91.134.69.56',NULL,'2026-01-01 07:21:36','2026-01-01 07:21:36'),(732,'145.239.161.191',NULL,'2026-01-01 07:23:42','2026-01-01 07:23:42'),(733,'91.134.69.56',NULL,'2026-01-01 07:24:37','2026-01-01 07:24:37'),(734,'145.239.161.191',NULL,'2026-01-01 07:26:18','2026-01-01 07:26:18'),(735,'170.106.180.246',NULL,'2026-01-01 08:02:10','2026-01-01 08:02:10'),(736,'185.181.247.197',NULL,'2026-01-01 08:13:16','2026-01-01 08:13:16'),(737,'40.77.167.25',NULL,'2026-01-01 08:45:09','2026-01-01 08:45:09'),(738,'66.249.72.194',NULL,'2026-01-01 09:48:56','2026-01-01 09:48:56'),(739,'43.166.237.57',NULL,'2026-01-01 10:43:01','2026-01-01 10:43:01'),(740,'43.166.136.202',NULL,'2026-01-01 10:56:22','2026-01-01 10:56:22'),(741,'4.43.184.113',NULL,'2026-01-01 11:05:45','2026-01-01 11:05:45'),(742,'43.165.69.68',NULL,'2026-01-01 11:06:21','2026-01-01 11:06:21'),(743,'43.165.69.68',NULL,'2026-01-01 11:06:24','2026-01-01 11:06:24'),(744,'43.155.27.244',NULL,'2026-01-01 11:35:15','2026-01-01 11:35:15'),(745,'43.128.156.124',NULL,'2026-01-01 11:59:38','2026-01-01 11:59:38'),(746,'170.106.163.84',NULL,'2026-01-01 12:07:38','2026-01-01 12:07:38'),(747,'43.166.136.24',NULL,'2026-01-01 12:16:23','2026-01-01 12:16:23'),(748,'43.166.136.24',NULL,'2026-01-01 12:16:25','2026-01-01 12:16:25'),(749,'43.156.168.214',NULL,'2026-01-01 12:26:38','2026-01-01 12:26:38'),(750,'17.246.19.115',NULL,'2026-01-01 12:27:08','2026-01-01 12:27:08'),(751,'49.51.183.220',NULL,'2026-01-01 12:36:19','2026-01-01 12:36:19'),(752,'43.166.238.12',NULL,'2026-01-01 12:46:49','2026-01-01 12:46:49'),(753,'17.22.253.78',NULL,'2026-01-01 12:52:58','2026-01-01 12:52:58'),(754,'165.227.182.115',NULL,'2026-01-01 12:56:19','2026-01-01 12:56:19'),(755,'43.153.113.127',NULL,'2026-01-01 12:56:19','2026-01-01 12:56:19'),(756,'1.15.52.154',NULL,'2026-01-01 12:58:28','2026-01-01 12:58:28'),(757,'103.96.37.225',NULL,'2026-01-01 13:16:57','2026-01-01 13:16:57'),(758,'66.249.75.3',NULL,'2026-01-01 13:54:36','2026-01-01 13:54:36'),(759,'178.156.152.75',NULL,'2026-01-01 14:21:03','2026-01-01 14:21:03'),(760,'178.156.152.75',NULL,'2026-01-01 14:21:04','2026-01-01 14:21:04'),(761,'178.156.152.75',NULL,'2026-01-01 14:21:11','2026-01-01 14:21:11'),(762,'178.156.152.75',NULL,'2026-01-01 14:21:11','2026-01-01 14:21:11'),(763,'103.96.37.225',NULL,'2026-01-01 14:35:18','2026-01-01 14:35:18'),(764,'146.70.117.40',NULL,'2026-01-01 16:03:52','2026-01-01 16:03:52'),(765,'17.241.219.104',NULL,'2026-01-01 16:43:21','2026-01-01 16:43:21'),(766,'74.7.242.14',NULL,'2026-01-01 16:45:30','2026-01-01 16:45:30'),(767,'17.22.245.111',NULL,'2026-01-01 16:58:03','2026-01-01 16:58:03'),(768,'170.106.163.84',NULL,'2026-01-01 17:20:36','2026-01-01 17:20:36'),(769,'49.51.243.156',NULL,'2026-01-01 18:32:24','2026-01-01 18:32:24'),(770,'98.81.11.229',NULL,'2026-01-01 18:36:23','2026-01-01 18:36:23'),(771,'98.81.11.229',NULL,'2026-01-01 18:36:23','2026-01-01 18:36:23'),(772,'37.217.150.114',NULL,'2026-01-01 18:46:36','2026-01-01 18:46:36'),(773,'37.217.150.114',NULL,'2026-01-01 18:59:18','2026-01-01 18:59:18'),(774,'66.249.83.12',NULL,'2026-01-01 18:59:20','2026-01-01 18:59:20'),(775,'66.249.83.11',NULL,'2026-01-01 18:59:20','2026-01-01 18:59:20'),(776,'66.249.83.10',NULL,'2026-01-01 18:59:53','2026-01-01 18:59:53'),(777,'66.102.8.102',NULL,'2026-01-01 18:59:54','2026-01-01 18:59:54'),(778,'37.217.150.114',NULL,'2026-01-01 19:00:04','2026-01-01 19:00:04'),(779,'66.249.83.97',NULL,'2026-01-01 19:00:06','2026-01-01 19:00:06'),(780,'74.125.210.97',NULL,'2026-01-01 19:00:06','2026-01-01 19:00:06'),(781,'182.42.111.156',NULL,'2026-01-01 19:22:37','2026-01-01 19:22:37'),(782,'74.7.241.11',NULL,'2026-01-01 20:17:16','2026-01-01 20:17:16'),(783,'66.249.75.3',NULL,'2026-01-01 20:55:46','2026-01-01 20:55:46'),(784,'43.130.26.3',NULL,'2026-01-01 21:05:13','2026-01-01 21:05:13'),(785,'62.141.44.236',NULL,'2026-01-01 21:09:20','2026-01-01 21:09:20'),(786,'17.241.219.162',NULL,'2026-01-01 21:44:24','2026-01-01 21:44:24'),(787,'66.249.75.4',NULL,'2026-01-01 21:53:17','2026-01-01 21:53:17'),(788,'98.90.206.145',NULL,'2026-01-01 23:05:22','2026-01-01 23:05:22'),(789,'34.238.190.181',NULL,'2026-01-01 23:05:43','2026-01-01 23:05:43'),(790,'162.62.231.139',NULL,'2026-01-01 23:44:20','2026-01-01 23:44:20'),(791,'109.82.251.29',NULL,'2026-01-02 00:21:50','2026-01-02 00:21:50'),(792,'43.155.188.157',NULL,'2026-01-02 00:54:59','2026-01-02 00:54:59'),(793,'170.106.84.136',NULL,'2026-01-02 01:30:50','2026-01-02 01:30:50'),(794,'54.39.6.218',NULL,'2026-01-02 01:35:51','2026-01-02 01:35:51'),(795,'43.159.136.201',NULL,'2026-01-02 01:49:20','2026-01-02 01:49:20'),(796,'43.159.136.201',NULL,'2026-01-02 01:49:25','2026-01-02 01:49:25'),(797,'170.106.152.218',NULL,'2026-01-02 01:59:22','2026-01-02 01:59:22'),(798,'49.51.183.220',NULL,'2026-01-02 02:39:54','2026-01-02 02:39:54'),(799,'183.134.59.133',NULL,'2026-01-02 02:46:57','2026-01-02 02:46:57'),(800,'183.134.59.133',NULL,'2026-01-02 02:47:01','2026-01-02 02:47:01'),(801,'101.32.208.70',NULL,'2026-01-02 02:50:01','2026-01-02 02:50:01'),(802,'113.31.186.146',NULL,'2026-01-02 02:51:26','2026-01-02 02:51:26'),(803,'113.31.186.146',NULL,'2026-01-02 02:51:56','2026-01-02 02:51:56'),(804,'113.31.186.146',NULL,'2026-01-02 02:52:41','2026-01-02 02:52:41'),(805,'113.31.186.146',NULL,'2026-01-02 02:54:00','2026-01-02 02:54:00'),(806,'183.134.59.133',NULL,'2026-01-02 02:57:18','2026-01-02 02:57:18'),(807,'170.106.161.78',NULL,'2026-01-02 03:00:06','2026-01-02 03:00:06'),(808,'43.156.232.190',NULL,'2026-01-02 03:09:03','2026-01-02 03:09:03'),(809,'54.39.203.239',NULL,'2026-01-02 03:13:36','2026-01-02 03:13:36'),(810,'170.106.163.48',NULL,'2026-01-02 03:28:16','2026-01-02 03:28:16'),(811,'170.106.163.48',NULL,'2026-01-02 03:28:21','2026-01-02 03:28:21'),(812,'205.169.39.58',NULL,'2026-01-02 03:37:25','2026-01-02 03:37:25'),(813,'43.154.140.188',NULL,'2026-01-02 03:49:15','2026-01-02 03:49:15'),(814,'49.51.245.241',NULL,'2026-01-02 03:58:23','2026-01-02 03:58:23'),(815,'49.51.243.156',NULL,'2026-01-02 06:36:55','2026-01-02 06:36:55'),(816,'43.157.172.39',NULL,'2026-01-02 07:03:19','2026-01-02 07:03:19'),(817,'34.66.39.86',NULL,'2026-01-02 07:04:00','2026-01-02 07:04:00'),(818,'182.42.104.32',NULL,'2026-01-02 07:32:44','2026-01-02 07:32:44'),(819,'43.166.132.142',NULL,'2026-01-02 07:53:57','2026-01-02 07:53:57'),(820,'49.51.252.146',NULL,'2026-01-02 08:03:25','2026-01-02 08:03:25'),(821,'185.181.247.197',NULL,'2026-01-02 08:14:21','2026-01-02 08:14:21'),(822,'135.181.116.37',NULL,'2026-01-02 08:33:38','2026-01-02 08:33:38'),(823,'57.131.27.119',NULL,'2026-01-02 08:50:32','2026-01-02 08:50:32'),(824,'85.208.96.211',NULL,'2026-01-02 10:40:11','2026-01-02 10:40:11'),(825,'85.208.96.193',NULL,'2026-01-02 11:36:36','2026-01-02 11:36:36'),(826,'85.208.96.200',NULL,'2026-01-02 11:39:18','2026-01-02 11:39:18'),(827,'185.191.171.17',NULL,'2026-01-02 12:35:32','2026-01-02 12:35:32'),(828,'46.8.10.86',NULL,'2026-01-02 12:44:24','2026-01-02 12:44:24'),(829,'85.208.96.211',NULL,'2026-01-02 12:51:52','2026-01-02 12:51:52'),(830,'103.96.37.225',NULL,'2026-01-02 13:00:26','2026-01-02 13:00:26'),(831,'66.249.75.4',NULL,'2026-01-02 13:04:51','2026-01-02 13:04:51'),(832,'66.249.75.5',NULL,'2026-01-02 13:04:52','2026-01-02 13:04:52'),(833,'103.96.37.225',NULL,'2026-01-02 13:06:52','2026-01-02 13:06:52'),(834,'103.96.37.225',NULL,'2026-01-02 13:06:57','2026-01-02 13:06:57'),(835,'43.157.174.69',NULL,'2026-01-02 13:14:43','2026-01-02 13:14:43'),(836,'162.120.185.35',NULL,'2026-01-02 13:16:34','2026-01-02 13:16:34'),(837,'103.96.37.225',NULL,'2026-01-02 13:17:10','2026-01-02 13:17:10'),(838,'180.110.203.108',NULL,'2026-01-02 13:43:33','2026-01-02 13:43:33'),(839,'85.208.96.207',NULL,'2026-01-02 14:17:31','2026-01-02 14:17:31'),(840,'85.208.96.210',NULL,'2026-01-02 14:31:03','2026-01-02 14:31:03'),(841,'43.130.12.43',NULL,'2026-01-02 14:36:24','2026-01-02 14:36:24'),(842,'103.96.37.225',NULL,'2026-01-02 14:36:53','2026-01-02 14:36:53'),(843,'66.249.72.193',NULL,'2026-01-02 14:38:38','2026-01-02 14:38:38'),(844,'85.208.96.210',NULL,'2026-01-02 14:48:49','2026-01-02 14:48:49'),(845,'103.96.37.225',NULL,'2026-01-02 14:51:37','2026-01-02 14:51:37'),(846,'85.208.96.202',NULL,'2026-01-02 14:57:08','2026-01-02 14:57:08'),(847,'43.166.237.57',NULL,'2026-01-02 14:59:57','2026-01-02 14:59:57'),(848,'43.157.172.39',NULL,'2026-01-02 15:18:52','2026-01-02 15:18:52'),(849,'103.244.142.23',NULL,'2026-01-02 15:38:06','2026-01-02 15:38:06'),(850,'43.134.186.61',NULL,'2026-01-02 15:38:51','2026-01-02 15:38:51'),(851,'103.96.37.225',NULL,'2026-01-02 15:44:35','2026-01-02 15:44:35'),(852,'43.166.226.57',NULL,'2026-01-02 15:49:46','2026-01-02 15:49:46'),(853,'103.96.37.225',NULL,'2026-01-02 15:57:53','2026-01-02 15:57:53'),(854,'49.51.233.46',NULL,'2026-01-02 16:09:54','2026-01-02 16:09:54'),(855,'103.96.37.225',NULL,'2026-01-02 16:27:38','2026-01-02 16:27:38'),(856,'43.128.149.102',NULL,'2026-01-02 16:30:07','2026-01-02 16:30:07'),(857,'43.135.134.127',NULL,'2026-01-02 16:39:31','2026-01-02 16:39:31'),(858,'66.249.75.3',NULL,'2026-01-02 16:48:00','2026-01-02 16:48:00'),(859,'185.191.171.15',NULL,'2026-01-02 16:48:13','2026-01-02 16:48:13'),(860,'43.133.187.11',NULL,'2026-01-02 16:49:08','2026-01-02 16:49:08'),(861,'85.208.96.208',NULL,'2026-01-02 16:58:45','2026-01-02 16:58:45'),(862,'66.249.75.4',NULL,'2026-01-02 17:12:03','2026-01-02 17:12:03'),(863,'100.26.255.190',NULL,'2026-01-02 18:05:55','2026-01-02 18:05:55'),(864,'100.26.255.190',NULL,'2026-01-02 18:05:55','2026-01-02 18:05:55'),(865,'37.42.251.169',NULL,'2026-01-02 18:14:57','2026-01-02 18:14:57'),(866,'185.191.171.15',NULL,'2026-01-02 18:34:03','2026-01-02 18:34:03'),(867,'185.191.171.14',NULL,'2026-01-02 19:05:07','2026-01-02 19:05:07'),(868,'103.96.37.225',NULL,'2026-01-02 19:16:17','2026-01-02 19:16:17'),(869,'103.96.37.225',NULL,'2026-01-02 19:20:42','2026-01-02 19:20:42'),(870,'85.208.96.208',NULL,'2026-01-02 19:31:42','2026-01-02 19:31:42'),(871,'43.156.202.34',NULL,'2026-01-02 19:55:59','2026-01-02 19:55:59'),(872,'85.208.96.198',NULL,'2026-01-02 20:17:27','2026-01-02 20:17:27'),(873,'185.191.171.14',NULL,'2026-01-02 20:27:36','2026-01-02 20:27:36'),(874,'51.222.168.62',NULL,'2026-01-02 20:35:16','2026-01-02 20:35:16'),(875,'170.106.65.93',NULL,'2026-01-02 20:39:14','2026-01-02 20:39:14'),(876,'185.191.171.18',NULL,'2026-01-02 20:42:54','2026-01-02 20:42:54'),(877,'43.166.226.186',NULL,'2026-01-02 20:59:19','2026-01-02 20:59:19'),(878,'103.96.37.225',NULL,'2026-01-02 21:01:12','2026-01-02 21:01:12'),(879,'185.191.171.15',NULL,'2026-01-02 21:02:01','2026-01-02 21:02:01'),(880,'170.106.11.6',NULL,'2026-01-02 21:03:12','2026-01-02 21:03:12'),(881,'49.51.33.159',NULL,'2026-01-02 21:10:36','2026-01-02 21:10:36'),(882,'43.166.239.145',NULL,'2026-01-02 21:11:45','2026-01-02 21:11:45'),(883,'66.249.75.4',NULL,'2026-01-02 21:13:35','2026-01-02 21:13:35'),(884,'66.249.75.3',NULL,'2026-01-02 21:13:36','2026-01-02 21:13:36'),(885,'49.51.243.156',NULL,'2026-01-02 21:19:51','2026-01-02 21:19:51'),(886,'37.59.187.20',NULL,'2026-01-02 21:23:09','2026-01-02 21:23:09'),(887,'37.59.187.20',NULL,'2026-01-02 21:24:52','2026-01-02 21:24:52'),(888,'85.208.96.207',NULL,'2026-01-02 21:28:17','2026-01-02 21:28:17'),(889,'43.135.182.43',NULL,'2026-01-02 21:29:30','2026-01-02 21:29:30'),(890,'54.39.6.87',NULL,'2026-01-02 21:32:51','2026-01-02 21:32:51'),(891,'43.133.220.37',NULL,'2026-01-02 21:38:54','2026-01-02 21:38:54'),(892,'185.191.171.18',NULL,'2026-01-02 21:44:45','2026-01-02 21:44:45'),(893,'43.133.220.37',NULL,'2026-01-02 21:48:35','2026-01-02 21:48:35'),(894,'43.157.170.126',NULL,'2026-01-02 21:58:05','2026-01-02 21:58:05'),(895,'124.156.157.91',NULL,'2026-01-02 22:08:35','2026-01-02 22:08:35'),(896,'101.33.81.73',NULL,'2026-01-02 22:20:21','2026-01-02 22:20:21'),(897,'43.166.242.189',NULL,'2026-01-02 22:32:28','2026-01-02 22:32:28'),(898,'43.159.145.153',NULL,'2026-01-02 22:41:06','2026-01-02 22:41:06'),(899,'15.235.27.156',NULL,'2026-01-02 22:41:52','2026-01-02 22:41:52'),(900,'142.44.225.157',NULL,'2026-01-02 22:42:09','2026-01-02 22:42:09'),(901,'167.114.139.192',NULL,'2026-01-02 22:47:21','2026-01-02 22:47:21'),(902,'43.157.147.3',NULL,'2026-01-02 22:48:48','2026-01-02 22:48:48'),(903,'54.39.203.94',NULL,'2026-01-02 22:52:05','2026-01-02 22:52:05'),(904,'51.222.95.23',NULL,'2026-01-02 22:52:40','2026-01-02 22:52:40'),(905,'54.39.210.64',NULL,'2026-01-02 22:57:05','2026-01-02 22:57:05'),(906,'51.161.37.30',NULL,'2026-01-02 22:58:02','2026-01-02 22:58:02'),(907,'170.106.197.109',NULL,'2026-01-02 23:00:18','2026-01-02 23:00:18'),(908,'54.39.0.87',NULL,'2026-01-02 23:02:05','2026-01-02 23:02:05'),(909,'51.161.37.148',NULL,'2026-01-02 23:02:43','2026-01-02 23:02:43'),(910,'148.113.130.213',NULL,'2026-01-02 23:07:07','2026-01-02 23:07:07'),(911,'142.44.225.148',NULL,'2026-01-02 23:07:19','2026-01-02 23:07:19'),(912,'15.235.27.181',NULL,'2026-01-02 23:11:27','2026-01-02 23:11:27'),(913,'142.44.225.96',NULL,'2026-01-02 23:12:05','2026-01-02 23:12:05'),(914,'167.114.139.134',NULL,'2026-01-02 23:12:14','2026-01-02 23:12:14'),(915,'54.39.6.39',NULL,'2026-01-02 23:15:39','2026-01-02 23:15:39'),(916,'167.114.139.51',NULL,'2026-01-02 23:17:18','2026-01-02 23:17:18'),(917,'51.222.168.206',NULL,'2026-01-02 23:20:17','2026-01-02 23:20:17'),(918,'142.44.220.116',NULL,'2026-01-02 23:22:20','2026-01-02 23:22:20'),(919,'54.39.89.204',NULL,'2026-01-02 23:24:42','2026-01-02 23:24:42'),(920,'54.39.203.214',NULL,'2026-01-02 23:27:16','2026-01-02 23:27:16'),(921,'15.235.96.126',NULL,'2026-01-02 23:28:45','2026-01-02 23:28:45'),(922,'64.225.12.190',NULL,'2026-01-02 23:30:32','2026-01-02 23:30:32'),(923,'54.39.6.197',NULL,'2026-01-02 23:32:10','2026-01-02 23:32:10'),(924,'51.161.37.209',NULL,'2026-01-02 23:32:42','2026-01-02 23:32:42'),(925,'142.44.220.79',NULL,'2026-01-02 23:36:47','2026-01-02 23:36:47'),(926,'54.39.0.216',NULL,'2026-01-02 23:37:12','2026-01-02 23:37:12'),(927,'15.235.27.117',NULL,'2026-01-02 23:37:25','2026-01-02 23:37:25'),(928,'54.39.210.202',NULL,'2026-01-02 23:40:34','2026-01-02 23:40:34'),(929,'142.44.228.94',NULL,'2026-01-02 23:42:19','2026-01-02 23:42:19'),(930,'167.114.139.193',NULL,'2026-01-02 23:44:06','2026-01-02 23:44:06'),(931,'149.57.180.99',NULL,'2026-01-02 23:46:17','2026-01-02 23:46:17'),(932,'148.113.128.98',NULL,'2026-01-02 23:47:12','2026-01-02 23:47:12'),(933,'54.39.203.40',NULL,'2026-01-02 23:48:15','2026-01-02 23:48:15'),(934,'15.235.98.129',NULL,'2026-01-02 23:51:59','2026-01-02 23:51:59'),(935,'148.113.130.46',NULL,'2026-01-02 23:52:10','2026-01-02 23:52:10'),(936,'142.44.225.99',NULL,'2026-01-02 23:52:16','2026-01-02 23:52:16'),(937,'37.111.218.31',NULL,'2026-01-02 23:54:34','2026-01-02 23:54:34'),(938,'54.39.6.7',NULL,'2026-01-02 23:55:53','2026-01-02 23:55:53'),(939,'167.114.139.5',NULL,'2026-01-02 23:57:22','2026-01-02 23:57:22'),(940,'54.39.89.131',NULL,'2026-01-03 00:00:02','2026-01-03 00:00:02'),(941,'51.161.37.255',NULL,'2026-01-03 00:02:25','2026-01-03 00:02:25'),(942,'54.39.0.69',NULL,'2026-01-03 00:04:23','2026-01-03 00:04:23'),(943,'142.44.225.62',NULL,'2026-01-03 00:07:19','2026-01-03 00:07:19'),(944,'142.44.228.137',NULL,'2026-01-03 00:08:18','2026-01-03 00:08:18'),(945,'15.235.98.199',NULL,'2026-01-03 00:12:06','2026-01-03 00:12:06'),(946,'54.39.0.135',NULL,'2026-01-03 00:12:11','2026-01-03 00:12:11'),(947,'148.113.128.124',NULL,'2026-01-03 00:16:03','2026-01-03 00:16:03'),(948,'167.114.139.99',NULL,'2026-01-03 00:17:08','2026-01-03 00:17:08'),(949,'142.44.233.170',NULL,'2026-01-03 00:17:22','2026-01-03 00:17:22'),(950,'54.39.89.87',NULL,'2026-01-03 00:19:58','2026-01-03 00:19:58'),(951,'142.44.228.85',NULL,'2026-01-03 00:22:23','2026-01-03 00:22:23'),(952,'148.113.130.67',NULL,'2026-01-03 00:22:43','2026-01-03 00:22:43'),(953,'51.222.95.173',NULL,'2026-01-03 00:27:08','2026-01-03 00:27:08'),(954,'23.27.145.77',NULL,'2026-01-03 00:37:19','2026-01-03 00:37:19'),(955,'54.39.0.127',NULL,'2026-01-03 00:45:38','2026-01-03 00:45:38'),(956,'15.235.96.161',NULL,'2026-01-03 00:50:16','2026-01-03 00:50:16'),(957,'103.112.55.160',NULL,'2026-01-03 00:50:35','2026-01-03 00:50:35'),(958,'148.113.128.151',NULL,'2026-01-03 00:52:22','2026-01-03 00:52:22'),(959,'54.39.136.31',NULL,'2026-01-03 00:54:55','2026-01-03 00:54:55'),(960,'54.39.0.150',NULL,'2026-01-03 00:57:19','2026-01-03 00:57:19'),(961,'15.235.98.30',NULL,'2026-01-03 00:59:15','2026-01-03 00:59:15'),(962,'142.44.233.210',NULL,'2026-01-03 01:02:15','2026-01-03 01:02:15'),(963,'142.44.228.182',NULL,'2026-01-03 01:03:44','2026-01-03 01:03:44'),(964,'54.39.210.189',NULL,'2026-01-03 01:07:13','2026-01-03 01:07:13'),(965,'54.39.0.233',NULL,'2026-01-03 01:07:59','2026-01-03 01:07:59'),(966,'54.39.136.14',NULL,'2026-01-03 01:12:07','2026-01-03 01:12:07'),(967,'54.39.0.254',NULL,'2026-01-03 01:12:17','2026-01-03 01:12:17'),(968,'142.44.233.154',NULL,'2026-01-03 01:16:54','2026-01-03 01:16:54'),(969,'167.114.139.237',NULL,'2026-01-03 01:17:07','2026-01-03 01:17:07'),(970,'167.114.139.31',NULL,'2026-01-03 01:17:30','2026-01-03 01:17:30'),(971,'54.39.89.249',NULL,'2026-01-03 01:21:43','2026-01-03 01:21:43'),(972,'51.222.168.142',NULL,'2026-01-03 01:22:23','2026-01-03 01:22:23'),(973,'15.235.98.169',NULL,'2026-01-03 01:26:10','2026-01-03 01:26:10'),(974,'51.222.95.118',NULL,'2026-01-03 01:27:27','2026-01-03 01:27:27'),(975,'51.161.37.145',NULL,'2026-01-03 01:31:24','2026-01-03 01:31:24'),(976,'51.222.95.141',NULL,'2026-01-03 01:32:24','2026-01-03 01:32:24'),(977,'51.222.168.85',NULL,'2026-01-03 01:36:04','2026-01-03 01:36:04'),(978,'148.113.130.221',NULL,'2026-01-03 01:37:25','2026-01-03 01:37:25'),(979,'54.39.203.215',NULL,'2026-01-03 01:40:35','2026-01-03 01:40:35'),(980,'54.39.136.86',NULL,'2026-01-03 01:42:29','2026-01-03 01:42:29'),(981,'142.44.220.252',NULL,'2026-01-03 01:44:48','2026-01-03 01:44:48'),(982,'54.39.203.110',NULL,'2026-01-03 01:47:18','2026-01-03 01:47:18'),(983,'51.161.65.149',NULL,'2026-01-03 01:49:08','2026-01-03 01:49:08'),(984,'51.222.168.129',NULL,'2026-01-03 01:52:22','2026-01-03 01:52:22'),(985,'15.235.98.108',NULL,'2026-01-03 01:53:32','2026-01-03 01:53:32'),(986,'51.161.37.178',NULL,'2026-01-03 01:57:14','2026-01-03 01:57:14'),(987,'15.235.98.48',NULL,'2026-01-03 01:57:51','2026-01-03 01:57:51'),(988,'104.28.226.79',NULL,'2026-01-03 02:00:29','2026-01-03 02:00:29'),(989,'15.235.96.159',NULL,'2026-01-03 02:02:05','2026-01-03 02:02:05'),(990,'15.235.27.134',NULL,'2026-01-03 02:02:11','2026-01-03 02:02:11'),(991,'54.39.210.127',NULL,'2026-01-03 02:02:36','2026-01-03 02:02:36'),(992,'104.28.211.187',NULL,'2026-01-03 02:05:19','2026-01-03 02:05:19'),(993,'142.44.220.122',NULL,'2026-01-03 02:05:56','2026-01-03 02:05:56'),(994,'142.44.228.255',NULL,'2026-01-03 02:07:27','2026-01-03 02:07:27'),(995,'45.148.10.99',NULL,'2026-01-03 02:08:15','2026-01-03 02:08:15'),(996,'54.39.210.110',NULL,'2026-01-03 02:10:10','2026-01-03 02:10:10'),(997,'45.141.215.203',NULL,'2026-01-03 02:11:57','2026-01-03 02:11:57'),(998,'54.39.136.9',NULL,'2026-01-03 02:12:28','2026-01-03 02:12:28'),(999,'51.222.168.29',NULL,'2026-01-03 02:14:10','2026-01-03 02:14:10'),(1000,'167.114.139.135',NULL,'2026-01-03 02:17:24','2026-01-03 02:17:24'),(1001,'15.235.98.56',NULL,'2026-01-03 02:18:37','2026-01-03 02:18:37'),(1002,'148.113.128.116',NULL,'2026-01-03 02:22:18','2026-01-03 02:22:18'),(1003,'142.44.228.218',NULL,'2026-01-03 02:22:41','2026-01-03 02:22:41'),(1004,'51.222.168.15',NULL,'2026-01-03 02:26:24','2026-01-03 02:26:24'),(1005,'54.39.89.165',NULL,'2026-01-03 02:27:12','2026-01-03 02:27:12'),(1006,'54.39.203.21',NULL,'2026-01-03 02:27:33','2026-01-03 02:27:33'),(1007,'142.44.233.149',NULL,'2026-01-03 02:28:33','2026-01-03 02:28:33'),(1008,'45.148.10.99',NULL,'2026-01-03 02:28:34','2026-01-03 02:28:34'),(1009,'15.235.96.23',NULL,'2026-01-03 02:30:25','2026-01-03 02:30:25'),(1010,'142.44.220.80',NULL,'2026-01-03 02:32:16','2026-01-03 02:32:16'),(1011,'142.44.233.175',NULL,'2026-01-03 02:32:26','2026-01-03 02:32:26'),(1012,'51.161.65.110',NULL,'2026-01-03 02:36:29','2026-01-03 02:36:29'),(1013,'148.113.130.76',NULL,'2026-01-03 02:37:25','2026-01-03 02:37:25'),(1014,'167.71.170.12',NULL,'2026-01-03 02:37:26','2026-01-03 02:37:26'),(1015,'113.31.186.146',NULL,'2026-01-03 02:41:31','2026-01-03 02:41:31'),(1016,'113.31.186.146',NULL,'2026-01-03 02:41:44','2026-01-03 02:41:44'),(1017,'113.31.186.146',NULL,'2026-01-03 02:41:48','2026-01-03 02:41:48'),(1018,'148.113.130.58',NULL,'2026-01-03 02:43:47','2026-01-03 02:43:47'),(1019,'113.31.186.146',NULL,'2026-01-03 02:43:48','2026-01-03 02:43:48'),(1020,'183.134.59.133',NULL,'2026-01-03 02:44:33','2026-01-03 02:44:33'),(1021,'15.235.98.180',NULL,'2026-01-03 02:47:18','2026-01-03 02:47:18'),(1022,'45.134.79.142',NULL,'2026-01-03 02:49:29','2026-01-03 02:49:29'),(1023,'51.222.95.91',NULL,'2026-01-03 02:50:30','2026-01-03 02:50:30'),(1024,'54.39.0.207',NULL,'2026-01-03 02:52:21','2026-01-03 02:52:21'),(1025,'148.113.128.6',NULL,'2026-01-03 02:56:49','2026-01-03 02:56:49'),(1026,'142.44.225.131',NULL,'2026-01-03 02:57:28','2026-01-03 02:57:28'),(1027,'15.235.98.70',NULL,'2026-01-03 03:03:01','2026-01-03 03:03:01'),(1028,'142.44.225.101',NULL,'2026-01-03 03:07:13','2026-01-03 03:07:13'),(1029,'54.39.6.200',NULL,'2026-01-03 03:08:55','2026-01-03 03:08:55'),(1030,'142.44.225.22',NULL,'2026-01-03 03:12:21','2026-01-03 03:12:21'),(1031,'142.44.228.64',NULL,'2026-01-03 03:15:00','2026-01-03 03:15:00'),(1032,'45.134.79.142',NULL,'2026-01-03 03:17:09','2026-01-03 03:17:09'),(1033,'167.114.139.204',NULL,'2026-01-03 03:17:22','2026-01-03 03:17:22'),(1034,'54.39.89.39',NULL,'2026-01-03 03:21:09','2026-01-03 03:21:09'),(1035,'54.39.136.50',NULL,'2026-01-03 03:22:28','2026-01-03 03:22:28'),(1036,'15.235.98.158',NULL,'2026-01-03 03:27:27','2026-01-03 03:27:27'),(1037,'54.39.89.108',NULL,'2026-01-03 03:32:12','2026-01-03 03:32:12'),(1038,'54.39.210.108',NULL,'2026-01-03 03:33:35','2026-01-03 03:33:35'),(1039,'54.39.203.52',NULL,'2026-01-03 03:37:21','2026-01-03 03:37:21'),(1040,'54.39.203.204',NULL,'2026-01-03 03:40:06','2026-01-03 03:40:06'),(1041,'54.39.89.0',NULL,'2026-01-03 03:42:22','2026-01-03 03:42:22'),(1042,'17.241.75.211',NULL,'2026-01-03 03:46:11','2026-01-03 03:46:11'),(1043,'148.113.128.118',NULL,'2026-01-03 03:46:34','2026-01-03 03:46:34'),(1044,'54.39.6.182',NULL,'2026-01-03 03:47:32','2026-01-03 03:47:32'),(1045,'142.44.220.107',NULL,'2026-01-03 03:52:46','2026-01-03 03:52:46'),(1046,'54.153.112.2',NULL,'2026-01-03 03:54:21','2026-01-03 03:54:21'),(1047,'51.222.95.68',NULL,'2026-01-03 03:57:12','2026-01-03 03:57:12'),(1048,'142.44.220.188',NULL,'2026-01-03 03:58:32','2026-01-03 03:58:32'),(1049,'15.235.96.122',NULL,'2026-01-03 04:02:19','2026-01-03 04:02:19'),(1050,'54.39.136.31',NULL,'2026-01-03 04:04:14','2026-01-03 04:04:14'),(1051,'45.134.79.132',NULL,'2026-01-03 04:07:13','2026-01-03 04:07:13'),(1052,'148.113.128.208',NULL,'2026-01-03 04:07:22','2026-01-03 04:07:22'),(1053,'142.44.220.253',NULL,'2026-01-03 04:10:10','2026-01-03 04:10:10'),(1054,'45.134.79.137',NULL,'2026-01-03 04:11:22','2026-01-03 04:11:22'),(1055,'15.235.27.163',NULL,'2026-01-03 04:12:29','2026-01-03 04:12:29'),(1056,'148.113.130.104',NULL,'2026-01-03 04:15:48','2026-01-03 04:15:48'),(1057,'142.44.233.217',NULL,'2026-01-03 04:17:35','2026-01-03 04:17:35'),(1058,'45.148.10.99',NULL,'2026-01-03 04:34:23','2026-01-03 04:34:23'),(1059,'17.246.19.108',NULL,'2026-01-03 04:35:42','2026-01-03 04:35:42'),(1060,'45.148.10.99',NULL,'2026-01-03 04:39:53','2026-01-03 04:39:53'),(1061,'45.134.79.137',NULL,'2026-01-03 04:42:53','2026-01-03 04:42:53'),(1062,'143.198.0.148',NULL,'2026-01-03 04:45:02','2026-01-03 04:45:02'),(1063,'185.191.171.14',NULL,'2026-01-03 04:55:19','2026-01-03 04:55:19'),(1064,'165.227.108.44',NULL,'2026-01-03 04:55:38','2026-01-03 04:55:38'),(1065,'159.65.243.31',NULL,'2026-01-03 04:57:39','2026-01-03 04:57:39'),(1066,'167.71.109.139',NULL,'2026-01-03 04:59:12','2026-01-03 04:59:12'),(1067,'157.245.114.16',NULL,'2026-01-03 04:59:26','2026-01-03 04:59:26'),(1068,'159.65.33.66',NULL,'2026-01-03 05:06:05','2026-01-03 05:06:05'),(1069,'167.172.254.240',NULL,'2026-01-03 05:10:33','2026-01-03 05:10:33'),(1070,'159.203.170.180',NULL,'2026-01-03 05:12:12','2026-01-03 05:12:12'),(1071,'138.197.25.213',NULL,'2026-01-03 05:17:20','2026-01-03 05:17:20'),(1072,'165.227.108.44',NULL,'2026-01-03 05:20:13','2026-01-03 05:20:13'),(1073,'143.198.23.211',NULL,'2026-01-03 05:20:46','2026-01-03 05:20:46'),(1074,'157.245.119.76',NULL,'2026-01-03 05:24:25','2026-01-03 05:24:25'),(1075,'104.131.166.99',NULL,'2026-01-03 05:26:25','2026-01-03 05:26:25'),(1076,'104.131.166.99',NULL,'2026-01-03 05:26:26','2026-01-03 05:26:26'),(1077,'17.246.15.79',NULL,'2026-01-03 05:58:45','2026-01-03 05:58:45'),(1078,'34.66.55.175',NULL,'2026-01-03 06:04:45','2026-01-03 06:04:45'),(1079,'185.191.171.6',NULL,'2026-01-03 06:44:37','2026-01-03 06:44:37'),(1080,'66.249.75.4',NULL,'2026-01-03 06:45:21','2026-01-03 06:45:21'),(1081,'185.191.171.6',NULL,'2026-01-03 06:51:25','2026-01-03 06:51:25'),(1082,'43.157.95.239',NULL,'2026-01-03 07:01:32','2026-01-03 07:01:32'),(1083,'54.39.0.160',NULL,'2026-01-03 07:03:50','2026-01-03 07:03:50'),(1084,'43.130.72.177',NULL,'2026-01-03 07:07:25','2026-01-03 07:07:25'),(1085,'170.106.180.246',NULL,'2026-01-03 07:18:21','2026-01-03 07:18:21'),(1086,'43.153.102.138',NULL,'2026-01-03 07:24:36','2026-01-03 07:24:36'),(1087,'43.153.7.191',NULL,'2026-01-03 07:36:56','2026-01-03 07:36:56'),(1088,'43.153.19.83',NULL,'2026-01-03 07:46:38','2026-01-03 07:46:38'),(1089,'43.165.67.57',NULL,'2026-01-03 07:56:00','2026-01-03 07:56:00'),(1090,'142.44.228.103',NULL,'2026-01-03 07:57:19','2026-01-03 07:57:19'),(1091,'43.153.10.13',NULL,'2026-01-03 08:03:49','2026-01-03 08:03:49'),(1092,'34.255.191.61',NULL,'2026-01-03 08:05:35','2026-01-03 08:05:35'),(1093,'182.44.2.148',NULL,'2026-01-03 08:16:09','2026-01-03 08:16:09'),(1094,'43.135.144.126',NULL,'2026-01-03 08:17:18','2026-01-03 08:17:18'),(1095,'49.51.72.236',NULL,'2026-01-03 08:27:25','2026-01-03 08:27:25'),(1096,'43.157.168.43',NULL,'2026-01-03 08:36:21','2026-01-03 08:36:21'),(1097,'170.106.148.137',NULL,'2026-01-03 08:47:22','2026-01-03 08:47:22'),(1098,'43.128.149.102',NULL,'2026-01-03 08:55:35','2026-01-03 08:55:35'),(1099,'43.134.141.244',NULL,'2026-01-03 09:06:12','2026-01-03 09:06:12'),(1100,'54.39.210.219',NULL,'2026-01-03 09:06:24','2026-01-03 09:06:24'),(1101,'43.153.71.132',NULL,'2026-01-03 09:15:53','2026-01-03 09:15:53'),(1102,'43.153.35.128',NULL,'2026-01-03 09:18:29','2026-01-03 09:18:29'),(1103,'43.133.14.237',NULL,'2026-01-03 09:37:22','2026-01-03 09:37:22'),(1104,'43.130.14.245',NULL,'2026-01-03 09:45:41','2026-01-03 09:45:41'),(1105,'49.51.166.228',NULL,'2026-01-03 09:57:02','2026-01-03 09:57:02'),(1106,'142.44.228.78',NULL,'2026-01-03 09:58:31','2026-01-03 09:58:31'),(1107,'43.153.123.4',NULL,'2026-01-03 10:06:17','2026-01-03 10:06:17'),(1108,'61.79.198.49',NULL,'2026-01-03 10:14:32','2026-01-03 10:14:32'),(1109,'43.166.134.47',NULL,'2026-01-03 10:15:42','2026-01-03 10:15:42'),(1110,'43.166.134.114',NULL,'2026-01-03 10:36:59','2026-01-03 10:36:59'),(1111,'43.135.145.77',NULL,'2026-01-03 10:46:30','2026-01-03 10:46:30'),(1112,'54.39.0.114',NULL,'2026-01-03 10:49:20','2026-01-03 10:49:20'),(1113,'43.157.95.239',NULL,'2026-01-03 11:04:38','2026-01-03 11:04:38'),(1114,'103.96.37.225',NULL,'2026-01-03 11:24:00','2026-01-03 11:24:00'),(1115,'17.22.253.160',NULL,'2026-01-03 11:28:27','2026-01-03 11:28:27'),(1116,'170.106.37.134',NULL,'2026-01-03 11:28:37','2026-01-03 11:28:37'),(1117,'17.246.23.12',NULL,'2026-01-03 11:35:28','2026-01-03 11:35:28'),(1118,'43.166.237.57',NULL,'2026-01-03 11:36:25','2026-01-03 11:36:25'),(1119,'101.33.81.73',NULL,'2026-01-03 11:48:11','2026-01-03 11:48:11'),(1120,'85.208.96.197',NULL,'2026-01-03 11:53:05','2026-01-03 11:53:05'),(1121,'43.133.69.37',NULL,'2026-01-03 11:56:36','2026-01-03 11:56:36'),(1122,'43.166.240.231',NULL,'2026-01-03 12:07:27','2026-01-03 12:07:27'),(1123,'147.45.64.17',NULL,'2026-01-03 12:46:12','2026-01-03 12:46:12'),(1124,'142.44.220.49',NULL,'2026-01-03 12:48:19','2026-01-03 12:48:19'),(1125,'148.113.128.130',NULL,'2026-01-03 13:04:05','2026-01-03 13:04:05'),(1126,'15.235.96.71',NULL,'2026-01-03 13:18:13','2026-01-03 13:18:13'),(1127,'68.183.87.33',NULL,'2026-01-03 13:23:05','2026-01-03 13:23:05'),(1128,'167.114.139.93',NULL,'2026-01-03 13:32:00','2026-01-03 13:32:00'),(1129,'54.39.0.60',NULL,'2026-01-03 13:45:13','2026-01-03 13:45:13'),(1130,'15.235.96.98',NULL,'2026-01-03 13:57:49','2026-01-03 13:57:49'),(1131,'1.15.52.154',NULL,'2026-01-03 14:21:12','2026-01-03 14:21:12'),(1132,'51.222.168.150',NULL,'2026-01-03 14:22:50','2026-01-03 14:22:50'),(1133,'54.39.0.220',NULL,'2026-01-03 14:43:01','2026-01-03 14:43:01'),(1134,'54.39.6.146',NULL,'2026-01-03 14:58:42','2026-01-03 14:58:42'),(1135,'148.113.130.16',NULL,'2026-01-03 15:11:49','2026-01-03 15:11:49'),(1136,'148.113.128.138',NULL,'2026-01-03 15:24:53','2026-01-03 15:24:53'),(1137,'103.148.25.242',NULL,'2026-01-03 15:35:21','2026-01-03 15:35:21'),(1138,'142.44.220.249',NULL,'2026-01-03 15:38:12','2026-01-03 15:38:12'),(1139,'167.114.139.109',NULL,'2026-01-03 15:49:51','2026-01-03 15:49:51'),(1140,'142.44.233.189',NULL,'2026-01-03 16:01:38','2026-01-03 16:01:38'),(1141,'43.159.143.139',NULL,'2026-01-03 16:05:00','2026-01-03 16:05:00'),(1142,'54.39.210.229',NULL,'2026-01-03 16:13:33','2026-01-03 16:13:33'),(1143,'129.226.174.80',NULL,'2026-01-03 16:29:27','2026-01-03 16:29:27'),(1144,'43.153.104.196',NULL,'2026-01-03 16:38:31','2026-01-03 16:38:31'),(1145,'23.27.145.162',NULL,'2026-01-03 16:46:30','2026-01-03 16:46:30'),(1146,'43.167.236.228',NULL,'2026-01-03 16:47:32','2026-01-03 16:47:32'),(1147,'49.51.183.220',NULL,'2026-01-03 16:57:55','2026-01-03 16:57:55'),(1148,'43.157.150.69',NULL,'2026-01-03 17:07:30','2026-01-03 17:07:30'),(1149,'43.157.46.118',NULL,'2026-01-03 17:17:46','2026-01-03 17:17:46'),(1150,'43.157.153.236',NULL,'2026-01-03 17:21:31','2026-01-03 17:21:31'),(1151,'37.59.187.20',NULL,'2026-01-03 17:26:13','2026-01-03 17:26:13'),(1152,'37.59.187.20',NULL,'2026-01-03 17:27:29','2026-01-03 17:27:29'),(1153,'37.59.187.20',NULL,'2026-01-03 17:27:30','2026-01-03 17:27:30'),(1154,'43.135.211.148',NULL,'2026-01-03 17:28:30','2026-01-03 17:28:30'),(1155,'170.106.107.87',NULL,'2026-01-03 17:38:37','2026-01-03 17:38:37'),(1156,'43.154.140.188',NULL,'2026-01-03 17:48:05','2026-01-03 17:48:05'),(1157,'162.62.213.165',NULL,'2026-01-03 17:57:42','2026-01-03 17:57:42'),(1158,'13.222.33.247',NULL,'2026-01-03 18:01:01','2026-01-03 18:01:01'),(1159,'13.222.33.247',NULL,'2026-01-03 18:01:01','2026-01-03 18:01:01'),(1160,'101.33.66.34',NULL,'2026-01-03 18:08:12','2026-01-03 18:08:12'),(1161,'101.33.66.34',NULL,'2026-01-03 18:17:55','2026-01-03 18:17:55'),(1162,'43.157.67.70',NULL,'2026-01-03 18:27:42','2026-01-03 18:27:42'),(1163,'43.130.16.212',NULL,'2026-01-03 18:38:15','2026-01-03 18:38:15'),(1164,'43.157.38.131',NULL,'2026-01-03 18:48:23','2026-01-03 18:48:23'),(1165,'43.135.211.148',NULL,'2026-01-03 18:57:31','2026-01-03 18:57:31'),(1166,'43.157.147.3',NULL,'2026-01-03 19:07:33','2026-01-03 19:07:33'),(1167,'54.39.203.33',NULL,'2026-01-03 19:11:09','2026-01-03 19:11:09'),(1168,'60.188.57.0',NULL,'2026-01-03 20:42:44','2026-01-03 20:42:44'),(1169,'43.157.181.189',NULL,'2026-01-03 21:03:16','2026-01-03 21:03:16'),(1170,'192.71.12.156',NULL,'2026-01-03 21:33:56','2026-01-03 21:33:56'),(1171,'192.71.2.9',NULL,'2026-01-03 21:33:57','2026-01-03 21:33:57'),(1172,'192.71.142.232',NULL,'2026-01-03 21:33:58','2026-01-03 21:33:58'),(1173,'192.71.12.156',NULL,'2026-01-03 21:33:59','2026-01-03 21:33:59'),(1174,'192.36.137.155',NULL,'2026-01-03 21:45:59','2026-01-03 21:45:59'),(1175,'192.121.135.97',NULL,'2026-01-03 21:46:00','2026-01-03 21:46:00'),(1176,'192.36.226.103',NULL,'2026-01-03 21:46:01','2026-01-03 21:46:01'),(1177,'192.165.45.205',NULL,'2026-01-03 21:46:02','2026-01-03 21:46:02'),(1178,'162.120.184.52',NULL,'2026-01-03 22:16:44','2026-01-03 22:16:44'),(1179,'103.96.37.225',NULL,'2026-01-03 22:23:20','2026-01-03 22:23:20'),(1180,'170.106.163.84',NULL,'2026-01-03 22:43:58','2026-01-03 22:43:58'),(1181,'170.106.143.6',NULL,'2026-01-03 22:58:02','2026-01-03 22:58:02'),(1182,'103.99.176.73',NULL,'2026-01-03 23:08:16','2026-01-03 23:08:16'),(1183,'43.153.119.119',NULL,'2026-01-03 23:08:17','2026-01-03 23:08:17'),(1184,'43.130.67.6',NULL,'2026-01-03 23:19:19','2026-01-03 23:19:19'),(1185,'43.166.247.155',NULL,'2026-01-03 23:30:21','2026-01-03 23:30:21'),(1186,'51.222.168.75',NULL,'2026-01-03 23:35:23','2026-01-03 23:35:23'),(1187,'43.133.69.37',NULL,'2026-01-03 23:38:33','2026-01-03 23:38:33'),(1188,'43.130.74.193',NULL,'2026-01-03 23:48:22','2026-01-03 23:48:22'),(1189,'49.51.72.236',NULL,'2026-01-03 23:57:17','2026-01-03 23:57:17'),(1190,'109.82.7.207',NULL,'2026-01-04 00:01:48','2026-01-04 00:01:48'),(1191,'109.82.7.207',NULL,'2026-01-04 00:05:04','2026-01-04 00:05:04'),(1192,'74.125.213.32',NULL,'2026-01-04 00:05:08','2026-01-04 00:05:08'),(1193,'74.125.213.32',NULL,'2026-01-04 00:05:08','2026-01-04 00:05:08'),(1194,'66.249.93.129',NULL,'2026-01-04 00:07:41','2026-01-04 00:07:41'),(1195,'74.125.213.34',NULL,'2026-01-04 00:07:42','2026-01-04 00:07:42'),(1196,'74.125.210.106',NULL,'2026-01-04 00:07:42','2026-01-04 00:07:42'),(1197,'43.153.7.191',NULL,'2026-01-04 00:08:22','2026-01-04 00:08:22'),(1198,'66.249.93.128',NULL,'2026-01-04 00:08:33','2026-01-04 00:08:33'),(1199,'74.125.210.105',NULL,'2026-01-04 00:08:34','2026-01-04 00:08:34'),(1200,'74.125.213.32',NULL,'2026-01-04 00:08:34','2026-01-04 00:08:34'),(1201,'66.249.93.128',NULL,'2026-01-04 00:08:49','2026-01-04 00:08:49'),(1202,'43.166.134.114',NULL,'2026-01-04 00:08:50','2026-01-04 00:08:50'),(1203,'66.249.93.129',NULL,'2026-01-04 00:08:50','2026-01-04 00:08:50'),(1204,'74.125.213.33',NULL,'2026-01-04 00:08:50','2026-01-04 00:08:50'),(1205,'109.82.7.207',NULL,'2026-01-04 00:18:25','2026-01-04 00:18:25'),(1206,'66.249.88.102',NULL,'2026-01-04 00:18:28','2026-01-04 00:18:28'),(1207,'66.249.83.100',NULL,'2026-01-04 00:18:28','2026-01-04 00:18:28'),(1208,'43.130.9.111',NULL,'2026-01-04 00:30:58','2026-01-04 00:30:58'),(1209,'43.164.197.177',NULL,'2026-01-04 00:40:44','2026-01-04 00:40:44'),(1210,'43.165.190.5',NULL,'2026-01-04 01:00:23','2026-01-04 01:00:23'),(1211,'124.156.179.141',NULL,'2026-01-04 01:11:45','2026-01-04 01:11:45'),(1212,'43.135.115.233',NULL,'2026-01-04 01:19:04','2026-01-04 01:19:04'),(1213,'51.222.95.70',NULL,'2026-01-04 01:59:11','2026-01-04 01:59:11'),(1214,'183.134.59.133',NULL,'2026-01-04 02:06:34','2026-01-04 02:06:34'),(1215,'113.31.186.146',NULL,'2026-01-04 02:07:39','2026-01-04 02:07:39'),(1216,'183.134.59.133',NULL,'2026-01-04 02:09:20','2026-01-04 02:09:20'),(1217,'113.31.186.146',NULL,'2026-01-04 02:09:42','2026-01-04 02:09:42'),(1218,'123.160.232.96',NULL,'2026-01-04 02:17:51','2026-01-04 02:17:51'),(1219,'113.31.186.146',NULL,'2026-01-04 02:26:33','2026-01-04 02:26:33'),(1220,'49.235.136.28',NULL,'2026-01-04 02:52:36','2026-01-04 02:52:36'),(1221,'109.83.49.42',NULL,'2026-01-04 03:41:00','2026-01-04 03:41:00'),(1222,'66.249.83.97',NULL,'2026-01-04 03:41:02','2026-01-04 03:41:02'),(1223,'66.249.83.97',NULL,'2026-01-04 03:41:02','2026-01-04 03:41:02'),(1224,'66.249.93.128',NULL,'2026-01-04 03:41:33','2026-01-04 03:41:33'),(1225,'66.249.83.96',NULL,'2026-01-04 03:41:33','2026-01-04 03:41:33'),(1226,'66.249.93.130',NULL,'2026-01-04 03:41:34','2026-01-04 03:41:34'),(1227,'66.249.93.130',NULL,'2026-01-04 03:41:59','2026-01-04 03:41:59'),(1228,'66.249.93.128',NULL,'2026-01-04 03:41:59','2026-01-04 03:41:59'),(1229,'66.249.93.128',NULL,'2026-01-04 03:42:09','2026-01-04 03:42:09'),(1230,'66.249.93.130',NULL,'2026-01-04 03:42:09','2026-01-04 03:42:09'),(1231,'74.125.213.34',NULL,'2026-01-04 03:42:09','2026-01-04 03:42:09'),(1232,'66.249.93.128',NULL,'2026-01-04 03:43:55','2026-01-04 03:43:55'),(1233,'74.125.210.97',NULL,'2026-01-04 03:43:56','2026-01-04 03:43:56'),(1234,'74.125.210.97',NULL,'2026-01-04 03:43:56','2026-01-04 03:43:56'),(1235,'66.249.93.128',NULL,'2026-01-04 03:44:40','2026-01-04 03:44:40'),(1236,'74.125.210.96',NULL,'2026-01-04 03:44:41','2026-01-04 03:44:41'),(1237,'74.125.213.34',NULL,'2026-01-04 03:44:41','2026-01-04 03:44:41'),(1238,'66.249.93.130',NULL,'2026-01-04 03:46:50','2026-01-04 03:46:50'),(1239,'66.249.93.128',NULL,'2026-01-04 03:46:51','2026-01-04 03:46:51'),(1240,'66.249.93.130',NULL,'2026-01-04 03:47:20','2026-01-04 03:47:20'),(1241,'66.249.93.129',NULL,'2026-01-04 03:47:21','2026-01-04 03:47:21'),(1242,'109.83.49.42',NULL,'2026-01-04 03:49:29','2026-01-04 03:49:29'),(1243,'66.249.93.130',NULL,'2026-01-04 04:01:27','2026-01-04 04:01:27'),(1244,'74.125.210.98',NULL,'2026-01-04 04:01:28','2026-01-04 04:01:28'),(1245,'74.125.210.97',NULL,'2026-01-04 04:01:28','2026-01-04 04:01:28'),(1246,'66.249.93.128',NULL,'2026-01-04 04:02:01','2026-01-04 04:02:01'),(1247,'74.125.210.97',NULL,'2026-01-04 04:02:02','2026-01-04 04:02:02'),(1248,'74.125.213.33',NULL,'2026-01-04 04:02:02','2026-01-04 04:02:02'),(1249,'34.69.128.10',NULL,'2026-01-04 07:05:03','2026-01-04 07:05:03'),(1250,'43.130.91.95',NULL,'2026-01-04 07:05:32','2026-01-04 07:05:32'),(1251,'205.210.31.130',NULL,'2026-01-04 07:31:23','2026-01-04 07:31:23'),(1252,'43.159.132.207',NULL,'2026-01-04 08:02:59','2026-01-04 08:02:59'),(1253,'43.131.26.226',NULL,'2026-01-04 08:37:12','2026-01-04 08:37:12'),(1254,'175.6.217.4',NULL,'2026-01-04 08:46:53','2026-01-04 08:46:53'),(1255,'43.156.109.53',NULL,'2026-01-04 08:50:09','2026-01-04 08:50:09'),(1256,'43.153.87.54',NULL,'2026-01-04 09:00:58','2026-01-04 09:00:58'),(1257,'150.109.119.38',NULL,'2026-01-04 09:12:23','2026-01-04 09:12:23'),(1258,'49.51.141.76',NULL,'2026-01-04 09:21:39','2026-01-04 09:21:39'),(1259,'31.6.11.7',NULL,'2026-01-04 09:24:36','2026-01-04 09:24:36'),(1260,'43.157.150.69',NULL,'2026-01-04 09:29:59','2026-01-04 09:29:59'),(1261,'49.51.47.100',NULL,'2026-01-04 09:40:33','2026-01-04 09:40:33'),(1262,'43.153.85.46',NULL,'2026-01-04 10:01:49','2026-01-04 10:01:49'),(1263,'103.96.37.225',NULL,'2026-01-04 10:09:44','2026-01-04 10:09:44'),(1264,'43.164.195.17',NULL,'2026-01-04 10:15:09','2026-01-04 10:15:09'),(1265,'43.153.87.54',NULL,'2026-01-04 10:26:06','2026-01-04 10:26:06'),(1266,'103.96.37.225',NULL,'2026-01-04 10:27:36','2026-01-04 10:27:36'),(1267,'43.157.170.126',NULL,'2026-01-04 10:34:50','2026-01-04 10:34:50'),(1268,'43.157.170.13',NULL,'2026-01-04 10:44:49','2026-01-04 10:44:49'),(1269,'43.153.192.98',NULL,'2026-01-04 10:56:45','2026-01-04 10:56:45'),(1270,'101.33.81.73',NULL,'2026-01-04 11:06:36','2026-01-04 11:06:36'),(1271,'43.135.145.77',NULL,'2026-01-04 11:15:12','2026-01-04 11:15:12'),(1272,'43.157.62.101',NULL,'2026-01-04 11:27:29','2026-01-04 11:27:29'),(1273,'43.157.95.239',NULL,'2026-01-04 11:34:44','2026-01-04 11:34:44'),(1274,'103.112.55.160',NULL,'2026-01-04 11:35:08','2026-01-04 11:35:08'),(1275,'43.166.242.189',NULL,'2026-01-04 11:47:01','2026-01-04 11:47:01'),(1276,'43.166.247.82',NULL,'2026-01-04 11:55:27','2026-01-04 11:55:27'),(1277,'92.63.200.66',NULL,'2026-01-04 12:01:42','2026-01-04 12:01:42'),(1278,'145.239.161.191',NULL,'2026-01-04 12:04:09','2026-01-04 12:04:09'),(1279,'145.239.161.191',NULL,'2026-01-04 12:04:24','2026-01-04 12:04:24'),(1280,'43.166.128.187',NULL,'2026-01-04 12:05:52','2026-01-04 12:05:52'),(1281,'43.163.104.54',NULL,'2026-01-04 12:17:53','2026-01-04 12:17:53'),(1282,'43.130.31.17',NULL,'2026-01-04 12:26:24','2026-01-04 12:26:24'),(1283,'170.106.11.6',NULL,'2026-01-04 12:36:51','2026-01-04 12:36:51'),(1284,'43.157.170.13',NULL,'2026-01-04 12:44:31','2026-01-04 12:44:31'),(1285,'204.76.203.25',NULL,'2026-01-04 12:54:11','2026-01-04 12:54:11'),(1286,'170.106.65.93',NULL,'2026-01-04 12:55:19','2026-01-04 12:55:19'),(1287,'103.96.37.225',NULL,'2026-01-04 13:02:25','2026-01-04 13:02:25'),(1288,'43.157.147.3',NULL,'2026-01-04 13:04:29','2026-01-04 13:04:29'),(1289,'37.125.20.106',NULL,'2026-01-04 13:25:35','2026-01-04 13:25:35'),(1290,'66.249.83.97',NULL,'2026-01-04 13:25:38','2026-01-04 13:25:38'),(1291,'66.249.83.98',NULL,'2026-01-04 13:25:38','2026-01-04 13:25:38'),(1292,'66.249.93.129',NULL,'2026-01-04 13:26:42','2026-01-04 13:26:42'),(1293,'66.249.83.96',NULL,'2026-01-04 13:26:43','2026-01-04 13:26:43'),(1294,'66.249.83.98',NULL,'2026-01-04 13:26:43','2026-01-04 13:26:43'),(1295,'66.249.93.129',NULL,'2026-01-04 13:27:00','2026-01-04 13:27:00'),(1296,'66.249.93.129',NULL,'2026-01-04 13:27:00','2026-01-04 13:27:00'),(1297,'66.249.93.129',NULL,'2026-01-04 13:27:06','2026-01-04 13:27:06'),(1298,'66.249.83.98',NULL,'2026-01-04 13:27:07','2026-01-04 13:27:07'),(1299,'66.249.83.97',NULL,'2026-01-04 13:27:07','2026-01-04 13:27:07'),(1300,'103.96.37.225',NULL,'2026-01-04 13:35:57','2026-01-04 13:35:57'),(1301,'40.77.167.77',NULL,'2026-01-04 13:51:09','2026-01-04 13:51:09'),(1302,'74.7.242.58',NULL,'2026-01-04 14:02:37','2026-01-04 14:02:37'),(1303,'74.7.241.47',NULL,'2026-01-04 14:02:38','2026-01-04 14:02:38'),(1304,'103.96.37.225',NULL,'2026-01-04 14:03:21','2026-01-04 14:03:21'),(1305,'74.125.210.97',NULL,'2026-01-04 14:08:29','2026-01-04 14:08:29'),(1306,'66.102.9.3',NULL,'2026-01-04 14:08:29','2026-01-04 14:08:29'),(1307,'66.249.83.96',NULL,'2026-01-04 14:36:05','2026-01-04 14:36:05'),(1308,'66.249.83.98',NULL,'2026-01-04 14:36:05','2026-01-04 14:36:05'),(1309,'103.96.37.225',NULL,'2026-01-04 14:38:13','2026-01-04 14:38:13'),(1310,'103.112.55.160',NULL,'2026-01-04 14:51:14','2026-01-04 14:51:14'),(1311,'103.96.37.225',NULL,'2026-01-04 15:35:34','2026-01-04 15:35:34'),(1312,'103.99.176.57',NULL,'2026-01-04 15:41:09','2026-01-04 15:41:09'),(1313,'103.244.142.23',NULL,'2026-01-04 15:51:58','2026-01-04 15:51:58'),(1314,'103.96.37.225',NULL,'2026-01-04 15:59:37','2026-01-04 15:59:37'),(1315,'43.157.142.101',NULL,'2026-01-04 16:06:39','2026-01-04 16:06:39'),(1316,'43.134.186.61',NULL,'2026-01-04 16:42:33','2026-01-04 16:42:33'),(1317,'66.249.72.194',NULL,'2026-01-04 16:46:29','2026-01-04 16:46:29'),(1318,'142.44.220.231',NULL,'2026-01-04 16:53:14','2026-01-04 16:53:14'),(1319,'185.152.219.182',NULL,'2026-01-04 16:59:17','2026-01-04 16:59:17'),(1320,'43.130.111.40',NULL,'2026-01-04 17:03:33','2026-01-04 17:03:33'),(1321,'103.112.55.160',NULL,'2026-01-04 17:09:38','2026-01-04 17:09:38'),(1322,'103.112.55.160',NULL,'2026-01-04 17:09:42','2026-01-04 17:09:42'),(1323,'103.112.55.160',NULL,'2026-01-04 17:09:45','2026-01-04 17:09:45'),(1324,'103.190.205.51',NULL,'2026-01-04 17:09:51','2026-01-04 17:09:51'),(1325,'103.190.205.51',NULL,'2026-01-04 17:12:20','2026-01-04 17:12:20'),(1326,'103.190.205.51',NULL,'2026-01-04 17:12:21','2026-01-04 17:12:21'),(1327,'103.190.205.51',NULL,'2026-01-04 17:12:22','2026-01-04 17:12:22'),(1328,'69.171.234.61',NULL,'2026-01-04 17:22:58','2026-01-04 17:22:58'),(1329,'69.171.234.25',NULL,'2026-01-04 17:23:05','2026-01-04 17:23:05'),(1330,'69.171.234.25',NULL,'2026-01-04 17:23:05','2026-01-04 17:23:05'),(1331,'173.252.127.3',NULL,'2026-01-04 17:23:21','2026-01-04 17:23:21'),(1332,'66.220.149.38',NULL,'2026-01-04 17:23:21','2026-01-04 17:23:21'),(1333,'173.252.87.9',NULL,'2026-01-04 17:23:21','2026-01-04 17:23:21'),(1334,'173.252.127.6',NULL,'2026-01-04 17:23:22','2026-01-04 17:23:22'),(1335,'31.13.127.19',NULL,'2026-01-04 17:23:22','2026-01-04 17:23:22'),(1336,'173.252.83.5',NULL,'2026-01-04 17:24:32','2026-01-04 17:24:32'),(1337,'103.149.56.12',NULL,'2026-01-04 17:25:25','2026-01-04 17:25:25'),(1338,'36.255.81.207',NULL,'2026-01-04 17:26:13','2026-01-04 17:26:13'),(1339,'43.153.54.138',NULL,'2026-01-04 17:27:08','2026-01-04 17:27:08'),(1340,'103.124.251.69',NULL,'2026-01-04 17:28:12','2026-01-04 17:28:12'),(1341,'59.152.5.227',NULL,'2026-01-04 17:30:51','2026-01-04 17:30:51'),(1342,'69.63.189.37',NULL,'2026-01-04 17:30:53','2026-01-04 17:30:53'),(1343,'173.252.127.7',NULL,'2026-01-04 17:31:36','2026-01-04 17:31:36'),(1344,'103.87.214.164',NULL,'2026-01-04 17:35:36','2026-01-04 17:35:36'),(1345,'103.87.214.164',NULL,'2026-01-04 17:37:51','2026-01-04 17:37:51'),(1346,'170.106.181.163',NULL,'2026-01-04 17:40:32','2026-01-04 17:40:32'),(1347,'36.255.80.207',NULL,'2026-01-04 17:41:50','2026-01-04 17:41:50'),(1348,'103.137.74.10',NULL,'2026-01-04 17:43:01','2026-01-04 17:43:01'),(1349,'103.137.74.10',NULL,'2026-01-04 17:45:21','2026-01-04 17:45:21'),(1350,'58.145.191.213',NULL,'2026-01-04 17:45:41','2026-01-04 17:45:41'),(1351,'43.157.95.131',NULL,'2026-01-04 17:50:32','2026-01-04 17:50:32'),(1352,'43.153.54.14',NULL,'2026-01-04 18:00:37','2026-01-04 18:00:37'),(1353,'59.152.5.37',NULL,'2026-01-04 18:02:45','2026-01-04 18:02:45'),(1354,'103.69.76.241',NULL,'2026-01-04 18:04:05','2026-01-04 18:04:05'),(1355,'103.136.236.2',NULL,'2026-01-04 18:06:48','2026-01-04 18:06:48'),(1356,'45.64.136.25',NULL,'2026-01-04 18:08:49','2026-01-04 18:08:49'),(1357,'37.111.238.135',NULL,'2026-01-04 18:17:12','2026-01-04 18:17:12'),(1358,'170.106.163.84',NULL,'2026-01-04 18:21:39','2026-01-04 18:21:39'),(1359,'103.145.232.1',NULL,'2026-01-04 18:27:29','2026-01-04 18:27:29'),(1360,'103.112.55.160',NULL,'2026-01-04 18:29:53','2026-01-04 18:29:53'),(1361,'103.112.55.160',NULL,'2026-01-04 18:29:54','2026-01-04 18:29:54'),(1362,'170.106.113.159',NULL,'2026-01-04 18:31:01','2026-01-04 18:31:01'),(1363,'103.87.251.224',NULL,'2026-01-04 18:35:40','2026-01-04 18:35:40'),(1364,'43.135.36.201',NULL,'2026-01-04 18:40:07','2026-01-04 18:40:07'),(1365,'45.134.79.132',NULL,'2026-01-04 18:44:33','2026-01-04 18:44:33'),(1366,'98.83.160.56',NULL,'2026-01-04 18:45:51','2026-01-04 18:45:51'),(1367,'98.83.160.56',NULL,'2026-01-04 18:45:51','2026-01-04 18:45:51'),(1368,'43.131.36.84',NULL,'2026-01-04 18:49:46','2026-01-04 18:49:46'),(1369,'45.134.79.132',NULL,'2026-01-04 18:52:50','2026-01-04 18:52:50'),(1370,'45.134.79.132',NULL,'2026-01-04 18:58:04','2026-01-04 18:58:04'),(1371,'103.96.37.225',NULL,'2026-01-04 19:00:02','2026-01-04 19:00:02'),(1372,'43.157.168.43',NULL,'2026-01-04 19:00:17','2026-01-04 19:00:17'),(1373,'43.159.141.150',NULL,'2026-01-04 19:10:51','2026-01-04 19:10:51'),(1374,'101.32.52.164',NULL,'2026-01-04 19:20:52','2026-01-04 19:20:52'),(1375,'103.96.37.225',NULL,'2026-01-04 19:25:34','2026-01-04 19:25:34'),(1376,'103.150.19.143',NULL,'2026-01-04 19:28:31','2026-01-04 19:28:31'),(1377,'45.134.79.132',NULL,'2026-01-04 19:28:56','2026-01-04 19:28:56'),(1378,'45.134.79.132',NULL,'2026-01-04 19:31:30','2026-01-04 19:31:30'),(1379,'103.137.74.10',NULL,'2026-01-04 19:32:30','2026-01-04 19:32:30'),(1380,'113.211.132.86',NULL,'2026-01-04 19:34:08','2026-01-04 19:34:08'),(1381,'45.148.10.174',NULL,'2026-01-04 19:34:31','2026-01-04 19:34:31'),(1382,'27.147.202.236',NULL,'2026-01-04 19:35:25','2026-01-04 19:35:25'),(1383,'173.252.105.64',NULL,'2026-01-04 19:36:17','2026-01-04 19:36:17'),(1384,'173.252.105.64',NULL,'2026-01-04 19:36:17','2026-01-04 19:36:17'),(1385,'173.252.79.10',NULL,'2026-01-04 19:36:21','2026-01-04 19:36:21'),(1386,'173.252.95.11',NULL,'2026-01-04 19:36:22','2026-01-04 19:36:22'),(1387,'173.252.79.1',NULL,'2026-01-04 19:36:22','2026-01-04 19:36:22'),(1388,'173.252.83.5',NULL,'2026-01-04 19:36:47','2026-01-04 19:36:47'),(1389,'113.211.132.86',NULL,'2026-01-04 19:38:01','2026-01-04 19:38:01'),(1390,'103.96.37.225',NULL,'2026-01-04 19:38:20','2026-01-04 19:38:20'),(1391,'202.134.8.195',NULL,'2026-01-04 19:39:43','2026-01-04 19:39:43'),(1392,'49.51.243.156',NULL,'2026-01-04 19:39:58','2026-01-04 19:39:58'),(1393,'173.252.83.115',NULL,'2026-01-04 19:41:47','2026-01-04 19:41:47'),(1394,'45.134.79.142',NULL,'2026-01-04 19:49:16','2026-01-04 19:49:16'),(1395,'103.244.142.23',NULL,'2026-01-04 19:50:29','2026-01-04 19:50:29'),(1396,'43.130.139.177',NULL,'2026-01-04 19:50:34','2026-01-04 19:50:34'),(1397,'170.106.65.93',NULL,'2026-01-04 20:00:41','2026-01-04 20:00:41'),(1398,'45.134.79.142',NULL,'2026-01-04 20:07:11','2026-01-04 20:07:11'),(1399,'43.135.115.233',NULL,'2026-01-04 20:10:10','2026-01-04 20:10:10'),(1400,'45.134.79.142',NULL,'2026-01-04 20:14:39','2026-01-04 20:14:39'),(1401,'103.244.142.23',NULL,'2026-01-04 20:14:50','2026-01-04 20:14:50'),(1402,'103.244.142.23',NULL,'2026-01-04 20:15:01','2026-01-04 20:15:01'),(1403,'45.134.79.142',NULL,'2026-01-04 20:15:46','2026-01-04 20:15:46'),(1404,'43.159.149.216',NULL,'2026-01-04 20:20:18','2026-01-04 20:20:18'),(1405,'45.134.79.142',NULL,'2026-01-04 20:25:22','2026-01-04 20:25:22'),(1406,'45.134.79.142',NULL,'2026-01-04 20:45:58','2026-01-04 20:45:58'),(1407,'66.249.75.5',NULL,'2026-01-04 20:55:30','2026-01-04 20:55:30'),(1408,'66.249.75.5',NULL,'2026-01-04 20:55:31','2026-01-04 20:55:31'),(1409,'37.111.200.167',NULL,'2026-01-04 20:55:31','2026-01-04 20:55:31'),(1410,'163.223.60.138',NULL,'2026-01-04 20:55:42','2026-01-04 20:55:42'),(1411,'163.223.60.138',NULL,'2026-01-04 20:55:57','2026-01-04 20:55:57'),(1412,'45.134.79.142',NULL,'2026-01-04 20:56:29','2026-01-04 20:56:29'),(1413,'163.223.60.138',NULL,'2026-01-04 20:57:44','2026-01-04 20:57:44'),(1414,'202.86.216.142',NULL,'2026-01-04 20:58:19','2026-01-04 20:58:19'),(1415,'43.157.188.74',NULL,'2026-01-04 21:02:25','2026-01-04 21:02:25'),(1416,'66.249.72.192',NULL,'2026-01-04 21:02:38','2026-01-04 21:02:38'),(1417,'217.182.64.155',NULL,'2026-01-04 21:04:38','2026-01-04 21:04:38'),(1418,'49.233.45.47',NULL,'2026-01-04 21:14:38','2026-01-04 21:14:38'),(1419,'45.134.79.142',NULL,'2026-01-04 21:17:50','2026-01-04 21:17:50'),(1420,'66.249.72.194',NULL,'2026-01-04 21:26:53','2026-01-04 21:26:53'),(1421,'66.249.72.193',NULL,'2026-01-04 21:26:56','2026-01-04 21:26:56'),(1422,'66.249.72.193',NULL,'2026-01-04 21:26:59','2026-01-04 21:26:59'),(1423,'66.249.72.193',NULL,'2026-01-04 21:34:46','2026-01-04 21:34:46'),(1424,'119.15.155.102',NULL,'2026-01-04 22:03:30','2026-01-04 22:03:30'),(1425,'101.32.15.141',NULL,'2026-01-04 22:33:20','2026-01-04 22:33:20'),(1426,'43.133.91.48',NULL,'2026-01-04 22:46:21','2026-01-04 22:46:21'),(1427,'109.82.7.207',NULL,'2026-01-04 23:08:04','2026-01-04 23:08:04'),(1428,'74.125.213.33',NULL,'2026-01-04 23:08:07','2026-01-04 23:08:07'),(1429,'66.249.93.128',NULL,'2026-01-04 23:08:08','2026-01-04 23:08:08'),(1430,'66.249.93.128',NULL,'2026-01-04 23:08:39','2026-01-04 23:08:39'),(1431,'74.125.213.32',NULL,'2026-01-04 23:08:40','2026-01-04 23:08:40'),(1432,'66.249.93.129',NULL,'2026-01-04 23:08:40','2026-01-04 23:08:40'),(1433,'109.82.7.207',NULL,'2026-01-04 23:09:26','2026-01-04 23:09:26'),(1434,'66.102.8.102',NULL,'2026-01-04 23:09:29','2026-01-04 23:09:29'),(1435,'66.102.8.102',NULL,'2026-01-04 23:09:29','2026-01-04 23:09:29'),(1436,'43.130.131.18',NULL,'2026-01-04 23:42:34','2026-01-04 23:42:34'),(1437,'59.152.5.224',NULL,'2026-01-04 23:50:00','2026-01-04 23:50:00'),(1438,'103.112.55.160',NULL,'2026-01-04 23:52:42','2026-01-04 23:52:42'),(1439,'31.13.115.7',NULL,'2026-01-04 23:52:54','2026-01-04 23:52:54'),(1440,'43.130.105.21',NULL,'2026-01-05 00:16:17','2026-01-05 00:16:17'),(1441,'103.83.232.69',NULL,'2026-01-05 00:17:53','2026-01-05 00:17:53'),(1442,'170.106.192.3',NULL,'2026-01-05 00:26:22','2026-01-05 00:26:22'),(1443,'66.249.72.192',NULL,'2026-01-05 00:29:14','2026-01-05 00:29:14'),(1444,'109.82.7.207',NULL,'2026-01-05 00:33:23','2026-01-05 00:33:23'),(1445,'74.125.213.33',NULL,'2026-01-05 00:33:26','2026-01-05 00:33:26'),(1446,'74.125.213.34',NULL,'2026-01-05 00:33:26','2026-01-05 00:33:26'),(1447,'66.249.93.129',NULL,'2026-01-05 00:33:37','2026-01-05 00:33:37'),(1448,'74.125.213.34',NULL,'2026-01-05 00:33:38','2026-01-05 00:33:38'),(1449,'74.125.213.33',NULL,'2026-01-05 00:33:38','2026-01-05 00:33:38'),(1450,'66.249.93.128',NULL,'2026-01-05 00:33:57','2026-01-05 00:33:57'),(1451,'66.249.93.129',NULL,'2026-01-05 00:33:58','2026-01-05 00:33:58'),(1452,'66.249.93.130',NULL,'2026-01-05 00:35:18','2026-01-05 00:35:18'),(1453,'66.249.93.130',NULL,'2026-01-05 00:35:19','2026-01-05 00:35:19'),(1454,'66.249.83.97',NULL,'2026-01-05 00:35:19','2026-01-05 00:35:19'),(1455,'66.249.93.129',NULL,'2026-01-05 00:35:28','2026-01-05 00:35:28'),(1456,'74.125.213.33',NULL,'2026-01-05 00:35:29','2026-01-05 00:35:29'),(1457,'66.249.83.97',NULL,'2026-01-05 00:35:29','2026-01-05 00:35:29'),(1458,'43.166.244.192',NULL,'2026-01-05 00:36:09','2026-01-05 00:36:09'),(1459,'66.249.72.194',NULL,'2026-01-05 00:40:29','2026-01-05 00:40:29');
/*!40000 ALTER TABLE `guest_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help_topics`
--

DROP TABLE IF EXISTS `help_topics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help_topics` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ranking` int NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help_topics`
--

LOCK TABLES `help_topics` WRITE;
/*!40000 ALTER TABLE `help_topics` DISABLE KEYS */;
INSERT INTO `help_topics` VALUES (12,'default','What products does RexBuyShop sell?','Welcome to RexBuyShop, your trusted online destination for quality footwear in Bangladesh.\r\n\r\nAt RexBuyShop, we offer a wide range of stylish, comfortable, and durable shoes for men, women, and kids. Our collection includes casual shoes, formal shoes, sports footwear, sandals, slippers, and traditional footwear, carefully selected to suit everyday needs and lifestyle in Bangladesh.\r\n\r\nWe are committed to providing:\r\n\r\n✔ Quality products with proper fitting\r\n\r\n✔ Affordable and competitive prices\r\n\r\n✔ Popular local and international brands\r\n\r\n✔ A smooth and reliable shopping experience\r\n\r\nEach product at RexBuyShop is sourced from trusted suppliers and checked to maintain quality standards. Customer satisfaction is our top priority, and we continuously work to improve our service based on customer feedback.\r\n\r\nWhether you need shoes for daily use, office wear, sports activities, or special occasions, RexBuyShop is here to serve you with honesty, care, and dedication.\r\n\r\nThank you for choosing RexBuyShop.',1,1,'2026-01-02 20:44:35','2026-01-02 20:48:03'),(13,'default','Are the products original?','RexBuyShop offers a wide range of footwear for men, women, and kids, including casual shoes, formal shoes, sports shoes, sandals, slippers, and traditional footwear.',2,1,'2026-01-02 20:45:14','2026-01-02 20:46:12'),(17,'default','Do you deliver all over Bangladesh?','Yes. We source our products from trusted local and international suppliers. Product quality is checked before delivery to ensure customer satisfaction.',3,1,'2026-01-02 20:50:18','2026-01-02 20:51:06'),(18,'default','How long does delivery take?','Yes, we provide delivery service across Bangladesh through reliable courier partners.',4,1,'2026-01-02 20:50:41','2026-01-02 20:51:09'),(19,'default','What payment methods do you accept?','We accept:\r\n\r\nCash on Delivery (COD)\r\n\r\nMobile Banking (bKash, Nagad, Rocket)\r\n\r\nOnline Payment (if available on the website)',5,1,'2026-01-02 20:50:56','2026-01-02 20:51:11');
/*!40000 ALTER TABLE `help_topics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login_setups`
--

DROP TABLE IF EXISTS `login_setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login_setups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login_setups`
--

LOCK TABLES `login_setups` WRITE;
/*!40000 ALTER TABLE `login_setups` DISABLE KEYS */;
INSERT INTO `login_setups` VALUES (1,'login_options','{\"manual_login\":\"1\",\"otp_login\":0,\"social_login\":\"1\"}','2024-09-24 07:52:17','2025-07-24 19:58:08'),(2,'social_media_for_login','{\"google\":\"1\",\"facebook\":0,\"apple\":0}','2024-09-24 07:52:17','2025-07-24 19:58:08'),(3,'email_verification','0','2024-09-24 07:52:17','2025-07-24 19:58:08'),(4,'phone_verification','0','2024-09-24 07:52:17','2025-07-24 19:58:08');
/*!40000 ALTER TABLE `login_setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loyalty_point_transactions`
--

DROP TABLE IF EXISTS `loyalty_point_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loyalty_point_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `transaction_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `debit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loyalty_point_transactions`
--

LOCK TABLES `loyalty_point_transactions` WRITE;
/*!40000 ALTER TABLE `loyalty_point_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `loyalty_point_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_09_08_105159_create_admins_table',1),(5,'2020_09_08_111837_create_admin_roles_table',1),(6,'2020_09_16_142451_create_categories_table',2),(7,'2020_09_16_181753_create_categories_table',3),(8,'2020_09_17_134238_create_brands_table',4),(9,'2020_09_17_203054_create_attributes_table',5),(10,'2020_09_19_112509_create_coupons_table',6),(11,'2020_09_19_161802_create_curriencies_table',7),(12,'2020_09_20_114509_create_sellers_table',8),(13,'2020_09_23_113454_create_shops_table',9),(14,'2020_09_23_115615_create_shops_table',10),(15,'2020_09_23_153822_create_shops_table',11),(16,'2020_09_21_122817_create_products_table',12),(17,'2020_09_22_140800_create_colors_table',12),(18,'2020_09_28_175020_create_products_table',13),(19,'2020_09_28_180311_create_products_table',14),(20,'2020_10_04_105041_create_search_functions_table',15),(21,'2020_10_05_150730_create_customers_table',15),(22,'2020_10_08_133548_create_wishlists_table',16),(23,'2016_06_01_000001_create_oauth_auth_codes_table',17),(24,'2016_06_01_000002_create_oauth_access_tokens_table',17),(25,'2016_06_01_000003_create_oauth_refresh_tokens_table',17),(26,'2016_06_01_000004_create_oauth_clients_table',17),(27,'2016_06_01_000005_create_oauth_personal_access_clients_table',17),(28,'2020_10_06_133710_create_product_stocks_table',17),(29,'2020_10_06_134636_create_flash_deals_table',17),(30,'2020_10_06_134719_create_flash_deal_products_table',17),(31,'2020_10_08_115439_create_orders_table',17),(32,'2020_10_08_115453_create_order_details_table',17),(33,'2020_10_08_121135_create_shipping_addresses_table',17),(34,'2020_10_10_171722_create_business_settings_table',17),(35,'2020_09_19_161802_create_currencies_table',18),(36,'2020_10_12_152350_create_reviews_table',18),(37,'2020_10_12_161834_create_reviews_table',19),(38,'2020_10_12_180510_create_support_tickets_table',20),(39,'2020_10_14_140130_create_transactions_table',21),(40,'2020_10_14_143553_create_customer_wallets_table',21),(41,'2020_10_14_143607_create_customer_wallet_histories_table',21),(42,'2020_10_22_142212_create_support_ticket_convs_table',21),(43,'2020_10_24_234813_create_banners_table',22),(44,'2020_10_27_111557_create_shipping_methods_table',23),(45,'2020_10_27_114154_add_url_to_banners_table',24),(46,'2020_10_28_170308_add_shipping_id_to_order_details',25),(47,'2020_11_02_140528_add_discount_to_order_table',26),(48,'2020_11_03_162723_add_column_to_order_details',27),(49,'2020_11_08_202351_add_url_to_banners_table',28),(50,'2020_11_10_112713_create_help_topic',29),(51,'2020_11_10_141513_create_contacts_table',29),(52,'2020_11_15_180036_add_address_column_user_table',30),(53,'2020_11_18_170209_add_status_column_to_product_table',31),(54,'2020_11_19_115453_add_featured_status_product',32),(55,'2020_11_21_133302_create_deal_of_the_days_table',33),(56,'2020_11_20_172332_add_product_id_to_products',34),(57,'2020_11_27_234439_add__state_to_shipping_addresses',34),(58,'2020_11_28_091929_create_chattings_table',35),(59,'2020_12_02_011815_add_bank_info_to_sellers',36),(60,'2020_12_08_193234_create_social_medias_table',37),(61,'2020_12_13_122649_shop_id_to_chattings',37),(62,'2020_12_14_145116_create_seller_wallet_histories_table',38),(63,'2020_12_14_145127_create_seller_wallets_table',38),(64,'2020_12_15_174804_create_admin_wallets_table',39),(65,'2020_12_15_174821_create_admin_wallet_histories_table',39),(66,'2020_12_15_214312_create_feature_deals_table',40),(67,'2020_12_17_205712_create_withdraw_requests_table',41),(68,'2021_02_22_161510_create_notifications_table',42),(69,'2021_02_24_154706_add_deal_type_to_flash_deals',43),(70,'2021_03_03_204349_add_cm_firebase_token_to_users',44),(71,'2021_04_17_134848_add_column_to_order_details_stock',45),(72,'2021_05_12_155401_add_auth_token_seller',46),(73,'2021_06_03_104531_ex_rate_update',47),(74,'2021_06_03_222413_amount_withdraw_req',48),(75,'2021_06_04_154501_seller_wallet_withdraw_bal',49),(76,'2021_06_04_195853_product_dis_tax',50),(77,'2021_05_27_103505_create_product_translations_table',51),(78,'2021_06_17_054551_create_soft_credentials_table',51),(79,'2021_06_29_212549_add_active_col_user_table',52),(80,'2021_06_30_212619_add_col_to_contact',53),(81,'2021_07_01_160828_add_col_daily_needs_products',54),(82,'2021_07_04_182331_add_col_seller_sales_commission',55),(83,'2021_08_07_190655_add_seo_columns_to_products',56),(84,'2021_08_07_205913_add_col_to_category_table',56),(85,'2021_08_07_210808_add_col_to_shops_table',56),(86,'2021_08_14_205216_change_product_price_col_type',56),(87,'2021_08_16_201505_change_order_price_col',56),(88,'2021_08_16_201552_change_order_details_price_col',56),(89,'2019_09_29_154000_create_payment_cards_table',57),(90,'2021_08_17_213934_change_col_type_seller_earning_history',57),(91,'2021_08_17_214109_change_col_type_admin_earning_history',57),(92,'2021_08_17_214232_change_col_type_admin_wallet',57),(93,'2021_08_17_214405_change_col_type_seller_wallet',57),(94,'2021_08_22_184834_add_publish_to_products_table',57),(95,'2021_09_08_211832_add_social_column_to_users_table',57),(96,'2021_09_13_165535_add_col_to_user',57),(97,'2021_09_19_061647_add_limit_to_coupons_table',57),(98,'2021_09_20_020716_add_coupon_code_to_orders_table',57),(99,'2021_09_23_003059_add_gst_to_sellers_table',57),(100,'2021_09_28_025411_create_order_transactions_table',57),(101,'2021_10_02_185124_create_carts_table',57),(102,'2021_10_02_190207_create_cart_shippings_table',57),(103,'2021_10_03_194334_add_col_order_table',57),(104,'2021_10_03_200536_add_shipping_cost',57),(105,'2021_10_04_153201_add_col_to_order_table',57),(106,'2021_10_07_172701_add_col_cart_shop_info',57),(107,'2021_10_07_184442_create_phone_or_email_verifications_table',57),(108,'2021_10_07_185416_add_user_table_email_verified',57),(109,'2021_10_11_192739_add_transaction_amount_table',57),(110,'2021_10_11_200850_add_order_verification_code',57),(111,'2021_10_12_083241_add_col_to_order_transaction',57),(112,'2021_10_12_084440_add_seller_id_to_order',57),(113,'2021_10_12_102853_change_col_type',57),(114,'2021_10_12_110434_add_col_to_admin_wallet',57),(115,'2021_10_12_110829_add_col_to_seller_wallet',57),(116,'2021_10_13_091801_add_col_to_admin_wallets',57),(117,'2021_10_13_092000_add_col_to_seller_wallets_tax',57),(118,'2021_10_13_165947_rename_and_remove_col_seller_wallet',57),(119,'2021_10_13_170258_rename_and_remove_col_admin_wallet',57),(120,'2021_10_14_061603_column_update_order_transaction',57),(121,'2021_10_15_103339_remove_col_from_seller_wallet',57),(122,'2021_10_15_104419_add_id_col_order_tran',57),(123,'2021_10_15_213454_update_string_limit',57),(124,'2021_10_16_234037_change_col_type_translation',57),(125,'2021_10_16_234329_change_col_type_translation_1',57),(126,'2021_10_27_091250_add_shipping_address_in_order',58),(127,'2021_01_24_205114_create_paytabs_invoices_table',59),(128,'2021_11_20_043814_change_pass_reset_email_col',59),(129,'2021_11_25_043109_create_delivery_men_table',60),(130,'2021_11_25_062242_add_auth_token_delivery_man',60),(131,'2021_11_27_043405_add_deliveryman_in_order_table',60),(132,'2021_11_27_051432_create_delivery_histories_table',60),(133,'2021_11_27_051512_add_fcm_col_for_delivery_man',60),(134,'2021_12_15_123216_add_columns_to_banner',60),(135,'2022_01_04_100543_add_order_note_to_orders_table',60),(136,'2022_01_10_034952_add_lat_long_to_shipping_addresses_table',60),(137,'2022_01_10_045517_create_billing_addresses_table',60),(138,'2022_01_11_040755_add_is_billing_to_shipping_addresses_table',60),(139,'2022_01_11_053404_add_billing_to_orders_table',60),(140,'2022_01_11_234310_add_firebase_toke_to_sellers_table',60),(141,'2022_01_16_121801_change_colu_type',60),(142,'2022_01_22_101601_change_cart_col_type',61),(143,'2022_01_23_031359_add_column_to_orders_table',61),(144,'2022_01_28_235054_add_status_to_admins_table',61),(145,'2022_02_01_214654_add_pos_status_to_sellers_table',61),(146,'2019_12_14_000001_create_personal_access_tokens_table',62),(147,'2022_02_11_225355_add_checked_to_orders_table',62),(148,'2022_02_14_114359_create_refund_requests_table',62),(149,'2022_02_14_115757_add_refund_request_to_order_details_table',62),(150,'2022_02_15_092604_add_order_details_id_to_transactions_table',62),(151,'2022_02_15_121410_create_refund_transactions_table',62),(152,'2022_02_24_091236_add_multiple_column_to_refund_requests_table',62),(153,'2022_02_24_103827_create_refund_statuses_table',62),(154,'2022_03_01_121420_add_refund_id_to_refund_transactions_table',62),(155,'2022_03_10_091943_add_priority_to_categories_table',63),(156,'2022_03_13_111914_create_shipping_types_table',63),(157,'2022_03_13_121514_create_category_shipping_costs_table',63),(158,'2022_03_14_074413_add_four_column_to_products_table',63),(159,'2022_03_15_105838_add_shipping_to_carts_table',63),(160,'2022_03_16_070327_add_shipping_type_to_orders_table',63),(161,'2022_03_17_070200_add_delivery_info_to_orders_table',63),(162,'2022_03_18_143339_add_shipping_type_to_carts_table',63),(163,'2022_04_06_020313_create_subscriptions_table',64),(164,'2022_04_12_233704_change_column_to_products_table',64),(165,'2022_04_19_095926_create_jobs_table',64),(166,'2022_05_12_104247_create_wallet_transactions_table',65),(167,'2022_05_12_104511_add_two_column_to_users_table',65),(168,'2022_05_14_063309_create_loyalty_point_transactions_table',65),(169,'2022_05_26_044016_add_user_type_to_password_resets_table',65),(170,'2022_04_15_235820_add_provider',66),(171,'2022_07_21_101659_add_code_to_products_table',66),(172,'2022_07_26_103744_add_notification_count_to_notifications_table',66),(173,'2022_07_31_031541_add_minimum_order_qty_to_products_table',66),(174,'2022_08_11_172839_add_product_type_and_digital_product_type_and_digital_file_ready_to_products',67),(175,'2022_08_11_173941_add_product_type_and_digital_product_type_and_digital_file_to_order_details',67),(176,'2022_08_20_094225_add_product_type_and_digital_product_type_and_digital_file_ready_to_carts_table',67),(177,'2022_10_04_160234_add_banking_columns_to_delivery_men_table',68),(178,'2022_10_04_161339_create_deliveryman_wallets_table',68),(179,'2022_10_04_184506_add_deliverymanid_column_to_withdraw_requests_table',68),(180,'2022_10_11_103011_add_deliverymans_columns_to_chattings_table',68),(181,'2022_10_11_144902_add_deliverman_id_cloumn_to_reviews_table',68),(182,'2022_10_17_114744_create_order_status_histories_table',68),(183,'2022_10_17_120840_create_order_expected_delivery_histories_table',68),(184,'2022_10_18_084245_add_deliveryman_charge_and_expected_delivery_date',68),(185,'2022_10_18_130938_create_delivery_zip_codes_table',68),(186,'2022_10_18_130956_create_delivery_country_codes_table',68),(187,'2022_10_20_164712_create_delivery_man_transactions_table',68),(188,'2022_10_27_145604_create_emergency_contacts_table',68),(189,'2022_10_29_182930_add_is_pause_cause_to_orders_table',68),(190,'2022_10_31_150604_add_address_phone_country_code_column_to_delivery_men_table',68),(191,'2022_11_05_185726_add_order_id_to_reviews_table',68),(192,'2022_11_07_190749_create_deliveryman_notifications_table',68),(193,'2022_11_08_132745_change_transaction_note_type_to_withdraw_requests_table',68),(194,'2022_11_10_193747_chenge_order_amount_seller_amount_admin_commission_delivery_charge_tax_toorder_transactions_table',68),(195,'2022_12_17_035723_few_field_add_to_coupons_table',69),(196,'2022_12_26_231606_add_coupon_discount_bearer_and_admin_commission_to_orders',69),(197,'2023_01_04_003034_alter_billing_addresses_change_zip',69),(198,'2023_01_05_121600_change_id_to_transactions_table',69),(199,'2023_02_02_113330_create_product_tag_table',70),(200,'2023_02_02_114518_create_tags_table',70),(201,'2023_02_02_152248_add_tax_model_to_products_table',70),(202,'2023_02_02_152718_add_tax_model_to_order_details_table',70),(203,'2023_02_02_171034_add_tax_type_to_carts',70),(204,'2023_02_06_124447_add_color_image_column_to_products_table',70),(205,'2023_02_07_120136_create_withdrawal_methods_table',70),(206,'2023_02_07_175939_add_withdrawal_method_id_and_withdrawal_method_fields_to_withdraw_requests_table',70),(207,'2023_02_08_143314_add_vacation_start_and_vacation_end_and_vacation_not_column_to_shops_table',70),(208,'2023_02_09_104656_add_payment_by_and_payment_not_to_orders_table',70),(209,'2023_03_27_150723_add_expires_at_to_phone_or_email_verifications',71),(210,'2023_04_17_095721_create_shop_followers_table',71),(211,'2023_04_17_111249_add_bottom_banner_to_shops_table',71),(212,'2023_04_20_125423_create_product_compares_table',71),(213,'2023_04_30_165642_add_category_sub_category_and_sub_sub_category_add_in_product_table',71),(214,'2023_05_16_131006_add_expires_at_to_password_resets',71),(215,'2023_05_17_044243_add_visit_count_to_tags_table',71),(216,'2023_05_18_000403_add_title_and_subtitle_and_background_color_and_button_text_to_banners_table',71),(217,'2023_05_21_111300_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_users_table',71),(218,'2023_05_21_111600_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_phone_or_email_verifications_table',71),(219,'2023_05_21_112215_add_login_hit_count_and_is_temp_blocked_and_temp_block_time_to_password_resets_table',71),(220,'2023_06_04_210726_attachment_lenght_change_to_reviews_table',71),(221,'2023_06_05_115153_add_referral_code_and_referred_by_to_users_table',72),(222,'2023_06_21_002658_add_offer_banner_to_shops_table',72),(223,'2023_07_08_210747_create_most_demandeds_table',72),(224,'2023_07_31_111419_add_minimum_order_amount_to_sellers_table',72),(225,'2023_08_03_105256_create_offline_payment_methods_table',72),(226,'2023_08_07_131013_add_is_guest_column_to_carts_table',72),(227,'2023_08_07_170601_create_offline_payments_table',72),(228,'2023_08_12_102355_create_add_fund_bonus_categories_table',72),(229,'2023_08_12_215346_create_guest_users_table',72),(230,'2023_08_12_215659_add_is_guest_column_to_orders_table',72),(231,'2023_08_12_215933_add_is_guest_column_to_shipping_addresses_table',72),(232,'2023_08_15_000957_add_email_column_toshipping_address_table',72),(233,'2023_08_17_222330_add_identify_related_columns_to_admins_table',72),(234,'2023_08_20_230624_add_sent_by_and_send_to_in_notifications_table',72),(235,'2023_08_20_230911_create_notification_seens_table',72),(236,'2023_08_21_042331_add_theme_to_banners_table',72),(237,'2023_08_24_150009_add_free_delivery_over_amount_and_status_to_seller_table',72),(238,'2023_08_26_161214_add_is_shipping_free_to_orders_table',72),(239,'2023_08_26_173523_add_payment_method_column_to_wallet_transactions_table',72),(240,'2023_08_26_204653_add_verification_status_column_to_orders_table',72),(241,'2023_08_26_225113_create_order_delivery_verifications_table',72),(242,'2023_09_03_212200_add_free_delivery_responsibility_column_to_orders_table',72),(243,'2023_09_23_153314_add_shipping_responsibility_column_to_orders_table',72),(244,'2023_09_25_152733_create_digital_product_otp_verifications_table',72),(245,'2023_09_27_191638_add_attachment_column_to_support_ticket_convs_table',73),(246,'2023_10_01_205117_add_attachment_column_to_chattings_table',73),(247,'2023_10_07_182714_create_notification_messages_table',73),(248,'2023_10_21_113354_add_app_language_column_to_users_table',73),(249,'2023_10_21_123433_add_app_language_column_to_sellers_table',73),(250,'2023_10_21_124657_add_app_language_column_to_delivery_men_table',73),(251,'2023_10_22_130225_add_attachment_to_support_tickets_table',73),(252,'2023_10_25_113233_make_message_nullable_in_chattings_table',73),(253,'2023_10_30_152005_make_attachment_column_type_change_to_reviews_table',73),(254,'2024_01_14_192546_add_slug_to_shops_table',74),(255,'2024_01_25_175421_add_country_code_to_emergency_contacts_table',75),(256,'2024_02_01_200417_add_denied_count_and_approved_count_to_refund_requests_table',75),(257,'2024_03_11_130425_add_seen_notification_and_notification_receiver_to_chattings_table',76),(258,'2024_03_12_123322_update_images_column_in_refund_requests_table',76),(259,'2024_03_21_134659_change_denied_note_column_type_to_text',76),(260,'2024_04_03_093637_create_email_templates_table',77),(261,'2024_04_17_102137_add_is_checked_column_to_carts_table',77),(262,'2024_04_23_130436_create_vendor_registration_reasons_table',77),(263,'2024_04_24_093932_add_type_to_help_topics_table',77),(264,'2024_05_20_133216_create_review_replies_table',78),(265,'2024_05_20_163043_add_image_alt_text_to_brands_table',78),(266,'2024_05_26_152030_create_digital_product_variations_table',78),(267,'2024_05_26_152339_create_product_seos_table',78),(268,'2024_05_27_184401_add_digital_product_file_types_and_digital_product_extensions_to_products_table',78),(269,'2024_05_30_101603_create_storages_table',78),(270,'2024_06_10_174952_create_robots_meta_contents_table',78),(271,'2024_06_12_105137_create_error_logs_table',78),(272,'2024_07_03_130217_add_storage_type_columns_to_product_table',78),(273,'2024_07_03_153301_add_icon_storage_type_to_catogory_table',78),(274,'2024_07_03_171214_add_image_storage_type_to_brands_table',78),(275,'2024_07_03_185048_add_storage_type_columns_to_shop_table',78),(276,'2024_07_31_133306_create_login_setups_table',79),(277,'2024_08_04_123750_add_preview_file_to_products_table',79),(278,'2024_08_04_123805_create_authors_table',79),(279,'2024_08_04_123845_create_publishing_houses_table',79),(280,'2024_08_04_124023_create_digital_product_authors_table',79),(281,'2024_08_04_124046_create_digital_product_publishing_houses_table',79),(282,'2024_08_25_130313_modify_email_column_as_nullable_in_users_table',79),(283,'2024_08_26_130313_modify_token_column_as_text_in_phone_or_email_verifications_table',79),(284,'2024_10_01_130036_add_paid_amount_column_in_orders_table',80),(285,'2024_10_01_131352_create_restock_products_table',80),(286,'2024_10_01_132315_create_restock_product_customers_table',80),(287,'2024_11_02_075917_create_stock_clearance_setups_table',81),(288,'2024_11_02_075931_create_stock_clearance_products_table',81),(289,'2024_11_04_162929_create_analytic_scripts_table',81),(290,'2024_12_26_210457_create_blogs_table',82),(291,'2024_12_26_210615_create_blog_categories_table',82),(292,'2024_12_31_170955_bring_change_amount_column_in_orders_table',82),(293,'2025_01_02_180849_create_blog_translations_table',82),(294,'2025_01_12_104824_create_blog_seos_table',82),(295,'2025_02_10_165648_change_paid_amount_column_typein_orders_table',82),(296,'2025_03_08_201607_create_business_pages_table',83),(297,'2025_03_08_204555_create_attachments_table',83),(298,'2025_04_16_154104_modify_loyalty_point_column_in_users_table',83),(299,'2025_09_04_000548_create_checkout_drafts_table',84);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `most_demandeds`
--

DROP TABLE IF EXISTS `most_demandeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `most_demandeds` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `most_demandeds`
--

LOCK TABLES `most_demandeds` WRITE;
/*!40000 ALTER TABLE `most_demandeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `most_demandeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_messages`
--

DROP TABLE IF EXISTS `notification_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_messages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_messages`
--

LOCK TABLES `notification_messages` WRITE;
/*!40000 ALTER TABLE `notification_messages` DISABLE KEYS */;
INSERT INTO `notification_messages` VALUES (1,'customer','order_pending_message','customize your order pending message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(2,'customer','order_confirmation_message','customize your order confirmation message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(3,'customer','order_processing_message','customize your order processing message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(4,'customer','out_for_delivery_message','customize your out for delivery message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(5,'customer','order_delivered_message','customize your order delivered message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(6,'customer','order_returned_message','customize your order returned message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(7,'customer','order_failed_message','customize your order failed message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(8,'customer','order_canceled','customize your order canceled message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(9,'customer','order_refunded_message','customize your order refunded message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(10,'customer','refund_request_canceled_message','customize your refund request canceled message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(11,'customer','message_from_delivery_man','customize your message from delivery man message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(12,'customer','message_from_admin','customize your message from admin message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(13,'customer','message_from_seller','customize your message from seller message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(14,'customer','fund_added_by_admin_message','customize your fund added by admin message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(15,'seller','new_order_message','customize your new order message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(16,'seller','refund_request_message','customize your refund request message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(17,'seller','order_edit_message','customize your order edit message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(18,'seller','withdraw_request_status_message','customize your withdraw request status message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(19,'seller','message_from_customer','customize your message from customer message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(20,'seller','message_from_delivery_man','customize your message from delivery man message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(21,'seller','delivery_man_assign_by_admin_message','customize your delivery man assign by admin message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(22,'seller','order_delivered_message','customize your order delivered message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(23,'seller','order_canceled','customize your order canceled message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(24,'seller','order_refunded_message','customize your order refunded message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(25,'seller','refund_request_canceled_message','customize your refund request canceled message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(26,'seller','refund_request_status_changed_by_admin','customize your refund request status changed by admin message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(27,'seller','product_request_approved_message','customize your product request approved message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(28,'seller','product_request_rejected_message','customize your product request rejected message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(29,'delivery_man','new_order_assigned_message','customize your new order assigned message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(30,'delivery_man','expected_delivery_date','customize your expected delivery date message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(31,'delivery_man','delivery_man_charge','customize your delivery man charge message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(32,'delivery_man','order_canceled','customize your order canceled message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(33,'delivery_man','order_rescheduled_message','customize your order rescheduled message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(34,'delivery_man','order_edit_message','customize your order edit message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(35,'delivery_man','message_from_seller','customize your message from seller message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(36,'delivery_man','message_from_admin','customize your message from admin message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(37,'delivery_man','message_from_customer','customize your message from customer message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(38,'delivery_man','cash_collect_by_admin_message','customize your cash collect by admin message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(39,'delivery_man','cash_collect_by_seller_message','customize your cash collect by seller message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56'),(40,'delivery_man','withdraw_request_status_message','customize your withdraw request status message message',1,'2026-01-02 15:03:56','2026-01-02 15:03:56');
/*!40000 ALTER TABLE `notification_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification_seens`
--

DROP TABLE IF EXISTS `notification_seens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification_seens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `notification_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification_seens`
--

LOCK TABLES `notification_seens` WRITE;
/*!40000 ALTER TABLE `notification_seens` DISABLE KEYS */;
/*!40000 ALTER TABLE `notification_seens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `sent_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'system',
  `sent_to` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notification_count` int NOT NULL DEFAULT '0',
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('16a86421dc59e6cacb58b28d70826594299362c913c4ab109649022547a3e6897695ef8e8a33017c',2,1,'LaravelAuthApp','[]',0,'2025-06-25 10:42:30','2025-06-25 10:42:30','2026-06-25 10:42:30'),('6840b7d4ed685bf2e0dc593affa0bd3b968065f47cc226d39ab09f1422b5a1d9666601f3f60a79c1',98,1,'LaravelAuthApp','[]',1,'2021-07-05 09:25:41','2021-07-05 09:25:41','2022-07-05 15:25:41'),('c42cdd5ae652b8b2cbac4f2f4b496e889e1a803b08672954c8bbe06722b54160e71dce3e02331544',98,1,'LaravelAuthApp','[]',1,'2021-07-05 09:24:36','2021-07-05 09:24:36','2022-07-05 15:24:36');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'6amtech','GEUx5tqkviM6AAQcz4oi1dcm1KtRdJPgw41lj0eI','http://localhost',1,0,0,'2020-10-21 18:27:22','2020-10-21 18:27:22',NULL);
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2020-10-21 18:27:23','2020-10-21 18:27:23');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offline_payment_methods`
--

DROP TABLE IF EXISTS `offline_payment_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_payment_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_informations` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offline_payment_methods`
--

LOCK TABLES `offline_payment_methods` WRITE;
/*!40000 ALTER TABLE `offline_payment_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `offline_payment_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offline_payments`
--

DROP TABLE IF EXISTS `offline_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offline_payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offline_payments`
--

LOCK TABLES `offline_payments` WRITE;
/*!40000 ALTER TABLE `offline_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `offline_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_delivery_verifications`
--

DROP TABLE IF EXISTS `order_delivery_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_delivery_verifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_delivery_verifications`
--

LOCK TABLES `order_delivery_verifications` WRITE;
/*!40000 ALTER TABLE `order_delivery_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_delivery_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `seller_id` bigint DEFAULT NULL,
  `digital_file_after_sell` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `qty` int NOT NULL DEFAULT '0',
  `price` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `tax_model` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'exclude',
  `delivery_status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shipping_method_id` bigint DEFAULT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_stock_decreased` tinyint(1) NOT NULL DEFAULT '1',
  `refund_request` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (1,100001,8,1,NULL,'{\"id\":8,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Trendy Casual Spring Shoes\",\"slug\":\"trendy-casual-spring-shoes-fl6SAE\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":1,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"pair\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-12-30-6952c72bc93ae.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-30-6952c7b2df66d.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-30-6952c7b304e1b.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-12-30-6952c7b31eb07.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[\\\"10\\\",\\\"9\\\",\\\"11\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_10\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"40\\\",\\\"41\\\",\\\"42\\\",\\\"43\\\"]},{\\\"name\\\":\\\"choice_9\\\",\\\"title\\\":\\\"Gender\\\",\\\"options\\\":[\\\"Men\\\"]},{\\\"name\\\":\\\"choice_11\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Red\\\",\\\"Black\\\"]}]\",\"variation\":\"[{\\\"type\\\":\\\"40-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-40-Men-Red\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"40-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-40-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"41-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-41-Men-Red\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"41-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-41-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"42-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-42-Men-Red\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"42-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-42-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"43-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-43-Men-Red\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"43-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-43-Men-Black\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":2253,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":25,\"discount_type\":\"percent\",\"current_stock\":40,\"minimum_order_qty\":1,\"details\":\"<p>Stylish\\u00a0and\\u00a0comfortable\\u00a0men\\u2019s\\u00a0white\\u00a0sneakers\\u00a0with\\u00a0a\\u00a0<strong>non-slip\\u00a0platform<\\/strong>\\u00a0and\\u00a0<strong>breathable\\u00a0mesh\\u00a0lining<\\/strong>.\\u00a0Perfect\\u00a0for\\u00a0students\\u00a0or\\u00a0casual\\u00a0wear\\u00a0in\\u00a0spring.\\u00a0Made\\u00a0from\\u00a0high-quality\\u00a0PU\\u00a0with\\u00a0a\\u00a0durable\\u00a0<strong>rubber\\u00a0outsole<\\/strong>\\u00a0for\\u00a0enhanced\\u00a0grip\\u00a0and\\u00a0long-lasting\\u00a0comfort.<\\/p><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Material:\\u00a0PU\\u00a0upper,\\u00a0rubber\\u00a0outsole<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Features:\\u00a0Non-slip\\u00a0platform,\\u00a0breathable\\u00a0mesh\\u00a0lining<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Style:\\u00a0Trendy\\u00a0casual\\u00a0sneakers<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Ideal\\u00a0for:\\u00a0Students,\\u00a0everyday\\u00a0casual\\u00a0wear<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Sizes:\\u00a040,\\u00a041,\\u00a042,\\u00a043<\\/strong><\\/li><\\/ol><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-12-28T19:32:30.000000Z\",\"updated_at\":\"2025-12-29T18:25:55.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Trendy Casual Spring Shoes\",\"meta_description\":null,\"meta_image\":\"2025-12-29-6952beeb065f4.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"M11690RB\",\"is_shop_temporary_close\":0,\"thumbnail_full_url\":{\"key\":\"2025-12-30-6952c7b31eb07.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/thumbnail\\/2025-12-30-6952c7b31eb07.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[],\"meta_image_full_url\":{\"key\":\"2025-12-29-6952beeb065f4.png\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/meta\\/2025-12-29-6952beeb065f4.png\",\"status\":200},\"images_full_url\":[{\"key\":\"2025-12-30-6952c72bc93ae.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/2025-12-30-6952c72bc93ae.webp\",\"status\":200},{\"key\":\"2025-12-30-6952c7b2df66d.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/2025-12-30-6952c7b2df66d.webp\",\"status\":200},{\"key\":\"2025-12-30-6952c7b304e1b.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/2025-12-30-6952c7b304e1b.webp\",\"status\":200}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"clearance_sale\":null,\"translations\":[],\"reviews\":[]}',1,2253,0,563.25,'include','delivered','paid','2026-01-02 16:41:34','2026-01-02 16:41:34',NULL,'41-Men-Red','{\"Size\":\"41\",\"Gender\":\"Men\",\"Color\":\"Red\"}','discount_on_product',1,0),(2,100002,8,1,NULL,'{\"id\":8,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Trendy Casual Spring Shoes\",\"slug\":\"trendy-casual-spring-shoes-fl6SAE\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":1,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"pair\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-12-30-6952c72bc93ae.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-30-6952c7b2df66d.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-30-6952c7b304e1b.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-12-30-6952c7b31eb07.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[\\\"10\\\",\\\"9\\\",\\\"11\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_10\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"40\\\",\\\"41\\\",\\\"42\\\",\\\"43\\\"]},{\\\"name\\\":\\\"choice_9\\\",\\\"title\\\":\\\"Gender\\\",\\\"options\\\":[\\\"Men\\\"]},{\\\"name\\\":\\\"choice_11\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Red\\\",\\\"Black\\\"]}]\",\"variation\":\"[{\\\"type\\\":\\\"40-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-40-Men-Red\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"40-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-40-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"41-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-41-Men-Red\\\",\\\"qty\\\":4},{\\\"type\\\":\\\"41-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-41-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"42-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-42-Men-Red\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"42-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-42-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"43-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-43-Men-Red\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"43-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-43-Men-Black\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":2253,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":25,\"discount_type\":\"percent\",\"current_stock\":39,\"minimum_order_qty\":1,\"details\":\"<p>Stylish\\u00a0and\\u00a0comfortable\\u00a0men\\u2019s\\u00a0white\\u00a0sneakers\\u00a0with\\u00a0a\\u00a0<strong>non-slip\\u00a0platform<\\/strong>\\u00a0and\\u00a0<strong>breathable\\u00a0mesh\\u00a0lining<\\/strong>.\\u00a0Perfect\\u00a0for\\u00a0students\\u00a0or\\u00a0casual\\u00a0wear\\u00a0in\\u00a0spring.\\u00a0Made\\u00a0from\\u00a0high-quality\\u00a0PU\\u00a0with\\u00a0a\\u00a0durable\\u00a0<strong>rubber\\u00a0outsole<\\/strong>\\u00a0for\\u00a0enhanced\\u00a0grip\\u00a0and\\u00a0long-lasting\\u00a0comfort.<\\/p><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Material:\\u00a0PU\\u00a0upper,\\u00a0rubber\\u00a0outsole<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Features:\\u00a0Non-slip\\u00a0platform,\\u00a0breathable\\u00a0mesh\\u00a0lining<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Style:\\u00a0Trendy\\u00a0casual\\u00a0sneakers<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Ideal\\u00a0for:\\u00a0Students,\\u00a0everyday\\u00a0casual\\u00a0wear<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Sizes:\\u00a040,\\u00a041,\\u00a042,\\u00a043<\\/strong><\\/li><\\/ol><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-12-28T19:32:30.000000Z\",\"updated_at\":\"2026-01-02T10:41:34.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Trendy Casual Spring Shoes\",\"meta_description\":null,\"meta_image\":\"2025-12-29-6952beeb065f4.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"M11690RB\",\"thumbnail_full_url\":{\"key\":\"2025-12-30-6952c7b31eb07.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/thumbnail\\/2025-12-30-6952c7b31eb07.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}',1,2253,0,563.25,'include','returned','unpaid','2026-01-02 16:45:12','2026-01-02 16:57:21',NULL,'40-Men-Red','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','discount_on_product',0,0),(3,100003,5,1,NULL,'{\"id\":5,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Generisch Non-Slip, Fitness Lightweight Shoes\",\"slug\":\"generisch-non-slip-fitness-lightweight-shoes-tH2etv\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":1,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"pair\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-12-28-695106afce8ab.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-29-69518a54515fa.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-12-28-695106afd49db.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[\\\"10\\\",\\\"9\\\",\\\"11\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_10\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"40\\\",\\\"\\\\u00a041\\\",\\\"\\\\u00a042\\\",\\\"\\\\u00a043\\\"]},{\\\"name\\\":\\\"choice_9\\\",\\\"title\\\":\\\"Gender\\\",\\\"options\\\":[\\\"Men\\\"]},{\\\"name\\\":\\\"choice_11\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\",\\\"Coffee\\\"]}]\",\"variation\":\"[{\\\"type\\\":\\\"40-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-40-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"40-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-40-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a041-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a041-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a042-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a042-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a043-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a043-Men-Coffee\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":1987,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":25,\"discount_type\":\"percent\",\"current_stock\":40,\"minimum_order_qty\":1,\"details\":\"<p>Lightweight, breathable trainers with <strong>comfortable cushioned interiors<\\/strong> and a <strong>non-slip, shock-absorbing sole<\\/strong>. Designed for running, hiking, gym workouts, casual wear, and outdoor activities. Features <strong>slip-on convenience with lace-up adjustment<\\/strong> for a secure fit.<\\/p><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Upper Material: PU<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Inner Material: Breathable textile + elastic lining<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Sole: EVA + durable rubber, non-slip & shockproof<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Fit: Slip-on with adjustable laces<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Use: Running, hiking, sports, gym, casual, outdoor<\\/li><\\/ol><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-12-28T10:30:07.000000Z\",\"updated_at\":\"2025-12-28T19:53:05.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Generisch Non-Slip, Fitness Lightweight Shoes\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"M11490\",\"thumbnail_full_url\":{\"key\":\"2025-12-28-695106afd49db.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/thumbnail\\/2025-12-28-695106afd49db.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}',1,1987,0,496.75,'include','pending','unpaid','2026-01-02 16:45:20','2026-01-02 16:45:20',NULL,'40-Men-Black','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','discount_on_product',1,0),(4,100004,5,1,NULL,'{\"id\":5,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Generisch Non-Slip, Fitness Lightweight Shoes\",\"slug\":\"generisch-non-slip-fitness-lightweight-shoes-tH2etv\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":1,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"pair\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-12-28-695106afce8ab.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-29-69518a54515fa.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-12-28-695106afd49db.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[\\\"10\\\",\\\"9\\\",\\\"11\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_10\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"40\\\",\\\"\\\\u00a041\\\",\\\"\\\\u00a042\\\",\\\"\\\\u00a043\\\"]},{\\\"name\\\":\\\"choice_9\\\",\\\"title\\\":\\\"Gender\\\",\\\"options\\\":[\\\"Men\\\"]},{\\\"name\\\":\\\"choice_11\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\",\\\"Coffee\\\"]}]\",\"variation\":\"[{\\\"type\\\":\\\"40-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-40-Men-Black\\\",\\\"qty\\\":4},{\\\"type\\\":\\\"40-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-40-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a041-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a041-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a042-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a042-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a043-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a043-Men-Coffee\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":1987,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":25,\"discount_type\":\"percent\",\"current_stock\":39,\"minimum_order_qty\":1,\"details\":\"<p>Lightweight, breathable trainers with <strong>comfortable cushioned interiors<\\/strong> and a <strong>non-slip, shock-absorbing sole<\\/strong>. Designed for running, hiking, gym workouts, casual wear, and outdoor activities. Features <strong>slip-on convenience with lace-up adjustment<\\/strong> for a secure fit.<\\/p><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Upper Material: PU<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Inner Material: Breathable textile + elastic lining<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Sole: EVA + durable rubber, non-slip & shockproof<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Fit: Slip-on with adjustable laces<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Use: Running, hiking, sports, gym, casual, outdoor<\\/li><\\/ol><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-12-28T10:30:07.000000Z\",\"updated_at\":\"2026-01-02T10:45:20.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Generisch Non-Slip, Fitness Lightweight Shoes\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"M11490\",\"thumbnail_full_url\":{\"key\":\"2025-12-28-695106afd49db.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/thumbnail\\/2025-12-28-695106afd49db.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}',1,1987,0,496.75,'include','pending','unpaid','2026-01-02 16:45:21','2026-01-02 16:45:21',NULL,'40-Men-Black','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','discount_on_product',1,0),(5,100005,5,1,NULL,'{\"id\":5,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Generisch Non-Slip, Fitness Lightweight Shoes\",\"slug\":\"generisch-non-slip-fitness-lightweight-shoes-tH2etv\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":1,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"pair\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-12-28-695106afce8ab.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-29-69518a54515fa.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-12-28-695106afd49db.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[\\\"10\\\",\\\"9\\\",\\\"11\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_10\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"40\\\",\\\"\\\\u00a041\\\",\\\"\\\\u00a042\\\",\\\"\\\\u00a043\\\"]},{\\\"name\\\":\\\"choice_9\\\",\\\"title\\\":\\\"Gender\\\",\\\"options\\\":[\\\"Men\\\"]},{\\\"name\\\":\\\"choice_11\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\",\\\"Coffee\\\"]}]\",\"variation\":\"[{\\\"type\\\":\\\"40-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-40-Men-Black\\\",\\\"qty\\\":3},{\\\"type\\\":\\\"40-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-40-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a041-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a041-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a042-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a042-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a043-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a043-Men-Coffee\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":1987,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":25,\"discount_type\":\"percent\",\"current_stock\":38,\"minimum_order_qty\":1,\"details\":\"<p>Lightweight, breathable trainers with <strong>comfortable cushioned interiors<\\/strong> and a <strong>non-slip, shock-absorbing sole<\\/strong>. Designed for running, hiking, gym workouts, casual wear, and outdoor activities. Features <strong>slip-on convenience with lace-up adjustment<\\/strong> for a secure fit.<\\/p><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Upper Material: PU<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Inner Material: Breathable textile + elastic lining<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Sole: EVA + durable rubber, non-slip & shockproof<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Fit: Slip-on with adjustable laces<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Use: Running, hiking, sports, gym, casual, outdoor<\\/li><\\/ol><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-12-28T10:30:07.000000Z\",\"updated_at\":\"2026-01-02T10:45:21.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Generisch Non-Slip, Fitness Lightweight Shoes\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"M11490\",\"thumbnail_full_url\":{\"key\":\"2025-12-28-695106afd49db.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/thumbnail\\/2025-12-28-695106afd49db.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}',1,1987,0,496.75,'include','pending','unpaid','2026-01-02 16:54:11','2026-01-02 16:54:11',NULL,'40-Men-Black','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','discount_on_product',1,0),(6,100006,3,1,NULL,'{\"id\":3,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Men\\u2019s Breathable Mesh Dad Sneakers \\u2013 Thick Sole Casual Shoes\",\"slug\":\"mens-breathable-mesh-dad-sneakers-thick-sole-casual-shoes-Qvvss6\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":1,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"pair\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-12-29-6951888bad8dc.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-30-6952c2a35cd4a.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-30-6952c2a3771b5.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-12-30-6952c2a3a21a7.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[\\\"10\\\",\\\"9\\\",\\\"11\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_10\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"40\\\",\\\"41\\\",\\\"42\\\",\\\"43\\\"]},{\\\"name\\\":\\\"choice_9\\\",\\\"title\\\":\\\"Gender\\\",\\\"options\\\":[\\\"Men\\\"]},{\\\"name\\\":\\\"choice_11\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Rose Pink\\\",\\\"Blue\\\"]}]\",\"variation\":\"[{\\\"type\\\":\\\"40-Men-RosePink\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"MBMS-40-Men-RosePink\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"40-Men-Blue\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"MBMS-40-Men-Blue\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"41-Men-RosePink\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"MBMS-41-Men-RosePink\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"41-Men-Blue\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"MBMS-41-Men-Blue\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"42-Men-RosePink\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"MBMS-42-Men-RosePink\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"42-Men-Blue\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"MBMS-42-Men-Blue\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"43-Men-RosePink\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"MBMS-43-Men-RosePink\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"43-Men-Blue\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"MBMS-43-Men-Blue\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":2520,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":25,\"discount_type\":\"percent\",\"current_stock\":40,\"minimum_order_qty\":1,\"details\":\"<p>Trendy men\\u2019s casual sneakers with a breathable mesh upper and thick rubber sole for comfort and height enhancement. Lightweight, shock-absorbing, and non-slip\\u2014perfect for summer and everyday wear. Designed in a modern Korean retro style.<\\/p><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Upper: Breathable mesh<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Sole: Rubber, thick sole<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Style: Casual \\/ dad sneakers<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Season: Spring, Summer, Autumn<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Sizes: 40\\u201344<\\/strong><\\/li><\\/ol><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-12-28T10:09:31.000000Z\",\"updated_at\":\"2025-12-29T18:04:31.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Men\\u2019s Breathable Mesh Sneakers\",\"meta_description\":null,\"meta_image\":\"2025-12-30-6952c2a390d1c.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"M11890\",\"thumbnail_full_url\":{\"key\":\"2025-12-30-6952c2a3a21a7.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/thumbnail\\/2025-12-30-6952c2a3a21a7.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}',1,2520,0,630,'include','pending','unpaid','2026-01-02 16:55:40','2026-01-02 16:55:40',NULL,'40-Men-RosePink','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Rose Pink\"}','discount_on_product',1,0),(7,100007,5,1,NULL,'{\"id\":5,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Generisch Non-Slip, Fitness Lightweight Shoes\",\"slug\":\"generisch-non-slip-fitness-lightweight-shoes-tH2etv\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":1,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"pair\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-12-28-695106afce8ab.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-29-69518a54515fa.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-12-28-695106afd49db.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[\\\"10\\\",\\\"9\\\",\\\"11\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_10\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"40\\\",\\\"\\\\u00a041\\\",\\\"\\\\u00a042\\\",\\\"\\\\u00a043\\\"]},{\\\"name\\\":\\\"choice_9\\\",\\\"title\\\":\\\"Gender\\\",\\\"options\\\":[\\\"Men\\\"]},{\\\"name\\\":\\\"choice_11\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\",\\\"Coffee\\\"]}]\",\"variation\":\"[{\\\"type\\\":\\\"40-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-40-Men-Black\\\",\\\"qty\\\":2},{\\\"type\\\":\\\"40-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-40-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a041-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a041-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a042-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a042-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a043-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a043-Men-Coffee\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":1987,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":25,\"discount_type\":\"percent\",\"current_stock\":37,\"minimum_order_qty\":1,\"details\":\"<p>Lightweight, breathable trainers with <strong>comfortable cushioned interiors<\\/strong> and a <strong>non-slip, shock-absorbing sole<\\/strong>. Designed for running, hiking, gym workouts, casual wear, and outdoor activities. Features <strong>slip-on convenience with lace-up adjustment<\\/strong> for a secure fit.<\\/p><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Upper Material: PU<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Inner Material: Breathable textile + elastic lining<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Sole: EVA + durable rubber, non-slip & shockproof<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Fit: Slip-on with adjustable laces<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Use: Running, hiking, sports, gym, casual, outdoor<\\/li><\\/ol><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-12-28T10:30:07.000000Z\",\"updated_at\":\"2026-01-02T10:54:11.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Generisch Non-Slip, Fitness Lightweight Shoes\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"M11490\",\"thumbnail_full_url\":{\"key\":\"2025-12-28-695106afd49db.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/thumbnail\\/2025-12-28-695106afd49db.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}',1,1987,0,496.75,'include','pending','unpaid','2026-01-02 17:20:55','2026-01-02 17:20:55',NULL,'40-Men-Black','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','discount_on_product',1,0),(8,100008,5,1,NULL,'{\"id\":5,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Generisch Non-Slip, Fitness Lightweight Shoes\",\"slug\":\"generisch-non-slip-fitness-lightweight-shoes-tH2etv\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":1,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"pair\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-12-28-695106afce8ab.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-29-69518a54515fa.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-12-28-695106afd49db.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[\\\"10\\\",\\\"9\\\",\\\"11\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_10\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"40\\\",\\\"\\\\u00a041\\\",\\\"\\\\u00a042\\\",\\\"\\\\u00a043\\\"]},{\\\"name\\\":\\\"choice_9\\\",\\\"title\\\":\\\"Gender\\\",\\\"options\\\":[\\\"Men\\\"]},{\\\"name\\\":\\\"choice_11\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\",\\\"Coffee\\\"]}]\",\"variation\":\"[{\\\"type\\\":\\\"40-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-40-Men-Black\\\",\\\"qty\\\":1},{\\\"type\\\":\\\"40-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-40-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a041-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a041-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a042-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a042-Men-Coffee\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Black\\\",\\\"price\\\":1987,\\\"sku\\\":\\\"GNFLS-\\\\u00a043-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Coffee\\\",\\\"price\\\":1933,\\\"sku\\\":\\\"GNFLS-\\\\u00a043-Men-Coffee\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":1987,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":25,\"discount_type\":\"percent\",\"current_stock\":36,\"minimum_order_qty\":1,\"details\":\"<p>Lightweight, breathable trainers with <strong>comfortable cushioned interiors<\\/strong> and a <strong>non-slip, shock-absorbing sole<\\/strong>. Designed for running, hiking, gym workouts, casual wear, and outdoor activities. Features <strong>slip-on convenience with lace-up adjustment<\\/strong> for a secure fit.<\\/p><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Upper Material: PU<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Inner Material: Breathable textile + elastic lining<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Sole: EVA + durable rubber, non-slip & shockproof<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Fit: Slip-on with adjustable laces<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Use: Running, hiking, sports, gym, casual, outdoor<\\/li><\\/ol><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-12-28T10:30:07.000000Z\",\"updated_at\":\"2026-01-02T11:20:55.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Generisch Non-Slip, Fitness Lightweight Shoes\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"M11490\",\"is_shop_temporary_close\":0,\"thumbnail_full_url\":{\"key\":\"2025-12-28-695106afd49db.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/thumbnail\\/2025-12-28-695106afd49db.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"color_images_full_url\":[],\"meta_image_full_url\":{\"key\":null,\"path\":null,\"status\":404},\"images_full_url\":[{\"key\":\"2025-12-28-695106afce8ab.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/2025-12-28-695106afce8ab.webp\",\"status\":200},{\"key\":\"2025-12-29-69518a54515fa.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/2025-12-29-69518a54515fa.webp\",\"status\":200}],\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"clearance_sale\":null,\"translations\":[{\"translationable_type\":\"App\\\\Models\\\\Product\",\"translationable_id\":5,\"locale\":\"bd\",\"key\":\"name\",\"value\":\"Generisch Non-Slip, Fitness Lightweight Shoes\",\"id\":29},{\"translationable_type\":\"App\\\\Models\\\\Product\",\"translationable_id\":5,\"locale\":\"bd\",\"key\":\"description\",\"value\":\"<p>Lightweight, breathable trainers with <strong>comfortable cushioned interiors<\\/strong> and a <strong>non-slip, shock-absorbing sole<\\/strong>. Designed for running, hiking, gym workouts, casual wear, and outdoor activities. Features <strong>slip-on convenience with lace-up adjustment<\\/strong> for a secure fit.<\\/p><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Upper Material: PU<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Inner Material: Breathable textile + elastic lining<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Sole: EVA + durable rubber, non-slip & shockproof<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Fit: Slip-on with adjustable laces<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Use: Running, hiking, sports, gym, casual, outdoor<\\/li><\\/ol><p><br><\\/p>\",\"id\":30}],\"reviews\":[]}',1,1987,0,496.75,'include','delivered','paid','2026-01-02 17:53:20','2026-01-02 17:53:20',NULL,'40-Men-Black','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','discount_on_product',1,0),(9,100009,2,1,NULL,'{\"id\":2,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Fabric Mesh Soft Sole Sport Shoes\",\"slug\":\"fabric-mesh-soft-sole-sport-shoes-rNpDLd\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":1,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":1,\"unit\":\"pair\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-12-28-6951011f91060.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-29-69518271aef24.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-12-28-6951011f997ff.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[\\\"10\\\",\\\"9\\\",\\\"11\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_10\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"40\\\",\\\"\\\\u00a041\\\",\\\"\\\\u00a042\\\",\\\"\\\\u00a043\\\"]},{\\\"name\\\":\\\"choice_9\\\",\\\"title\\\":\\\"Gender\\\",\\\"options\\\":[\\\"Men\\\",\\\"Women\\\"]},{\\\"name\\\":\\\"choice_11\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\",\\\"Yellow\\\"]}]\",\"variation\":\"[{\\\"type\\\":\\\"40-Men-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-40-Men-Black\\\",\\\"qty\\\":6},{\\\"type\\\":\\\"40-Men-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-40-Men-Yellow\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"40-Women-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-40-Women-Black\\\",\\\"qty\\\":1},{\\\"type\\\":\\\"40-Women-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-40-Women-Yellow\\\",\\\"qty\\\":1},{\\\"type\\\":\\\"\\\\u00a041-Men-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a041-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a041-Men-Yellow\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Women-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a041-Women-Black\\\",\\\"qty\\\":1},{\\\"type\\\":\\\"\\\\u00a041-Women-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a041-Women-Yellow\\\",\\\"qty\\\":1},{\\\"type\\\":\\\"\\\\u00a042-Men-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a042-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a042-Men-Yellow\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Women-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a042-Women-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Women-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a042-Women-Yellow\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a043-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a043-Men-Yellow\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Women-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a043-Women-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Women-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a043-Women-Yellow\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":2253,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":25,\"discount_type\":\"percent\",\"current_stock\":65,\"minimum_order_qty\":1,\"details\":\"<h4>Product\\u00a0Details:<\\/h4><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Type:\\u00a0Sneakers<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Gender:\\u00a0Men\\u2019s<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Condition:\\u00a0Brand\\u00a0New<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Color:\\u00a0Multicolor<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Available\\u00a0Sizes:\\u00a040,\\u00a041,\\u00a042,\\u00a043,\\u00a044<\\/li><\\/ol><h4>Features:<\\/h4><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Modern\\u00a0and\\u00a0stylish\\u00a0design<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>High-quality\\u00a0materials\\u00a0for\\u00a0long-lasting\\u00a0use<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Comfortable\\u00a0sole\\u00a0suitable\\u00a0for\\u00a0all-day\\u00a0wear<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Durable\\u00a0construction\\u00a0with\\u00a0a\\u00a0strong\\u00a0grip<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Easy\\u00a0to\\u00a0pair\\u00a0with\\u00a0casual\\u00a0and\\u00a0semi-formal\\u00a0outfits<\\/li><\\/ol><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-12-28T10:06:23.000000Z\",\"updated_at\":\"2026-01-02T12:29:47.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Fabric Mesh Soft Sole Sport Shoes\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"M11690A\",\"thumbnail_full_url\":{\"key\":\"2025-12-28-6951011f997ff.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/thumbnail\\/2025-12-28-6951011f997ff.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}',1,2253,0,563.25,'include','canceled','paid','2026-01-02 18:32:00','2026-01-04 20:38:20',NULL,'40-Men-Black','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','discount_on_product',0,0),(10,100010,8,1,NULL,'{\"id\":8,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Trendy Casual Spring Shoes\",\"slug\":\"trendy-casual-spring-shoes-fl6SAE\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":1,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":2,\"unit\":\"pair\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-12-30-6952c72bc93ae.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-30-6952c7b2df66d.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-30-6952c7b304e1b.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-12-30-6952c7b31eb07.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":0,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":\"https:\\/\\/www.youtube.com\\/shorts\\/JjYcbOrgX_w\",\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[\\\"10\\\",\\\"9\\\",\\\"11\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_10\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"40\\\",\\\"41\\\",\\\"42\\\",\\\"43\\\"]},{\\\"name\\\":\\\"choice_9\\\",\\\"title\\\":\\\"Gender\\\",\\\"options\\\":[\\\"Men\\\"]},{\\\"name\\\":\\\"choice_11\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Red\\\",\\\"Black\\\",\\\"White\\\"]}]\",\"variation\":\"[{\\\"type\\\":\\\"40-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-40-Men-Red\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"40-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-40-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"40-Men-White\\\",\\\"price\\\":0,\\\"sku\\\":null,\\\"qty\\\":0},{\\\"type\\\":\\\"41-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-41-Men-Red\\\",\\\"qty\\\":4},{\\\"type\\\":\\\"41-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-41-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"41-Men-White\\\",\\\"price\\\":0,\\\"sku\\\":null,\\\"qty\\\":0},{\\\"type\\\":\\\"42-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-42-Men-Red\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"42-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-42-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"42-Men-White\\\",\\\"price\\\":0,\\\"sku\\\":null,\\\"qty\\\":0},{\\\"type\\\":\\\"43-Men-Red\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"TCSS-43-Men-Red\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"43-Men-Black\\\",\\\"price\\\":2200,\\\"sku\\\":\\\"TCSS-43-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"43-Men-White\\\",\\\"price\\\":0,\\\"sku\\\":null,\\\"qty\\\":0}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":2253,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":25,\"discount_type\":\"percent\",\"current_stock\":39,\"minimum_order_qty\":1,\"details\":\"<p>Stylish\\u00a0and\\u00a0comfortable\\u00a0men\\u2019s\\u00a0white\\u00a0sneakers\\u00a0with\\u00a0a\\u00a0<strong>non-slip\\u00a0platform<\\/strong>\\u00a0and\\u00a0<strong>breathable\\u00a0mesh\\u00a0lining<\\/strong>.\\u00a0Perfect\\u00a0for\\u00a0students\\u00a0or\\u00a0casual\\u00a0wear\\u00a0in\\u00a0spring.\\u00a0Made\\u00a0from\\u00a0high-quality\\u00a0PU\\u00a0with\\u00a0a\\u00a0durable\\u00a0<strong>rubber\\u00a0outsole<\\/strong>\\u00a0for\\u00a0enhanced\\u00a0grip\\u00a0and\\u00a0long-lasting\\u00a0comfort.<\\/p><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Material:\\u00a0PU\\u00a0upper,\\u00a0rubber\\u00a0outsole<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Features:\\u00a0Non-slip\\u00a0platform,\\u00a0breathable\\u00a0mesh\\u00a0lining<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Style:\\u00a0Trendy\\u00a0casual\\u00a0sneakers<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Ideal\\u00a0for:\\u00a0Students,\\u00a0everyday\\u00a0casual\\u00a0wear<\\/strong><\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span><strong>Sizes:\\u00a040,\\u00a041,\\u00a042,\\u00a043<\\/strong><\\/li><\\/ol><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-12-28T19:32:30.000000Z\",\"updated_at\":\"2026-01-02T14:30:38.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Trendy Casual Spring Shoes\",\"meta_description\":null,\"meta_image\":\"2025-12-29-6952beeb065f4.png\",\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"M11690RB\",\"thumbnail_full_url\":{\"key\":\"2025-12-30-6952c7b31eb07.webp\",\"path\":\"https:\\/\\/www.rexbuyshop.com\\/storage\\/product\\/thumbnail\\/2025-12-30-6952c7b31eb07.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}',1,2253,0,563.25,'include','pending','unpaid','2026-01-04 03:47:12','2026-01-04 03:47:12',NULL,'40-Men-Red','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Red\"}','discount_on_product',1,0),(11,100011,2,1,NULL,'{\"id\":2,\"added_by\":\"admin\",\"user_id\":1,\"name\":\"Fabric Mesh Soft Sole Sport Shoes\",\"slug\":\"fabric-mesh-soft-sole-sport-shoes-rNpDLd\",\"product_type\":\"physical\",\"category_ids\":\"[{\\\"id\\\":\\\"1\\\",\\\"position\\\":1}]\",\"category_id\":1,\"sub_category_id\":null,\"sub_sub_category_id\":null,\"brand_id\":2,\"unit\":\"pair\",\"min_qty\":1,\"refundable\":1,\"digital_product_type\":null,\"digital_file_ready\":\"\",\"digital_file_ready_storage_type\":null,\"images\":\"[{\\\"image_name\\\":\\\"2025-12-28-6951011f91060.webp\\\",\\\"storage\\\":\\\"public\\\"},{\\\"image_name\\\":\\\"2025-12-29-69518271aef24.webp\\\",\\\"storage\\\":\\\"public\\\"}]\",\"color_image\":\"[]\",\"thumbnail\":\"2025-12-28-6951011f997ff.webp\",\"thumbnail_storage_type\":\"public\",\"preview_file\":\"\",\"preview_file_storage_type\":\"public\",\"featured\":null,\"flash_deal\":null,\"video_provider\":\"youtube\",\"video_url\":null,\"colors\":\"[]\",\"variant_product\":0,\"attributes\":\"[\\\"10\\\",\\\"9\\\",\\\"11\\\"]\",\"choice_options\":\"[{\\\"name\\\":\\\"choice_10\\\",\\\"title\\\":\\\"Size\\\",\\\"options\\\":[\\\"40\\\",\\\"\\\\u00a041\\\",\\\"\\\\u00a042\\\",\\\"\\\\u00a043\\\"]},{\\\"name\\\":\\\"choice_9\\\",\\\"title\\\":\\\"Gender\\\",\\\"options\\\":[\\\"Men\\\",\\\"Women\\\"]},{\\\"name\\\":\\\"choice_11\\\",\\\"title\\\":\\\"Color\\\",\\\"options\\\":[\\\"Black\\\",\\\"Yellow\\\"]}]\",\"variation\":\"[{\\\"type\\\":\\\"40-Men-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-40-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"40-Men-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-40-Men-Yellow\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"40-Women-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-40-Women-Black\\\",\\\"qty\\\":1},{\\\"type\\\":\\\"40-Women-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-40-Women-Yellow\\\",\\\"qty\\\":1},{\\\"type\\\":\\\"\\\\u00a041-Men-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a041-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Men-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a041-Men-Yellow\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a041-Women-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a041-Women-Black\\\",\\\"qty\\\":1},{\\\"type\\\":\\\"\\\\u00a041-Women-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a041-Women-Yellow\\\",\\\"qty\\\":1},{\\\"type\\\":\\\"\\\\u00a042-Men-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a042-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Men-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a042-Men-Yellow\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Women-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a042-Women-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a042-Women-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a042-Women-Yellow\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a043-Men-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Men-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a043-Men-Yellow\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Women-Black\\\",\\\"price\\\":2253,\\\"sku\\\":\\\"FMSSSS-\\\\u00a043-Women-Black\\\",\\\"qty\\\":5},{\\\"type\\\":\\\"\\\\u00a043-Women-Yellow\\\",\\\"price\\\":2520,\\\"sku\\\":\\\"FMSSSS-\\\\u00a043-Women-Yellow\\\",\\\"qty\\\":5}]\",\"digital_product_file_types\":[],\"digital_product_extensions\":[],\"published\":0,\"unit_price\":2253,\"purchase_price\":0,\"tax\":0,\"tax_type\":\"percent\",\"tax_model\":\"include\",\"discount\":25,\"discount_type\":\"percent\",\"current_stock\":64,\"minimum_order_qty\":1,\"details\":\"<h4>Product\\u00a0Details:<\\/h4><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Type:\\u00a0Sneakers<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Gender:\\u00a0Men & Women<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Condition:\\u00a0Brand\\u00a0New<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Color:\\u00a0Multicolor<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Available\\u00a0Sizes: 40,\\u00a041,\\u00a042,\\u00a043<\\/li><\\/ol><h4>Features:<\\/h4><ol><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Modern\\u00a0and\\u00a0stylish\\u00a0design<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>High-quality\\u00a0materials\\u00a0for\\u00a0long-lasting\\u00a0use<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Comfortable\\u00a0sole\\u00a0suitable\\u00a0for\\u00a0all-day\\u00a0wear<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Durable\\u00a0construction\\u00a0with\\u00a0a\\u00a0strong\\u00a0grip<\\/li><li data-list=\\\"bullet\\\"><span class=\\\"ql-ui\\\" contenteditable=\\\"false\\\"><\\/span>Easy\\u00a0to\\u00a0pair\\u00a0with\\u00a0casual\\u00a0and\\u00a0semi-formal\\u00a0outfits<\\/li><\\/ol><p><br><\\/p>\",\"free_shipping\":0,\"attachment\":null,\"created_at\":\"2025-12-28T10:06:23.000000Z\",\"updated_at\":\"2026-01-02T14:30:38.000000Z\",\"status\":1,\"featured_status\":1,\"meta_title\":\"Fabric Mesh Soft Sole Sport Shoes\",\"meta_description\":null,\"meta_image\":null,\"request_status\":1,\"denied_note\":null,\"shipping_cost\":0,\"multiply_qty\":0,\"temp_shipping_cost\":null,\"is_shipping_cost_updated\":null,\"code\":\"M11690A\",\"thumbnail_full_url\":{\"key\":\"2025-12-28-6951011f997ff.webp\",\"path\":\"https:\\/\\/rexbuyshop.com\\/storage\\/product\\/thumbnail\\/2025-12-28-6951011f997ff.webp\",\"status\":200},\"preview_file_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_file_ready_full_url\":{\"key\":\"\",\"path\":null,\"status\":404},\"digital_variation\":[],\"clearance_sale\":null}',1,2253,0,563.25,'include','pending','unpaid','2026-01-04 15:36:21','2026-01-04 15:36:21',NULL,'40-Men-Black','{\"Size\":\"40\",\"Gender\":\"Men\",\"Color\":\"Black\"}','discount_on_product',1,0);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_expected_delivery_histories`
--

DROP TABLE IF EXISTS `order_expected_delivery_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_expected_delivery_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expected_delivery_date` date NOT NULL,
  `cause` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_expected_delivery_histories`
--

LOCK TABLES `order_expected_delivery_histories` WRITE;
/*!40000 ALTER TABLE `order_expected_delivery_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_expected_delivery_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_status_histories`
--

DROP TABLE IF EXISTS `order_status_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_status_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint NOT NULL,
  `user_id` bigint NOT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cause` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_status_histories`
--

LOCK TABLES `order_status_histories` WRITE;
/*!40000 ALTER TABLE `order_status_histories` DISABLE KEYS */;
INSERT INTO `order_status_histories` VALUES (1,100002,1,'customer','pending',NULL,'2026-01-02 16:45:12','2026-01-02 16:45:12'),(2,100003,855,'customer','pending',NULL,'2026-01-02 16:45:20','2026-01-02 16:45:20'),(3,100004,849,'customer','pending',NULL,'2026-01-02 16:45:21','2026-01-02 16:45:21'),(4,100004,0,'admin','confirmed',NULL,'2026-01-02 16:47:41','2026-01-02 16:47:41'),(5,100004,0,'admin','processing',NULL,'2026-01-02 16:48:49','2026-01-02 16:48:49'),(6,100004,0,'admin','out_for_delivery',NULL,'2026-01-02 16:49:47','2026-01-02 16:49:47'),(7,100005,2,'customer','pending',NULL,'2026-01-02 16:54:11','2026-01-02 16:54:11'),(8,100006,2,'customer','pending',NULL,'2026-01-02 16:55:40','2026-01-02 16:55:40'),(9,100002,0,'admin','confirmed',NULL,'2026-01-02 16:56:35','2026-01-02 16:56:35'),(10,100002,0,'admin','out_for_delivery',NULL,'2026-01-02 16:57:04','2026-01-02 16:57:04'),(11,100002,0,'admin','returned',NULL,'2026-01-02 16:57:21','2026-01-02 16:57:21'),(12,100002,0,'admin','failed',NULL,'2026-01-02 16:57:38','2026-01-02 16:57:38'),(13,100002,0,'admin','canceled',NULL,'2026-01-02 16:57:54','2026-01-02 16:57:54'),(14,100007,855,'customer','pending',NULL,'2026-01-02 17:20:55','2026-01-02 17:20:55'),(15,100009,855,'customer','pending',NULL,'2026-01-02 18:32:00','2026-01-02 18:32:00'),(16,100009,0,'admin','delivered',NULL,'2026-01-02 18:32:31','2026-01-02 18:32:31'),(17,100010,1221,'customer','pending',NULL,'2026-01-04 03:47:12','2026-01-04 03:47:12'),(18,100011,3,'customer','pending',NULL,'2026-01-04 15:36:21','2026-01-04 15:36:21'),(19,100011,0,'admin','confirmed',NULL,'2026-01-04 19:53:21','2026-01-04 19:53:21'),(20,100009,0,'admin','canceled',NULL,'2026-01-04 20:38:20','2026-01-04 20:38:20');
/*!40000 ALTER TABLE `order_status_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_transactions`
--

DROP TABLE IF EXISTS `order_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_transactions` (
  `seller_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  `order_amount` decimal(50,2) NOT NULL DEFAULT '0.00',
  `seller_amount` decimal(50,2) NOT NULL DEFAULT '0.00',
  `admin_commission` decimal(50,2) NOT NULL DEFAULT '0.00',
  `received_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_charge` decimal(50,2) NOT NULL DEFAULT '0.00',
  `tax` decimal(50,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` bigint DEFAULT NULL,
  `seller_is` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_transactions`
--

LOCK TABLES `order_transactions` WRITE;
/*!40000 ALTER TABLE `order_transactions` DISABLE KEYS */;
INSERT INTO `order_transactions` VALUES (1,100009,1689.75,1689.75,0.00,'admin','disburse',140.00,0.00,'2026-01-02 18:32:31','2026-01-02 18:32:31',855,'admin','admin','cash_on_delivery','2781-NNEac-1767357151',1);
/*!40000 ALTER TABLE `order_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint NOT NULL DEFAULT '0',
  `customer_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unpaid',
  `order_status` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_ref` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_amount` double NOT NULL DEFAULT '0',
  `paid_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `bring_change_amount` decimal(18,12) DEFAULT '0.000000000000',
  `bring_change_amount_currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_commission` decimal(8,2) NOT NULL DEFAULT '0.00',
  `is_pause` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cause` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_amount` double NOT NULL DEFAULT '0',
  `discount_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount_bearer` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inhouse',
  `shipping_responsibility` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method_id` bigint NOT NULL DEFAULT '0',
  `shipping_cost` double(8,2) NOT NULL DEFAULT '0.00',
  `is_shipping_free` tinyint(1) NOT NULL DEFAULT '0',
  `order_group_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def-order-group',
  `verification_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `verification_status` tinyint NOT NULL DEFAULT '0',
  `seller_id` bigint DEFAULT NULL,
  `seller_is` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `delivery_man_id` bigint DEFAULT NULL,
  `deliveryman_charge` double NOT NULL DEFAULT '0',
  `expected_delivery_date` date DEFAULT NULL,
  `order_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `billing_address` bigint unsigned DEFAULT NULL,
  `billing_address_data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `order_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default_type',
  `extra_discount` double(8,2) NOT NULL DEFAULT '0.00',
  `extra_discount_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `free_delivery_bearer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checked` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_service_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `third_party_delivery_tracking_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=100012 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (100001,'0',0,'customer','paid','delivered','cash',NULL,NULL,NULL,1690,1690.000000000000,0.000000000000,NULL,0.00,'0',NULL,NULL,'2026-01-02 16:41:34','2026-01-02 16:41:34',0,NULL,NULL,'inhouse',NULL,0,0.00,0,'def-order-group','0',0,2,'admin',NULL,NULL,0,NULL,NULL,NULL,NULL,'POS',0.00,NULL,NULL,1,NULL,NULL,NULL,NULL),(100002,'1',0,'customer','unpaid','canceled','cash_on_delivery','',NULL,NULL,1829.75,0.000000000000,0.000000000000,'BDT',0.00,'0',NULL,'9','2026-01-02 16:45:12','2026-01-02 16:57:54',0,NULL,'0','inhouse','inhouse_shipping',0,140.00,0,'8317-fn1nY-1767350712','110158',0,1,'admin','{\"id\":9,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"sammie polzin\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"Netrakona, Mymensing, Dhaka\",\"city\":\"Netrakona\",\"zip\":\"\",\"phone\":\"+88001611324136\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}',NULL,0,NULL,NULL,9,'{\"id\":9,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"sammie polzin\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"Netrakona, Mymensing, Dhaka\",\"city\":\"Netrakona\",\"zip\":\"\",\"phone\":\"+88001611324136\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}','default_type',0.00,NULL,'admin',1,'order_wise',NULL,NULL,NULL),(100003,'855',1,'customer','unpaid','pending','cash_on_delivery','',NULL,NULL,1630.25,0.000000000000,0.000000000000,'BDT',0.00,'0',NULL,'10','2026-01-02 16:45:20','2026-01-02 16:45:29',0,NULL,'0','inhouse','inhouse_shipping',12,140.00,0,'8887-oQh0v-1767350720','562711',0,1,'admin','{\"id\":10,\"customer_id\":\"855\",\"is_guest\":true,\"contact_person_name\":\"Md Ajijul Islam\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"teribazar\",\"city\":\"Netrakona\",\"zip\":\"\",\"phone\":\"+8801742135093\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}',NULL,0,NULL,NULL,10,'{\"id\":10,\"customer_id\":\"855\",\"is_guest\":true,\"contact_person_name\":\"Md Ajijul Islam\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"teribazar\",\"city\":\"Netrakona\",\"zip\":\"\",\"phone\":\"+8801742135093\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}','default_type',0.00,NULL,'admin',1,'order_wise',NULL,NULL,NULL),(100004,'849',1,'customer','unpaid','out_for_delivery','cash_on_delivery','',NULL,NULL,1630.25,0.000000000000,0.000000000000,'BDT',0.00,'0',NULL,'11','2026-01-02 16:45:21','2026-01-02 16:51:41',0,NULL,'0','inhouse','inhouse_shipping',12,140.00,0,'5720-RXHEJ-1767350721','459454',0,1,'admin','{\"id\":11,\"customer_id\":\"849\",\"is_guest\":true,\"contact_person_name\":\"test kabbo\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"uigyufyufyufyu\",\"city\":\"\",\"zip\":\"\",\"phone\":\"+8801704976505\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}',NULL,0,NULL,NULL,11,'{\"id\":11,\"customer_id\":\"849\",\"is_guest\":true,\"contact_person_name\":\"test kabbo\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"uigyufyufyufyu\",\"city\":\"\",\"zip\":\"\",\"phone\":\"+8801704976505\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}','default_type',0.00,NULL,'admin',1,'order_wise','third_party_delivery','pathao','100004'),(100005,'2',0,'customer','unpaid','pending','cash_on_delivery','',NULL,NULL,1630.25,0.000000000000,0.000000000000,'BDT',0.00,'0',NULL,'12','2026-01-02 16:54:11','2026-01-02 16:54:14',0,NULL,'0','inhouse','inhouse_shipping',12,140.00,0,'9011-86D9n-1767351251','210646',0,1,'admin','{\"id\":12,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"Md Ajijul Islam\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"teribazar\",\"city\":\"netrakona\",\"zip\":\"\",\"phone\":\"+8801742135093\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}',NULL,0,NULL,NULL,12,'{\"id\":12,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"Md Ajijul Islam\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"teribazar\",\"city\":\"netrakona\",\"zip\":\"\",\"phone\":\"+8801742135093\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}','default_type',0.00,NULL,'admin',1,'order_wise',NULL,NULL,NULL),(100006,'2',0,'customer','unpaid','pending','cash_on_delivery','',NULL,NULL,2030,0.000000000000,0.000000000000,'BDT',0.00,'0',NULL,'13','2026-01-02 16:55:40','2026-01-02 16:55:51',0,NULL,'0','inhouse','inhouse_shipping',12,140.00,0,'2881-wFp6x-1767351340','185266',0,1,'admin','{\"id\":13,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"Md Ajijul Islam\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"dsadsadsad\",\"city\":\"\",\"zip\":\"\",\"phone\":\"+88001742135094\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}',NULL,0,NULL,NULL,13,'{\"id\":13,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"Md Ajijul Islam\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"dsadsadsad\",\"city\":\"\",\"zip\":\"\",\"phone\":\"+88001742135094\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}','default_type',0.00,NULL,'admin',1,'order_wise',NULL,NULL,NULL),(100007,'855',1,'customer','unpaid','pending','cash_on_delivery','',NULL,NULL,1630.25,0.000000000000,0.000000000000,'BDT',0.00,'0',NULL,'15','2026-01-02 17:20:55','2026-01-02 17:21:07',0,NULL,'0','inhouse','inhouse_shipping',12,140.00,0,'1550-rFoAq-1767352855','809073',0,1,'admin','{\"id\":15,\"customer_id\":\"855\",\"is_guest\":true,\"contact_person_name\":\"piasq\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"net\",\"city\":\"Netrakona\",\"zip\":\"\",\"phone\":\"+8801742135093\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}',NULL,0,NULL,NULL,15,'{\"id\":15,\"customer_id\":\"855\",\"is_guest\":true,\"contact_person_name\":\"piasq\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"net\",\"city\":\"Netrakona\",\"zip\":\"\",\"phone\":\"+8801742135093\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}','default_type',0.00,NULL,'admin',1,'order_wise',NULL,NULL,NULL),(100008,'0',0,'customer','paid','delivered','cash',NULL,NULL,NULL,1490,1490.000000000000,0.000000000000,NULL,0.00,'0',NULL,NULL,'2026-01-02 17:53:20','2026-01-02 17:53:20',0,NULL,NULL,'inhouse',NULL,0,0.00,0,'def-order-group','0',0,2,'admin',NULL,NULL,0,NULL,NULL,NULL,NULL,'POS',0.00,NULL,NULL,1,NULL,NULL,NULL,NULL),(100009,'855',1,'customer','unpaid','canceled','cash_on_delivery','',NULL,NULL,1829.75,0.000000000000,0.000000000000,'BDT',0.00,'0',NULL,'16','2026-01-02 18:32:00','2026-01-04 20:38:20',0,NULL,'0','inhouse','inhouse_shipping',12,140.00,0,'7980-mDLY2-1767357120','522507',0,1,'admin','{\"id\":16,\"customer_id\":\"855\",\"is_guest\":true,\"contact_person_name\":\"asdsad\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"sdfsd\",\"city\":\"sdfss\",\"zip\":\"\",\"phone\":\"+88065465465\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}',NULL,0,NULL,NULL,16,'{\"id\":16,\"customer_id\":\"855\",\"is_guest\":true,\"contact_person_name\":\"asdsad\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"sdfsd\",\"city\":\"sdfss\",\"zip\":\"\",\"phone\":\"+88065465465\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}','default_type',0.00,NULL,'admin',1,'order_wise',NULL,NULL,NULL),(100010,'1221',1,'customer','unpaid','pending','cash_on_delivery','',NULL,NULL,1829.75,0.000000000000,0.000000000000,'BDT',0.00,'0',NULL,'18','2026-01-04 03:47:12','2026-01-04 03:48:11',0,NULL,'0','inhouse','inhouse_shipping',12,140.00,0,'6242-Rcuge-1767476832','506525',0,1,'admin','{\"id\":18,\"customer_id\":\"1221\",\"is_guest\":true,\"contact_person_name\":\"Iqbal Hossain\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"keshabpur \",\"city\":\"Keshabpur\",\"zip\":\"\",\"phone\":\"+88001764323129\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}',NULL,0,NULL,NULL,18,'{\"id\":18,\"customer_id\":\"1221\",\"is_guest\":true,\"contact_person_name\":\"Iqbal Hossain\",\"email\":\"\",\"address_type\":\"permanent\",\"address\":\"keshabpur \",\"city\":\"Keshabpur\",\"zip\":\"\",\"phone\":\"+88001764323129\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}','default_type',0.00,NULL,'admin',1,'order_wise',NULL,NULL,NULL),(100011,'3',0,'customer','unpaid','confirmed','cash_on_delivery','',NULL,NULL,1829.75,0.000000000000,0.000000000000,'BDT',0.00,'0',NULL,'19','2026-01-04 15:36:21','2026-01-04 19:53:21',0,NULL,'0','inhouse','inhouse_shipping',12,140.00,0,'3687-8LyAh-1767519381','709942',0,1,'admin','{\"id\":19,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"sammie polzin\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"Netrakona\",\"city\":\"Netrakona\",\"zip\":\"\",\"phone\":\"+8801622586794\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}',NULL,0,NULL,NULL,19,'{\"id\":19,\"customer_id\":\"0\",\"is_guest\":false,\"contact_person_name\":\"sammie polzin\",\"email\":null,\"address_type\":\"permanent\",\"address\":\"Netrakona\",\"city\":\"Netrakona\",\"zip\":\"\",\"phone\":\"+8801622586794\",\"created_at\":null,\"updated_at\":null,\"state\":null,\"country\":\"Bangladesh\",\"latitude\":\"-33.8688\",\"longitude\":\"151.2195\",\"is_billing\":false}','default_type',0.00,NULL,'admin',1,'order_wise',NULL,NULL,NULL);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_resets` (
  `identity` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'customer',
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `password_resets_email_index` (`identity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_requests`
--

DROP TABLE IF EXISTS `payment_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_requests` (
  `id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payer_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_amount` decimal(24,2) NOT NULL DEFAULT '0.00',
  `gateway_callback_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `success_hook` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `failure_hook` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'USD',
  `payment_method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `is_paid` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `payer_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `external_redirect_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `receiver_information` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `attribute_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_platform` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_requests`
--

LOCK TABLES `payment_requests` WRITE;
/*!40000 ALTER TABLE `payment_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paytabs_invoices`
--

DROP TABLE IF EXISTS `paytabs_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paytabs_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `result` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `response_code` int unsigned NOT NULL,
  `pt_invoice_id` int unsigned DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `currency` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` int unsigned DEFAULT NULL,
  `card_brand` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_first_six_digits` int unsigned DEFAULT NULL,
  `card_last_four_digits` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytabs_invoices`
--

LOCK TABLES `paytabs_invoices` WRITE;
/*!40000 ALTER TABLE `paytabs_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `paytabs_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_or_email_verifications`
--

DROP TABLE IF EXISTS `phone_or_email_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_or_email_verifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `phone_or_email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `otp_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_or_email_verifications`
--

LOCK TABLES `phone_or_email_verifications` WRITE;
/*!40000 ALTER TABLE `phone_or_email_verifications` DISABLE KEYS */;
INSERT INTO `phone_or_email_verifications` VALUES (2,'moshiurbhau@gmail.com','806776',0,1,'2025-07-22 19:00:11',NULL,'2025-07-22 18:57:56','2025-07-22 19:00:11'),(3,'moshiurrahmankngc@gmail.com','866850',0,0,NULL,NULL,'2025-07-23 11:48:23','2025-07-23 11:48:23'),(4,'eksoftwares007@gmail.com','219168',0,0,NULL,NULL,'2025-07-23 12:04:57','2025-07-23 12:04:57'),(5,'ekcloud51@gmail.com','489763',0,0,NULL,NULL,'2025-07-23 12:09:32','2025-07-23 12:09:32');
/*!40000 ALTER TABLE `phone_or_email_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_compares`
--

DROP TABLE IF EXISTS `product_compares`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_compares` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL COMMENT 'customer_id',
  `product_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_compares`
--

LOCK TABLES `product_compares` WRITE;
/*!40000 ALTER TABLE `product_compares` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_compares` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_seos`
--

DROP TABLE IF EXISTS `product_seos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_seos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_follow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_image_index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_archive` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_seos`
--

LOCK TABLES `product_seos` WRITE;
/*!40000 ALTER TABLE `product_seos` DISABLE KEYS */;
INSERT INTO `product_seos` VALUES (1,1,'High Quality Sneakers',NULL,'','','','','0','0','-1','0','-1','0','large','2025-12-28-6950fe6991b2e.webp','2025-12-28 15:54:49','2025-12-28 15:54:49'),(2,2,'Fabric Mesh Soft Sole Sport Shoes',NULL,'','','','','0','0','-1','0','-1','0','large','2025-12-28-6951011fa25db.webp','2025-12-28 16:06:23','2025-12-28 16:06:23'),(3,3,'Men’s Breathable Mesh Sneakers',NULL,'','','','','0','0','-1','0','-1','0','large','2025-12-30-6952c2a3c3c85.png','2025-12-28 16:09:32','2025-12-30 00:04:19'),(4,4,'Thick Sole Outdoor Shoes  Sneakers',NULL,'','','','','0','0','-1','0','-1','0','large','2025-12-28-6951052470458.webp','2025-12-28 16:23:32','2025-12-28 16:23:32'),(5,5,'Generisch Non-Slip, Fitness Lightweight Shoes',NULL,'','','','','0','0','-1','0','-1','0','large','2025-12-28-695106afe3b4e.webp','2025-12-28 16:30:07','2025-12-28 16:30:07'),(6,6,'Two-Tone Wedged Trainer – Fashion & Comfort Shoes',NULL,'','','','','0','0','-1','0','-1','0','large','2025-12-28-695108351c6a7.webp','2025-12-28 16:36:37','2025-12-28 16:36:37'),(7,7,'Trendy Casual Spring Shoes',NULL,'','','','','0','0','-1','0','-1','0','large','2025-12-28-695109191356e.webp','2025-12-28 16:40:25','2025-12-28 16:40:25'),(8,8,'Trendy Casual Spring Shoes',NULL,'','','','','0','0','-1','0','-1','0','large','2025-12-29-6952beeb5cde3.png','2025-12-29 01:32:30','2025-12-29 23:48:27'),(9,9,'AirPods Pro 2nd Gen Active Noise Cancelling Wireless Earbuds -white Edition Mastercopy',NULL,'','','','','0','0','-1','0','-1','0','large','2026-01-04-695a8a0dc9254.webp','2026-01-04 21:41:01','2026-01-04 21:41:01');
/*!40000 ALTER TABLE `product_seos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_stocks`
--

DROP TABLE IF EXISTS `product_stocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_stocks` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `qty` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_stocks`
--

LOCK TABLES `product_stocks` WRITE;
/*!40000 ALTER TABLE `product_stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_stocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_tag` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `tag_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_tag`
--

LOCK TABLES `product_tag` WRITE;
/*!40000 ALTER TABLE `product_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `added_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'physical',
  `category_ids` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_sub_category_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` bigint DEFAULT NULL,
  `unit` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_qty` int NOT NULL DEFAULT '1',
  `refundable` tinyint(1) NOT NULL DEFAULT '1',
  `digital_product_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digital_file_ready` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `digital_file_ready_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `color_image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbnail_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `preview_file` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_file_storage_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `featured` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flash_deal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_provider` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_url` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variant_product` tinyint(1) NOT NULL DEFAULT '0',
  `attributes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `choice_options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `variation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `digital_product_file_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `digital_product_extensions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `unit_price` double NOT NULL DEFAULT '0',
  `purchase_price` double NOT NULL DEFAULT '0',
  `tax` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `tax_type` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_model` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'exclude',
  `discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `discount_type` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_stock` int DEFAULT NULL,
  `minimum_order_qty` int NOT NULL DEFAULT '1',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `attachment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `featured_status` tinyint(1) NOT NULL DEFAULT '1',
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `request_status` tinyint(1) NOT NULL DEFAULT '0',
  `denied_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shipping_cost` double(8,2) DEFAULT NULL,
  `multiply_qty` tinyint(1) DEFAULT NULL,
  `temp_shipping_cost` double(8,2) DEFAULT NULL,
  `is_shipping_cost_updated` tinyint(1) DEFAULT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (2,'admin',1,'Fabric Mesh Soft Sole Sport Shoes','fabric-mesh-soft-sole-sport-shoes-rNpDLd','physical','[{\"id\":\"1\",\"position\":1}]','1',NULL,NULL,2,'pair',1,1,NULL,'',NULL,'[{\"image_name\":\"2025-12-28-6951011f91060.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-12-29-69518271aef24.webp\",\"storage\":\"public\"}]','[]','2025-12-28-6951011f997ff.webp','public','','public',NULL,NULL,'youtube',NULL,'[]',0,'[\"10\",\"9\",\"11\"]','[{\"name\":\"choice_10\",\"title\":\"Size\",\"options\":[\"40\",\"\\u00a041\",\"\\u00a042\",\"\\u00a043\"]},{\"name\":\"choice_9\",\"title\":\"Gender\",\"options\":[\"Men\",\"Women\"]},{\"name\":\"choice_11\",\"title\":\"Color\",\"options\":[\"Black\",\"Yellow\"]}]','[{\"type\":\"40-Men-Black\",\"price\":2253,\"sku\":\"FMSSSS-40-Men-Black\",\"qty\":5},{\"type\":\"40-Men-Yellow\",\"price\":2520,\"sku\":\"FMSSSS-40-Men-Yellow\",\"qty\":5},{\"type\":\"40-Women-Black\",\"price\":2253,\"sku\":\"FMSSSS-40-Women-Black\",\"qty\":1},{\"type\":\"40-Women-Yellow\",\"price\":2520,\"sku\":\"FMSSSS-40-Women-Yellow\",\"qty\":1},{\"type\":\"\\u00a041-Men-Black\",\"price\":2253,\"sku\":\"FMSSSS-\\u00a041-Men-Black\",\"qty\":5},{\"type\":\"\\u00a041-Men-Yellow\",\"price\":2520,\"sku\":\"FMSSSS-\\u00a041-Men-Yellow\",\"qty\":5},{\"type\":\"\\u00a041-Women-Black\",\"price\":2253,\"sku\":\"FMSSSS-\\u00a041-Women-Black\",\"qty\":1},{\"type\":\"\\u00a041-Women-Yellow\",\"price\":2520,\"sku\":\"FMSSSS-\\u00a041-Women-Yellow\",\"qty\":1},{\"type\":\"\\u00a042-Men-Black\",\"price\":2253,\"sku\":\"FMSSSS-\\u00a042-Men-Black\",\"qty\":5},{\"type\":\"\\u00a042-Men-Yellow\",\"price\":2520,\"sku\":\"FMSSSS-\\u00a042-Men-Yellow\",\"qty\":5},{\"type\":\"\\u00a042-Women-Black\",\"price\":2253,\"sku\":\"FMSSSS-\\u00a042-Women-Black\",\"qty\":5},{\"type\":\"\\u00a042-Women-Yellow\",\"price\":2520,\"sku\":\"FMSSSS-\\u00a042-Women-Yellow\",\"qty\":5},{\"type\":\"\\u00a043-Men-Black\",\"price\":2253,\"sku\":\"FMSSSS-\\u00a043-Men-Black\",\"qty\":5},{\"type\":\"\\u00a043-Men-Yellow\",\"price\":2520,\"sku\":\"FMSSSS-\\u00a043-Men-Yellow\",\"qty\":5},{\"type\":\"\\u00a043-Women-Black\",\"price\":2253,\"sku\":\"FMSSSS-\\u00a043-Women-Black\",\"qty\":5},{\"type\":\"\\u00a043-Women-Yellow\",\"price\":2520,\"sku\":\"FMSSSS-\\u00a043-Women-Yellow\",\"qty\":5}]','[]','[]',0,2253,0,'0','percent','include','25','percent',64,1,'<h4>Product Details:</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Type: Sneakers</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Gender: Men & Women</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Condition: Brand New</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Color: Multicolor</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Available Sizes: 40, 41, 42, 43</li></ol><h4>Features:</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Modern and stylish design</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>High-quality materials for long-lasting use</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Comfortable sole suitable for all-day wear</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Durable construction with a strong grip</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Easy to pair with casual and semi-formal outfits</li></ol><p><br></p>',0,NULL,'2025-12-28 16:06:23','2026-01-04 20:38:20',1,1,'Fabric Mesh Soft Sole Sport Shoes',NULL,NULL,1,NULL,0.00,0,NULL,NULL,'M11690A'),(3,'admin',1,'Men’s Breathable Mesh Sneakers','mens-breathable-mesh-dad-sneakers-thick-sole-casual-shoes-Qvvss6','physical','[{\"id\":\"1\",\"position\":1}]','1',NULL,NULL,2,'pair',1,1,NULL,'',NULL,'[{\"image_name\":\"2025-12-29-6951888bad8dc.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-12-30-6952c2a35cd4a.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-12-30-6952c2a3771b5.webp\",\"storage\":\"public\"}]','[]','2025-12-30-6952c2a3a21a7.webp','public','','public',NULL,NULL,'youtube',NULL,'[]',0,'[\"10\",\"9\",\"11\"]','[{\"name\":\"choice_10\",\"title\":\"Size\",\"options\":[\"40\",\"41\",\"42\",\"43\"]},{\"name\":\"choice_9\",\"title\":\"Gender\",\"options\":[\"Men\"]},{\"name\":\"choice_11\",\"title\":\"Color\",\"options\":[\"Rose Pink\",\"Blue\"]}]','[{\"type\":\"40-Men-RosePink\",\"price\":2520,\"sku\":\"MBMS-40-Men-RosePink\",\"qty\":4},{\"type\":\"40-Men-Blue\",\"price\":2520,\"sku\":\"MBMS-40-Men-Blue\",\"qty\":5},{\"type\":\"41-Men-RosePink\",\"price\":2520,\"sku\":\"MBMS-41-Men-RosePink\",\"qty\":5},{\"type\":\"41-Men-Blue\",\"price\":2520,\"sku\":\"MBMS-41-Men-Blue\",\"qty\":5},{\"type\":\"42-Men-RosePink\",\"price\":2520,\"sku\":\"MBMS-42-Men-RosePink\",\"qty\":5},{\"type\":\"42-Men-Blue\",\"price\":2520,\"sku\":\"MBMS-42-Men-Blue\",\"qty\":5},{\"type\":\"43-Men-RosePink\",\"price\":2520,\"sku\":\"MBMS-43-Men-RosePink\",\"qty\":5},{\"type\":\"43-Men-Blue\",\"price\":2520,\"sku\":\"MBMS-43-Men-Blue\",\"qty\":5}]','[]','[]',0,2520,0,'0','percent','include','25','percent',39,1,'<p>Trendy men’s casual sneakers with a breathable mesh upper and thick rubber sole for comfort and height enhancement. Lightweight, shock-absorbing, and non-slip—perfect for summer and everyday wear. Designed in a modern Korean retro style.</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Upper: Breathable mesh</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Sole: Rubber, thick sole</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Style: Casual / dad sneakers</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Season: Spring, Summer, Autumn</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Sizes: 40–44</strong></li></ol><p><br></p>',0,NULL,'2025-12-28 16:09:31','2026-01-02 20:30:38',1,1,'Men’s Breathable Mesh Sneakers',NULL,'2025-12-30-6952c2a390d1c.png',1,NULL,0.00,0,NULL,NULL,'M11890'),(5,'admin',1,'Generisch Non-Slip, Fitness Lightweight Shoes','generisch-non-slip-fitness-lightweight-shoes-tH2etv','physical','[{\"id\":\"1\",\"position\":1}]','1',NULL,NULL,2,'pair',1,1,NULL,'',NULL,'[{\"image_name\":\"2025-12-28-695106afce8ab.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-12-29-69518a54515fa.webp\",\"storage\":\"public\"}]','[]','2025-12-28-695106afd49db.webp','public','','public',NULL,NULL,'youtube',NULL,'[]',0,'[\"10\",\"9\",\"11\"]','[{\"name\":\"choice_10\",\"title\":\"Size\",\"options\":[\"40\",\"\\u00a041\",\"\\u00a042\",\"\\u00a043\"]},{\"name\":\"choice_9\",\"title\":\"Gender\",\"options\":[\"Men\"]},{\"name\":\"choice_11\",\"title\":\"Color\",\"options\":[\"Black\",\"Coffee\"]}]','[{\"type\":\"40-Men-Black\",\"price\":1987,\"sku\":\"GNFLS-40-Men-Black\",\"qty\":30},{\"type\":\"40-Men-Coffee\",\"price\":1933,\"sku\":\"GNFLS-40-Men-Coffee\",\"qty\":5},{\"type\":\"41-Men-Black\",\"price\":0,\"sku\":null,\"qty\":0},{\"type\":\"41-Men-Coffee\",\"price\":0,\"sku\":null,\"qty\":0},{\"type\":\"42-Men-Black\",\"price\":0,\"sku\":null,\"qty\":0},{\"type\":\"42-Men-Coffee\",\"price\":0,\"sku\":null,\"qty\":0},{\"type\":\"43-Men-Black\",\"price\":0,\"sku\":null,\"qty\":0},{\"type\":\"43-Men-Coffee\",\"price\":0,\"sku\":null,\"qty\":0}]','[]','[]',0,1987,0,'0','percent','include','25','percent',65,1,'<p>Lightweight, breathable trainers with <strong>comfortable cushioned interiors</strong> and a <strong>non-slip, shock-absorbing sole</strong>. Designed for running, hiking, gym workouts, casual wear, and outdoor activities. Features <strong>slip-on convenience with lace-up adjustment</strong> for a secure fit.</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Upper Material: PU</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Inner Material: Breathable textile + elastic lining</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Sole: EVA + durable rubber, non-slip & shockproof</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Fit: Slip-on with adjustable laces</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Use: Running, hiking, sports, gym, casual, outdoor</li></ol><p><br></p>',0,NULL,'2025-12-28 16:30:07','2026-01-04 11:42:21',1,1,'Generisch Non-Slip, Fitness Lightweight Shoes',NULL,NULL,1,NULL,0.00,0,NULL,NULL,'M11490'),(8,'admin',1,'Trendy Casual Spring Shoes','trendy-casual-spring-shoes-fl6SAE','physical','[{\"id\":\"1\",\"position\":1}]','1',NULL,NULL,2,'pair',1,1,NULL,'',NULL,'[{\"image_name\":\"2025-12-30-6952c72bc93ae.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-12-30-6952c7b2df66d.webp\",\"storage\":\"public\"},{\"image_name\":\"2025-12-30-6952c7b304e1b.webp\",\"storage\":\"public\"}]','[]','2025-12-30-6952c7b31eb07.webp','public','','public','0',NULL,'youtube','https://www.youtube.com/shorts/JjYcbOrgX_w','[]',0,'[\"10\",\"9\",\"11\"]','[{\"name\":\"choice_10\",\"title\":\"Size\",\"options\":[\"40\",\"41\",\"42\",\"43\"]},{\"name\":\"choice_9\",\"title\":\"Gender\",\"options\":[\"Men\"]},{\"name\":\"choice_11\",\"title\":\"Color\",\"options\":[\"Red\",\"Black\",\"White\"]}]','[{\"type\":\"40-Men-Red\",\"price\":2253,\"sku\":\"TCSS-40-Men-Red\",\"qty\":4},{\"type\":\"40-Men-Black\",\"price\":2200,\"sku\":\"TCSS-40-Men-Black\",\"qty\":5},{\"type\":\"40-Men-White\",\"price\":0,\"sku\":null,\"qty\":0},{\"type\":\"41-Men-Red\",\"price\":2253,\"sku\":\"TCSS-41-Men-Red\",\"qty\":4},{\"type\":\"41-Men-Black\",\"price\":2200,\"sku\":\"TCSS-41-Men-Black\",\"qty\":5},{\"type\":\"41-Men-White\",\"price\":0,\"sku\":null,\"qty\":0},{\"type\":\"42-Men-Red\",\"price\":2253,\"sku\":\"TCSS-42-Men-Red\",\"qty\":5},{\"type\":\"42-Men-Black\",\"price\":2200,\"sku\":\"TCSS-42-Men-Black\",\"qty\":5},{\"type\":\"42-Men-White\",\"price\":0,\"sku\":null,\"qty\":0},{\"type\":\"43-Men-Red\",\"price\":2253,\"sku\":\"TCSS-43-Men-Red\",\"qty\":5},{\"type\":\"43-Men-Black\",\"price\":2200,\"sku\":\"TCSS-43-Men-Black\",\"qty\":5},{\"type\":\"43-Men-White\",\"price\":0,\"sku\":null,\"qty\":0}]','[]','[]',0,2253,0,'0','percent','include','25','percent',38,1,'<p>Stylish and comfortable men’s white sneakers with a <strong>non-slip platform</strong> and <strong>breathable mesh lining</strong>. Perfect for students or casual wear in spring. Made from high-quality PU with a durable <strong>rubber outsole</strong> for enhanced grip and long-lasting comfort.</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Material: PU upper, rubber outsole</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Features: Non-slip platform, breathable mesh lining</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Style: Trendy casual sneakers</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Ideal for: Students, everyday casual wear</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Sizes: 40, 41, 42, 43</strong></li></ol><p><br></p>',0,NULL,'2025-12-29 01:32:30','2026-01-04 03:47:12',1,1,'Trendy Casual Spring Shoes',NULL,'2025-12-29-6952beeb065f4.png',1,NULL,0.00,0,NULL,NULL,'M11690RB');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publishing_houses`
--

DROP TABLE IF EXISTS `publishing_houses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `publishing_houses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publishing_houses`
--

LOCK TABLES `publishing_houses` WRITE;
/*!40000 ALTER TABLE `publishing_houses` DISABLE KEYS */;
/*!40000 ALTER TABLE `publishing_houses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund_requests`
--

DROP TABLE IF EXISTS `refund_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_details_id` bigint unsigned NOT NULL,
  `customer_id` bigint unsigned NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved_count` tinyint NOT NULL DEFAULT '0',
  `denied_count` tinyint NOT NULL DEFAULT '0',
  `amount` double(8,2) NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `refund_reason` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `approved_note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rejected_note` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payment_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `change_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund_requests`
--

LOCK TABLES `refund_requests` WRITE;
/*!40000 ALTER TABLE `refund_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund_statuses`
--

DROP TABLE IF EXISTS `refund_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund_statuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `refund_request_id` bigint unsigned DEFAULT NULL,
  `change_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_by_id` bigint unsigned DEFAULT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund_statuses`
--

LOCK TABLES `refund_statuses` WRITE;
/*!40000 ALTER TABLE `refund_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `refund_transactions`
--

DROP TABLE IF EXISTS `refund_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `refund_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned DEFAULT NULL,
  `payment_for` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_id` bigint unsigned DEFAULT NULL,
  `payment_receiver_id` bigint unsigned DEFAULT NULL,
  `paid_by` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_to` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(8,2) DEFAULT NULL,
  `transaction_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_details_id` bigint unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `refund_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `refund_transactions`
--

LOCK TABLES `refund_transactions` WRITE;
/*!40000 ALTER TABLE `refund_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `refund_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restock_product_customers`
--

DROP TABLE IF EXISTS `restock_product_customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restock_product_customers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `restock_product_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restock_product_customers`
--

LOCK TABLES `restock_product_customers` WRITE;
/*!40000 ALTER TABLE `restock_product_customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `restock_product_customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `restock_products`
--

DROP TABLE IF EXISTS `restock_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restock_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `variant` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restock_products`
--

LOCK TABLES `restock_products` WRITE;
/*!40000 ALTER TABLE `restock_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `restock_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review_replies`
--

DROP TABLE IF EXISTS `review_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review_replies` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `review_id` int NOT NULL,
  `added_by_id` int DEFAULT NULL,
  `added_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'customer, seller, admin, deliveryman',
  `reply_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review_replies`
--

LOCK TABLES `review_replies` WRITE;
/*!40000 ALTER TABLE `review_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `review_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint NOT NULL,
  `customer_id` bigint NOT NULL,
  `delivery_man_id` bigint DEFAULT NULL,
  `order_id` bigint DEFAULT NULL,
  `comment` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `rating` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `is_saved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `robots_meta_contents`
--

DROP TABLE IF EXISTS `robots_meta_contents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `robots_meta_contents` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `page_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `canonicals_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_follow` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_image_index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_archive` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_snippet_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_video_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `max_image_preview_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robots_meta_contents`
--

LOCK TABLES `robots_meta_contents` WRITE;
/*!40000 ALTER TABLE `robots_meta_contents` DISABLE KEYS */;
/*!40000 ALTER TABLE `robots_meta_contents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_functions`
--

DROP TABLE IF EXISTS `search_functions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_functions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `visible_for` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_functions`
--

LOCK TABLES `search_functions` WRITE;
/*!40000 ALTER TABLE `search_functions` DISABLE KEYS */;
/*!40000 ALTER TABLE `search_functions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_wallet_histories`
--

DROP TABLE IF EXISTS `seller_wallet_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_wallet_histories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `amount` double NOT NULL DEFAULT '0',
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `payment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'received',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_wallet_histories`
--

LOCK TABLES `seller_wallet_histories` WRITE;
/*!40000 ALTER TABLE `seller_wallet_histories` DISABLE KEYS */;
/*!40000 ALTER TABLE `seller_wallet_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seller_wallets`
--

DROP TABLE IF EXISTS `seller_wallets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seller_wallets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `total_earning` double NOT NULL DEFAULT '0',
  `withdrawn` double NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `commission_given` double(8,2) NOT NULL DEFAULT '0.00',
  `pending_withdraw` double(8,2) NOT NULL DEFAULT '0.00',
  `delivery_charge_earned` double(8,2) NOT NULL DEFAULT '0.00',
  `collected_cash` double(8,2) NOT NULL DEFAULT '0.00',
  `total_tax_collected` double(8,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seller_wallets`
--

LOCK TABLES `seller_wallets` WRITE;
/*!40000 ALTER TABLE `seller_wallets` DISABLE KEYS */;
INSERT INTO `seller_wallets` VALUES (4,1,0,0,'2026-01-02 18:32:31','2026-01-02 18:32:31',0.00,0.00,0.00,0.00,0.00),(5,2,0,0,'2026-01-04 12:26:54','2026-01-04 12:26:54',0.00,0.00,0.00,0.00,0.00),(6,3,0,0,'2026-01-04 13:11:51','2026-01-04 13:11:51',0.00,0.00,0.00,0.00,0.00);
/*!40000 ALTER TABLE `seller_wallets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sellers`
--

DROP TABLE IF EXISTS `sellers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sellers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `f_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `email` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `bank_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `holder_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `sales_commission_percentage` double(8,2) DEFAULT NULL,
  `gst` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pos_status` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_order_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `free_delivery_status` int NOT NULL DEFAULT '0',
  `free_delivery_over_amount` double(8,2) NOT NULL DEFAULT '0.00',
  `app_language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  UNIQUE KEY `sellers_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sellers`
--

LOCK TABLES `sellers` WRITE;
/*!40000 ALTER TABLE `sellers` DISABLE KEYS */;
INSERT INTO `sellers` VALUES (2,'Johir','raihan','+8801622586792','2026-01-04-695a082e9576c.webp','sammiepolzin@gmail.com','$2y$10$qV1kX0vIgr9B1IXqm6u/levNhcvceb1H.YEOUpmFxm0YqhJxVdXBq','approved',NULL,'2026-01-04 12:26:54','2026-01-04 13:02:09',NULL,NULL,NULL,NULL,'edxSan9bOrzj3LIUUm2GxXPUJElsXCNhdD9kTAFoqAfch4woQvt8cOZahNKDYEuhMiaSO4jQlTx06ys2',NULL,NULL,NULL,0,0.00,0,0.00,'en'),(3,'Johir','raihan','+8801622586791','2026-01-04-695a12b7cb9de.webp','test@gmail.com','$2y$10$yCUiYBQJzAhw1AhPf0V0AOjlt9vD79iK3iWmUzVVmvKZdK2nkBSo2','suspended',NULL,'2026-01-04 13:11:51','2026-01-04 15:57:55',NULL,NULL,NULL,NULL,'YGOHcAtRTj8Oj8VqszrSq4b73MMyTtWU93jhf2T1xCStVELkXpRuvDc4jqix6ipkNKFEG3ur1cwA6O3u',NULL,NULL,NULL,0,0.00,0,0.00,'en');
/*!40000 ALTER TABLE `sellers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_addresses`
--

DROP TABLE IF EXISTS `shipping_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_addresses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint NOT NULL DEFAULT '0',
  `contact_person_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'home',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_billing` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_addresses`
--

LOCK TABLES `shipping_addresses` WRITE;
/*!40000 ALTER TABLE `shipping_addresses` DISABLE KEYS */;
INSERT INTO `shipping_addresses` VALUES (1,'335',1,'Iqbal Hossain','iqblhnhussain@gmail.com','permanent','keshabpur','Keshabpur','7450','+88001764323129',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(2,'335',1,'Iqbal Hossain','','permanent','keshabpur','Keshabpur','7450','+88001764323129',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(3,'498',1,'check','','permanent','jgjhjhjhjh','','','+880017421350932',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(4,'522',1,'Nifat ','','permanent','Mirpur-1 ','Dhaka ','','+88001796143041',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(5,'522',1,'Nifat ','','permanent','Mirpur-1 number','Dhaka ','','+88001796143041',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(6,'522',1,'Nifat ','','permanent','Dhaka mirpur 1 number ','Dhaka ','','+88001796143041',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(7,'507',1,'Iqbal Hossain','','permanent','keshabpur','Keshabpur','','+88001764323129',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(8,'849',1,'fbgngng','','permanent','fvhugfyuvguy','','','+8801344496354',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(9,'0',0,'sammie polzin',NULL,'permanent','Netrakona, Mymensing, Dhaka','Netrakona','','+88001611324136',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(10,'855',1,'Md Ajijul Islam','','permanent','teribazar','Netrakona','','+8801742135093',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(11,'849',1,'test kabbo','','permanent','uigyufyufyufyu','','','+8801704976505',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(12,'0',0,'Md Ajijul Islam',NULL,'permanent','teribazar','netrakona','','+8801742135093',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(13,'0',0,'Md Ajijul Islam',NULL,'permanent','dsadsadsad','','','+88001742135094',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(14,'1',0,'Netrakona',NULL,'office','Netrakona','Netrakona','2240','+88001611324136','2026-01-02 17:08:18','2026-01-02 17:08:18',NULL,'Bangladesh','-33.8688','151.2195',0),(15,'855',1,'piasq','','permanent','net','Netrakona','','+8801742135093',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(16,'855',1,'asdsad','','permanent','sdfsd','sdfss','','+88065465465',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(17,'1221',1,'Iqbal Hossain','','permanent','keshabpur ','Keshabpur','','+88001764323129',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(18,'1221',1,'Iqbal Hossain','','permanent','keshabpur ','Keshabpur','','+88001764323129',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(19,'0',0,'sammie polzin',NULL,'permanent','Netrakona','Netrakona','','+8801622586794',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(20,'0',0,'Lubna',NULL,'permanent','Netrakona','Netrakona','','+880016212586794',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(21,'0',0,'Lubna',NULL,'permanent','Netrakona','Netrakona','','+880545454566',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(22,'3',0,'Lubna',NULL,'office','Netrakona','Netrakona','2440','+88001622586793','2026-01-04 15:43:36','2026-01-04 15:43:36',NULL,'Bangladesh','-33.8688','151.2195',0),(23,'4',0,'Khalid Mahmud',NULL,'home','Hshsjsisjsjsjdjd','Rajshahi','6000','+880162229285','2026-01-04 19:53:59','2026-01-04 19:53:59',NULL,'Bangladesh','-33.8688','151.2195',0),(24,'0',0,'Khalid Mahmud',NULL,'home','Hshsjsisjsjsjdjd','Rajshahi','6000','+880162229285',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(25,'5',0,'Test User',NULL,'home','Rajshahi, Bangladesh','Rajshahi','6200','+8800001568226993','2026-01-04 20:28:01','2026-01-04 20:28:01',NULL,'Bangladesh','-33.8688','151.2195',0),(26,'0',0,'Test User',NULL,'home','Rajshahi, Bangladesh','Rajshahi','6200','+88001568226993',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0),(27,'0',0,'Test User',NULL,'home','Rajshahi, Bangladesh','Rajshahi','6200','+8800001568226993',NULL,NULL,NULL,'Bangladesh','-33.8688','151.2195',0);
/*!40000 ALTER TABLE `shipping_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_methods`
--

DROP TABLE IF EXISTS `shipping_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `creator_id` bigint DEFAULT NULL,
  `creator_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost` decimal(8,2) NOT NULL DEFAULT '0.00',
  `duration` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_methods`
--

LOCK TABLES `shipping_methods` WRITE;
/*!40000 ALTER TABLE `shipping_methods` DISABLE KEYS */;
INSERT INTO `shipping_methods` VALUES (12,1,'admin','Outside Jashore',140.00,'2-3 Days',1,'2025-12-28 16:14:44','2025-12-30 21:09:53'),(13,1,'admin','Inside Jashore',80.00,'1-2 Days',1,'2025-12-28 16:17:24','2025-12-30 21:09:37');
/*!40000 ALTER TABLE `shipping_methods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_types`
--

DROP TABLE IF EXISTS `shipping_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shipping_types` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint unsigned DEFAULT NULL,
  `shipping_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_types`
--

LOCK TABLES `shipping_types` WRITE;
/*!40000 ALTER TABLE `shipping_types` DISABLE KEYS */;
INSERT INTO `shipping_types` VALUES (2,0,'order_wise','2025-09-03 17:58:28','2025-09-04 16:13:01');
/*!40000 ALTER TABLE `shipping_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop_followers`
--

DROP TABLE IF EXISTS `shop_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop_followers` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `shop_id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'Customer ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop_followers`
--

LOCK TABLES `shop_followers` WRITE;
/*!40000 ALTER TABLE `shop_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `shop_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shops`
--

DROP TABLE IF EXISTS `shops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shops` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `image_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `bottom_banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottom_banner_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `offer_banner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_banner_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  `vacation_start_date` date DEFAULT NULL,
  `vacation_end_date` date DEFAULT NULL,
  `vacation_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacation_status` tinyint NOT NULL DEFAULT '0',
  `temporary_close` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `banner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_storage_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'public',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shops`
--

LOCK TABLES `shops` WRITE;
/*!40000 ALTER TABLE `shops` DISABLE KEYS */;
INSERT INTO `shops` VALUES (2,2,'projukti sheba','projukti-sheba-FcjK64','Netrakona','+8801622586792','2026-01-04-695a082ea8d9b.webp','public','def.png','public',NULL,'public',NULL,NULL,NULL,0,0,'2026-01-04 12:26:54','2026-01-04 12:26:54','2026-01-04-695a082ea9e78.webp','public'),(3,3,'Test Shop','test-shop-LoyHfw','Netrakona','+8801622586791','2026-01-04-695a12b7e143d.webp','public','def.png','public',NULL,'public',NULL,NULL,NULL,0,0,'2026-01-04 13:11:51','2026-01-04 13:11:51','2026-01-04-695a12b7e36de.webp','public');
/*!40000 ALTER TABLE `shops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_medias`
--

DROP TABLE IF EXISTS `social_medias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_medias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_status` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_medias`
--

LOCK TABLES `social_medias` WRITE;
/*!40000 ALTER TABLE `social_medias` DISABLE KEYS */;
INSERT INTO `social_medias` VALUES (6,'facebook','https://www.facebook.com/rexbuyshop','fa fa-facebook',1,1,'2021-02-27 19:19:42','2025-12-30 20:55:11'),(7,'twitter','https://twitter.com','fa fa-twitter',1,1,'2026-01-04 16:15:31','2026-01-04 16:16:07'),(8,'instagram','https://instagram.com','fa fa-instagram',1,1,'2026-01-04 16:15:51','2026-01-04 16:16:03');
/*!40000 ALTER TABLE `social_medias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `soft_credentials`
--

DROP TABLE IF EXISTS `soft_credentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `soft_credentials` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `soft_credentials`
--

LOCK TABLES `soft_credentials` WRITE;
/*!40000 ALTER TABLE `soft_credentials` DISABLE KEYS */;
/*!40000 ALTER TABLE `soft_credentials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_clearance_products`
--

DROP TABLE IF EXISTS `stock_clearance_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_clearance_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `added_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int DEFAULT NULL,
  `setup_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `shop_id` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `discount_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'percentage',
  `discount_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_clearance_products`
--

LOCK TABLES `stock_clearance_products` WRITE;
/*!40000 ALTER TABLE `stock_clearance_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_clearance_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_clearance_setups`
--

DROP TABLE IF EXISTS `stock_clearance_setups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock_clearance_setups` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `setup_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `shop_id` int DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `discount_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'percentage',
  `discount_amount` decimal(18,12) NOT NULL DEFAULT '0.000000000000',
  `offer_active_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offer_active_range_start` time DEFAULT NULL,
  `offer_active_range_end` time DEFAULT NULL,
  `show_in_homepage` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_homepage_once` tinyint(1) NOT NULL DEFAULT '0',
  `show_in_shop` tinyint(1) NOT NULL DEFAULT '1',
  `duration_start_date` timestamp NULL DEFAULT NULL,
  `duration_end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_clearance_setups`
--

LOCK TABLES `stock_clearance_setups` WRITE;
/*!40000 ALTER TABLE `stock_clearance_setups` DISABLE KEYS */;
/*!40000 ALTER TABLE `stock_clearance_setups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storages`
--

DROP TABLE IF EXISTS `storages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `storages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `storages_data_id_index` (`data_id`),
  KEY `storages_value_index` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=233 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storages`
--

LOCK TABLES `storages` WRITE;
/*!40000 ALTER TABLE `storages` DISABLE KEYS */;
INSERT INTO `storages` VALUES (206,'App\\Models\\ProductSeo','1','image','public','2025-12-28 15:54:49','2025-12-28 15:54:49'),(207,'App\\Models\\ProductSeo','2','image','public','2025-12-28 16:06:23','2025-12-28 16:06:23'),(208,'App\\Models\\ProductSeo','3','image','public','2025-12-30 00:04:19','2025-12-30 00:04:19'),(209,'App\\Models\\ProductSeo','4','image','public','2025-12-28 16:23:32','2025-12-28 16:23:32'),(210,'App\\Models\\ProductSeo','5','image','public','2025-12-28 16:30:07','2025-12-28 16:30:07'),(211,'App\\Models\\ProductSeo','6','image','public','2025-12-28 16:36:37','2025-12-28 16:36:37'),(212,'App\\Models\\ProductSeo','7','image','public','2025-12-28 16:40:25','2025-12-28 16:40:25'),(213,'App\\Models\\Banner','6','photo','public','2026-01-02 20:23:04','2026-01-02 20:23:04'),(214,'App\\Models\\Admin','2','image','public','2025-12-28 21:04:37','2025-12-28 21:04:37'),(215,'App\\Models\\ProductSeo','8','image','public','2025-12-29 23:48:27','2025-12-29 23:48:27'),(216,'App\\Models\\FlashDeal','1','banner','public','2026-01-02 14:30:57','2026-01-02 14:30:57'),(217,'App\\Models\\Banner','7','photo','public','2026-01-04 11:48:20','2026-01-04 11:48:20'),(218,'App\\Models\\Banner','8','photo','public','2026-01-04 11:52:46','2026-01-04 11:52:46'),(219,'App\\Models\\Banner','9','photo','public','2026-01-04 11:53:58','2026-01-04 11:53:58'),(220,'App\\Models\\Banner','10','photo','public','2026-01-04 11:54:31','2026-01-04 11:54:31'),(221,'App\\Models\\Seller','2','image','public','2026-01-04 12:26:54','2026-01-04 12:26:54'),(222,'App\\Models\\FlashDeal','2','banner','public','2026-01-04 12:43:35','2026-01-04 12:43:35'),(223,'App\\Models\\FlashDeal','3','banner','public','2026-01-04 12:49:44','2026-01-04 12:49:44'),(224,'App\\Models\\Seller','3','image','public','2026-01-04 13:11:51','2026-01-04 13:11:51'),(225,'App\\Models\\DeliveryMan','1','image','public','2026-01-04 13:33:58','2026-01-04 13:33:58'),(226,'Modules\\Blog\\app\\Models\\Blog','1','image','public','2026-01-04 14:53:08','2026-01-04 14:53:08'),(227,'Modules\\Blog\\app\\Models\\Blog','1','draft_image','public','2026-01-04 14:53:08','2026-01-04 14:53:08'),(228,'Modules\\Blog\\app\\Models\\BlogSeo','1','image','public','2026-01-04 14:53:08','2026-01-04 14:53:08'),(229,'Modules\\Blog\\app\\Models\\Blog','2','image','public','2026-01-04 19:01:55','2026-01-04 19:01:55'),(230,'Modules\\Blog\\app\\Models\\Blog','2','draft_image','public','2026-01-04 19:01:55','2026-01-04 19:01:55'),(231,'Modules\\Blog\\app\\Models\\BlogSeo','2','image','public','2026-01-04 19:01:55','2026-01-04 19:01:55'),(232,'App\\Models\\ProductSeo','9','image','public','2026-01-04 21:41:01','2026-01-04 21:41:01');
/*!40000 ALTER TABLE `storages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscriptions`
--

DROP TABLE IF EXISTS `subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscriptions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscriptions`
--

LOCK TABLES `subscriptions` WRITE;
/*!40000 ALTER TABLE `subscriptions` DISABLE KEYS */;
INSERT INTO `subscriptions` VALUES (1,'test@gmail.com','2026-01-02 13:19:40','2026-01-02 13:19:40');
/*!40000 ALTER TABLE `subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_ticket_convs`
--

DROP TABLE IF EXISTS `support_ticket_convs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_ticket_convs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `support_ticket_id` bigint DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `customer_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `admin_message` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_ticket_convs`
--

LOCK TABLES `support_ticket_convs` WRITE;
/*!40000 ALTER TABLE `support_ticket_convs` DISABLE KEYS */;
INSERT INTO `support_ticket_convs` VALUES (4,2,1,NULL,'[]','Thank you so much for your feedback. We will try to solve this problem.',0,'2026-01-04 14:37:35','2026-01-04 14:37:35'),(5,2,NULL,'ok Thanks','[]',NULL,0,'2026-01-04 14:38:13','2026-01-04 14:38:13');
/*!40000 ALTER TABLE `support_ticket_convs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_tickets`
--

DROP TABLE IF EXISTS `support_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_tickets` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint DEFAULT NULL,
  `subject` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'low',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `reply` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_tickets`
--

LOCK TABLES `support_tickets` WRITE;
/*!40000 ALTER TABLE `support_tickets` DISABLE KEYS */;
INSERT INTO `support_tickets` VALUES (2,1,'Product Problem','Website problem','Low','Your website is not fast. This is very slow.','[{\"file_name\":\"2026-01-04-695a25d39ed1f.webp\",\"storage\":\"public\"}]',NULL,'open','2026-01-04 14:33:23','2026-01-04 14:38:13');
/*!40000 ALTER TABLE `support_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tag` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `visit_count` bigint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint DEFAULT NULL,
  `payment_for` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payer_id` bigint DEFAULT NULL,
  `payment_receiver_id` bigint DEFAULT NULL,
  `paid_by` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_to` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'success',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `amount` double(8,2) NOT NULL DEFAULT '0.00',
  `transaction_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_details_id` bigint unsigned DEFAULT NULL,
  UNIQUE KEY `transactions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `translations` (
  `translationable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `translationable_id` bigint unsigned NOT NULL,
  `locale` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `translations_translationable_id_index` (`translationable_id`),
  KEY `translations_locale_index` (`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translations`
--

LOCK TABLES `translations` WRITE;
/*!40000 ALTER TABLE `translations` DISABLE KEYS */;
INSERT INTO `translations` VALUES ('App\\Models\\Product',192,'bd','name','PS61 Premium- 11100',19),('App\\Models\\Product',192,'bd','description','<h2><span style=\"color: rgb(0, 0, 0);\">Key Features</span></h2><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Model: AMD Ryzen 5 3400G Processor Desktop PC</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">AMD Ryzen 5 3400G Processor with Radeon RX Vega 11 Graphics</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MSI A520M-A Pro AM4 AMD Micro-ATX Motherboard</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">Corsair Vengeance LPX 8GB 3200MHz DDR4 Desktop RAM</span></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><span style=\"color: rgb(0, 0, 0);\">MiPhi MP300G3 256GB M.2 PCIe Gen3 NVMe SSD</span></li></ol><p><br></p>',20),('App\\Models\\Category',38,'bd','name','China',21),('App\\Models\\Category',40,'bd','name','New',22),('App\\Models\\Product',2,'bd','name','Fabric Mesh Soft Sole Sport Shoes',25),('App\\Models\\Product',2,'bd','description','<h4>Product Details:</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Type: Sneakers</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Gender: Men’s</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Condition: Brand New</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Color: Multicolor</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Available Sizes: 40, 41, 42, 43, 44</li></ol><h4>Features:</h4><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Modern and stylish design</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>High-quality materials for long-lasting use</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Comfortable sole suitable for all-day wear</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Durable construction with a strong grip</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Easy to pair with casual and semi-formal outfits</li></ol><p><br></p>',26),('App\\Models\\Product',3,'bd','name','Men’s Breathable Mesh Dad Sneakers – Thick Sole Casual Shoes',27),('App\\Models\\Product',3,'bd','description','<p>Trendy men’s casual sneakers with a breathable mesh upper and thick rubber sole for comfort and height enhancement. Lightweight, shock-absorbing, and non-slip—perfect for summer and everyday wear. Designed in a modern Korean retro style.</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Upper: Breathable mesh</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Sole: Rubber, thick sole</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Style: Casual / dad sneakers</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Season: Spring, Summer, Autumn</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Sizes: 40–44</strong></li></ol><p><br></p>',28),('App\\Models\\Product',5,'bd','name','Generisch Non-Slip, Fitness Lightweight Shoes',29),('App\\Models\\Product',5,'bd','description','<p>Lightweight, breathable trainers with <strong>comfortable cushioned interiors</strong> and a <strong>non-slip, shock-absorbing sole</strong>. Designed for running, hiking, gym workouts, casual wear, and outdoor activities. Features <strong>slip-on convenience with lace-up adjustment</strong> for a secure fit.</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Upper Material: PU</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Inner Material: Breathable textile + elastic lining</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Sole: EVA + durable rubber, non-slip & shockproof</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Fit: Slip-on with adjustable laces</li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span>Use: Running, hiking, sports, gym, casual, outdoor</li></ol><p><br></p>',30),('App\\Models\\Product',8,'bd','name','Trendy Casual Spring Shoes',33),('App\\Models\\Product',8,'bd','description','<p>Stylish and comfortable men’s white sneakers with a <strong>non-slip platform</strong> and <strong>breathable mesh lining</strong>. Perfect for students or casual wear in spring. Made from high-quality PU with a durable <strong>rubber outsole</strong> for enhanced grip and long-lasting comfort.</p><ol><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Material: PU upper, rubber outsole</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Features: Non-slip platform, breathable mesh lining</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Style: Trendy casual sneakers</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Ideal for: Students, everyday casual wear</strong></li><li data-list=\"bullet\"><span class=\"ql-ui\" contenteditable=\"false\"></span><strong>Sizes: 40, 41, 42, 43, 44</strong></li></ol><p><br></p>',34),('App\\Models\\Category',6,'bd','name','Canvas',35),('App\\Models\\Category',7,'bd','name','High-Top',36),('App\\Models\\Category',8,'bd','name','Low-Top',37),('App\\Models\\Category',46,'bd','name','Loafers',38),('App\\Models\\Category',47,'bd','name','Slip-On Shoes',39),('App\\Models\\Category',48,'bd','name','Sneakers',40),('App\\Models\\Category',49,'bd','name','Pointed-Toe Shoes',41),('App\\Models\\Category',50,'bd','name','Court Shoes',42),('App\\Models\\Category',51,'bd','name','Pumps',43),('App\\Models\\Category',52,'bd','name','Stiletto Heels',44),('App\\Models\\Category',53,'bd','name','Block Heels',45),('App\\Models\\Category',54,'bd','name','Mid Heels',46),('App\\Models\\Category',55,'bd','name','High Heels',47),('App\\Models\\Category',56,'bd','name','Peep-Toe Flats',48),('App\\Models\\Category',57,'bd','name','Flat Sandals',49),('App\\Models\\Category',58,'bd','name','Ballerina Flats',50),('App\\Models\\Category',59,'bd','name','Party Wedges',51),('App\\Models\\Category',60,'bd','name','Casual Wedges',52),('App\\Models\\Category',61,'bd','name','Slides',53),('App\\Models\\Category',62,'bd','name','Flat Sandals',54),('App\\Models\\Category',63,'bd','name','Fashion Sandals',55),('App\\Models\\Category',64,'bd','name','Outdoor Slippers',56),('App\\Models\\Category',65,'bd','name','Home Slippers',57),('App\\Models\\Category',66,'bd','name','Long Boots',58),('App\\Models\\Category',67,'bd','name','Ankle Boots',59);
/*!40000 ALTER TABLE `translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'def.png',
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `street_address` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apartment_no` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cm_firebase_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `payment_card_last_four` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_card_brand` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_card_fawry_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `login_medium` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_phone_verified` tinyint(1) NOT NULL DEFAULT '0',
  `temporary_token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_email_verified` tinyint(1) NOT NULL DEFAULT '0',
  `wallet_balance` double(8,2) DEFAULT NULL,
  `loyalty_point` decimal(18,4) DEFAULT '0.0000',
  `login_hit_count` tinyint NOT NULL DEFAULT '0',
  `is_temp_blocked` tinyint(1) NOT NULL DEFAULT '0',
  `temp_block_time` timestamp NULL DEFAULT NULL,
  `referral_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `referred_by` int DEFAULT NULL,
  `app_language` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendor_registration_reasons`
--

DROP TABLE IF EXISTS `vendor_registration_reasons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendor_registration_reasons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `priority` tinyint NOT NULL DEFAULT '1',
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendor_registration_reasons`
--

LOCK TABLES `vendor_registration_reasons` WRITE;
/*!40000 ALTER TABLE `vendor_registration_reasons` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendor_registration_reasons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_transactions`
--

DROP TABLE IF EXISTS `wallet_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wallet_transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned DEFAULT NULL,
  `transaction_id` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `debit` decimal(24,3) NOT NULL DEFAULT '0.000',
  `admin_bonus` decimal(24,3) NOT NULL DEFAULT '0.000',
  `balance` decimal(24,3) NOT NULL DEFAULT '0.000',
  `transaction_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_transactions`
--

LOCK TABLES `wallet_transactions` WRITE;
/*!40000 ALTER TABLE `wallet_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `wallet_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlists`
--

LOCK TABLES `wishlists` WRITE;
/*!40000 ALTER TABLE `wishlists` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_requests`
--

DROP TABLE IF EXISTS `withdraw_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdraw_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` bigint DEFAULT NULL,
  `delivery_man_id` bigint DEFAULT NULL,
  `admin_id` bigint DEFAULT NULL,
  `amount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00',
  `withdrawal_method_id` bigint unsigned DEFAULT NULL,
  `withdrawal_method_fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `transaction_note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `approved` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_requests`
--

LOCK TABLES `withdraw_requests` WRITE;
/*!40000 ALTER TABLE `withdraw_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdraw_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdrawal_methods`
--

DROP TABLE IF EXISTS `withdrawal_methods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `withdrawal_methods` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `method_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint NOT NULL DEFAULT '0',
  `is_active` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdrawal_methods`
--

LOCK TABLES `withdrawal_methods` WRITE;
/*!40000 ALTER TABLE `withdrawal_methods` DISABLE KEYS */;
/*!40000 ALTER TABLE `withdrawal_methods` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-04 18:46:51
