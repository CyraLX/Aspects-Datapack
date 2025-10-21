execute if entity @s[type=minecraft:player] run function aspects:aspect/generic/moisture/bossbar/initialize
execute if entity @s[type=minecraft:player] run function aspects:aspect/generic/moisture/scoreboard/fill
scoreboard players set @s aspects.aspect_group.moisture_dependant 1