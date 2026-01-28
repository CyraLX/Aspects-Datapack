attribute @s minecraft:gravity modifier add aspects:arachnid/climb_gravity -1 add_multiplied_total
execute if score @s aspects.aspect.arachnid.was_holding_wall matches 0 run tp @s @s
scoreboard players set @s aspects.aspect.arachnid.was_holding_wall 1