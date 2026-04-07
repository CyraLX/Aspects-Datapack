# Instead of choosing an Aspect when first joining, it will assign the specified Aspect based on the set aspect id.
# (For example -1 is Off, 0 will be Human, 1 is Merling, etc...)
# Default: -1
scoreboard objectives add aspects.config.force_default_aspect dummy
execute unless score #aspects aspects.config.force_default_aspect = #aspects aspects.config.force_default_aspect run scoreboard players set #aspects aspects.config.force_default_aspect -1

# Set Storage Values
data modify storage aspectlib:data configs.aspects.force_default_aspect.default set value -1
execute unless data storage aspectlib:data configs.aspects.force_default_aspect.current run data modify storage aspectlib:data configs.aspects.force_default_aspect.current set from storage aspectlib:data configs.aspects.force_default_aspect.default
execute unless data storage aspectlib:data configs.aspects.force_default_aspect.was_modified run data modify storage aspectlib:data configs.aspects.force_default_aspect.was_modified set value false
