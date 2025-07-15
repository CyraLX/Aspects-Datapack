# Setup data for the Aspect
data modify storage aspects:aspect_list aspects:elytrian set value {id: 6, namespace: "aspects", name: "elytrian", translatable: "aspect.aspects.elytrian"}

# Setup scoreboard objectives for the Aspect
function aspects:aspect/elytrian/advancement/flying_marathon/scoreboard/initialize
function aspects:aspect/elytrian/fly_damage/initialize
function aspects:aspect/elytrian/rocket_damage/scoreboard/initialize
function aspects:aspect/elytrian/wings/scoreboard/initialize

