$execute if entity @p[tag=get_debug_logs_expanded] run tellraw @a[tag=get_debug_logs_expanded] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," used an ",{translate:"item.aspects.awakened_essence_cage",color:"gold"}," to become ",{translate:"dialog.aspects.chosen_aspect.external_title",color:"gray",with:[{translate:"$(namespace)",color:"blue"},{translate:"aspect.$(namespace).$(name)",color:"$(color)"}]}]}

effect give @s minecraft:hunger 60 4 false
effect give @s minecraft:blindness 1 0 true

execute unless predicate aspectlib:has_inverted_healing_and_harm run return run effect give @s minecraft:instant_health 5 99 true
effect give @s minecraft:instant_damage 5 99 true
