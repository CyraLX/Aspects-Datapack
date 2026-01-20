# When Enderian teleports by using the Focus, and the maximum forward distance is reached, this determines how far down teleportation will check for a solid block before failing, in quarter blocks
# (For example 100 will be interpreted as 25 blocks)
# Default: 100
scoreboard objectives add aspects.config.enderian.teleport_downward_distance dummy
execute unless score #aspects aspects.config.enderian.teleport_downward_distance = #aspects aspects.config.enderian.teleport_downward_distance run scoreboard players set #aspects aspects.config.enderian.teleport_downward_distance 100
