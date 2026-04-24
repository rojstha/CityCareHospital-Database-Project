-- =========================================
-- CityCare Hospital EMR Database
-- tables.sql
-- =========================================

CREATE DATABASE IF NOT EXISTS CityCareHospital;
USE CityCareHospital;

-- =========================
-- PATIENT TABLE
-- =========================
CREATE TABLE Patient (
    Patient_ID INT AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    DOB DATE,
    Gender VARCHAR(10),
    Phone VARCHAR(20),
    Address VARCHAR(100),
    PRIMARY KEY (Patient_ID)
);

-- =========================
-- DOCTOR TABLE
-- =========================
CREATE TABLE Doctor (
    Doctor_ID INT AUTO_INCREMENT,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Specialty VARCHAR(100),
    Phone VARCHAR(20),
    Email VARCHAR(100),
    PRIMARY KEY (Doctor_ID)
);

-- =========================
-- APPOINTMENT TABLE
-- =========================
CREATE TABLE Appointment (
    Appointment_ID INT AUTO_INCREMENT,
    Patient_ID INT,
    Doctor_ID INT,
    Appointment_Date DATETIME,
    Reason VARCHAR(255),
    Status VARCHAR(50),
    PRIMARY KEY (Appointment_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- =========================
-- MEDICAL RECORD TABLE
-- =========================
CREATE TABLE Medical_Record (
    Record_ID INT AUTO_INCREMENT,
    Patient_ID INT,
    Doctor_ID INT,
    Diagnosis TEXT,
    Treatment TEXT,
    Prescription TEXT,
    Visit_Date DATE,
    PRIMARY KEY (Record_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (Doctor_ID) REFERENCES Doctor(Doctor_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- =========================
-- LAB TEST TABLE
-- =========================
CREATE TABLE Lab_Test (
    Test_ID INT AUTO_INCREMENT,
    Patient_ID INT,
    Test_Type VARCHAR(100),
    Test_Date DATE,
    Results TEXT,
    PRIMARY KEY (Test_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

-- =========================
-- BILLING TABLE
-- =========================
CREATE TABLE Billing (
    Bill_ID INT AUTO_INCREMENT,
    Patient_ID INT,
    Amount DECIMAL(10,2),
    Insurance_Provider VARCHAR(100),
    Payment_Status VARCHAR(50),
    Billing_Date DATE,
    PRIMARY KEY (Bill_ID),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);