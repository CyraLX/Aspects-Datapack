execute if entity @s[type=minecraft:player] run function aspects:aspect_group/moisture_dependant/logic/bossbar/initialize
execute if entity @s[type=minecraft:player] run function aspects:aspect_group/moisture_dependant/logic/scoreboard/fill
scoreboard players set @s aspects.aspect_group.moisture_dependant 1
