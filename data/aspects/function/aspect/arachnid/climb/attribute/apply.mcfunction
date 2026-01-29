attribute @s minecraft:gravity modifier add aspects:arachnid/climb_gravity -1 add_multiplied_total
execute if score @s aspects.aspect.arachnid.was_holding_wall matches 0..2 run tp @s @s
scoreboard players add @s aspects.aspect.arachnid.was_holding_wall 1
execute if score @s aspects.aspect.arachnid.was_holding_wall matches 2400..2405 run advancement grant @s only aspects:gameplay/aspect/arachnid/stick_to_wall