execute if entity @s[type=minecraft:player] run function aspects:aspect_group/hydrophobic/logic/bossbar/initialize
execute if entity @s[type=minecraft:player] run function aspects:aspect_group/hydrophobic/logic/scoreboard/fill
scoreboard players set @s aspects.aspect_group.hydrophobic 1
