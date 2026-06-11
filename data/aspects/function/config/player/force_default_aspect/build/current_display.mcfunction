# Current: -1 (Random)
execute if score #aspects aspects.config.player.force_default_aspect matches -1 run return run data modify storage aspectlib:registry config[{namespace:"aspects",type:"player",name:"force_default_aspect"}].dialog_data.current_display set value [{translate:"extra.aspects.random",color:"blue"},{text:" | ",color:"white"},{text:"-1",color:"blue"}]
# If current is invalid, assume default
$execute unless score #aspects aspects.config.player.force_default_aspect matches 0.. run return run data modify storage aspectlib:registry config[{namespace:"aspects",type:"player",name:"force_default_aspect"}].dialog_data.current_display set value [{translate:"options.off",color:"red"},{text:" | ",color:"white"},{text:"$(default)",color:"blue"}]
# Otherwise set current as Aspect Translatable
## Store ID
data remove storage aspectlib:cache temp.id
execute store result storage aspectlib:cache temp.id int 1 run scoreboard players get #aspects aspects.config.player.force_default_aspect
## Get Aspect Entry
function aspects:expose/aspect/from_aspect_id with storage aspectlib:cache temp
execute unless data storage aspectlib:cache temp.aspect run scoreboard players operation #aspects aspects.config.player.force_default_aspect = #aspects aspects.config.player.force_default_aspect.default
$execute unless data storage aspectlib:cache temp.aspect run return run function aspects:config/player/force_default_aspect/build/current_display {default:$(default),current:$(default)}
function aspects:aspect/get_translatable_with_namespace with storage aspectlib:cache temp.aspect
execute unless data storage aspectlib:cache temp.aspect_translatable run scoreboard players operation #aspects aspects.config.player.force_default_aspect = #aspects aspects.config.player.force_default_aspect.default
$execute unless data storage aspectlib:cache temp.aspect_translatable run return run function aspects:config/player/force_default_aspect/build/current_display {default:$(default),current:$(default)}
## Append literal ID's to Translatable before setting
data modify storage aspectlib:cache temp.aspect_translatable append value {text:" | ",color:"white"}
$data modify storage aspectlib:cache temp.aspect_translatable append value {text:"$(current)",color:"blue"}
## Set current as Aspect Translatable
data modify storage aspectlib:registry config[{namespace:"aspects",type:"player",name:"force_default_aspect"}].dialog_data.current_display set from storage aspectlib:cache temp.aspect_translatable 