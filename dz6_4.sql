SELECT gender, MAX(g_count) FROM(SELECT 
id,
user1_id as like_sender,
(SELECT gender FROM vk.profiles where user_id=like_sender) as gender,
user2_id as like_reciever,
count(*) as g_count 

 FROM vk.user_likes group by gender) as max_gen_likes;