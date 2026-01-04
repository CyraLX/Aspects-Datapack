# Get data from Essence Extractor
data modify storage aspectlib:dummy essence_extractor set from entity @s SelectedItem.components."minecraft:custom_data".aspects.essence_extractor
execute store result score @s aspects.essence_extractor.kill_counter run data get storage aspectlib:dummy essence_extractor.kill_counter
execute store result score @s aspects.essence_extractor.level run data get storage aspectlib:dummy essence_extractor.level
# Update kill count
scoreboard players add @s aspects.essence_extractor.kill_counter 1
# Check for upgrade
function aspects:item/essence_extractor/kill_counter/check_upgrade
# Update data
execute store result storage aspectlib:dummy essence_extractor.kill_counter int 1 run scoreboard players get @s aspects.essence_extractor.kill_counter
# Update Item
item modify entity @s weapon.mainhand aspects:essence_extractor/lore/kill_counter
item modify entity @s weapon.mainhand aspects:essence_extractor/update_data

