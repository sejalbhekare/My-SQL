create database lifeline_bloodbank;
use lifeline_bloodbank;

create table bloodtype (
blood_id int primary key,
blood_type char(5) not null);
desc bloodtype;

create table donar(
donar_id varchar(10) primary key,
donar_name varchar(20) not null, 
gender char(10),
age int,
contactno bigint(10),
blood_group char(10),
address varchar(30),
state varchar(15),
date_0f_donate date);
desc donar;

create table receiver( 
receiver_id int primary key,
receiver_name varchar(20) not null,
gender char(10),
age int,
address varchar(30),
state varchar(15),
blood_group char(5),
b_id int,
constraint fk_b_id foreign key (b_id) REFERENCES bloodtype(blood_id)
on delete cascade
on update cascade,
contactno bigint(10),
receiveing_date date);
desc receiver;
show tables;


insert into bloodtype values
(101, "A+"),
(102, "A-"),
(103, "B+"),
(104, "B-"),
(105, "AB+"),
(106, "AB-"),
(107, "O+"),
(108, "O-");
select * from bloodtype;

INSERT INTO donar VALUES 
('107A', 'John Doe', 'Male', 30, 1234567890, 'O+', '123 Main St', 'karnataka', '2023-01-01'),
('102B', 'Jane Smith', 'Female', 25, 9876543210, 'A-', '456 Elm St', 'new delhi', '2023-02-02'),
('103C', 'David Johnson', 'Male', 40, 5551112222, 'B+', '789 Oak St', 'uttarpradesh', '2023-03-03'),
('106D', 'Sarah Williams', 'Female', 35, 9998887777, 'AB-', '101 Pine St', 'new delhi', '2023-04-04'),
('108E', 'Michael Brown', 'Male', 28, 3332221111, 'O-', '246 Maple St', 'maharashtra', '2023-05-05'),
('101F', 'Emily Davis', 'Female', 22, 7778889999, 'A+', '369 Cedar St', 'goa', '2023-06-06'),
('105G', 'William Miller', 'Male', 32, 1112223334, 'AB+', '808 Walnut St', 'maharashtra', '2023-07-07'),
('104H', 'Olivia Wilson', 'Female', 27, 4445556667, 'B-', '707 Cherry St', 'tamilnadu', '2023-08-08'),
('107I', 'Ethan Moore', 'Male', 31, 8889990001, 'O+', '505 Birch St', 'goa', '2023-09-09'),
('102J', 'Sophia Taylor', 'Female', 29, 6667778882, 'A-', '919 Pineapple St', 'new delhi', '2023-10-10'),
('106K', 'Noah Anderson', 'Male', 33, 1212121212, 'AB-', '112 Orange St', 'maharashtra', '2023-11-11'),
('103L', 'Ava Thomas', 'Female', 26, 3434343434, 'B+', '567 Lemon St', 'maharashtra', '2023-12-12'),
('108M', 'Liam Jackson', 'Male', 24, 5656565656, 'O-', '131 Strawberry St', 'new delhi', '2024-01-01'),
('101N', 'Emma White', 'Female', 30, 7878787878, 'A+', '848 Grape St', 'goa', '2024-02-02'),
('104O', 'James Harris', 'Male', 36, 9090909090, 'B-', '909 Cherry St', 'karnataka', '2024-03-03'),
('105P', 'Mia Martin', 'Female', 23, 2323232323, 'AB+', '232 Plum St', 'uttarpradesh', '2024-04-04'),
('107Q', 'Benjamin Garcia', 'Male', 37, 5454545454, 'O+', '545 Banana St', 'uttarpradesh', '2024-05-05'),
('102R', 'Charlotte Martinez', 'Female', 21, 6767676767, 'A-', '676 Orange St', 'maharashtra', '2024-06-06'),
('103S', 'Elijah Robinson', 'Male', 38, 7878787878, 'B+', '878 Pineapple St', 'maharashtra', '2024-07-07'),
('108T', 'Amelia Clark', 'Female', 20, 9090909090, 'O-', '909 Lime St', 'tamilnadu', '2024-08-08'),
('106U', 'Lucas Rodriguez', 'Male', 39, 2323232323, 'AB-', '232 Lemon St', 'hariyana', '2024-09-09'),
('101V', 'Avery Adams', 'Female', 19, 5454545454, 'A+', '545 Apple St', 'punjab', '2024-10-10'),
('104W', 'Harper Campbell', 'Male', 40, 6767676767, 'B-', '676 Grape St', 'tamilnadu', '2024-11-11'),
('107X', 'Logan Hill', 'Female', 18, 7878787878, 'O+', '878 Banana St', 'maharashtra', '2024-12-12'),
('102Y', 'Aria Ward', 'Male', 41, 9090909090, 'A-', '909 Grapefruit St', 'tamilnadu', '2025-01-01'),
('108Z', 'Grace Sullivan', 'Male', 42, 5454545454, 'O-', '545 Mango St', 'hariyana', '2025-03-03'),
('105AA', 'Henry Powell', 'Female', 16, 6767676767, 'AB+', '676 Pine St', 'rajasthan', '2025-04-04'),
('101AB', 'Stella Long', 'Male', 43, 7878787878, 'A+', '878 Peach St', 'rajasthan', '2025-05-05'),
('104AC', 'Wyatt Hughes', 'Female', 15, 9090909090, 'B-', '909 Pear St', 'rajasthan', '2025-06-06'),
('105AD', 'sejal bhekare', 'female', 21, 7400220393, 'AB+', '228 riva rthyem', 'maharashtra', '2002-09-28');
select * from donar;

INSERT INTO receiver VALUES
(101, 'John Doe', 'Male', 25, '123 Main St', 'maharashtra', 'AB+',105 , 1234567890, '2023-01-15'),
(102, 'Jane Smith', 'Female', 30, '456 Elm St', 'karnatka','O-', 108, 9876543210, '2023-02-20'),
(103, 'David Johnson', 'Male', 40, '789 Oak St','new delhi', 'A+', 101, 5555555555, '2023-03-10'),
(104, 'Emily Williams', 'Female', 22, '321 Pine St', 'maharashtra','B-', 104, 1111111111, '2023-04-05'),
(105, 'Michael Brown', 'Male', 35, '654 Maple St', 'punjab','O+', 107, 9999999999, '2023-05-12'),
(106, 'Sophia Garcia', 'Female', 28, '987 Cedar St','goa', 'AB-', 106, 7777777777, '2023-06-25'),
(107, 'William Martinez', 'Male', 45, '741 Birch St', 'tamilnadu','A-', 102, 3333333333, '2023-07-18'),
(108, 'Olivia Jones', 'Female', 20, '852 Walnut St', 'maharashtra','B+', 103, 8888888888, '2023-08-30'),
(109, 'Daniel Miller', 'Male', 29, '159 Cherry St', 'rajasthan','AB+', 105, 4444444444, '2023-09-22'),
(110, 'Ava Wilson', 'Female', 32, '369 Spruce St', 'rajasthan','O-', 108, 6666666666, '2023-10-05'),
(111, 'Ethan Davis', 'Male', 27, '753 Ash St', 'new delhi','A+', 101, 2222222222, '2023-11-14'),
(112, 'Chloe Rodriguez', 'Female', 33, '852 Pineapple St','new delhi', 'B-', 104, 5556667777, '2023-12-28'),
(113, 'Alexander Lee', 'Male', 26, '963 Mango St','punjab', 'O+', 107, 1231231234, '2024-01-02'),
(114, 'Madison Campbell', 'Female', 24, '147 Orange St','punjab', 'AB-', 105, 9876543210, '2024-02-15'),
(115, 'Noah Hernandez', 'Male', 31, '258 Banana St','uttarpradesh', 'A-', 102, 9871236540, '2024-03-20'),
(116, 'Avery Torres', 'Female', 29, '369 Grape St', 'uttarpradesh','B+', 103, 1112223334, '2024-04-12'),
(117, 'Mia Gonzales', 'Female', 23, '753 Lemon St', 'uttarpradesh','AB+', 105, 3334445556, '2024-05-05'),
(118, 'Liam Perez', 'Male', 36, '852 Lime St','maharashtr', 'O-', 108, 9876543210, '2024-06-18'),
(119, 'Harper Nguyen', 'Female', 30, '963 Apple St','maharashtra','A+', 101, 9876543210, '2024-07-30'),
(120, 'Evelyn Kim', 'Female', 28, '147 Avocado St','maharashtra', 'B-', 104, 9876543210, '2024-08-22'),
(121, 'James Patel', 'Male', 41, '258 Papaya St','maharashtra', 'O+', 107, 9876543210, '2024-09-05'),
(122, 'Grace Khan', 'Female', 26, '369 Guava St','tamilnadu', 'AB-', 106, 9876543210, '2024-10-14'),
(123, 'Benjamin Singh', 'Male', 34, '753 Pomegranate St', 'tamilnadu', 'A-', 102, 9876543210, '2024-11-28'),
(124, 'Aria Kumar', 'Female', 25, '852 Watermelon St','tamilnadu','B+', 103, 9876543210, '2024-12-02'),
(125, 'Logan Das', 'Male', 29, '963 Kiwi St','goa', 'AB+', 105, 9876543210, '2025-01-15'),
(126, 'Luna Joshi', 'Female', 27, '147 Pineapple St', 'goa','O-', 108, 9876543210, '2025-02-20'),
(127, 'Henry Li', 'Male', 37, '258 Orange St','goa', 'A+', 101, 9876543210, '2025-03-10'),
(128, 'Zoe Chen', 'Female', 22, '369 Banana St','hariyana', 'B-', 104, 9876543210, '2025-04-05'),
(129, 'Mason Wu', 'Male', 33, '753 Grape St', 'hariyana','O+', 107, 9876543210, '2025-05-12'),
(130, 'Ellie Gupta', 'Female', 31, '852 Lemon St', 'hariyana','AB-', 106, 9876543210, '2025-06-25');
select * from donar;



#Find the total count of receivers in each state:
SELECT state, COUNT(*) AS count FROM receiver GROUP BY state;

#Count the number of donors in each blood group:
SELECT blood_group, COUNT(*) AS count FROM donar GROUP BY blood_group;

#Get male donors older than 30:
SELECT donar_name, age, gender  FROM donar WHERE gender = 'Male' AND age > 30;

#List donors who donated in 2023 and are from Maharashtra:
SELECT donar_name, contactno,blood_group, state, date_0f_donate FROM donar WHERE YEAR(date_0f_donate) = 2023 AND state = 'maharashtra';


#Retrieve donors who have the same blood type as a specific receiver:
SELECT * FROM donar WHERE blood_group =
(SELECT blood_group FROM receiver WHERE receiver_id = 101);


#Retrieve the names of receivers along with their respective donor names (if available) for receivers who received blood from donors in the same state.
SELECT receiver.receiver_name, donar.donar_name, donar.contactno, receiver.state
FROM receiver
LEFT JOIN donar ON receiver.b_id = donar.donar_id
WHERE receiver.state = donar.state;


# Selecting receivers and their respective blood types from a specific state:
SELECT receiver.receiver_name, bloodtype.blood_type, receiver.state, bloodtype.blood_id
FROM receiver
INNER JOIN bloodtype ON receiver.b_id = bloodtype.blood_id
WHERE receiver.state = 'maharashtra';


# Calculating the count of donors grouped by blood types:
SELECT bloodtype.blood_type, bloodtype.blood_id, COUNT(donar.donar_id) AS 'Donor_Count'
FROM donar
INNER JOIN bloodtype ON donar.blood_group = bloodtype.blood_type
GROUP BY bloodtype.blood_type;


#Finding receivers and their respective blood types in a specific state with a blood type 'A+':
SELECT receiver.receiver_name, receiver.blood_group, receiver.state
FROM receiver
INNER JOIN bloodtype ON receiver.b_id = bloodtype.blood_id
WHERE receiver.state = 'new delhi' AND bloodtype.blood_type = 'A+';


#Fetching donors along with their blood ids:
SELECT donar.donar_name, donar.blood_group AS 'Donor_Blood_Group', bloodtype.blood_id
FROM donar
INNER JOIN bloodtype ON donar.blood_group = bloodtype.blood_type;


#Finding the count of receivers grouped by their blood groups:
SELECT bloodtype.blood_type, bloodtype.blood_id, COUNT(receiver.receiver_id) AS 'Receiver_Count'
FROM receiver
INNER JOIN bloodtype ON receiver.b_id = bloodtype.blood_id
GROUP BY bloodtype.blood_type;


#subqueires
#Retrieve the names of donors who have the same blood type as a specific receiver (e.g., receiver_id = 117).
SELECT *FROM donar WHERE blood_group= 
(SELECT blood_group FROM receiver WHERE receiver_id = 117);


#Find the names of donors who are at least 10 years older than the youngest receiver.
SELECT donar_name, gender, age FROM donar
WHERE age> (SELECT MIN(age) + 10 FROM receiver);


#Retrieve the count of male and female donors.
SELECT gender, COUNT(*) AS count_gender FROM donar
GROUP BY gender;


#List the donors who donated blood after the year 2023 in descending order of their ages.
SELECT donar_name, age, date_0f_donate 
FROM donar
WHERE YEAR(date_0f_donate) > 2023
ORDER BY age DESC;





