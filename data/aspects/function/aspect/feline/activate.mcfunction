# Aspect specific PRE-ACTIVATE logic

# Generic ACTIVATE logic
function aspects:aspect/generic/activate with storage aspects:registry aspect[{namespace: "aspects", name: "feline"}]

# Aspect specific POST-ACTIVATE logic
## Initialize Predator Aspect Effect
function aspects:aspect/feline/predator/bossbar/initialize
