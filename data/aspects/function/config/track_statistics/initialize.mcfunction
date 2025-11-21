# Should update statistics tracked by Aspects such as Aspect pick count, remove count, active count, ect...
# (If turned off and turned on again later, statistics WILL desync! Only turn off if you intent to keep it that way permanently or need to test something for a brief period)
# Default: 1 (true)
scoreboard objectives add aspects.config.track_statistics dummy
execute unless score #aspects aspects.config.track_statistics = #aspects aspects.config.track_statistics run scoreboard players set #aspects aspects.config.track_statistics 1
