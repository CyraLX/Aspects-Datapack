advancement revoke @s only aspects:aspect/generic/moisture/drain/sponge

# Drain Moisture when damaged by Sponge
scoreboard players remove @s aspects.generic.moisture 150
function aspects:aspect/generic/moisture/bossbar/update

# Consume the Sponge
execute on attacker at @s run item modify entity @s weapon.mainhand aspectlib:consume/1

# Give Wet Sponge
data modify storage aspectlib:dummy item_modifier set value [{function:"minecraft:set_components",components:{"minecraft:item_model":"minecraft:wet_sponge"}},{function:"minecraft:set_item",item:"minecraft:wet_sponge"},{function:"minecraft:set_count",count:1}]
execute on attacker at @s run function aspectlib:debug/summon_item_macro with storage aspectlib:dummy