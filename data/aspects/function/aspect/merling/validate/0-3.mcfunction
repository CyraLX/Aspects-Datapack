# Fix Function triggering if previous Aspects Pack Format is 2 or lower
# Fixes permanent Night Vision as it was made limited in Pack Format 3
$scoreboard players set #aspects aspectlib.dummy $(aspects_pack_format_previous)
execute unless score #aspects aspectlib.dummy matches ..3 run return fail
execute unless predicate aspects:aspect/merling/is_active run return fail

# Remove permanent Night Vision of older versions
effect clear @s minecraft:night_vision
