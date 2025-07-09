$bossbar set aspects:feline/predator/player_$(id) name {translate: "bossbar.aspects.feline.predator", color: "gold", with: [{translate: "bossbar.aspects.feline.predator.recovering", color: "red"}]}
$bossbar set aspects:feline/predator/player_$(id) color red
function aspects:aspect/feline/predator/attributes/pursuing/revoke
function aspects:aspect/feline/predator/attributes/recovering/apply
scoreboard players set @s aspects.feline.predator.state 2
