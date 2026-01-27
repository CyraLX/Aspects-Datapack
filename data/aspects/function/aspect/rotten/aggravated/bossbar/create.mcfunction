# Create and set bossbar with ID
$bossbar add aspects:rotten/aggravated/player_$(id) {translate: "bossbar.aspects.rotten.aggrevated", color: "gold", with: [{translate: "bossbar.aspects.feline.predator.pursuing", color: "green"}]}
$bossbar set aspects:rotten/aggravated/player_$(id) players @s
$bossbar set aspects:rotten/aggravated/player_$(id) color red
$bossbar set aspects:rotten/aggravated/player_$(id) style notched_12
$bossbar set aspects:rotten/aggravated/player_$(id) visible false
$bossbar set aspects:rotten/aggravated/player_$(id) max 12
