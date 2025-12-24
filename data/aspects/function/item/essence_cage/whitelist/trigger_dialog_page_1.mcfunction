

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 100000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/apex
execute unless score @s aspects.essence_cage.whitelist.dialog.page_1 matches 100000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/apex
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #100000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 10000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/aquatic
execute unless score @s aspects.essence_cage.whitelist.dialog.page_1 matches 10000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/aquatic
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #10000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 1000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/beast
execute unless score @s aspects.essence_cage.whitelist.dialog.page_1 matches 1000000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/beast
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #1000000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 100000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/bug
execute unless score @s aspects.essence_cage.whitelist.dialog.page_1 matches 100000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/bug
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #100000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 10000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/dark
execute unless score @s aspects.essence_cage.whitelist.dialog.page_1 matches 10000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/dark
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #10000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 1000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/ethereal
execute unless score @s aspects.essence_cage.whitelist.dialog.page_1 matches 1000.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/ethereal
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #1000 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 100.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/feline
execute unless score @s aspects.essence_cage.whitelist.dialog.page_1 matches 100.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/feline
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #100 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 10.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/fire
execute unless score @s aspects.essence_cage.whitelist.dialog.page_1 matches 10.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/fire
scoreboard players operation @s aspects.essence_cage.whitelist.dialog.page_1 %= #10 aspectlib.constant

execute if score @s aspects.essence_cage.whitelist.dialog.page_1 matches 1.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/true/flying
execute unless score @s aspects.essence_cage.whitelist.dialog.page_1 matches 1.. run item modify entity @s weapon.mainhand aspects:essence_cage/empty/apply_whitelist/false/flying



scoreboard players reset @s aspects.essence_cage.whitelist.dialog.page_1

function aspects:item/essence_cage/whitelist/open_dialog_page_2

