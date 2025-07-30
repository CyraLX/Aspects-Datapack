$scoreboard players set #aspects aspectlib.dummy $(pack_format_previous)
execute unless score #aspects aspectlib.dummy matches ..2 run return fail
execute unless predicate aspects:aspect_group/is_moisture_dependant run return fail

function aspects:aspect/generic/moisture/bossbar/create with storage aspectlib:dummy
