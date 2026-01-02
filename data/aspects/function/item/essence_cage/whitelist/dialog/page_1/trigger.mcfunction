# Copy existing Aspects data from held cage
data modify storage aspectlib:dummy essence_cage set from entity @s SelectedItem.components."minecraft:custom_data".aspects.essence_cage
# Remove existing essences
data remove storage aspectlib:dummy essence_cage.whitelist
# Clean cage with modified data
item modify entity @s weapon.mainhand aspects:essence_cage/empty/copy_from_storage

# Decode and update whitelist
execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 100000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/apex
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #100000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 10000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/aquatic
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #10000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 1000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/beast
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #1000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 100000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/bug
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #100000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 10000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/dark
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #10000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 1000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/ethereal
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #1000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 100.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/feline
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #100 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 10.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/fire
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #10 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 1.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/flying

# Reset scores
scoreboard players reset @s aspects.essence_cage.whitelist.dialog.page_1
# Open second page
function aspects:item/essence_cage/whitelist/dialog/page_2/open
