SELECT students.name as student, AVG(duration) as average_assignment_duration
FROM assignment_submissions
JOIN students on student_id = students.id
WHERE end_date IS NULL
GROUP BY students.name
ORDER BY AVG(duration) DESC;
