# Migrate current input mode to a temp scoreboard
scoreboard players reset #aspects aspectlib.dummy
$scoreboard players operation #aspects aspectlib.dummy = #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs

# If Advanced Input Mode, change to Basic Input Mode
execute if score #aspects aspectlib.dummy matches 1.. run function aspects:config/_macros/dialog_type/set_input_mode_to_basic with storage aspectlib:dummy config
# Otherwise change to Advanced Input Mode
execute unless score #aspects aspectlib.dummy matches 1.. run function aspects:config/_macros/dialog_type/set_input_mode_to_advanced with storage aspectlib:dummy config

# Re-open Dialog
$function aspects:config/_macros/dialog_type/show_dialog {namespace:"$(namespace)",type:"$(type)",name:"$(name)"}
