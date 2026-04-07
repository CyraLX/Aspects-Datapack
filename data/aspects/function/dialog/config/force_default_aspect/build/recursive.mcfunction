execute if score #aspects aspectlib.dummy > #aspects aspects.registry.aspect.list_index run return run function aspects:dialog/config/force_default_aspect/build/dialog_macro with storage aspectlib:dummy
execute store result storage aspectlib:dummy list_index int 1 run scoreboard players get #aspects aspectlib.dummy
function aspects:expose/aspect/from_list_index with storage aspectlib:dummy
function aspects:dialog/config/force_default_aspect/build/action_macro with storage aspectlib:dummy aspect
function aspectlib:utility/append_string_macro with storage aspectlib:dummy
scoreboard players add #aspects aspectlib.dummy 1
function aspects:dialog/config/force_default_aspect/build/recursive
