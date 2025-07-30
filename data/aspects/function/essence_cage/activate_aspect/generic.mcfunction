$execute if entity @p[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] [{"text":"[Aspects]: ","color":"#f88379"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" used an "},{"text":"Awakened Essence Cage","color":"gold"},{"text":" to become "},{"text":"$(aspect)","color":"gold"}]}]
# effect give @s minecraft:hunger 30 0 true
# effect give @s minecraft:nausea 10 1 true
# effect give @s minecraft:blindness 1 1 true
