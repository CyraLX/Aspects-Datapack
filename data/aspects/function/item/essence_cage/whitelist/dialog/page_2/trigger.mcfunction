# Decode and update whitelist
execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 100000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/humanoid
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #100000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 10000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/ice
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #10000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 1000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/normal
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #1000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 100000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/ooze
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #100000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 10000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/plant
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #10000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 1000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/steel
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #1000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 100.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/undead
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #100 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 10.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/void
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #10 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 1.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/wild

# Reset scores
scoreboard players reset @s aspects.essence_cage.whitelist.dialog.page_2

# Update lore
function aspects:item/essence_cage/lore/mainhand/update
