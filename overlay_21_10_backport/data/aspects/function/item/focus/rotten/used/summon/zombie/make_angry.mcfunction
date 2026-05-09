# execute store result storage aspectlib:cache temp.anger_end_time int 1 run random value 400..800 aspects:aspect/rotten/summon/anger_end_time
data modify entity @s AngryAt set from storage aspectlib:cache temp.target_UUID
data modify entity @s AngerTime set value 2400
