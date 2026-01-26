# Aspect specific PRE-ACTIVATE logic

# Generic ACTIVATE logic
function aspects:aspect/generic/activate with storage aspects:registry aspect."aspects:undead"

# Aspect specific POST-ACTIVATE logic
## Set Aspect Groups
function aspects:aspect_group/inverted_healing_and_harm/activate
function aspects:aspect_group/sensitive_to_smite/activate
function aspects:aspect_group/water_breathing/activate
## Create Bossbar
function aspectlib:player/id/expose
function aspects:aspect/undead/aggravated/bossbar/create with storage aspectlib:dummy
