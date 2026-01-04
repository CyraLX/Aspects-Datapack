# When True, statistics will be actively tracked by Aspects and its addons such as Aspect pick count, remove count, active count, ect...
# (If toggled, statistics have a good chance to desync! Only do so if you intent to keep it that way permanently or need to test something for a very brief period)
# Default: 1 (true)
scoreboard objectives add aspects.config.track_statistics dummy
execute unless score #aspects aspects.config.track_statistics = #aspects aspects.config.track_statistics run scoreboard players set #aspects aspects.config.track_statistics 1
