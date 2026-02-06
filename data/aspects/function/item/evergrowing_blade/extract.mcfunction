# Reset aspect storage
data remove storage aspectlib:dummy aspect

# If killed player with Aspect, store Aspect from player into Attacker's Essence Cage
execute if entity @s[type=minecraft:player] unless entity @p[tag=evergrowing_blade_attacker,distance=..32,predicate=aspects:item/essence_cage_collector/is_held] if predicate aspects:aspect/any_score run return run function aspects:item/evergrowing_blade/awaken_from_storage_data
# If killed mob with an Aspect, store Aspect from mob's body slot into Attacker's Essence Cage
execute if entity @s[type=!minecraft:player] unless entity @p[tag=evergrowing_blade_attacker,distance=..32,predicate=aspects:item/essence_cage_collector/is_held] if predicate aspects:aspect/any run return run function aspects:item/evergrowing_blade/awaken_from_aspect_item
# If killed mob without an Aspect, do essence storing logic
execute if entity @s[type=!minecraft:player] run return run function aspects:item/evergrowing_blade/extract_from_victim
# If failed all remove all tags
function aspects:item/evergrowing_blade/tag/remove_all
