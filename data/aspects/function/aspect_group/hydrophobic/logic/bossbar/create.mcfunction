# Create and set bossbar with ID
$bossbar add aspects:aspect_group/hydrophobia/player_$(id) {translate: "bossbar.aspects.aspect_group.hydrophobic", color: "aqua", with: [{translate: "bossbar.aspects.aspect_group.hydrophobic.idle", color: "gray"}]}
$bossbar set aspects:aspect_group/hydrophobia/player_$(id) players @s
$bossbar set aspects:aspect_group/hydrophobia/player_$(id) color blue
$bossbar set aspects:aspect_group/hydrophobia/player_$(id) visible false
$bossbar set aspects:aspect_group/hydrophobia/player_$(id) max 300
scoreboard players set @s aspects.aspect_group.hydrophobic.state 0
