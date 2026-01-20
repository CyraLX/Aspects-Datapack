# How far Enderian can teleport forward by using the Focus in quarter blocks
# (For example 100 will be interpreted as 25 blocks)
# Default: 100
scoreboard objectives add aspects.config.enderian.teleport_forward_distance dummy
execute unless score #aspects aspects.config.enderian.teleport_forward_distance = #aspects aspects.config.enderian.teleport_forward_distance run scoreboard players set #aspects aspects.config.enderian.teleport_forward_distance 100
