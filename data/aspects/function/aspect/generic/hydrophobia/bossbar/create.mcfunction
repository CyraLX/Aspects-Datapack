# Create and set bossbar with ID
$bossbar add aspects:generic/hydrophobia/player_$(id) {translate: "bossbar.aspects.generic.hydrophobia", color: "aqua", with: [{translate: "bossbar.aspects.generic.hydrophobia.idle", color: "gray"}]}
$bossbar set aspects:generic/hydrophobia/player_$(id) players @s
$bossbar set aspects:generic/hydrophobia/player_$(id) color blue
$bossbar set aspects:generic/hydrophobia/player_$(id) visible false
$bossbar set aspects:generic/hydrophobia/player_$(id) max 300
scoreboard players set @s aspects.generic.hydrophobia.state 0
