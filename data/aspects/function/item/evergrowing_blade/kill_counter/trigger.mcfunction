# Reset data
data remove storage aspectlib:dummy evergrowing_blade
scoreboard players reset @s aspectlib.dummy
scoreboard players reset @s aspects.evergrowing_blade.kill_counter
scoreboard players reset @s aspects.evergrowing_blade.level

# Get data from Essence Extractor
## Item Data
data modify storage aspectlib:dummy evergrowing_blade set from entity @s SelectedItem.components
## Kill Counter
execute store result score @s aspects.evergrowing_blade.kill_counter run data get storage aspectlib:dummy evergrowing_blade."minecraft:custom_data".aspects.evergrowing_blade.kill_counter
## Enchantment Pattern Variant
data modify storage aspectlib:dummy evergrowing_blade.variant set from storage aspectlib:dummy evergrowing_blade."minecraft:custom_data".aspects.evergrowing_blade.variant
execute unless data storage aspectlib:dummy evergrowing_blade.variant run data modify storage aspectlib:dummy evergrowing_blade.variant set value 0
## Enchantment Level
execute store result score @s aspects.evergrowing_blade.level run data get storage aspectlib:dummy evergrowing_blade."minecraft:enchantments"."aspects:evergrowing_blade/mainhand"

# Update kill count
scoreboard players add @s aspects.evergrowing_blade.kill_counter 1
# Check for upgrade
function aspects:item/evergrowing_blade/kill_counter/check_upgrade
# Update Storage
execute store result storage aspectlib:dummy evergrowing_blade.kill_counter int 1 run scoreboard players get @s aspects.evergrowing_blade.kill_counter
# Update Item
item modify entity @s weapon.mainhand aspects:evergrowing_blade/lore/kill_counter
item modify entity @s weapon.mainhand aspects:evergrowing_blade/update_data

# Cleanup
scoreboard players reset @s aspects.evergrowing_blade.kill_counter
