-- Write the query to create the 4 tables below.

CREATE TABLE client (
    id INT(11) AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email varchar(255) NOT NULL,
    CONSTRAINT full_name UNIQUE (first_name, last_name)
);

CREATE TABLE employee (
    id INT(11) AUTO_INCREMENT,
    first_name varchar(255) NOT NULL,
    last_name varchar(255) NOT NULL,
    start_date DATE NOT NULL,
    email varchar(255) NOT NULL,
    PRIMARY KEY(id),
    CONSTRAINT full_name UNIQUE(first_name, last_name)
);

CREATE TABLE project (
    id INT(11) AUTO_INCREMENT,
    title varchar(255) NOT NULL,
    comments TEXT,
    cid INT(11),
    PRIMARY KEY (id),
    UNIQUE(title),
    FOREIGN KEY(cid) REFERENCES client(id)
);

CREATE TABLE works_on (
    pid INT(11) NOT NULL,
    eid INT(11) NOT NULL,
    due_date DATE NOT NULL,
    PRIMARY KEY (eid, pid),
    FOREIGN KEY(pid) REFERENCES project(id),
    FOREIGN KEY(eid) REFERENCES employee(id)
);