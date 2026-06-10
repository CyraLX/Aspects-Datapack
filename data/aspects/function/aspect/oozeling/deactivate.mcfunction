# Aspect specific PRE-DEACTIVATE logic
## Reset Scoreboards
function aspects:aspect/oozeling/crouch_jump/remove
## Deactivate "Amplify Elasticity"
function aspectlib:expose/player/id
function aspects:item/focus/oozeling/amplify_elasticity/bossbar/destroy with storage aspectlib:cache temp
function aspects:item/focus/oozeling/amplify_elasticity/scoreboard/reset

# Generic DEACTIVATE logic
function aspects:aspect/generic/deactivate with storage aspectlib:registry aspect[{namespace: "aspects", name: "oozeling"}]

# Aspect specific POST-DEACTIVATE logic
