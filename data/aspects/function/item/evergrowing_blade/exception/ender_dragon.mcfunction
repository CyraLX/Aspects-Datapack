# If no Ender Dragon was killed, return early
execute unless score @s aspects.evergrowing_blade.exception.ender_dragon matches 1.. run return fail
# Tag Self
function aspects:item/evergrowing_blade/tag/apply_self
# Extract from Ender Dragon
execute as @n[type=minecraft:ender_dragon] run function aspects:item/evergrowing_blade/extract
# Tag Remove
function aspects:item/evergrowing_blade/tag/remove_all
# Reset Kill Counter
scoreboard players reset @s aspects.evergrowing_blade.exception.ender_dragon