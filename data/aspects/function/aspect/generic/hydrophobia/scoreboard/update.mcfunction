# Save previous value
scoreboard players operation @s aspects.generic.hydrophobia.last = @s aspects.generic.hydrophobia
# Calculate Hydrophobic score if in water and return
execute unless predicate aspects:generic/hydrophobic/should_take_damage run return run function aspects:aspect/generic/hydrophobia/scoreboard/decrease
# Clamp score between 0 and 300
execute if score @s aspects.generic.hydrophobia matches ..0 run scoreboard players set @s aspects.generic.hydrophobia 0
execute if score @s aspects.generic.hydrophobia matches 300.. run scoreboard players set @s aspects.generic.hydrophobia 300
# Make sure that the Hydrophobia score is 0 in water without Water Ward enchantment
execute if predicate aspects:generic/hydrophobic/should_take_damage unless predicate aspects:enchantment/water_ward/any run scoreboard players set @s aspects.generic.hydrophobia 0

# Damage player if Hydrophobia score is 0
execute if score @s aspects.generic.hydrophobia matches ..0 run return run function aspects:aspect/generic/hydrophobia/scoreboard/damage_aspect
# Otherwise, update bossbar state, damage item, increase the Hydrophobia score and return
## Bossbar state
execute unless predicate aspects:generic/hydrophobic/state/active run function aspects:aspect/generic/hydrophobia/bossbar/state_active with storage aspectlib:dummy
## Water Ward 2 = 25 seconds
execute if predicate aspects:enchantment/water_ward/2 run return run scoreboard players remove @s aspects.generic.hydrophobia 12
## Water Ward 1 = 20 seconds
execute if predicate aspects:enchantment/water_ward/1 run return run scoreboard players remove @s aspects.generic.hydrophobia 15
## Water Ward 3+ = 30 seconds (for addons or other datapacks/mods only)
execute if predicate aspects:enchantment/water_ward/3 run return run scoreboard players remove @s aspects.generic.hydrophobia 10