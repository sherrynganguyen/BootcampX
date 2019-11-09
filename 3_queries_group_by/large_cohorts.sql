SELECT cohorts.name, count(students.id) as student_count
FROM cohorts 
INNER JOIN students ON cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.id) >= 18
ORDER BY count(students.id) ASC;
