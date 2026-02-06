execute unless entity @s[type=minecraft:player] run return fail
execute if score @s aspects.was_introduced matches 1.. run return fail

function aspectlib:player/id/expose
function aspects:aspect/expose_aspect with storage aspectlib:dummy
function aspects:introduction/run with storage aspectlib:dummy aspect
