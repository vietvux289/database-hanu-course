/* Themepark.SQL                                 	*/
/* Introduction to SQL 					*/
/* Script file for MySQL DBMS				*/
/* This script file creates the following tables:	*/
/* PARK_COPY	*/
/* and loads the default data rows			*/


DROP TABLE IF EXISTS PARK_COPY;
CREATE TABLE PARK_COPY (
PARK_CODE	VARCHAR(10) PRIMARY KEY,
PARK_NAME	VARCHAR(30) NOT NULL,
PARK_COUNTRY	VARCHAR(30) NOT NULL,
PARK_AREA_CODE	VARCHAR(4),
PARK_PHONE	VARCHAR(12));


