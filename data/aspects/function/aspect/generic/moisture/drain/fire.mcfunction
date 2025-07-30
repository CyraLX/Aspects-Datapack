advancement revoke @s only aspects:aspect/generic/moisture/drain/fire

# Drain Moisture when damaged by Fire
scoreboard players remove @s aspects.generic.moisture 20
function aspects:aspect/generic/moisture/bossbar/update
