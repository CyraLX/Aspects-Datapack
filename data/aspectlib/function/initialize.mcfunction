# Setup a dummy scoreboard for temporary use in the future
scoreboard objectives add aspectlib.dummy dummy
# Setup storage to contain constants
## Empty object for cleanup via Item Modifiers
data modify storage aspectlib:constant empty set value {}
# Setup storage to contain cached things
## Object containing dynamically built things such as Dialogs
data modify storage aspectlib:cache build set value {}

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
execute if entity @p[tag=aspectlib.receive_logs] run tellraw @a[tag=aspectlib.receive_logs] {text:"",color:"#aaaaaa",extra:[{"text":"[AspectLib]: ","color":"#7700A7"},{text:"Initialized!"}]}
