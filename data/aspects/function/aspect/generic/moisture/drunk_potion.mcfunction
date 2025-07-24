advancement revoke @s only aspects:aspect/generic/moisture/refreshing_potion

# Restore some Moisture when drinked a Potion
scoreboard players add @s aspects.generic.moisture 300
function aspects:aspect/generic/moisture/bossbar/update