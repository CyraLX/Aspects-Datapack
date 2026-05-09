# Dialog Type custom fields
## Set defaults
execute unless data storage aspectlib:cache temp.config.initial run data modify storage aspectlib:cache temp.config.initial set from storage aspectlib:cache temp.config.current
execute unless data storage aspectlib:cache temp.config.accepts_namespace run data modify storage aspectlib:cache temp.config.accepts_namespace set value "aspects"
execute unless data storage aspectlib:cache temp.config.accepts_name run data modify storage aspectlib:cache temp.config.accepts_name set value ""
execute unless data storage aspectlib:cache temp.config.accepts_with run data modify storage aspectlib:cache temp.config.accepts_with set value [""]

# Fix dynamic command value (intentionally NOT a macro command)
data modify storage aspectlib:cache temp.config.dynamic_command_value set value "$(value)"

# Fix current overflowing if Input Mode is Basic
## Don't do anything if Input Mode is Advanced
$execute if score #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs matches 1.. run return fail
## Store old dummy as it is used from parent function
data remove storage aspectlib:cache temp.temp
execute store result storage aspectlib:cache temp.temp int 1 run scoreboard players get #aspects aspectlib.dummy
## If current is out of bounds of the silder, clamp it to the slider
execute store result score #aspects aspectlib.dummy run data get storage aspectlib:cache temp.config.end
$execute if score #$(namespace) $(namespace).config.$(type).$(name) > #aspects aspectlib.dummy run data modify storage aspectlib:cache temp.config.initial set from storage aspectlib:cache temp.config.end
execute store result score #aspects aspectlib.dummy run data get storage aspectlib:cache temp.config.start
$execute if score #$(namespace) $(namespace).config.$(type).$(name) < #aspects aspectlib.dummy run data modify storage aspectlib:cache temp.config.initial set from storage aspectlib:cache temp.config.start
## Restore dummy
execute store result score #aspects aspectlib.dummy run data get storage aspectlib:cache temp.temp
