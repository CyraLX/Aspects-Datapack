# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## shadow_color = ARGB hex code of your Aspect color converted to a decimal number, usually 25% of the original brightness
## sound = Sound Event for your Aspect
data modify storage aspects:registry aspect."aspects:feline" set value {id: 4, namespace: "aspects", name: "feline", color: "#f96600", shadow_color: -12707584, sound: "minecraft:entity.cat.ambient"}

# Generic REGISTER_ASPECT logic
function aspects:aspect/generic/register_aspect with storage aspects:registry aspect."aspects:feline"

# Setup scoreboard objectives for the Aspect
function aspects:aspect/feline/predator/scoreboard/initialize
function aspects:item/focus/feline/initialize_scoreboard
