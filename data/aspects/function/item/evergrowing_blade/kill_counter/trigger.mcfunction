# Get data from Essence Extractor
data modify storage aspectlib:dummy evergrowing_blade set from entity @s SelectedItem.components
execute store result score @s aspects.evergrowing_blade.kill_counter run data get storage aspectlib:dummy evergrowing_blade."minecraft:custom_data".aspects.evergrowing_blade.kill_counter
execute store result score @s aspects.evergrowing_blade.level run data get storage aspectlib:dummy evergrowing_blade."minecraft:enchantments"."aspects:evergrowing_blade/mainhand"
# Update kill count
scoreboard players add @s aspects.evergrowing_blade.kill_counter 1
# Check for upgrade
function aspects:item/evergrowing_blade/kill_counter/check_upgrade
# Update data
execute store result storage aspectlib:dummy evergrowing_blade.kill_counter int 1 run scoreboard players get @s aspects.evergrowing_blade.kill_counter
# Update Item
item modify entity @s weapon.mainhand aspects:evergrowing_blade/lore/kill_counter
item modify entity @s weapon.mainhand aspects:evergrowing_blade/update_data
# Cleanup
scoreboard players reset @s aspects.evergrowing_blade.kill_counter
