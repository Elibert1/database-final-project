INSERT INTO user(unique_id, username, first_name, last_name, email, user_password, user_type, Institution_Identifier)
VALUES
("00001","Johnsmith1","John","Smith","jsmith@electrical.com","pword222","Super User","100"),
("00002","Davidwilliams","David","Williams","dwilliams@electrical.com","GreenApple","User","100"),
("00003","Ryanjones","Ryan","Jones","rjones@electrical.com","SeattleWash","User","200"),
("00004","Henryford1","Henry","Ford","hford@electrical.com","password","Admin","100"),
("00005","georgehunter","George","Hunter","ghunter@electrical.com","121cedarave","User","200");


INSERT INTO Building(Building_id, Building_Address, Building_name, Number_of_Rooms, Energy_Cost_Rate, Actual_Monthly_Cost, user_type, Actual_Energy_Consumption)
VALUES
("0011",  "263 Woodberry Lane",  "0199", 42, 2.58, 2000.58, 848),
("00012", "265 Woodberry Lane",  "0200", 64, 3.89, 3030.23, 1240),
("00020", "173 Greenville Road", "0110", 22, 1.99, 1578.23, 678.54),
("00021", "177 Greenville Road", "0112", 35, 2.27, 1892.34, 822),
("00010", "1212 Seasame Drive", "0001",  87, 3.99, 5010.12, 1675.67);

INSERT INTO Energy(room_predicted_energy, room_actual_energy, building_code, building_predicted_energy, building_actual_energy, campus_predicted_energy, campus_actual_energy, institute_predicted_energy, institute_actual_energy, rate_of_energy_cost, month_year)
VALUES 
(300, 275, 1002, 3500, 2500, 12000, 18000, 300000, 159000, 20.6, 10/2022),
(400, 420, 2000, 1732, 2000, 18000, 22000, 150756, 200000, 30, 10/2022),
(250, 500, 2700, 1890, 2000, 5678, 13089, 157890, 160000, 50, 10/2022),
(150, 375, 3058, 4200, 1520, 20000, 21000, 171656, 185000, 75, 10/2022),
(385, 160, 1780, 1275, 1876, 12345, 15656, 200065, 150660, 18.9, 10/2022);

INSERT INTO Institution(Institution_ID, Institution_Address, Number_of_Campus, Administrator)
VALUES 
(001, "156 Mildred St SW", 3, "Michael Hodge"),
(002, "1601 E Market St", 1, "Ezana Tamrat"),
(003, "1601 S Martin Luther King Jr. Blvd", "Larry Robinson"),
(004, "1234 Peach Road", "James Johnson"),
(005, "2648 Ryder Blvd", "Rita Thomas");

INSERT INTO Campus(Campus_ID, Campus_Address, Number_of_Buildings, Campus_Name)
VALUES 
(1, "830 Westview Dr SW", 46, "Morehouse College"),
(2, "350 Spelman Ln SW", 27, "Spelman College"),
(3, "900 E Washington St", 38, "Bennett Collee"),
(4, "2400 Sixth Street NW", 58, "Howard University");

/*Insert information into Institution Table*/
INSERT INTO institution (Institution_ID, Institute_Address, Number_of_Campuses, Administrator)
VALUES ('1867', '830 Westview Dr SW, Atlanta, GA 30314', 1, 'DavidThomas');

/*Insert information into Campus table*/
INSERT INTO campus (Institution_ID, Campus_ID, Campus_Address, Number_of_Buildings, Campus_Name)
VALUES ('1867', '0001', '830 Westview Dr SW, Atlanta, GA 30314',41, 'Morehouse Campus');

/*Insert information into building table*/
INSERT INTO building (Campus_ID, Building_ID, Building_Address, Building_Name, Number_of_Rooms, Energy_Cost_Rate, Actual_Monthly_Cost, Actual_Energy_Consumption)
VALUES ('1867','001', '830 Westview Dr SW, Atlanta, GA 30314', 'Samuel T. Graves Hall', 60, 1.2,3.2,58.3),
('1867','002', '830 Westview Dr SW, Atlanta, GA 30314', 'Joseph T. Robert Hall/Post Office', 51, 1.7,2.8,3.3),
('1867','003', '830 Westview Dr SW, Atlanta, GA 30314', 'Sale Hall Annex', 13, 1.1,1.2,68.3),
('1867','004', '830 Westview Dr SW, Atlanta, GA 30314', 'Sale Hall', 22, 1.6,4.2,88.3),
('1867','005', '830 Westview Dr SW, Atlanta, GA 30314', 'John Hope Hall', 34, 2.6,2.2,98.4);

/*Insert information into user table*/
INSERT INTO user (unique_id, username, first_name, last_name, email, user_password, user_type, Institution_Identifier)
VALUES ('0001','gsmith', 'Gerald', 'Smith', 'gerald.smith@morehouse.edu', 'HuRho2022','User','1867'),
('0002','support', 'Tech', 'Support', 'techsupport@morehouse.edu', 'supportmhc','Admin','1867'),
('0003','kbook', 'Kevin', 'Booker', 'kevin.booker@morehouse.edu', 'Mhc7681','Super User','1867');

/*Delete Data */
DELETE FROM user WHERE user_type ='User';

/*Select All information from a table*/
SELECT * FROM building;

/*Select Specific Data from a table (ex. Select buidlings with more than 40 rooms) */
SELECT * FROM building
WHERE Number_of_Rooms > 40;

/*Update Information in a table*/
UPDATE user
SET username = 'techsupport', first_name = 'Technical'
WHERE unique_id = '0001';
