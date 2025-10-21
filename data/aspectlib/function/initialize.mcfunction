# Setup a dummy scoreboard for temporary use in the future
scoreboard objectives add aspectlib.dummy dummy
# Setup an empty storage for cleanup
data modify storage aspectlib:empty empty set value {}

# Load other function initializers
## Player IDs
function aspectlib:player/id/initialize
## Player Stats
### Health
function aspectlib:player/stats/health/initialize
## Events
function aspectlib:event/on_death/load
function aspectlib:event/on_join/load
## Predicates
### Submerged
function aspectlib:predicate/submerged/initialize

# Broadcast finished load
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{text:"Initialized!"}]}
