# Get random number
execute store result score #aspects aspectlib.dummy run random value 1..1000 aspects:aspect/rotten/summon/weapon
# Give base jigsaw weapon
item replace entity @s weapon.mainhand with minecraft:jigsaw[minecraft:enchantments={"aspects:aspect/rotten/summon/mainhand":1,"minecraft:smite":1,"minecraft:bane_of_arthropods":1},minecraft:enchantment_glint_override=false,minecraft:item_model="minecraft:golden_sword"]

# Change item model based on random number
## Weapons
execute if score #aspects aspectlib.dummy matches 1..200 run return run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"minecraft:golden_axe"}}
execute if score #aspects aspectlib.dummy matches 201..300 run return run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"minecraft:golden_shovel"}}
execute if score #aspects aspectlib.dummy matches 301..400 run return run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"minecraft:golden_pickaxe"}}
execute if score #aspects aspectlib.dummy matches 401..500 run return run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"minecraft:golden_hoe"}}
## Jokes
execute if score #aspects aspectlib.dummy matches 993..994 run return run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"minecraft:rotten_flesh"}}
execute if score #aspects aspectlib.dummy matches 995..996 run return run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"minecraft:axolotl_bucket"}}
execute if score #aspects aspectlib.dummy matches 997..998 run return run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"minecraft:glow_ink_sac"}}
execute if score #aspects aspectlib.dummy matches 999..1000 run return run item modify entity @s weapon.mainhand {function:"minecraft:set_components",components:{"minecraft:item_model":"minecraft:golden_apple"}}
