# Reset aspect storage
data remove storage aspectlib:dummy aspect

# If killed player with Aspect, store Aspect from player into Attacker's Essence Cage
execute if entity @s[type=minecraft:player] if predicate aspects:aspect/any_score run return run function aspects:item/essence_extractor/awaken_from_storage_data
# If killed mob with an Aspect, store Aspect from mob's body slot into Attacker's Essence Cage
execute if entity @s[type=!minecraft:player] if predicate aspects:aspect/any run return run function aspects:item/essence_extractor/awaken_from_aspect_item
# If killed mob without an Aspect, do essence storing logic
execute if entity @s[type=!minecraft:player] run return run function aspects:item/essence_extractor/extract_from_victim
