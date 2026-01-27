# Aspect specific PRE-GIVE_ASPECT logic

# Generic GIVE_ASPECT logic
function aspects:aspect/generic/give_aspect with storage aspects:registry aspect."aspects:rotten"

# Aspect specific POST-GIVE_ASPECT logic
## Set scoreboard Objective default value
scoreboard players set @s aspects.aspect.rotten.is_aggravated 0
scoreboard players set @s aspects.aspect.rotten.aggravated_timer 0
## Hide bossbar
function aspectlib:player/id/expose
function aspects:aspect/rotten/aggravated/bossbar/hide with storage aspectlib:dummy
function aspects:aspect/rotten/aggravated/attribute/disabled
