# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## shadow_color = ARGB hex code of your Aspect color converted to a decimal number, usually 25% of the original brightness
## sound = Sound Event for your Aspect
## prevent_random = Boolean to prevent the Aspect from appearing when one is randomly assigned; defaults to false
data modify storage aspects:registry aspect."aspects:enderian" set value {id: 2, namespace: "aspects", name: "enderian", color: "#7749cb", shadow_color: -14872014, sound: "minecraft:entity.enderman.ambient"}

# Generic REGISTER_ASPECT logic
function aspects:aspect/generic/register_aspect with storage aspects:registry aspect."aspects:enderian"

# Setup scoreboard objectives for the Aspect
function aspects:item/focus/enderian/raycast/initialize_scoreboards
