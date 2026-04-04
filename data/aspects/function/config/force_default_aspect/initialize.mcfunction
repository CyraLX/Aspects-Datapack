# Instead of choosing an Aspect at world start, it will assign the specified Aspect based on the set namespace.
# (For example 0 is Off, `aspects:human` will be Human, `aspects:merling` is Merling, etc...)
# Default: 0
scoreboard objectives add aspects.config.force_default_aspect dummy
execute unless score #aspects aspects.config.force_default_aspect = #aspects aspects.config.force_default_aspect run scoreboard players set #aspects aspects.config.force_default_aspect 0
