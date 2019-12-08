INSERT INTO OWNER (tax_id, fname, lname, address, phone_number, email, `password`, property_type, user_privileges) VALUES('098765432', 'Dimitris', 'Maleas', 'Sokaki1', '6574847586','dimitris@gmail.com', '123457', 'APARTMENT_BUILDING', 'ADMIN');
INSERT INTO OWNER (tax_id, fname, lname, address, phone_number, email, `password`, property_type, user_privileges) VALUES('123456789', 'Kwstas', 'Brellas', 'Sok', '4758693048','kwstas@gmail.com', '123456', 'VILLA', 'ADMIN');
INSERT INTO OWNER (tax_id, fname, lname, address, phone_number, email, `password`, property_type, user_privileges) VALUES('584739201', 'Dimitra', 'Tsolakou', 'Sokaki2', '2049506539','dimitra@gmail.com', '123458', 'VILLA', 'ADMIN');
INSERT INTO OWNER (tax_id, fname, lname, address, phone_number, email, `password`, property_type, user_privileges) VALUES('506937485', 'Dionisis', 'Theo', 'Sokaki3', '6384956301','nionios@gmail.com', '123459', 'COTTAGE', 'USER');
INSERT INTO OWNER (tax_id, fname, lname, address, phone_number, email, `password`, property_type, user_privileges) VALUES('557748395', 'Xristos', 'Peristeris', 'Sokaki', '4059638265','xristos@gmail.com', '123450', 'DETACHED_HOUSE', 'USER');


INSERT INTO REPAIR (`date`, repair_status, repair_type, cost, address, owner_id, `description`) VALUES('2019-01-01', 'PENDING', 'PAINTING', 150.50, 'Karaiskaki', 1,'Lorem Ipsum');
INSERT INTO REPAIR (`date`, repair_status, repair_type, cost, address, owner_id, `description`) VALUES('2019-02-02', 'IN_PROGRESS', 'INSULATION', 250.10, 'Toumpa', 2,'Lorem Ipsum');
INSERT INTO REPAIR (`date`, repair_status, repair_type, cost, address, owner_id, `description`) VALUES('2019-03-03', 'FINISHED', 'PLUMBING_WORKS', 350.30, 'Enwsis', 3,'Lorem Ipsum');
INSERT INTO REPAIR (`date`, repair_status, repair_type, cost, address, owner_id, `description`) VALUES('2019-04-04', 'FINISHED', 'ELECTRICAL_WORKS', 45.50, 'Athinoramas', 4,'Lorem Ipsum');
INSERT INTO REPAIR (`date`, repair_status, repair_type, cost, address, owner_id, `description`) VALUES('2019-05-05', 'IN_PROGRESS', 'PAINTING', 55.70, 'Panepistimiou', 5,'Lorem Ipsum');

