advancement revoke @s only aspects:aspect_group/moisture/drain/fire

# Drain Moisture when damaged by Fire
scoreboard players remove @s aspects.aspect_group.moisture_dependant.current 20
function aspects:aspect_group/moisture_dependant/logic/bossbar/update
