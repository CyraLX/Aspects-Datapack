execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 100000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/humanoid
execute unless score @s aspects.essence_cage.whitelist.dialog.page_2 matches 100000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/humanoid
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #100000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 10000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/ice
execute unless score @s aspects.essence_cage.whitelist.dialog.page_2 matches 10000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/ice
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #10000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 1000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/normal
execute unless score @s aspects.essence_cage.whitelist.dialog.page_2 matches 1000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/normal
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #1000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 100000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/ooze
execute unless score @s aspects.essence_cage.whitelist.dialog.page_2 matches 100000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/ooze
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #100000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 10000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/plant
execute unless score @s aspects.essence_cage.whitelist.dialog.page_2 matches 10000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/plant
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #10000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 1000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/steel
execute unless score @s aspects.essence_cage.whitelist.dialog.page_2 matches 1000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/steel
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #1000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 100.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/undead
execute unless score @s aspects.essence_cage.whitelist.dialog.page_2 matches 100.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/undead
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #100 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 10.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/void
execute unless score @s aspects.essence_cage.whitelist.dialog.page_2 matches 10.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/void
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_2 %= #10 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_2 matches 1.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/wild
execute unless score @s aspects.essence_cage.whitelist.dialog.page_2 matches 1.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/wild

scoreboard players reset @s aspects.essence_cage.whitelist.dialog.page_2

# Update lore
function aspects:item/essence_cage/lore/mainhand/update
