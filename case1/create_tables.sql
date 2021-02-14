CREATE TABLE department(id_department SERIAL PRIMARY KEY,
department_name VARCHAR(30) NOT NULL);

CREATE TABLE worker(id_worker SERIAL PRIMARY KEY,
worker_rut VARCHAR(20) NOT NULL,
worker_name VARCHAR(30) NOT NULL,
worker_address VARCHAR(50) NOT NULL,
id_department INT NOT NULL REFERENCES
department(id_department));

CREATE TABLE setlement(id_setlement SERIAL PRIMARY KEY,
id_worker INT NOT NULL REFERENCES
worker(id_worker), drive VARCHAR NOT NULL);