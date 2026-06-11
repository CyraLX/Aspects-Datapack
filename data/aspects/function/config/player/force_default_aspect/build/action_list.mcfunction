## Store config data
data remove storage aspectlib:cache temp.config
data modify storage aspectlib:cache temp.config set from storage aspectlib:registry config[{namespace:"aspects",type:"player",name:"force_default_aspect"}]
## Store registry data that will be used as the source for actions
data modify storage aspectlib:cache temp.config.registry set from storage aspectlib:registry aspect
## Loop index (will be incremented by 1 at the beginning of every loop)
scoreboard players set #aspects aspectlib.temp 0
execute store result storage aspectlib:cache temp.config.list_index int 1 run scoreboard players get #aspects aspectlib.temp
## Build
function aspects:config/player/force_default_aspect/build/action_list/loop with storage aspectlib:cache temp.config
## Append random Button to Action List
function aspects:config/player/force_default_aspect/build/action_list/action {registry_entry_translatable:{translate:"extra.aspects.random"},registry_entry_id:-1,namespace:"aspects",type:"player",name:"force_default_aspect"}
