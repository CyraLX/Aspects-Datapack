# Save previous value
scoreboard players operation @s aspects.generic.hydrophobia.last = @s aspects.generic.hydrophobia
# Calculate Hydrophobic score if in water and return
execute unless predicate aspects:generic/hydrophobic/should_take_damage run return run function aspects:aspect/generic/hydrophobia/scoreboard/decrease
# Clamp score between 0 and 300
execute if score @s aspects.generic.hydrophobia matches ..0 run scoreboard players set @s aspects.generic.hydrophobia 0
execute if score @s aspects.generic.hydrophobia matches 300.. run scoreboard players set @s aspects.generic.hydrophobia 300
# Make sure that the Hydrophobia score is 300 in water without Water Ward enchantment
execute if predicate aspects:generic/hydrophobic/should_take_damage unless predicate aspects:enchantment/water_ward/any run scoreboard players set @s aspects.generic.hydrophobia 300

# Damage player if Hydrophobia score is 300
execute if score @s aspects.generic.hydrophobia matches 300.. run return run damage @s 2.0 aspects:generic/hydrophobia
# Otherwise, damage item, decrease the Hydrophobia score and return
## Water Ward 2 = 25 seconds
execute if predicate aspects:enchantment/water_ward/2 run return run scoreboard players add @s aspects.generic.hydrophobia 12
## Water Ward 1 = 20 seconds
execute if predicate aspects:enchantment/water_ward/1 run return run scoreboard players add @s aspects.generic.hydrophobia 15
## Water Ward 3+ = 30 seconds (unused)
execute if predicate aspects:enchantment/water_ward/3 run return run scoreboard players add @s aspects.generic.hydrophobia 10