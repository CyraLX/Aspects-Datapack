# Get random number
execute store result score #aspects aspectlib.dummy run random value 1..100 aspects:rotten/zombie_summon_weapon

# Give weapon based on random number
## Weapons
execute if score #aspects aspectlib.dummy matches 1..20 run return run item replace entity @s weapon.mainhand with minecraft:golden_axe
execute if score #aspects aspectlib.dummy matches 21..30 run return run item replace entity @s weapon.mainhand with minecraft:golden_shovel
## Jokes
execute if score #aspects aspectlib.dummy matches 95 run return run item replace entity @s weapon.mainhand with minecraft:golden_pickaxe[minecraft:enchantments={"minecraft:vanishing_curse":1}]
execute if score #aspects aspectlib.dummy matches 96 run return run item replace entity @s weapon.mainhand with minecraft:golden_hoe[minecraft:enchantments={"minecraft:loyalty":1}]
execute if score #aspects aspectlib.dummy matches 97 run return run item replace entity @s weapon.mainhand with minecraft:rotten_flesh
execute if score #aspects aspectlib.dummy matches 98 run return run item replace entity @s weapon.mainhand with minecraft:axolotl_bucket[minecraft:axolotl/variant="blue"]
execute if score #aspects aspectlib.dummy matches 99 run return run item replace entity @s weapon.mainhand with minecraft:glow_ink_sac
execute if score #aspects aspectlib.dummy matches 100 run return run item replace entity @s weapon.mainhand with minecraft:golden_carrot
## Default to Golden Sword
return run item replace entity @s weapon.mainhand with minecraft:golden_sword
