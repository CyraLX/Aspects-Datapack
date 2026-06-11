# Defaults
$function $(namespace):config/$(type)/$(name)/build/default_display with storage aspectlib:cache temp.config
$data modify storage aspectlib:cache temp.config.default_display set from storage aspectlib:registry config[{namespace:"$(namespace)",type:"$(type)",name:"$(name)"}].dialog_data.default_display

# Current
$function $(namespace):config/$(type)/$(name)/build/current_display with storage aspectlib:cache temp.config
$data modify storage aspectlib:cache temp.config.current_display set from storage aspectlib:registry config[{namespace:"$(namespace)",type:"$(type)",name:"$(name)"}].dialog_data.current_display

# Dialog Type custom fields
## Set defaults
execute unless data storage aspectlib:cache temp.config.accepts_namespace run data modify storage aspectlib:cache temp.config.accepts_namespace set value "aspects"
execute unless data storage aspectlib:cache temp.config.accepts_name run data modify storage aspectlib:cache temp.config.accepts_name set value ""
execute unless data storage aspectlib:cache temp.config.accepts_with run data modify storage aspectlib:cache temp.config.accepts_with set value [""]
## If Advanced Input Mode, set initial value for input
$execute if score #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs matches 1.. if score #$(namespace) $(namespace).config.$(type).$(name) matches $(min_value).. store result storage aspectlib:cache temp.config.initial int 1 run scoreboard players get #$(namespace) $(namespace).config.$(type).$(name)
$execute if score #$(namespace) $(namespace).config.$(type).$(name).advanced_inputs matches 1.. unless score #$(namespace) $(namespace).config.$(type).$(name) matches $(min_value).. store result storage aspectlib:cache temp.config.initial int 1 run scoreboard players get #$(namespace) $(namespace).config.$(type).$(name).default
## Prepend meta Actions to Action List
$data modify storage aspectlib:cache temp.config.action_list prepend value {label:{translate:"dialog.aspects.configs.entry.input_advanced"},action:{type:"minecraft:run_command",command:"function aspectlib:config/_macros/dialog_type/toggle_input_mode {namespace:\"$(namespace)\",type:\"$(type)\",name:\"$(name)\"}"}}
$data modify storage aspectlib:cache temp.config.action_list prepend value {label:{translate:"extra.aspects.change_option",with:[{translate:"options.off",color:"red"}]},action:{type:"minecraft:run_command",command:"function aspectlib:config/_macros/dialog_type/set_value {namespace:\"$(namespace)\",type:\"$(type)\",name:\"$(name)\",value:\"-1\"}"}}
$data modify storage aspectlib:cache temp.config.action_list prepend value {label:{translate:"dialog.aspects.configs.entry.reset_value"},action:{type:"minecraft:run_command",command:"function aspectlib:config/_macros/dialog_type/set_defaults {namespace:\"$(namespace)\",type:\"$(type)\",name:\"$(name)\"}"}}

# Fix dynamic command value (intentionally NOT a macro command)
data modify storage aspectlib:cache temp.config.dynamic_command_value set value "$(value)"
