# Aspect specific PRE-DEACTIVATE logic
## Deactivate Aggravated Aspect Effect
function aspectlib:player/id/expose
function aspects:aspect/undead/aggravated/bossbar/destroy with storage aspectlib:dummy
function aspects:aspect/undead/aggravated/scoreboard/reset
function aspects:aspect/undead/aggravated/attribute/revokeall

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:registry aspect."aspects:undead"

# Aspect specific POST-DEACTIVATE logic

