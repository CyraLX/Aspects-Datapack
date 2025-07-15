# Remove Aspect Data
function aspectlib:player_id/expose
$function $(namespace):aspect/$(name)/remove_data with storage aspectlib:dummy
# Remove Aspect Item
$item modify entity @s armor.body $(namespace):aspect/$(name)/remove
# Remove Aspect Score
scoreboard players reset @s aspects.aspect_id
# Remove Aspect Group
function #aspects:aspect_group/reset
