# Destroy and Store Cobweb Amount
execute store result score @s aspectlib.dummy run fill ~-1 ~-1 ~-1 ~1 ~2 ~1 air replace minecraft:cobweb
# Remove some from Cobweb Amount
scoreboard players remove @s aspectlib.dummy 1
# Store the Cobweb Amount for Macro
execute store result storage aspectlib:dummy cobweb_amount int 1 run scoreboard players get @s aspectlib.dummy

# Give Cobweb with stored Cobweb Amount
function aspects:item/focus/arachnid/in_cobweb/give_cobweb with storage aspectlib:dummy

# Apply Effect
effect give @s minecraft:resistance 3 2
