# Fix Function triggering if previous Aspects Pack Format is 2 or lower
# Fixes Moisture Bossbar size as it was increased in Pack Format 3
$scoreboard players set #aspects aspectlib.dummy $(aspects_pack_format_previous)
execute unless score #aspects aspectlib.dummy matches ..2 run return fail
execute unless predicate aspects:aspect_group/is_moisture_dependant run return fail

function aspects:aspect/generic/moisture/bossbar/create with storage aspectlib:dummy
