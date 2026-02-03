# Set baby
data modify entity @s IsBaby set value true
# If rolls another rare chance...
execute store result score #aspects aspectlib.dummy run random value 1..10 aspects:rotten/summon/zombie/summon_baby
execute unless score #aspects aspectlib.dummy matches 1 run return fail
# Create god
item replace entity @s armor.head with minecraft:golden_helmet
item replace entity @s armor.chest with minecraft:golden_chestplate
item replace entity @s armor.legs with minecraft:golden_leggings
item replace entity @s armor.feet with minecraft:golden_boots
