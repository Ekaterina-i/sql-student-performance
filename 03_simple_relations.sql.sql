-- Анализ взаимосвязей
-- Связь учебных часов с продуктивностью
SELECT h.study_hours, AVG(p.productivity_score) AS avg_productivity
FROM habits h
JOIN performance p ON h.student_id = p.student_id
GROUP BY h.study_hours
ORDER BY h.study_hours;

-- Связь выгорания и баллов по экзаменам
SELECT he.burnout_level, AVG(pe.exam_score) AS avg_exam
FROM health he
JOIN performance pe ON he.student_id = pe.student_id
GROUP BY he.burnout_level
ORDER BY he.burnout_level;

-- Топ-10 студентов по экзаменам
SELECT s.student_id, s.age, s.gender, p.exam_score, p.productivity_score
FROM students s
JOIN performance p ON s.student_id = p.student_id
ORDER BY p.exam_score DESC
LIMIT 10;

-- Средние показатели по академическому уровню
SELECT s.academic_level, AVG(p.exam_score) AS avg_exam,
       AVG(h.study_hours) AS avg_study_hours
FROM students s
JOIN performance p ON s.student_id = p.student_id
JOIN habits h ON s.student_id = h.student_id
GROUP BY s.academic_level
ORDER BY s.academic_level;

-- Влияние сна на продуктивность
SELECT h.sleep_hours, AVG(p.productivity_score) AS avg_productivity
FROM habits h
JOIN performance p ON h.student_id = p.student_id
GROUP BY h.sleep_hours
ORDER BY h.sleep_hours;

-- Влияние времени в социальных сетях на продуктивность
SELECT h.social_media_hours, AVG(p.productivity_score) AS avg_productivity
FROM habits h
JOIN performance p ON h.student_id = p.student_id
GROUP BY h.social_media_hours
ORDER BY h.social_media_hours;