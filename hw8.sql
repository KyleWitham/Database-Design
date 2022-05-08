CREATE DATABASE School2;
USE School2;

CREATE TABLE Students(
  id int NOT NULL UNIQUE AUTO_INCREMENT,
  firstname varchar(20),
  lastname varchar(20),
  PRIMARY KEY (id)
);

CREATE TABLE student_addresses(
   id int NOT NULL AUTO_INCREMENT UNIQUE,
   street varchar(20),
   num int,
   town varchar(20),
   zip int,
   studentId int,
   PRIMARY KEY (id),
   FOREIGN KEY (studentId) REFERENCES Students(id)
);

CREATE TABLE Class(
  id int AUTO_INCREMENT NOT NULL UNIQUE,
  className varchar(20),
  PRIMARY KEY (id)
);

CREATE TABLE class_student_association(
  studentId int,
  classId int,
  FOREIGN KEY (studentId) REFERENCES Students(id),
  FOREIGN KEY (classId) REFERENCES Class(id)
);

INSERT INTO Students (firstname, lastname) VALUES ('Kyle', 'Witham');
INSERT INTO Students (firstname, lastname) VALUES ('Roderick', 'Ramirez');
INSERT INTO Students (firstname, lastname) VALUES ('Rudy', 'Desanti');
INSERT INTO Students (firstname, lastname) VALUES ('Jack', 'Cahill');
INSERT INTO Students (firstname, lastname) VALUES ('Bryce', 'Holland');
INSERT INTO Students (firstname, lastname) VALUES ('Karsen', 'Knight');
INSERT INTO Students (firstname, lastname) VALUES ('Dylan', 'Cheney');
INSERT INTO Students (firstname, lastname) VALUES ('Andrea', 'Cota');
INSERT INTO Students (firstname, lastname) VALUES ('Kelly', 'Roper');
INSERT INTO Students (firstname, lastname) VALUES ('Caterina', 'Teodosio');

INSERT INTO student_addresses (street, num, town, zip, studentId) VALUES ('Old Ferry Rd', 1, 'Bristol', 02809, 1);
INSERT INTO student_addresses (street, num, town, zip, studentId) VALUES ('Old Ferry Rd', 1, 'Bristol', 02809, 2);
INSERT INTO student_addresses (street, num, town, zip, studentId) VALUES ('Old Ferry Rd', 1, 'Bristol', 02809, 3);
INSERT INTO student_addresses (street, num, town, zip, studentId) VALUES ('Tatnic Lane', 4, 'South Berwick', 03908, 4);
INSERT INTO student_addresses (street, num, town, zip, studentId) VALUES ('School Street', 8, 'South Berwick', 03908, 5);
INSERT INTO student_addresses (street, num, town, zip, studentId) VALUES ('New Road', 67, 'North Conway', 03860, 6);
INSERT INTO student_addresses (street, num, town, zip, studentId) VALUES ('West Street', 47, 'South Berwick', 03908, 7);
INSERT INTO student_addresses (street, num, town, zip, studentId) VALUES ('Old Ferry Rd', 1, 'Bristol', 02809, 8);
INSERT INTO student_addresses (street, num, town, zip, studentId) VALUES ('High Street', 42, 'Bristol', 02809, 9);
INSERT INTO student_addresses (street, num, town, zip, studentId) VALUES ('Hope Street', 32, 'Bristol', 02809, 10);

INSERT INTO Class (className) VALUES ('Biology');
INSERT INTO Class (className) VALUES ('Chemistry');
INSERT INTO Class (className) VALUES ('English');
INSERT INTO Class (className) VALUES ('Spanish');
INSERT INTO Class (className) VALUES ('Physics');
INSERT INTO Class (className) VALUES ('Database Design');
INSERT INTO Class (className) VALUES ('Algebra');
INSERT INTO Class (className) VALUES ('Calculus');
INSERT INTO Class (className) VALUES ('Geometry');
INSERT INTO Class (className) VALUES ('Film Studies');

INSERT INTO class_student_association (studentId, classId) VALUES (1, 4);
INSERT INTO class_student_association (studentId, classId) VALUES (1, 3);
INSERT INTO class_student_association (studentId, classId) VALUES (1, 6);
INSERT INTO class_student_association (studentId, classId) VALUES (2, 8);
INSERT INTO class_student_association (studentId, classId) VALUES (2, 6);
INSERT INTO class_student_association (studentId, classId) VALUES (5, 7);
INSERT INTO class_student_association (studentId, classId) VALUES (5, 6);
INSERT INTO class_student_association (studentId, classId) VALUES (6, 6);
INSERT INTO class_student_association (studentId, classId) VALUES (7, 3);
INSERT INTO class_student_association (studentId, classId) VALUES (9, 1);

SELECT * FROM class_student_association ORDER BY (classId);