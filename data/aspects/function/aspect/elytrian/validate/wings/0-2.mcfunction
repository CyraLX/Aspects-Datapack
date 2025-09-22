$scoreboard players set #aspects aspectlib.dummy $(aspects_pack_format_previous)
execute unless score #aspects aspectlib.dummy matches ..2 run return fail
execute unless predicate aspects:aspect/elytrian/is_active run return fail

function aspects:aspect/elytrian/wings/prepare_to_apply_modifiers
