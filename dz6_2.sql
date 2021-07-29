SELECT 
id, 
(SELECT firstname FROM vk.users WHERE id=vk.messages.from_user_id) as from_user,
to_user_id,
body,
created_at,
COUNT(*) as count 
FROM vk.messages where to_user_id=209 GROUP BY from_user_id ORDER BY count DESC LIMIT 1;