CREATE TABLE course(id_course SERIAL PRIMARY KEY,
course_name VARCHAR(30) NOT NULL);

CREATE TABLE student(id_student SERIAL PRIMARY KEY,
student_rut VARCHAR(25) NOT NULL,
student_name VARCHAR(40) NOT NULL,
id_course INT NOT NULL REFERENCES
course (id_course));

CREATE TABLE department(id_department SERIAL PRIMARY KEY,
department_name VARCHAR(30) NOT NULL);

CREATE TABLE professor(id_professor SERIAL PRIMARY KEY,
 professor_name VARCHAR(30) NOT NULL,
 id_department INT NOT NULL REFERENCES
 department (id_department));

CREATE TABLE test(id_test SERIAL PRIMARY KEY,
score INT NOT NULL,
id_professor INT NOT NULL REFERENCES
professor (id_professor),
id_student INT NOT NULL REFERENCES
student (id_student));