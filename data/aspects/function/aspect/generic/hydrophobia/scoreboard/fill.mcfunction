# Fill up Hydrophobia
scoreboard players set @s aspects.generic.hydrophobia 300
scoreboard players set @s aspects.generic.hydrophobia.last 300
# Set state to Idle
function aspectlib:player_id/expose
function aspects:aspect/generic/hydrophobia/bossbar/state_idle with storage aspectlib:dummy
function aspects:aspect/generic/hydrophobia/bossbar/hide with storage aspectlib:dummy