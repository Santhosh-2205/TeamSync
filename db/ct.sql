-- COURSES (with team size limit)
INSERT INTO course (course_id, course_name, team_size) VALUES
(1, 'Course Alpha', 1),
(2, 'Course Beta', 2),
(3, 'Course Gamma', 3),
(4, 'Course Delta', 4),
(5, 'Course Epsilon', 5);

-- TEAMS (actual team sizes)
INSERT INTO team (team_id, course_id, team_name, team_size) VALUES
-- Course 1 (team size limit 1)
(1, 1, 'Alpha Team A', 1),
(2, 1, 'Alpha Team B', 1),
(3, 1, 'Alpha Team C', 1),

-- Course 2 (limit 2)
(4, 2, 'Beta Team A', 2),
(5, 2, 'Beta Team B', 1),
(6, 2, 'Beta Team C', 2),

-- Course 3 (limit 3)
(7, 3, 'Gamma Team A', 3),
(8, 3, 'Gamma Team B', 2),
(9, 3, 'Gamma Team C', 3),

-- Course 4 (limit 4)
(10, 4, 'Delta Team A', 4),
(11, 4, 'Delta Team B', 3),
(12, 4, 'Delta Team C', 2),

-- Course 5 (limit 5)
(13, 5, 'Epsilon Team A', 5),
(14, 5, 'Epsilon Team B', 4),
(15, 5, 'Epsilon Team C', 3);


-- COURSE-STUDENT relationships (students can take multiple courses)
INSERT INTO course_student VALUES
-- Students 1–10 take course 1
(1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10),
-- Students 3–12 take course 2
(2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10), (2, 11), (2, 12),
-- Students 6–15 take course 3
(3, 6), (3, 7), (3, 8), (3, 9), (3, 10), (3, 11), (3, 12), (3, 13), (3, 14), (3, 15),
-- Students 10–21 take course 4
(4, 10), (4, 11), (4, 12), (4, 13), (4, 14), (4, 15), (4, 16), (4, 17), (4, 18), (4, 19), (4, 20), (4, 21),
-- Students 15–30 take course 5
(5, 15), (5, 16), (5, 17), (5, 18), (5, 19), (5, 20), (5, 21), (5, 22), (5, 23), (5, 24),
(5, 25), (5, 26), (5, 27), (5, 28), (5, 29), (5, 30);

-- TEAM-STUDENT relationships (at most one team per course)
-- Course 1
INSERT INTO team_student VALUES
(1, 1), (2, 2), (3, 3);

-- Course 2
INSERT INTO team_student VALUES
(4, 3), (4, 4),
(5, 5),
(6, 6), (6, 7);

-- Course 3
INSERT INTO team_student VALUES
(7, 6), (7, 7), (7, 8),
(8, 9), (8, 10),
(9, 11), (9, 12), (9, 13);

-- Course 4
INSERT INTO team_student VALUES
(10, 10), (10, 11), (10, 12), (10, 13),
(11, 14), (11, 15), (11, 16),
(12, 17), (12, 18);

-- Course 5
INSERT INTO team_student VALUES
(13, 15), (13, 16), (13, 17), (13, 18), (13, 19),
(14, 20), (14, 21), (14, 22), (14, 23),
(15, 24), (15, 25), (15, 26);