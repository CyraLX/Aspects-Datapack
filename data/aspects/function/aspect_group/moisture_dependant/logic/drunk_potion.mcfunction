advancement revoke @s only aspects:aspect_group/moisture/refreshing_potion

# Restore some Moisture when drinked a Potion
scoreboard players add @s aspects.aspect_group.moisture_dependant.current 300
function aspects:aspect_group/moisture_dependant/logic/bossbar/update