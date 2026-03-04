-- Общая статистика 
-- Сколько студентов в датасете
SELECT COUNT(*) AS total_students
FROM students;

-- Средний возраст студентов
SELECT AVG(age) AS avg_age
FROM students;

-- Среднее количество учебных часов
SELECT AVG(study_hours) AS avg_study,
       AVG(self_study_hours) AS avg_self_study,
       AVG(online_classes_hours) AS avg_online
FROM habits;

-- Средний уровень выгорания и концентрации
SELECT AVG(burnout_level) AS avg_burnout,
       AVG(focus_index) AS avg_focus
FROM health;

-- Средний балл по экзаменам и продуктивности
SELECT AVG(exam_score) AS avg_exam_score,
       AVG(productivity_score) AS avg_productivity
FROM performance;