SELECT f.first_name,
     f.last_name,
     t.title,
     t.due_date,
     tc.task_type,
     tc.task_subtype
FROM freelancer f
LEFT JOIN task t
ON f.id = t.freelancer_id
LEFT JOIN task_category tc
ON t.task_category_id = tc.id;