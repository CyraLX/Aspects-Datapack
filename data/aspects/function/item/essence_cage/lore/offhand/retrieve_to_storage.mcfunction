# Clear old data and values
function aspects:item/essence_cage/lore/clear_scoreboard_values
data remove storage aspectlib:cache temp.essence_cage

# Retrieve data from Essence Cage
data modify storage aspectlib:cache temp.essence_cage set from entity @s equipment.offhand.components."minecraft:custom_data".aspects.essence_cage

# Update Scoreboard with Retrieved data
function aspects:item/essence_cage/lore/read_from_storage
