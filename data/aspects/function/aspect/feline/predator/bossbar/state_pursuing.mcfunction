$bossbar set aspects:feline/predator/player_$(id) name {translate: "bossbar.aspects.feline.predator", color: "gold", with: [{translate: "bossbar.aspects.feline.predator.pursuing", color: "green"}]}
$bossbar set aspects:feline/predator/player_$(id) color green
function aspects:aspect/feline/predator/attributes/recovering/revoke
function aspects:aspect/feline/predator/attributes/pursuing/apply
scoreboard players set @s aspects.feline.predator.state 1
