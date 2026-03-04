-- Разделяем на логичные таблицы
-- Таблица студентов
CREATE VIEW students AS
SELECT DISTINCT student_id, age, gender, academic_level
FROM full_data;

-- Таблица привычек
CREATE VIEW habits AS
SELECT student_id, study_hours, self_study_hours, online_classes_hours,
       social_media_hours, gaming_hours, sleep_hours, screen_time_hours,
       exercise_minutes, caffeine_intake_mg, part_time_job, upcoming_deadline,
       internet_quality
FROM full_data;

-- Таблица здоровья
CREATE VIEW health AS
SELECT student_id, mental_health_score, focus_index, burnout_level
FROM full_data;

-- Таблица успеваемости
CREATE VIEW performance AS
SELECT student_id, productivity_score, exam_score
FROM full_data;

-- Проверка таблиц (первые 5 строк)
SELECT *
FROM students
LIMIT 5;

SELECT *
FROM habits
LIMIT 5;

SELECT *
FROM health
LIMIT 5;

SELECT *
FROM performance
LIMIT 5;