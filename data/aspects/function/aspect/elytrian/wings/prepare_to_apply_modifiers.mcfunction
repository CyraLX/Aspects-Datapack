# Get random value between 0 and 4 (One of Parrot variants) for the first time...
execute unless score @s aspects.elytrian.wings.original_variant = @s aspects.elytrian.wings.original_variant run execute store result storage aspectlib:dummy random short 1 run random value 0..4 aspects:aspect/elytrian
# Otherwise use the previous random value
execute if score @s aspects.elytrian.wings.original_variant = @s aspects.elytrian.wings.original_variant store result storage aspectlib:dummy random short 1 run scoreboard players get @s aspects.elytrian.wings.original_variant
# Make sure the value is stored in the scoreboard
execute store result score @s aspects.elytrian.wings.original_variant run data get storage aspectlib:dummy random
# Call macro with the random value
function aspects:aspect/elytrian/wings/apply_modifiers with storage aspectlib:dummy
