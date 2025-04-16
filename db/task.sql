INSERT INTO tasks (id, team_id, name, description, status, assigned_to_id) VALUES
-- Team 1–3
(1, 1, 'Setup', 'Initial setup', true, 1),
(2, 2, 'Docs', 'Write docs', false, 2),
(3, 3, 'Intro Task', 'Basic work', false, 3),

-- Team 4–6
(4, 4, 'Design', 'Design diagram', true, 3),
(5, 4, 'Testing', 'Add tests', false, 4),
(6, 5, 'Refactor', 'Clean code', false, 5),
(7, 6, 'DB Setup', 'Init schema', true, 6),
(8, 6, 'Devops', 'Setup CI', false, 7),

-- Team 7–9
(9, 7, 'ML Task', 'Train model', false, 6),
(10, 7, 'Data Prep', 'Clean dataset', false, 7),
(11, 7, 'Model Eval', 'Accuracy check', true, 8),
(12, 8, 'UI Mock', 'Draw mocks', false, 9),
(13, 9, 'Embed Tuning', 'Tune layers', false, 11),

-- Team 10–12
(14, 10, 'Research', 'Literature survey', true, 10),
(15, 11, 'Writeup', 'Draft writeup', false, 14),
(16, 11, 'Meeting', 'Team sync', false, 15),
(17, 12, 'Experiment', 'Run configs', true, 17),

-- Team 13–15
(18, 13, 'Final Report', 'Team report', false, 15),
(19, 13, 'Poster', 'Create poster', false, 16),
(20, 14, 'Dev Work', 'APIs', true, 21),
(21, 14, 'Feedback', 'Incorporate feedback', false, 22),
(22, 15, 'Video', 'Demo video', false, 24),
(23, 15, 'Upload', 'Submit to portal', true, 25);
