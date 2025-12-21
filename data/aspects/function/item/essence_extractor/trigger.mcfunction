# Fail if Essence has been Exhausted
execute if predicate aspects:item/essence_cage/entity/essence_exhausted run return run function aspects:item/essence_extractor/fail_extraction

# Exhaust Essence from Self
scoreboard players set @s aspects.essence.exhausted 1

# Show Effects
function aspects:item/essence_extractor/extarct_effects

# Get Stored Essences from Cage
execute as @p[tag=aspects.essence_extractor.collector,distance=..32] run function aspects:item/essence_extractor/essence_cage/retrieve/trigger

# Get the Amount of Essence from Entity
execute store result storage aspectlib:dummy essence_amount int 1 run function aspects:item/essence_extractor/get_amount

# Add the Add Essences from Entity to Essences from Cage
function aspects:item/essence_extractor/set_type_amount with storage aspectlib:dummy

# Update the Item
execute as @p[tag=aspects.essence_extractor.collector,distance=..32] run function aspects:item/essence_extractor/essence_cage/update

# Remove the Tag from Attacker
execute as @a[tag=aspects.essence_extractor.collector] run tag @s remove aspects.essence_extractor.collector