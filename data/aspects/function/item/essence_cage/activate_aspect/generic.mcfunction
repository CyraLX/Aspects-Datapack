$execute if entity @p[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] [{"text":"[Aspects]: ","color":"#f88379"},{"selector":"@s","color":"#aaaaaa","extra":[{"text":" used an "},{"text":"Awakened Essence Cage","color":"gold"},{"text":" to become "},{"translate":"dialog.aspects.chosen_aspect.external_title","color":"gray", "with": [{"translate": "$(namespace)", "color": "blue"}, {"translate": "aspect.$(namespace).$(name)", "color": "$(color)"}]}]}]

execute unless predicate aspectlib:has_inverted_healing_and_harm run return run effect give @s minecraft:instant_health 5 99 true
effect give @s minecraft:instant_damage 5 99 true
