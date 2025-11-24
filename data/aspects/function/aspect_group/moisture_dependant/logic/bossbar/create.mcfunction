# Create and set bossbar with ID
$bossbar add aspects:aspect_group/moisture/player_$(id) {translate: "bossbar.aspects.aspect_group.moisture_dependant"}
$bossbar set aspects:aspect_group/moisture/player_$(id) players @s
$bossbar set aspects:aspect_group/moisture/player_$(id) color blue
$bossbar set aspects:aspect_group/moisture/player_$(id) visible true
$bossbar set aspects:aspect_group/moisture/player_$(id) max 600
