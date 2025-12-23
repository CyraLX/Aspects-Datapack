# Clear old data manually
data remove storage aspectlib:dummy stored_essences
# Retrieve data from Cage (can fail if components are missing)
data modify storage aspectlib:dummy stored_essences set from entity @s equipment.offhand.components."minecraft:custom_data".aspects.essence_cage.stored_essences

# Update Scoreboard Values from Retrieved Data
function aspects:item/essence_extractor/essence_cage/store_in_scoreboard
