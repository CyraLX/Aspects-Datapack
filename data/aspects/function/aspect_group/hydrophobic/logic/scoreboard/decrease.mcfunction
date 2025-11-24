# If the player doesn't have a Water Ward enchantment, set score to 0 and state to Idle
execute unless predicate aspects:enchantment/water_ward/any run return run function aspects:aspect_group/hydrophobic/logic/scoreboard/no_water_ward
# Otherwise increase score based on Water Ward enchantment
## Fills in 0-10 seconds
scoreboard players add @s aspects.aspect_group.hydrophobic.current 30
## Clamps value to 300 if above that
execute if score @s aspects.aspect_group.hydrophobic.current matches 301.. run scoreboard players set @s aspects.aspect_group.hydrophobic.current 300
## Update bossbar state
execute if score @s aspects.aspect_group.hydrophobic.current matches 300.. unless predicate aspects:aspect_group/hydrophobic/state/idle run return run function aspects:aspect_group/hydrophobic/logic/bossbar/state_idle with storage aspectlib:dummy
execute unless score @s aspects.aspect_group.hydrophobic.current matches 300.. unless predicate aspects:aspect_group/hydrophobic/state/recovering run return run function aspects:aspect_group/hydrophobic/logic/bossbar/state_recovering with storage aspectlib:dummy
