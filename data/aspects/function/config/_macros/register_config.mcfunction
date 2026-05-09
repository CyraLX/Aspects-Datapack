## Default Entry Values
execute unless data storage aspectlib:dummy config.dialog_type run data modify storage aspectlib:dummy config.dialog_type set value 0
execute unless data storage aspectlib:dummy config.dialog_data run data modify storage aspectlib:dummy config.dialog_data set value {}
execute unless data storage aspectlib:dummy config.name_with run data modify storage aspectlib:dummy config.name_with set value [""]
execute unless data storage aspectlib:dummy config.description_with run data modify storage aspectlib:dummy config.description_with set value [""]
execute unless data storage aspectlib:dummy config.note_with run data modify storage aspectlib:dummy config.note_with set value [""]
## Append entry to Registry
data modify storage aspects:registry config append from storage aspectlib:dummy config

# Apply Default value
## If defaults have changed and current is old defaults, sync current and old defaults to new defaults
$execute unless score #$(namespace) $(namespace).config.$(type).$(name).default = #$(namespace) aspectlib.dummy if score #$(namespace) $(namespace).config.$(type).$(name) = #$(namespace) $(namespace).config.$(type).$(name).default run scoreboard players operation #$(namespace) $(namespace).config.$(type).$(name) = #$(namespace) aspectlib.dummy
## Sync Default
$scoreboard players operation #$(namespace) $(namespace).config.$(type).$(name).default = #$(namespace) aspectlib.dummy
## If current not set, apply defaults
$execute unless score #$(namespace) $(namespace).config.$(type).$(name) = #$(namespace) $(namespace).config.$(type).$(name) run scoreboard players operation #$(namespace) $(namespace).config.$(type).$(name) = #$(namespace) $(namespace).config.$(type).$(name).default

# Advanced Inputs are off by Default
$execute unless score #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs = #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs run scoreboard players operation #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs = #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs

# Logger
function aspects:config/_macros/register_config_logger with storage aspectlib:dummy config
