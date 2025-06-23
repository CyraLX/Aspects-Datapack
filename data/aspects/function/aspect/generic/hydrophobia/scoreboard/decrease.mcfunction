# If the player doesn't have a Water Ward enchantment, set score to 300
execute unless predicate aspects:enchantment/water_ward/any run return run scoreboard players set @s aspects.generic.hydrophobia 300
# Otherwise decrease score based on Water Ward enchantment
## Fills in 0-10 seconds
scoreboard players remove @s aspects.generic.hydrophobia 30
## Clamps value to 0 if below that
execute if score @s aspects.generic.hydrophobia matches ..-1 run scoreboard players set @s aspects.generic.hydrophobia 0