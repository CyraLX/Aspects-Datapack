# Remove Aspect Data
function aspectlib:player/id/expose
$function $(namespace):aspect/$(name)/remove_data with storage aspectlib:dummy
# Remove Aspect Item
item modify entity @s armor.body aspects:aspect/reset_body_components
$item modify entity @s armor.body [{function:"minecraft:set_enchantments",enchantments:{"$(namespace):aspect/$(name)/body":0},add:0b}]
# Remove Aspect Score
scoreboard players reset @s aspects.aspect_id
# Remove Aspect Group
function #aspects:aspect_group/reset
