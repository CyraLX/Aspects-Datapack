# Prepare Scores
scoreboard players reset #aspects aspects.evergrowing_blade.level

execute if score @s aspects.evergrowing_blade.kill_counter matches ..31 run scoreboard players set #aspects aspects.evergrowing_blade.level 1
execute if score @s aspects.evergrowing_blade.kill_counter matches 32..63 run scoreboard players set #aspects aspects.evergrowing_blade.level 2
execute if score @s aspects.evergrowing_blade.kill_counter matches 64..127 run scoreboard players set #aspects aspects.evergrowing_blade.level 3
execute if score @s aspects.evergrowing_blade.kill_counter matches 128..255 run scoreboard players set #aspects aspects.evergrowing_blade.level 4
execute if score @s aspects.evergrowing_blade.kill_counter matches 256..511 run scoreboard players set #aspects aspects.evergrowing_blade.level 5
execute if score @s aspects.evergrowing_blade.kill_counter matches 512..1023 run scoreboard players set #aspects aspects.evergrowing_blade.level 6
execute if score @s aspects.evergrowing_blade.kill_counter matches 1024.. run scoreboard players set #aspects aspects.evergrowing_blade.level 7

# If level did not change return early
execute if score #aspects aspects.evergrowing_blade.level = @s aspects.evergrowing_blade.level run return fail
# Otherwise upgrade sword
execute store result storage aspectlib:dummy evergrowing_blade.level int 1 run scoreboard players get #aspects aspects.evergrowing_blade.level
function aspects:item/evergrowing_blade/kill_counter/upgrade_macro with storage aspectlib:dummy evergrowing_blade
# Grant advancement if maxed (Level 7)
execute if score #aspects aspects.evergrowing_blade.level matches 7.. run advancement grant @s only aspects:gameplay/get_evergrowing_blade_max
