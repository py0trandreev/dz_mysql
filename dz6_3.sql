SELECT sum(count) FROM (
SELECT 
id, 
user1_id as sender,
user2_id as reciever,
(SELECT birthday FROM vk.profiles where user_id=reciever) as birthday_of_reciever,
COUNT(*) as count

FROM vk.user_likes group by reciever order by birthday_of_reciever DESC limit 10) AS yangest_messages;