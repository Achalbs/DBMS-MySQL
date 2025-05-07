CREATE DATABASE School1;
USE School1;


-- _______________________________________________________________1. Create Teachers table and insert Values into it____________________________________________________________________________


CREATE TABLE teachers1 (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    TName VARCHAR(100),
    TSubject VARCHAR(50),
    Experience INT,
    Salary DECIMAL(10, 2)
);


INSERT INTO Teachers1 (TName, TSubject, Experience, Salary)
VALUES
('Alice Cullen', 'Mathematics', 5, 50000),
('Bob Miller', 'Science', 8, 60000),
('Charlie Brown', 'English', 12, 70000),
('Daniel Johnson', 'History', 4, 45000),
('Emma Davis', 'Physics', 15, 80000),
('Federik Wilson', 'Chemistry', 3, 40000),
('George Martinez', 'Biology', 10, 55000),
('Harry Anderson', 'Geography', 7, 48000),
('Indiana Jones', 'Economics', 12, 35000),
('James Potter', 'Commerce', 7, 25000);



-- __________________________________________________________________2. Create a BEFORE INSERT Trigger to Prevent Negative Salary__________________________________________________________________


DELIMITER $$

CREATE TRIGGER before_insert_teacher
BEFORE INSERT ON teachers1
FOR EACH ROW
BEGIN
    IF NEW.salary < 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Salary cannot be negative';
    END IF;
END$$

DELIMITER ;

CALL Add_Teachers1(11,"Achal","Mathematics",12,-300);             -- Add_Teacher Stored Procedure is created separately to add new rows to the teacher table



-- _______________________________________________________________3. Create the teacher_log Table and an AFTER INSERT Trigger_____________________________________________________________________

CREATE TABLE Teacher_Log (
    Log_Id INT PRIMARY KEY AUTO_INCREMENT,
    Teacher_Id INT,
    T_action VARCHAR(50),
    T_Timestamp DATETIME
);



DELIMITER $$

CREATE TRIGGER after_insert_teacher
AFTER INSERT ON Teachers
FOR EACH ROW
BEGIN
    INSERT INTO Teacher_Log (Teacher_Id, T_Action, T_Timestamp)
    VALUES (NEW.id, 'INSERT', NOW());
END$$

DELIMITER ;

SELECT * FROM Teacher_Log;

CALL Add_Teacher(11,"Anusree","Mathematics",12,30000);



-- ________________________________________________4. Create a BEFORE DELETE Trigger to Prevent Deleting Teachers with More Than 10 Years of Experience_____________________________________________

DELIMITER $$

CREATE TRIGGER before_delete_teacher
BEFORE DELETE ON Teachers
FOR EACH ROW
BEGIN
    IF OLD.Experience > 10 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Cannot delete teachers with more than 10 years of experience';
    END IF;
END$$

DELIMITER ;

DELETE FROM Teachers WHERE Id = 11;


-- __________________________________________________________________5. Create an AFTER DELETE Trigger to Log Deletions____________________________________________________________________________


DELIMITER $$

CREATE TRIGGER after_delete_teacher
AFTER DELETE ON Teachers
FOR EACH ROW
BEGIN
    INSERT INTO Teacher_Log (Teacher_Id, T_Action, T_Timestamp)
    VALUES (OLD.Id, 'DELETE', NOW());
END$$

DELIMITER ;

DELETE FROM Teachers WHERE Id = 10;

SELECT * FROM Teacher_Log;