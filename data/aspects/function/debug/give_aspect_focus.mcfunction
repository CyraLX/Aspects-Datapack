execute unless predicate aspects:debug/should_replace_with_aspect_focus run return run tellraw @s [{"text":"[Aspects]: ","color":"#f88379"},{"text":"","color":"#aaaaaa","extra":[{"text":"aspects:debug/give_aspect_focus","color":"gold"},{"text":" requires that the offhand slot has nothing or a valid focus"}]}]

function aspects:debug/focus_macro with entity @s equipment.body.components."minecraft:custom_data".aspects.aspect
