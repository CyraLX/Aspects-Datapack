# Create and set bossbar with ID
$bossbar add aspects:oozeling/amplify_elasticity/player_$(id) {translate: "bossbar.aspects.oozeling.amplify_elasticity", color: "green"}
$bossbar set aspects:oozeling/amplify_elasticity/player_$(id) players @s
$bossbar set aspects:oozeling/amplify_elasticity/player_$(id) color green
$bossbar set aspects:oozeling/amplify_elasticity/player_$(id) style notched_20
$bossbar set aspects:oozeling/amplify_elasticity/player_$(id) visible false
$bossbar set aspects:oozeling/amplify_elasticity/player_$(id) max 40
scoreboard players set @s aspects.feline.predator.state 0
