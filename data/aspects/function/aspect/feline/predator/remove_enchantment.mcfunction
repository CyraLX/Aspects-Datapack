# Clean up before removing enchantment
## Delete bar
function aspectlib:player_id/expose
function aspects:aspect/feline/predator/bossbar/hide with storage aspectlib:dummy
## Reset scores
function aspects:aspect/feline/predator/scoreboard/reset
# Remove enchantment
item modify entity @s armor.body aspects:aspect/feline/predator/remove_enchantment