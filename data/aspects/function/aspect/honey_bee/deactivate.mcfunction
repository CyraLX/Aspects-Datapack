# Clean up before removing Aspect
function aspectlib:player_id/expose
function aspects:aspect/honey_bee/remove_data with storage aspectlib:dummy
effect clear @s minecraft:slow_falling
item modify entity @s armor.body aspects:aspect/honey_bee/remove
# Perform generic ACTIVATE logic
function aspects:aspect/generic/deactivate
item replace entity @s armor.chest with air