# Clean up before removing enchantment
## Revoke attributes
function aspects:aspect/feline/predator/attributes/pursuing/revoke
function aspects:aspect/feline/predator/attributes/recovering/revoke
## Reset scoreboard state
scoreboard players set @s aspects.feline.predator.state 0
## Delete bar
function aspectlib:player_id/expose
function aspects:aspect/feline/predator/bossbar/hide with storage aspectlib:dummy
## Reset scores
function aspects:aspect/feline/predator/scoreboard/reset
# Remove enchantment
item modify entity @s armor.body aspects:aspect/feline/predator/remove_enchantment