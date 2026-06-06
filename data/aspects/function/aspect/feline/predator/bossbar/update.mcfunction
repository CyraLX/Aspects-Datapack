function aspectlib:expose/player/id
function aspects:aspect/feline/predator/bossbar/set_value with storage aspectlib:cache temp
execute if score @s aspects.feline.predator matches 6 run function aspects:aspect/feline/predator/bossbar/state_recovering with storage aspectlib:cache temp
