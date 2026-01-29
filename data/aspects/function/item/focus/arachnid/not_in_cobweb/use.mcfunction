fill ~ ~ ~ ~ ~1 ~ minecraft:cobweb replace #minecraft:replaceable
effect give @s minecraft:hunger 1 255
execute if predicate aspects:item/focus/arachnid/has_no_food run damage @s 2 starve