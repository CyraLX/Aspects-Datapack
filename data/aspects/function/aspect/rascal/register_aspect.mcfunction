# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## shadow_color = ARGB hex code of your Aspect color converted to a decimal number, usually 25% of the original brightness
## sound = Sound Event for your Aspect
## prevent_random = Boolean to prevent the Aspect from appearing when one is randomly assigned; defaults to false
data modify storage aspects:registry aspect."aspects:rascal" set value {id: 8, namespace: "aspects", name: "rascal", color: "#3a3b3c", shadow_color: -15856113, sound: "minecraft:block.deepslate.break"}

# Generic REGISTER_ASPECT logic
function aspects:aspect/generic/register_aspect with storage aspects:registry aspect."aspects:rascal"

# Setup scoreboard objectives for the Aspect
function aspects:aspect/rascal/light_level/initialize_scoreboards
