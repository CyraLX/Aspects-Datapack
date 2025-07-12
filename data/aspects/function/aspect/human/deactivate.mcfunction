# Clean up before removing Aspect
function aspectlib:player_id/expose
function aspects:aspect/human/remove_data with storage aspectlib:dummy
item modify entity @s armor.body aspects:aspect/human/remove
# Perform generic ACTIVATE logic
function aspects:aspect/generic/deactivate