# Create and set bossbar with ID
$bossbar add aspects:feline/predator/player_$(id) {translate: "bossbar.aspects.feline.predator", color: "gold", with: [{translate: "bossbar.aspects.feline.predator.pursuing", color: "green"}]}
$bossbar set aspects:feline/predator/player_$(id) players @s
$bossbar set aspects:feline/predator/player_$(id) color green
$bossbar set aspects:feline/predator/player_$(id) style notched_10
$bossbar set aspects:feline/predator/player_$(id) visible false
$bossbar set aspects:feline/predator/player_$(id) max 10
scoreboard players set @s aspects.feline.predator.state 0
