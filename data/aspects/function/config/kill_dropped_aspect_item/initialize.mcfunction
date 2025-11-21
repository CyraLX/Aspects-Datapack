# When a Player Aspect dies, should they drop the Aspect Item that was equipped on them
# (This is a bug fix regarding `minecraft:prevent_equipment_drop` not functioning correctly` in versions 1.21.5 or lower)
# Default: 1 (true)
scoreboard objectives add aspects.config.kill_dropped_aspect_item dummy
execute unless score #aspects aspects.config.kill_dropped_aspect_item = #aspects aspects.config.kill_dropped_aspect_item run scoreboard players set #aspects aspects.config.kill_dropped_aspect_item 1
