CREATE SCHEMA Capstone;

CREATE TABLE Capstone.user (
	unique_id varchar(255) PRIMARY KEY,
	username varchar(255),
    first_name varchar(255),
    last_name varchar(255),
    email varchar(255),
    user_password varchar(255),
    user_type varchar(255),
    Institution_Identifier varchar(255)
);

CREATE TABLE Capstone.institution (
	Institution_ID varchar(255) PRIMARY KEY,
	Institute_Address varchar(255),
	Number_of_Campuses int,
	Administrator varchar(255) 
);

CREATE TABLE `campus` (
  `Institution_ID` varchar(255) PRIMARY KEY,
  `Campus_ID` varchar(255) DEFAULT NULL,
  `Campus_Address` varchar(255) DEFAULT NULL,
  `Number_of_Buildings` int DEFAULT NULL,
  `Campus_Name` varchar(255) DEFAULT NULL,
  KEY `Institution_ID_idx` (`Institution_ID`),
  CONSTRAINT `Institution_ID` FOREIGN KEY (`Institution_ID`) REFERENCES `institution` (`Institution_ID`)
);

CREATE TABLE Capstone.building (
  `Campus_ID` varchar(255) PRIMARY KEY,
  `Building_ID` varchar(255) DEFAULT NULL,
  `Building_Address` varchar(255) DEFAULT NULL,
  `Building_Name` varchar(255) DEFAULT NULL,
  `Number_of_Rooms` int DEFAULT NULL,
  `Energy_Cost_Rate` double DEFAULT NULL,
  `Actual_Monthly_Cost` double DEFAULT NULL,
  `Actual_Energy_Consumption` double DEFAULT NULL
);

CREATE TABLE Capstone.building (
	Buidling_Id varchar(255) PRIMARY KEY,
    Building_Address varchar(255),
    Building_Name varchar(255),
    Number_of_Rooms int,
FOREIGN KEY (Campus_ID) REFERENCES Campus(Campus_ID),
    Energy_Cost_Rate double,
    Actual_Monthly_Cost double,
    Actual_Energy_Consumption double
);

CREATE TABLE Capstone.energy (
	building_code varchar(30) PRIMARY KEY,
    FOREIGN KEY (building_code_number) REFERENCES Building(Building_Id),
	room_predicted_energy int,
	room_actual_energy int,
	building_predicted_energy int,
	building_actual_energy int,
	FOREIGN KEY (campus_name) REFERENCES Campus(Campus_Name),
	campus_predicted_energy int,
	campus_actual_energy int,
	institute_predicted_energy int,
	institute_actual_energy int,
	rate_of_energy_cost decimal,
	month_year date
);
​
