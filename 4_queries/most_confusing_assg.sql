-- select assignments.id, assignments.day, assignments.chapter, assignments.name, count(assignments) as total_assistances
-- from assignments
-- group by assignments.id
-- order by total_assistances DESC;

SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;