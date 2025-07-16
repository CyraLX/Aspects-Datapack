attribute @s minecraft:max_health modifier add aspects:enderian/max_health 0.4 add_multiplied_base

execute unless predicate aspectlib:has_inverted_healing_and_harm run return run effect give @s minecraft:instant_health 5 99 true
effect give @s minecraft:instant_damage 5 99 true