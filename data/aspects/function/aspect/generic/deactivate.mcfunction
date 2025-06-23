# Remove Aspect
item replace entity @s armor.body with air
scoreboard players reset @s aspects.aspect_id
# Remove Aspect Groups
function aspects:aspect_group/reset