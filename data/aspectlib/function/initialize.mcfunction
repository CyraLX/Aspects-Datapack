# Setup a dummy scoreboard for temporary use in the future
scoreboard objectives add aspectlib.dummy dummy

# Load other function initializers
## Player IDs
function aspectlib:player_id/initialize
## Events
function aspectlib:event/on_death/load
function aspectlib:event/on_join/load
function aspectlib:event/on_respawn/load
## Predicates
### Submerged
function aspectlib:predicate/submerged/initialize

# Broadcast finished load
execute if entity @a[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] [{"text":"[AspectLib]: ","color":"#7700A7"},{"text":"Initialized!","color":"#aaaaaa"}]
