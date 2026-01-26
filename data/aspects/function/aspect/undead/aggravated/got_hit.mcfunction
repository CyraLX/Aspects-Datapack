# Revoke trigger advancement
advancement revoke @s only aspects:aspect/undead/got_hit
# Playsound if was not aggravated before
execute unless score @s aspects.aspect.undead.is_aggravated matches 1.. run playsound minecraft:entity.zombie.ambient voice @s ~ ~ ~ 1 0.7
# Set aggravated state and timer
scoreboard players set @s aspects.aspect.undead.aggravated_timer 12
scoreboard players set @s aspects.aspect.undead.is_aggravated 1
# Update the bossbar
function aspectlib:player/id/expose
function aspects:aspect/undead/aggravated/bossbar/show with storage aspectlib:dummy
function aspects:aspect/undead/aggravated/bossbar/update
# Activate Attributes
function aspects:aspect/undead/aggravated/attribute/activated
