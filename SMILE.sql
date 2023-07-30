CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL
);
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    user_id INT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES Users(user_id)
);
CREATE TABLE ContactDetails (
    student_id INT PRIMARY KEY,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);

CREATE TABLE Hostels (
    hostel_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    capacity INT NOT NULL,
    available_rooms INT NOT NULL
);
CREATE TABLE Fees (
    fee_id INT PRIMARY KEY,
    student_id INT,
    amount DECIMAL(10, 2) NOT NULL,
    status VARCHAR(10) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    credits INT NOT NULL
);
CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    grade VARCHAR(2) NOT NULL,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);
CREATE TABLE Semesters (
    semester_id INT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL
);
CREATE TABLE Faculty (
    faculty_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    phone VARCHAR(20) NOT NULL,
    department VARCHAR(50) NOT NULL
);




INSERT INTO Users (user_id, username, password)
VALUES
(1, 'Amitabh', 'Bachchan'),
(2, 'Shah Rukh', 'Khan'),
(3, 'Salman', 'Khan'),
(4, 'Aamir', 'Khan'),
(5, 'Deepika', 'Padukone'),
(6, 'Priyanka', 'Chopra'),
(7, 'Kareena', 'Kapoor'),
(8, 'Hrithik', 'Roshan'),
(9, 'Ranveer', 'Singh'),
(10, 'Alia', 'Bhatt');


INSERT INTO Students (student_id, user_id, first_name, last_name, address)
VALUES
(1, 1, 'Amit', 'Gupta', '123 Main Street, New Delhi'),
(2, 2, 'Anjali', 'Singh', '456 Elm Street, Mumbai'),
(3, 3, 'Arjun', 'Yadav', '789 Maple Street, Chennai'),
(4, 4, 'Bhavya', 'Kumari', '1010 Oak Street, Kolkata'),
(5, 5, 'Charu', 'Tiwari', '1111 Pine Street, Bangalore'),
(6, 6, 'Deepak', 'Sharma', '1212 Birch Street, Hyderabad'),
(7, 7, 'Divya', 'Patel', '1313 Cedar Street, Pune'),
(8, 8, 'Gaurav', 'Agarwal', '1414 Dogwood Street, Ahmedabad'),
(9, 9, 'Harsh', 'Verma', '1515 Ash Street, Surat'),
(10, 10, 'Himanshu', 'Yadav', '1616 Elm Street, Jaipur');



INSERT INTO ContactDetails (student_id, email, phone)
VALUES
(1, 'amit.gupta@gmail.com', '9876543210'),
(2, 'anjali.singh@gmail.com', '1234567890'),
(3, 'arjun.yadav@gmail.com', '0987654321'),
(4, 'bhavya.kumari@gmail.com', '1234567890'),
(5, 'charu.tiwari@gmail.com', '9876543210'),
(6, 'deepak.sharma@gmail.com', '1234567890'),
(7, 'divya.patel@gmail.com', '0987654321'),
(8, 'gaurav.agarwal@gmail.com', '1234567890'),
(9, 'harsh.verma@gmail.com', '0987654321'),
(10, 'himanshu.yadav@gmail.com', '1234567890');



INSERT INTO Hostels (hostel_id, name, capacity, available_rooms)
VALUES
(1, 'Hostel 1', 100, 100),
(2, 'Hostel 2', 200, 100),
(3, 'Hostel 3', 300, 100),
(4, 'Hostel 4', 400, 100),
(5, 'Hostel 5', 500, 100),
(6, 'Hostel 6', 600, 100),
(7, 'Hostel 7', 700, 100),
(8, 'Hostel 8', 800, 100),
(9, 'Hostel 9', 900, 100),
(10, 'Hostel 10', 1000, 100);


INSERT INTO Fees (fee_id, student_id, amount, status)
VALUES
(1, 1, 1000.00, 'Pending'),
(2, 2, 2000.00, 'Paid'),
(3, 3, 3000.00, 'Pending'),
(4, 4, 4000.00, 'Paid'),
(5, 5, 5000.00, 'Pending'),
(6, 6, 6000.00, 'Paid'),
(7, 7, 7000.00, 'Pending'),
(8, 8, 8000.00, 'Paid'),
(9, 9, 9000.00, 'Pending'),
(10, 10, 10000.00, 'Paid');


INSERT INTO Courses (course_id, name, department, credits)
VALUES
(1, 'Hindi', 'Hindi', 3),
(2, 'English', 'English', 3),
(3, 'Mathematics', 'Mathematics', 3),
(4, 'Science', 'Science', 3),
(5, 'History', 'History', 3),
(6, 'Geography', 'Geography', 3),
(7, 'Political Science', 'Political Science', 3),
(8, 'Economics', 'Economics', 3),
(9, 'Commerce', 'Commerce', 3),
(10, 'Computer Science', 'Computer Science', 3) ;

INSERT INTO Grades (grade_id, student_id, course_id, grade)
VALUES
(1, 1, 1, 'A'),
(2, 2, 2, 'A'),
(3, 3, 3, 'A'),
(4, 4, 4, 'A'),
(5, 5, 5, 'A'),
(6, 6, 6, 'A'),
(7, 7, 7, 'A'),
(8, 8, 8, 'A'),
(9, 9, 9, 'A'),
(10, 10, 10, 'A');

INSERT INTO Semesters (semester_id, name, start_date, end_date)
VALUES
(1, 'Semester 1', '2023-06-01', '2023-09-30'),
(2, 'Semester 2', '2023-10-01', '2024-03-31'),
(3, 'Semester 3', '2024-04-01', '2024-08-31'),
(4, 'Semester 4', '2024-09-01', '2025-03-31'),
(5, 'Semester 5', '2025-04-01', '2025-08-31'),
(6, 'Semester 6', '2025-09-01', '2026-03-31'),
(7, 'Semester 7', '2026-04-01', '2026-08-31'),
(8, 'Semester 8', '2026-09-01', '2027-03-31'),
(9, 'Semester 9', '2027-04-01', '2027-08-31'),
(10, 'Semester 10', '2027-09-01', '2028-03-31');

INSERT INTO Faculty (faculty_id, first_name, last_name, email, phone, department)
VALUES
(1, 'Rahul', 'Gandhi', 'rahul.gandhi@gmail.com', '9876543210', 'Computer Science'),
(2, 'Priya', 'Kumari', 'priya.kumari@gmail.com', '1234567890', 'Mathematics'),
(3, 'Rohit', 'Sharma', 'rohit.sharma@gmail.com', '0987654321', 'Physics'),
(4, 'Aditi', 'Singh', 'aditi.singh@gmail.com', '1234567890', 'Chemistry'),
(5, 'Rishabh', 'Arora', 'rishabh.arora@gmail.com', '9876543210', 'Biology'),
(6, 'Tanmay', 'Gupta', 'tanmay.gupta@gmail.com', '1234567890', 'Economics'),
(7, 'Sahil', 'Mehta', 'sahil.mehta@gmail.com', '0987654321', 'English'),
(8, 'Neha', 'Yadav', 'neha.yadav@gmail.com', '1234567890', 'History'),
(9, 'Kunal', 'Patel', 'kunal.patel@gmail.com', '9876543210', 'Political Science'),
(10, 'Avni', 'Tiwari', 'avni.tiwari@gmail.com', '1234567890', 'Sociology');