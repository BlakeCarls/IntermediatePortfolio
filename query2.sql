-- Write your queries to insert data here
INSERT INTO client (first_name, last_name, email)
VALUES
('Sara', 'Smith', 'smiths@hello.com'),
('Miguel', 'Cabrera', 'mc@hello.com'),
('Bo', 'Chan''g', 'bochang@hello.com');

INSERT INTO employee (first_name, last_name, start_date, email)
VALUES
('Ananya', 'Jaiswal', '2008-04-10', 'ajaiswal@hello.com'),
('Michael', 'Fern', '2015-07-19', 'michaelf@hello.com'),
('Abdul', 'Rehman', '2018-02-27', 'rehman@hello.com');

INSERT INTO project(cid, title, comments)
VALUES
(1, 'Diamond', 'Should be done by Jan 2019'),
(3, 'Chan''g', 'Ongoing maintenance'),
(2, 'The Robinson Project', NULL);

INSERT INTO works_on(eid, pid, due_date)
VALUES
(1,2,'2020-11-19'),
(2,3, '2020-12-05'),
(3,1, '2021-1-1');