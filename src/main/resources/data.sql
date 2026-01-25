--ADDRESS

INSERT INTO address (firstline, secondline,city, state, zip) VALUES ('123 Main St', 'Apt 4B','San Carlos', 'CA',
'94105');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('456 Market Street', NULL,'New York', 'NY',
'10001');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('789 Elm Road', 'Suite 210','SugarLand', 'TX',
'73301');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('321 Oak Avenue', NULL,'Miami', 'FL', '33101');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('654 Pine Lane', 'Floor 3','Ilos', 'IL', '60601');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('987 Cedar Blvd', NULL,'wolf', 'WA', '98101');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('159 Maple Drive', 'Unit 12','New Jersay', 'NJ',
'07097');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('753 Birch Street', NULL,'Tempe', 'AZ', '85001');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('852 Spruce Court', 'Apt 9C','San carlos', 'MA',
'02108');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('951 Walnut Way', NULL,'Bloomfilter', 'CO',
'80201');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('323 Parker St', 'Apt 4B','Walnut Creek', 'CA',
'94105');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('456 South Bay Street', NULL,
'Albany',
'NY', '10001');
INSERT INTO address (firstline, secondline,city,  state, zip) VALUES ('1789 Sugar Land Road', 'Suite 210','', 'TX',
'73301');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('1322 First Avenue', NULL,'Ghar', 'FL', '33101');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('1654 Wine Lane', 'Floor 3','Ilos', 'IL',
'60601');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('2987 Cheddar Blvd', NULL,'Walk' ,'WA', '98101');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('159 Saple Drive', 'Unit 12','New Jersey', 'NJ',
'07097');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('853 Birch Street', NULL, 'Chandler','AZ',
'85001');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('452 Spruce Court', 'Apt 9C','Vandler', 'MA',
'02108');
INSERT INTO address (firstline, secondline, city, state, zip) VALUES ('751 Walnut Way', NULL, 'Utah','CO', '80201');

--Contact

INSERT INTO contact (id, phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
  VALUES ( Gen_random_uuid(), '+1-415-555-1001', 'john.doe@example.com', (SELECT id FROM address WHERE firstline = '123 Main St' AND zip = '94105'),
  CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
   VALUES ( Gen_random_uuid(), '+1-212-555-2034', 'jane.smith@example.com', (SELECT id FROM address WHERE firstline = '456 Market Street' AND zip = '10001'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
   VALUES ( Gen_random_uuid(), '+1-512-555-8899', 'alex.johnson@example.com', (SELECT id FROM address WHERE firstline = '789 Elm Road' AND zip = '73301'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-305-555-7788', 'emily.brown@example.com', (SELECT id FROM address WHERE firstline = '321 Oak Avenue' AND zip = '33101'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
    INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
    VALUES ( Gen_random_uuid(), '+1-312-555-4455', 'michael.wilson@example.com', (SELECT id FROM address WHERE firstline = '654 Pine Lane' AND zip = '60601'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-206-555-9988', 'sarah.miller@example.com', (SELECT id FROM address WHERE firstline = '987 Cedar Blvd' AND zip = '98101'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-609-555-3322', 'david.taylor@example.com', (SELECT id FROM address WHERE firstline = '159 Maple Drive' AND zip = '07097'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-602-555-4455', 'laura.moore@example.com', (SELECT id FROM address WHERE firstline = '753 Birch Street' AND zip = '85001'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-617-555-7788', 'kevin.anderson@example.com', (SELECT id FROM address WHERE firstline = '852 Spruce Court' AND zip = '02108'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-303-555-5566', 'amy.clark@example.com', (SELECT id FROM address WHERE firstline = '951 Walnut Way' AND zip = '80201'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

INSERT INTO contact (id, phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
  VALUES ( Gen_random_uuid(), '+1-415-565-1001', 'amit.sharma@org.com', (SELECT id FROM address WHERE firstline =
  '323 Parker St' AND zip = '94105'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
   VALUES ( Gen_random_uuid(), '+1-212-555-2034', 'neha.verma@org.com', (SELECT id FROM address WHERE firstline =
    '456 South Bay Street' AND zip = '10001'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
   VALUES ( Gen_random_uuid(), '+1-512-655-8899', 'rahul.mehta@org.com', (SELECT id FROM address WHERE firstline
    = '1789 Sugar Land Road' AND zip = '73301'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-305-755-7788', 'priya.nair@org.com', (SELECT id FROM address WHERE firstline =
'1322 First Avenue' AND zip = '33101'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
    INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
    VALUES ( Gen_random_uuid(), '+1-312-755-4455', 'suresh.kumar@org.com', (SELECT id FROM address WHERE
    firstline = '1654 Wine Lane' AND zip = '60601'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-206-585-9988', 'anita.desai@org.com', (SELECT id FROM address WHERE firstline =
'2987 Cheddar Blvd' AND zip = '98101'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-609-955-3322', 'vikram.singh@org.com', (SELECT id FROM address WHERE firstline =
'159 Saple Drive' AND zip = '07097'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-602-455-4455', 'arjun.rao@org.com', (SELECT id FROM address WHERE firstline =
'853 Birch Street' AND zip = '85001'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-617-559-7788', 'pooja.malhotra@org.com', (SELECT id FROM address WHERE firstline
= '452 Spruce Court' AND zip = '02108'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );
INSERT INTO contact (id,phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
VALUES ( Gen_random_uuid(), '+1-303-551-5566','kavita.joshi@org.com', (SELECT id FROM address WHERE firstline =
'751 Walnut Way' AND zip = '80201'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

--Department

INSERT INTO department (id, name, contact_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (Gen_random_uuid(), 'FACULTY', (SELECT id FROM contact WHERE email ='kevin.anderson@example.com'),CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO department (id, name, contact_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (Gen_random_uuid(), 'ADMIN', (SELECT id FROM contact WHERE email ='laura.moore@example.com'),
CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO department (id, name, contact_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (Gen_random_uuid(), 'OPERATIONS', (SELECT id FROM contact WHERE email ='amy.clark@example.com'),
CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

--Course

INSERT INTO course (id, name, duration_years, degree_type,created_date, created_by, last_modified_date, last_modified_by)
VALUES (Gen_random_uuid(), 'BS Computer Science', 3, 'BS',CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO course (id, name, duration_years, degree_type,created_date, created_by, last_modified_date, last_modified_by)
VALUES (Gen_random_uuid(), 'BS Information Technology', 3, 'BS',CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO course (id, name, duration_years, degree_type,created_date, created_by, last_modified_date, last_modified_by)
VALUES (Gen_random_uuid(), 'MS Computer Science', 2, 'MS',CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO course (id, name, duration_years, degree_type,created_date, created_by, last_modified_date, last_modified_by)
VALUES (Gen_random_uuid(), 'Diploma in Data Science', 1, 'Dipl',CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO course (id, name, duration_years, degree_type,created_date, created_by, last_modified_date, last_modified_by)
VALUES (Gen_random_uuid(), 'BS Artificial Intelligence', 3, 'BS',CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP,
'SYSTEM');

--Semester

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date,
last_modified_by)
VALUES (gen_random_uuid(), 1, (SELECT id FROM course WHERE name = 'BS Computer Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 2, (SELECT id FROM course WHERE name = 'BS Computer Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 3, (SELECT id FROM course WHERE name = 'BS Computer Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 4, (SELECT id FROM course WHERE name = 'BS Computer Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 5, (SELECT id FROM course WHERE name = 'BS Computer Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 6, (SELECT id FROM course WHERE name = 'BS Computer Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');


INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 1, (SELECT id FROM course WHERE name = 'BS Information Technology'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 2, (SELECT id FROM course WHERE name = 'BS Information Technology'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 3, (SELECT id FROM course WHERE name = 'BS Information Technology'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 4, (SELECT id FROM course WHERE name = 'BS Information Technology'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 5, (SELECT id FROM course WHERE name = 'BS Information Technology'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 6, (SELECT id FROM course WHERE name = 'BS Information Technology'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 1, (SELECT id FROM course WHERE name = 'MS Computer Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 2, (SELECT id FROM course WHERE name = 'MS Computer Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 3, (SELECT id FROM course WHERE name = 'MS Computer Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 4, (SELECT id FROM course WHERE name = 'MS Computer Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 1, (SELECT id FROM course WHERE name = 'Diploma in Data Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 2, (SELECT id FROM course WHERE name = 'Diploma in Data Science'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');


INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 1, (SELECT id FROM course WHERE name = 'BS Artificial Intelligence'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 2, (SELECT id FROM course WHERE name = 'BS Artificial Intelligence'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 3, (SELECT id FROM course WHERE name = 'BS Artificial Intelligence'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 4, (SELECT id FROM course WHERE name = 'BS Artificial Intelligence'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(),5, (SELECT id FROM course WHERE name = 'BS Artificial Intelligence'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO semester (id, semester_number, course_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (gen_random_uuid(), 6, (SELECT id FROM course WHERE name = 'BS Artificial Intelligence'),
        CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');


INSERT INTO semester_subject ( id, subject, credits, semester_id, created_date,created_by,
last_modified_date, last_modified_by )
VALUES ( gen_random_uuid(), 'ARTIFICIAL_INTELLIGENCE', 4, ( SELECT s.id FROM semester s JOIN course c ON c.id = s
.course_id WHERE s.semester_number = 1 AND c.name = 'BS Artificial Intelligence' )
, CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

INSERT INTO semester_subject ( id, subject, credits, semester_id, created_date,created_by,
last_modified_date, last_modified_by )
VALUES ( gen_random_uuid(), 'DATA_STRUCTURES', 4,  ( SELECT s.id FROM semester s JOIN course c ON c.id = s.course_id WHERE s.semester_number = 1 AND c.name = 'MS Computer Science' )
, CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

INSERT INTO semester_subject ( id, subject, credits, semester_id, created_date,created_by,
last_modified_date, last_modified_by )
VALUES ( gen_random_uuid(), 'DATA_STRUCTURES', 4, ( SELECT s.id FROM semester s JOIN course c ON c.id = s
.course_id WHERE s.semester_number = 2 AND c.name = 'BS Computer Science' )
, CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

--Person

INSERT INTO person ( id, full_name,role, gender, dob, contact_id, created_date, created_by, last_modified_date,
last_modified_by )
VALUES( gen_random_uuid(), 'Amit Sharma','ADMIN', 'MALE' ,'1992-03-15', (SELECT id FROM contact WHERE email = 'amit
.sharma@org.com'),
CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

INSERT INTO person ( id, full_name,role, gender, dob, contact_id, created_date, created_by, last_modified_date, last_modified_by )
VALUES
(gen_random_uuid(), 'Neha Verma','FACULTY', 'FEMALE', '1994-07-22', (SELECT id FROM contact WHERE email = 'neha
.verma@org
.com'), CURRENT_TIMESTAMP,
'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

INSERT INTO person ( id, full_name,role, gender, dob, contact_id, created_date, created_by, last_modified_date, last_modified_by )

VALUES ( gen_random_uuid(), 'Rahul Mehta','FACULTY', 'MALE', '1990-11-05', (SELECT id FROM contact WHERE email =
'rahul.mehta@org.com'),
CURRENT_TIMESTAMP,
'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

INSERT INTO person ( id, full_name,role, gender, dob, contact_id, created_date, created_by, last_modified_date, last_modified_by )
VALUES ( gen_random_uuid(), 'Priya Nair','FACULTY', 'FEMALE', '1993-01-30', (SELECT id FROM contact WHERE email =
 'priya.nair@org.com'), CURRENT_TIMESTAMP,
 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

INSERT INTO person ( id, full_name,role, gender, dob, contact_id, created_date, created_by, last_modified_date, last_modified_by )
VALUES ( gen_random_uuid(), 'Suresh Kumar','OPERATION', 'MALE','1988-09-12', (SELECT id FROM contact WHERE email =
 'suresh.kumar@org.com'),
CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

INSERT INTO person ( id, full_name,role, gender, dob, contact_id, created_date, created_by, last_modified_date, last_modified_by )
VALUES ( gen_random_uuid(), 'Anita Desai','STUDENT', 'FEMALE', '1991-05-09', (SELECT id FROM contact WHERE email =
'anita
.desai@org.com'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

INSERT INTO person ( id, full_name,role, gender, dob, contact_id, created_date, created_by, last_modified_date, last_modified_by )
VALUES( gen_random_uuid(), 'Vikram','STUDENT',  'MALE', '1989-02-17', (SELECT id FROM contact WHERE email =
'vikram.singh@org.com'),CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP,
'SYSTEM' );

INSERT INTO person ( id, full_name,role, gender,dob, contact_id, created_date, created_by, last_modified_date,
last_modified_by )
VALUES ( gen_random_uuid(), 'Pooja Malhotra','STUDENT',  'FEMALE', '1995-12-08', (SELECT id FROM contact WHERE email =
'pooja.malhotra@org.com'),
CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

INSERT INTO person ( id, full_name,role, gender, dob, contact_id, created_date, created_by, last_modified_date, last_modified_by )
VALUES
 (gen_random_uuid(), 'Arjun Rao','STUDENT',  'MALE', '1992-06-25', (SELECT id FROM contact WHERE email = 'arjun
 .rao@org.com'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );

INSERT INTO person ( id, full_name,role, gender, dob, contact_id, created_date, created_by, last_modified_date, last_modified_by )
VALUES
 (gen_random_uuid(), 'Kavita Joshi', 'STUDENT', 'FEMALE', '1990-10-03', (SELECT id FROM contact WHERE email = 'kavita
 .joshi@org.com'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM' );


        
        


