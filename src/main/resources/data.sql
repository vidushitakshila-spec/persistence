INSERT INTO address (firstline, secondline, state, zip) VALUES ('123 Main St', 'Apt 4B', 'CA', '94105');
INSERT INTO address (firstline, secondline, state, zip) VALUES ('456 Market Street', NULL, 'NY', '10001');
INSERT INTO address (firstline, secondline, state, zip) VALUES ('789 Elm Road', 'Suite 210', 'TX', '73301');
INSERT INTO address (firstline, secondline, state, zip) VALUES ('321 Oak Avenue', NULL, 'FL', '33101');
INSERT INTO address (firstline, secondline, state, zip) VALUES ('654 Pine Lane', 'Floor 3', 'IL', '60601');
INSERT INTO address (firstline, secondline, state, zip) VALUES ('987 Cedar Blvd', NULL, 'WA', '98101');
INSERT INTO address (firstline, secondline, state, zip) VALUES ('159 Maple Drive', 'Unit 12', 'NJ', '07097');
INSERT INTO address (firstline, secondline, state, zip) VALUES ('753 Birch Street', NULL, 'AZ', '85001');
INSERT INTO address (firstline, secondline, state, zip) VALUES ('852 Spruce Court', 'Apt 9C', 'MA', '02108');
INSERT INTO address (firstline, secondline, state, zip) VALUES ('951 Walnut Way', NULL, 'CO', '80201');

INSERT INTO contact (id, phone, email, address_id, created_date, created_by, last_modified_date, last_modified_by)
  VALUES ( Gen_random_uuid(), '+1-415-555-1001', 'john.doe@example.com', (SELECT id FROM address WHERE firstline = '123 Main St' AND zip = '94105'), CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');
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

INSERT INTO department (id, name, contact_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (Gen_random_uuid(), 'FACULTY', (SELECT id FROM contact WHERE email ='kevin.anderson@example.com'),CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO department (id, name, contact_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (Gen_random_uuid(), 'ADMIN', (SELECT id FROM contact WHERE email ='laura.moore@example.com'),
CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');

INSERT INTO department (id, name, contact_id,created_date, created_by, last_modified_date, last_modified_by)
VALUES (Gen_random_uuid(), 'OPERATIONS', (SELECT id FROM contact WHERE email ='amy.clark@example.com'),
CURRENT_TIMESTAMP, 'SYSTEM', CURRENT_TIMESTAMP, 'SYSTEM');


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
        
        


