data remove storage aspectlib:cache temp.id
execute store result storage aspectlib:cache temp.id int 1 run scoreboard players get @s aspects.aspect.rotten.summon_owner_id

function aspects:aspect/rotten/advancement/undead_horde/reward with storage aspectlib:cache temp
