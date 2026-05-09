# Remove active Aspect
data modify storage aspectlib:cache temp.aspect set from entity @s equipment.body.components."minecraft:custom_data".aspects.aspect
function aspects:aspect/generic/remove_old_aspect with storage aspectlib:cache temp.aspect

# Opens the Menu
function aspects:dialog/choose_aspect/open_menu