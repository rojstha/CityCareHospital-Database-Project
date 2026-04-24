-- =========================================
-- CityCare Hospital EMR Sample Data
-- data.sql
-- =========================================

USE CityCareHospital;

-- =========================
-- PATIENT (10 rows)
-- =========================
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Phone, Address) VALUES
('John', 'Doe', '1995-04-12', 'Male', '1111111111', '123 Main St'),
('Jane', 'Smith', '1990-06-22', 'Female', '1111111112', '456 Oak St'),
('Michael', 'Brown', '1988-01-15', 'Male', '1111111113', '789 Pine St'),
('Emily', 'Davis', '2000-09-10', 'Female', '1111111114', '321 Maple St'),
('Chris', 'Wilson', '1993-12-05', 'Male', '1111111115', '654 Cedar St'),
('Sarah', 'Johnson', '1997-07-19', 'Female', '1111111116', '987 Elm St'),
('David', 'Lee', '1985-03-30', 'Male', '1111111117', '159 Birch St'),
('Laura', 'Martinez', '1992-11-11', 'Female', '1111111118', '753 Walnut St'),
('Kevin', 'Anderson', '1999-08-25', 'Male', '1111111119', '852 Cherry St'),
('Olivia', 'Taylor', '1996-02-14', 'Female', '1111111120', '951 Ash St');

-- =========================
-- DOCTOR (10 rows)
-- =========================
INSERT INTO Doctor (First_Name, Last_Name, Specialty, Phone, Email) VALUES
('James', 'Adams', 'Cardiology', '2222222211', 'jadams@hospital.com'),
('Robert', 'Clark', 'Neurology', '2222222212', 'rclark@hospital.com'),
('Linda', 'White', 'Pediatrics', '2222222213', 'lwhite@hospital.com'),
('William', 'Harris', 'Orthopedics', '2222222214', 'wharris@hospital.com'),
('Patricia', 'Martin', 'Dermatology', '2222222215', 'pmartin@hospital.com'),
('Richard', 'Thompson', 'General Medicine', '2222222216', 'rthompson@hospital.com'),
('Barbara', 'Garcia', 'ENT', '2222222217', 'bgarcia@hospital.com'),
('Joseph', 'Martinez', 'Psychiatry', '2222222218', 'jmartinez@hospital.com'),
('Susan', 'Robinson', 'Gynecology', '2222222219', 'srobinson@hospital.com'),
('Thomas', 'Walker', 'Emergency', '2222222220', 'twalker@hospital.com');

-- =========================
-- APPOINTMENT (10 rows)
-- =========================
INSERT INTO Appointment (Patient_ID, Doctor_ID, Appointment_Date, Reason, Status) VALUES
(1, 1, '2026-04-01 10:00:00', 'Chest pain', 'Completed'),
(2, 2, '2026-04-02 11:00:00', 'Headache', 'Completed'),
(3, 3, '2026-04-03 09:00:00', 'Child checkup', 'Scheduled'),
(4, 4, '2026-04-04 14:00:00', 'Knee pain', 'Scheduled'),
(5, 5, '2026-04-05 13:00:00', 'Skin rash', 'Completed'),
(6, 6, '2026-04-06 15:00:00', 'Fever', 'Completed'),
(7, 7, '2026-04-07 10:30:00', 'Ear infection', 'Scheduled'),
(8, 8, '2026-04-08 12:00:00', 'Anxiety', 'Completed'),
(9, 9, '2026-04-09 09:30:00', 'Pregnancy check', 'Scheduled'),
(10, 10, '2026-04-10 16:00:00', 'Emergency injury', 'Completed');

-- =========================
-- MEDICAL_RECORD (10 rows)
-- =========================
INSERT INTO Medical_Record (Patient_ID, Doctor_ID, Diagnosis, Treatment, Prescription, Visit_Date) VALUES
(1, 1, 'Angina', 'Medication', 'Aspirin', '2026-04-01'),
(2, 2, 'Migraine', 'Rest + Medication', 'Ibuprofen', '2026-04-02'),
(3, 3, 'Routine Check', 'Normal', 'None', '2026-04-03'),
(4, 4, 'Knee strain', 'Physiotherapy', 'Painkillers', '2026-04-04'),
(5, 5, 'Allergy', 'Cream applied', 'Antihistamine', '2026-04-05'),
(6, 6, 'Flu', 'Rest', 'Paracetamol', '2026-04-06'),
(7, 7, 'Ear infection', 'Antibiotics', 'Amoxicillin', '2026-04-07'),
(8, 8, 'Anxiety disorder', 'Therapy', 'Anti-anxiety meds', '2026-04-08'),
(9, 9, 'Pregnancy care', 'Checkup', 'Vitamins', '2026-04-09'),
(10, 10, 'Fracture', 'Cast applied', 'Pain relief meds', '2026-04-10');

-- =========================
-- LAB_TEST (10 rows)
-- =========================
INSERT INTO Lab_Test (Patient_ID, Test_Type, Test_Date, Results) VALUES
(1, 'Blood Test', '2026-04-01', 'Normal'),
(2, 'MRI', '2026-04-02', 'No issues'),
(3, 'Blood Pressure', '2026-04-03', 'Normal'),
(4, 'X-Ray', '2026-04-04', 'Minor strain'),
(5, 'Allergy Test', '2026-04-05', 'Positive'),
(6, 'COVID Test', '2026-04-06', 'Negative'),
(7, 'Hearing Test', '2026-04-07', 'Mild infection'),
(8, 'Mental Health Assessment', '2026-04-08', 'Anxiety detected'),
(9, 'Ultrasound', '2026-04-09', 'Normal'),
(10, 'Bone Scan', '2026-04-10', 'Fracture confirmed');

-- =========================
-- BILLING (10 rows)
-- =========================
INSERT INTO Billing (Patient_ID, Amount, Insurance_Provider, Payment_Status, Billing_Date) VALUES
(1, 250.00, 'Blue Cross', 'Paid', '2026-04-01'),
(2, 180.00, 'Aetna', 'Paid', '2026-04-02'),
(3, 100.00, 'None', 'Pending', '2026-04-03'),
(4, 300.00, 'Cigna', 'Paid', '2026-04-04'),
(5, 150.00, 'Blue Cross', 'Paid', '2026-04-05'),
(6, 90.00, 'Medicare', 'Paid', '2026-04-06'),
(7, 200.00, 'Aetna', 'Pending', '2026-04-07'),
(8, 220.00, 'Cigna', 'Paid', '2026-04-08'),
(9, 500.00, 'Blue Cross', 'Pending', '2026-04-09'),
(10, 1000.00, 'Medicare', 'Paid', '2026-04-10');