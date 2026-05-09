# Fetch full Config data
data remove storage aspectlib:cache temp.config
$data modify storage aspectlib:cache temp.config set from storage aspectlib:registry config[{namespace:"$(namespace)",type:"$(type)",name:"$(name)"}]
# Migrate Dialog data to Config storage
execute if data storage aspectlib:cache temp.config.dialog_data run data modify storage aspectlib:cache temp.config merge from storage aspectlib:cache temp.config.dialog_data
execute if data storage aspectlib:cache temp.config.dialog_data run data remove storage aspectlib:cache temp.config.dialog_data
# Migrate Current and Default to storage
$execute store result storage aspectlib:cache temp.config.default int 1 run scoreboard players get #$(namespace) $(namespace).config.$(type).$(name).default
$execute store result storage aspectlib:cache temp.config.current int 1 run scoreboard players get #$(namespace) $(namespace).config.$(type).$(name)
# Migrate Dialog Type to a temp scoreboard
execute store result score #aspects aspectlib.dummy run data get storage aspectlib:cache temp.config.dialog_type

# If type Boolean/Toggle
## Boolean Data
execute if score #aspects aspectlib.dummy matches 1 run function aspectlib:config/_macros/dialog_type/boolean/dialog_data with storage aspectlib:cache temp.config
## Run macro dialog
execute if score #aspects aspectlib.dummy matches 1 run function aspectlib:config/_macros/dialog_type/boolean/show_dialog with storage aspectlib:cache temp.config
# If type Integer/Number
## Integer Data
execute if score #aspects aspectlib.dummy matches 2 run function aspectlib:config/_macros/dialog_type/integer/dialog_data with storage aspectlib:cache temp.config
## Run macro dialog
$execute if score #aspects aspectlib.dummy matches 2 if score #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs matches 1.. run function aspectlib:config/_macros/dialog_type/integer/show_dialog_advanced with storage aspectlib:cache temp.config
$execute if score #aspects aspectlib.dummy matches 2 unless score #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs matches 1.. run function aspectlib:config/_macros/dialog_type/integer/show_dialog_basic with storage aspectlib:cache temp.config
# If type List Choice
## List Data
execute if score #aspects aspectlib.dummy matches 3 run function aspectlib:config/_macros/dialog_type/list/dialog_data with storage aspectlib:cache temp.config
## Run macro dialog
$execute if score #aspects aspectlib.dummy matches 3 if score #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs matches 1.. run function aspectlib:config/_macros/dialog_type/list/show_dialog_advanced with storage aspectlib:cache temp.config
$execute if score #aspects aspectlib.dummy matches 3 unless score #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs matches 1.. run function aspectlib:config/_macros/dialog_type/list/show_dialog_basic with storage aspectlib:cache temp.config
