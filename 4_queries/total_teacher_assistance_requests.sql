-- SELECT teachers.name as name, count(assistance_requests) as total_assistances
-- FROM teachers 
-- JOIN assistance_requests ON teacher_id = teachers.id 
-- WHERE teachers.name = 'Waylon Boehm';

SELECT count(assistance_requests.*) as 
total_assistances, teachers.name
FROM assistance_requests 
JOIN teachers ON teachers.id = teacher_id 
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;