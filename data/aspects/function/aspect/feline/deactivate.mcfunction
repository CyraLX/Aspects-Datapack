# Aspect specific PRE-DEACTIVATE logic
## Deactivate Predator Aspect Effect
function aspectlib:expose/player/id
function aspects:aspect/feline/predator/bossbar/destroy with storage aspectlib:dummy
function aspects:aspect/feline/predator/scoreboard/reset
## Clear Night Vision Effect
effect clear @s minecraft:night_vision

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:registry aspect[{namespace: "aspects", name: "feline"}]

# Aspect specific POST-DEACTIVATE logic