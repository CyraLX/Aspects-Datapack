# Migrate current input mode to a temp scoreboard
scoreboard players reset #aspects aspectlib.temp
$scoreboard players operation #aspects aspectlib.temp = #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs

# If Advanced Input Mode, change to Basic Input Mode
execute if score #aspects aspectlib.temp matches 1.. run function aspectlib:config/_macros/dialog_type/set_input_mode_to_basic with storage aspectlib:cache temp.config
# Otherwise change to Advanced Input Mode
execute unless score #aspects aspectlib.temp matches 1.. run function aspectlib:config/_macros/dialog_type/set_input_mode_to_advanced with storage aspectlib:cache temp.config

# Re-open Dialog
$function aspectlib:config/_macros/dialog_type/show_dialog {namespace:"$(namespace)",type:"$(type)",name:"$(name)"}
