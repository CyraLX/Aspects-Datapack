$scoreboard players set #aspects aspectlib.dummy $(previous)
execute unless score #aspects aspectlib.dummy matches ..2 run return fail

function aspects:aspect/elytrian/wings/prepare_to_apply_modifiers
