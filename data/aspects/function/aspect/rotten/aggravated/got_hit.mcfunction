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
## Make sure summons don't aggro themselves (unused)
# execute on attacker if entity @s[type=#aspects:aspect/rotten/summons] run return fail
## Reset data
data remove storage aspectlib:dummy id
data remove storage aspectlib:dummy target_UUID
## Store data
function aspectlib:player/id/expose
execute on attacker if loaded ~ ~ ~ run data modify storage aspectlib:dummy target_UUID set from entity @s UUID
## Run anger macro on owned summons
execute if data storage aspectlib:dummy target_UUID run function aspects:aspect/rotten/summons/prepare_to_anger with storage aspectlib:dummy
