SELECT 
id,
firstname,
(SELECT 
count(*) as count
FROM vk.messages WHERE from_user_id=vk.users.id group by from_user_id order by count) as messages_count
FROM vk.users ORDER BY messages_count limit 10;