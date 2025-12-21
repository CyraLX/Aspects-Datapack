# Clear old data
data remove storage aspectlib:dummy stored_essences

# Retrieve data from Cage
data modify storage aspectlib:dummy stored_essences set from entity @s equipment.offhand.components."minecraft:custom_data".aspects.essence_cage.stored_essences

# Update Scoreboards with Retrieved Data
function aspects:item/essence_extractor/essence_cage/retrieve/read_from_storage
