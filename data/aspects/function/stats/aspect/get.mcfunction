# Give temporary tag
tag @s add stats_retriever
# Give feedback in chat
$execute if entity @a[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!stats_retriever] [{"text":"[Aspects]: ","color":"#f88379"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" is viewing statistics for "},{"translate":"$(translatable)","color":"$(color)"}]}]
$tellraw @s [{"text":"[Aspects]: ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"text":"Statistics for "},{"translate":"$(translatable)","color":"$(color)"},{"text":":"}]}]
$tellraw @s [{"text":"| ","color":"#aaaaaa","extra":[{"text":"Total Recorded","color":"white"},{"text":": "}]},{"score":{"name":"#$(namespace):$(name)","objective":"aspects.aspect_stats.total"},"color":"gold"}]
$tellraw @s [{"text":"| ","color":"#aaaaaa","extra":[{"text":"Removed Count","color":"white"},{"text":": "}]},{"score":{"name":"#$(namespace):$(name)","objective":"aspects.aspect_stats.faded"},"color":"gold"}]
$tellraw @s [{"text":"| ","color":"#aaaaaa","extra":[{"text":"Currently Active","color":"white"},{"text":": "}]},{"score":{"name":"#$(namespace):$(name)","objective":"aspects.aspect_stats.active"},"color":"gold"}]
$tellraw @s [{"text":"| ","color":"#aaaaaa","extra":[{"text":"Active Peak","color":"white"},{"text":": "}]},{"score":{"name":"#$(namespace):$(name)","objective":"aspects.aspect_stats.active_peak"},"color":"gold"}]
$tellraw @s [{"text":"| ","color":"#aaaaaa","extra":[{"text":"First Picks","color":"white"},{"text":": "}]},{"score":{"name":"#$(namespace):$(name)","objective":"aspects.aspect_stats.first_pick"},"color":"gold"}]
# Cleanup
tag @s remove stats_retriever
