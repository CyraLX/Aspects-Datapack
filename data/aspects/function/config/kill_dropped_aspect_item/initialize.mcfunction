# When True and a Player Aspect dies it will make sure to remove any dropped Aspect Items nearby.
# Default: 1 (true)
scoreboard objectives add aspects.config.kill_dropped_aspect_item dummy
execute unless score #aspects aspects.config.kill_dropped_aspect_item = #aspects aspects.config.kill_dropped_aspect_item run scoreboard players set #aspects aspects.config.kill_dropped_aspect_item 1
