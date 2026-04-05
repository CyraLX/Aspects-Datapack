# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## shadow_color = ARGB hex code of your Aspect color converted to a decimal number, usually 25% of the original brightness
## sound = Sound Event for your Aspect
## prevent_random = Boolean to prevent the Aspect from appearing when one is randomly assigned
data modify storage aspects:registry aspect append value {id: 10, namespace: "aspects", name: "arachnid", color: "#c5c5c5", shadow_color: -10733556, sound: "minecraft:entity.spider.ambient", prevent_random: false}

# Generic REGISTER_ASPECT logic
function aspects:aspect/generic/register_aspect with storage aspects:registry aspect[{namespace: "aspects", name: "arachnid"}]

# Setup scoreboard objectives for the Aspect
function aspects:aspect/arachnid/climb/scoreboard/initialize
