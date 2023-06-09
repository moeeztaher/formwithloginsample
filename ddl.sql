-- CREATE SYSTEMHAUS DATABASE IF IT DOES NOT ALREADY EXIST
CREATE DATABASE IF NOT EXISTS systemhaus;

-- THIS WILL CREATE THE USER TABLE (IF IT DOES NOT ALREADY EXIST) THAT CONTAINS FORM DATA
CREATE TABLE IF NOT EXISTS systemhaus.user (
   `id` int NOT NULL AUTO_INCREMENT,
   `Name` varchar(50) DEFAULT NULL,
   `Email` varchar(50) DEFAULT NULL,
   `StreetNumber` varchar(100) DEFAULT NULL,
   `Postcode` int DEFAULT NULL,
   `City` varchar(50) DEFAULT NULL,
   `Message` varchar(100) DEFAULT NULL,
   `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- THIS WILL CREATE THE LOGIN TABLE (IF IT DOES NOT ALREADY EXIST) THAT CONTAINS LOGIN DATA INCLUDING USERNAME AND PASSWORD, FOR NOW THE PASSWORD IS NOT ENCODED SINCE IT IS A SAMPLE APP
 CREATE TABLE IF NOT EXISTS systemhaus.authlogin (
   `id` int unsigned NOT NULL AUTO_INCREMENT,
   `email` varchar(100) NOT NULL,
   `password` varchar(100) NOT NULL,
   `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
   `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
   PRIMARY KEY (`id`)
 ) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

-- INSERT THE SUPERADMIN ROW THAT IS USED TO VIEW THE SAVED FORMS
INSERT INTO systemhaus.authlogin (Email, Password) VALUES ('test@example.com', 'password123');