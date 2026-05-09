# Expose Player ID for later
function aspectlib:expose/player/id
# Store Removed Aspect
$data modify storage aspectlib:cache temp.namespace set value $(namespace)
$data modify storage aspectlib:cache temp.name set value $(name)
function aspects:aspect/generic/store_previous_aspect with storage aspectlib:cache temp
# Remove Aspect Data
$function $(namespace):aspect/$(name)/remove_data with storage aspectlib:cache temp
# Remove Aspect Item
item modify entity @s armor.body aspects:aspect/reset_body_components
$item modify entity @s armor.body [{function:"minecraft:set_enchantments",enchantments:{"$(namespace):aspect/$(name)/body":0},add:0b}]
# Remove Aspect Score
scoreboard players reset @s aspects.aspect_id
# Reset Aspect Groups
function #aspects:aspect_group/deactivate_all
