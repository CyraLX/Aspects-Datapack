# Clean up before removing Aspect
function aspectlib:player_id/expose
function aspects:aspect/feline/remove_data with storage aspectlib:dummy
function aspects:aspect/feline/predator/bossbar/destroy with storage aspectlib:dummy
function aspects:aspect/feline/predator/scoreboard/reset
item modify entity @s armor.body aspects:aspect/feline/remove
effect clear @s minecraft:night_vision
# Perform generic ACTIVATE logic
function aspects:aspect/generic/deactivate