execute if score @s aspects.essence_extractor.kill_counter matches ..31 run scoreboard players set #aspects aspects.essence_extractor.level 1
execute if score @s aspects.essence_extractor.kill_counter matches 32..63 run scoreboard players set #aspects aspects.essence_extractor.level 2
execute if score @s aspects.essence_extractor.kill_counter matches 64..127 run scoreboard players set #aspects aspects.essence_extractor.level 3
execute if score @s aspects.essence_extractor.kill_counter matches 128..255 run scoreboard players set #aspects aspects.essence_extractor.level 4
execute if score @s aspects.essence_extractor.kill_counter matches 256..511 run scoreboard players set #aspects aspects.essence_extractor.level 5
execute if score @s aspects.essence_extractor.kill_counter matches 512..1023 run scoreboard players set #aspects aspects.essence_extractor.level 6
execute if score @s aspects.essence_extractor.kill_counter matches 1024.. run scoreboard players set #aspects aspects.essence_extractor.level 7

# If level did not change return early
execute if score #aspects aspects.essence_extractor.level = @s aspects.essence_extractor.level run return fail
# Otherwise upgrade sword
execute store result storage aspectlib:dummy essence_extractor.level int 1 run scoreboard players get #aspects aspects.essence_extractor.level
function aspects:item/essence_extractor/kill_counter/upgrade_macro with storage aspectlib:dummy essence_extractor
