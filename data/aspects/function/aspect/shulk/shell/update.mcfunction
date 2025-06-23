execute if score @s aspects.shulk.shell_timer matches 1 run effect give @s minecraft:absorption 1 0 true
execute unless score @s aspects.shulk.shell_timer matches ..0 run scoreboard players remove @s aspects.shulk.shell_timer 1
