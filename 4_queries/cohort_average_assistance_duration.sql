SELECT sum(completed_at - started_at)/count(DISTINCT cohorts.id) as total_duration
FROM assistance_requests
JOIN students ON student_id = students.id
JOIN cohorts ON cohorts.id = cohort_id

