# Setup a dummy scoreboard for temporary use in the future
scoreboard objectives add aspectlib.dummy dummy
# Setup an empty storage for cleanup
data modify storage aspectlib:empty empty set value {}

# Load other function initializers
## Player IDs
function aspectlib:player/id/initialize
## Player Stats
### Health
scoreboard objectives add aspectlib.health health
## Events
function aspectlib:event/on_death/load
function aspectlib:event/on_join/load
## Predicates
function aspectlib:predicate/initialize
## Scoreboards
function aspectlib:scoreboard/math/initialize

# Remove legacy scoreboards
## Health (Pack Format 7-8)
scoreboard objectives remove aspectlib.absorption
scoreboard objectives remove aspectlib.hp
scoreboard objectives remove aspectlib.hp_total
scoreboard objectives remove aspectlib.hp_max
scoreboard objectives remove aspectlib.hp_relative
scoreboard objectives remove aspectlib.hp_relative_overflow
scoreboard objectives remove aspectlib.hp_relative_total

# Broadcast finished load
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{text:"Initialized!"}]}
