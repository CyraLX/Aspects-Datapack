# Give temporary tag
tag @s add stats_retriever
# Give feedback in chat
execute if entity @a[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!stats_retriever] [{"text":"[Aspects]: ","color":"#f88379"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" is viewing statistics for "},{"text":"Enderian","color":"gold"}]}]
tellraw @s [{"text":"[Aspects]: ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"text":"Statistics for "},{"text":"Enderian","color":"gold"},{"text":":"}]}]
tellraw @s [{"text":"| ","color":"#aaaaaa","extra":[{"text":"Total Recorded","color":"white"},{"text":": "}]},{"score":{"name":"#aspects","objective":"aspects.stats.enderian.total"},"color":"gold"}]
tellraw @s [{"text":"| ","color":"#aaaaaa","extra":[{"text":"Removed Count","color":"white"},{"text":": "}]},{"score":{"name":"#aspects","objective":"aspects.stats.enderian.faded"},"color":"gold"}]
tellraw @s [{"text":"| ","color":"#aaaaaa","extra":[{"text":"Currently Active","color":"white"},{"text":": "}]},{"score":{"name":"#aspects","objective":"aspects.stats.enderian.current"},"color":"gold"}]
tellraw @s [{"text":"| ","color":"#aaaaaa","extra":[{"text":"Active Peak","color":"white"},{"text":": "}]},{"score":{"name":"#aspects","objective":"aspects.stats.enderian.peak"},"color":"gold"}]
tellraw @s [{"text":"| ","color":"#aaaaaa","extra":[{"text":"First Picks","color":"white"},{"text":": "}]},{"score":{"name":"#aspects","objective":"aspects.stats.enderian.first_pick"},"color":"gold"}]
# Cleanup
tag @s remove stats_retriever
