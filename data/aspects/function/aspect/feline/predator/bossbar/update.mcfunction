function aspectlib:player_id/expose
function aspects:aspect/feline/predator/bossbar/set_value with storage aspectlib:dummy
execute if score @s aspects.feline.predator matches 7 run function aspects:aspect/feline/predator/bossbar/state_recovering with storage aspectlib:dummy
