# Revoke trigger advancement
advancement revoke @s only aspects:aspect/rotten/got_hit
# Playsound if was not aggravated before
execute unless score @s aspects.aspect.rotten.is_aggravated matches 1.. run playsound minecraft:entity.zombified_piglin.angry voice @s ~ ~ ~ 1 0.9
# Set aggravated state and timer
scoreboard players set @s aspects.aspect.rotten.aggravated_timer 6
scoreboard players set @s aspects.aspect.rotten.is_aggravated 1
# Update the bossbar
function aspectlib:player/id/expose
function aspects:aspect/rotten/aggravated/bossbar/show with storage aspectlib:dummy
function aspects:aspect/rotten/aggravated/bossbar/update
# Activate Attributes
function aspects:aspect/rotten/aggravated/attribute/activated
# Alert nearby summons
# execute on attacker if entity @s[type=#aspects:aspect/rotten/summons] run return fail
data remove storage aspectlib:dummy owner_UUID
data remove storage aspectlib:dummy target_UUID
data modify storage aspectlib:dummy owner_UUID set from entity @s UUID
execute on attacker if loaded ~ ~ ~ run data modify storage aspectlib:dummy target_UUID set from entity @s UUID
execute if data storage aspectlib:dummy target_UUID as @e[type=#aspects:aspect/rotten/summons,distance=..32] run function aspects:aspect/rotten/aggravated/prepare_to_anger_summons with storage aspectlib:dummy
