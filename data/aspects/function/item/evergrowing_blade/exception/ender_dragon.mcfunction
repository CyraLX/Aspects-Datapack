# If no Ender Dragon was killed, return early
execute unless score @s aspects.evergrowing_blade.exception.ender_dragon matches 1.. run return fail
# Tag Self
tag @s add evergrowing_blade_attacker
# Extract from Ender Dragon
execute as @n[type=minecraft:ender_dragon] run function aspects:item/evergrowing_blade/extract
# Reset Kill Counter
scoreboard players reset @s aspects.evergrowing_blade.exception.ender_dragon