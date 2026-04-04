# When True, Players that are assigned an Aspect for the first time (even Default Aspects) will recieve a welcoming chat message.
# Default: 1 (true)
scoreboard objectives add aspects.config.show_introduction dummy
execute unless score #aspects aspects.config.show_introduction = #aspects aspects.config.show_introduction run scoreboard players set #aspects aspects.config.show_introduction 1
