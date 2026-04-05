# Aspect specific PRE-DEACTIVATE logic

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspects:registry aspect[{namespace: "aspects", name: "merling"}]

# Aspect specific POST-DEACTIVATE logic
## Clear Night Vision
effect clear @s minecraft:night_vision
