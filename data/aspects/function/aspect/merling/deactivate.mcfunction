# Clean up before removing Aspect
function aspectlib:player_id/expose
function aspects:aspect/merling/remove_data with storage aspectlib:dummy
effect clear @s minecraft:night_vision
item modify entity @s armor.body aspects:aspect/merling/remove
# Perform generic ACTIVATE logic
function aspects:aspect/generic/deactivate
