execute if score #aspects aspectlib.dummy > #aspects aspects.registry.aspect.list_index run return run function aspects:dialog/config/default_aspect/build_dialog_macro with storage aspectlib:dummy
execute store result storage aspectlib:dummy list_index int 1 run scoreboard players get #aspects aspectlib.dummy
function aspects:expose/aspect/registry_from_list_index with storage aspectlib:dummy
function aspects:dialog/config/default_aspect/build_action_macro with storage aspectlib:dummy aspect_registry
function aspects:dialog/config/default_aspect/append_string with storage aspectlib:dummy
scoreboard players add #aspects aspectlib.dummy 1
function aspects:dialog/config/default_aspect/recursive
