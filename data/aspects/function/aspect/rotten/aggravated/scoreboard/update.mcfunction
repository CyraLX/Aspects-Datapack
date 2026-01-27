# Set aggravated to false if timer is 0 and return
execute if score @s aspects.aspect.rotten.aggravated_timer matches ..0 run return run scoreboard players set @s aspects.aspect.rotten.is_aggravated 0
# Decrease score
scoreboard players remove @s aspects.aspect.rotten.aggravated_timer 1