# Fill up Hydrophobia
scoreboard players set @s aspects.aspect_group.hydrophobic.current 300
scoreboard players set @s aspects.aspect_group.hydrophobic.last 300
# Set state to Idle
function aspectlib:player/id/expose
function aspects:aspect_group/hydrophobic/logic/bossbar/state_idle with storage aspectlib:dummy
function aspects:aspect_group/hydrophobic/logic/bossbar/hide with storage aspectlib:dummy