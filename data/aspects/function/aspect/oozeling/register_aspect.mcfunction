# Setup data for the Aspect
## id = Integer Identifier of the Aspect. Range: 0 to 16777216
## namespace = Namespace string of your project
## name = Name string of your Aspect
## color = Hexidecimal color value for your Aspect
## shadow_color = ARGB hex code of your Aspect color converted to a decimal number, usually 25% of the original brightness
## sound = Sound Event for your Aspect
## prevent_random = Boolean to prevent the Aspect from appearing when one is randomly assigned
data modify storage aspectlib:registry aspect append value {id: 11, namespace: "aspects", name: "oozeling", color: "#6aa84f", shadow_color: -15062509, sound: "minecraft:entity.slime.jump", prevent_random: false}

# Generic REGISTER_ASPECT logic
function aspects:aspect/generic/register_aspect with storage aspectlib:registry aspect[{namespace: "aspects", name: "oozeling"}]

# Setup scoreboard objectives for the Aspect
function aspects:aspect/oozeling/crouch_jump/initialize
function aspects:item/focus/oozeling/amplify_elasticity/scoreboard/initialize
