$scoreboard players set #aspects aspectlib.dummy $(aspects_pack_format_previous)
execute unless score #aspects aspectlib.dummy matches ..3 run return fail
execute unless predicate aspects:aspect/merling/is_active run return fail

# Remove permanent Night Vision of older versions
effect clear @s minecraft:night_vision
