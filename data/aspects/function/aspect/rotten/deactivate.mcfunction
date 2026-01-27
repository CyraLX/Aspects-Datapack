# Aspect specific PRE-DEACTIVATE logic
## Deactivate Aggravated Aspect Effect
function aspectlib:player/id/expose
function aspects:aspect/rotten/aggravated/bossbar/destroy with storage aspectlib:dummy
function aspects:aspect/rotten/aggravated/scoreboard/reset
function aspects:aspect/rotten/aggravated/attribute/revokeall

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:registry aspect."aspects:rotten"

# Aspect specific POST-DEACTIVATE logic

