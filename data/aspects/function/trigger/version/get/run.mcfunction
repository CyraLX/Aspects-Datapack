advancement revoke @s only aspects:trigger/version/get/run
scoreboard players enable @s aspects.version.get
scoreboard players set @s aspects.version.get 0

tag @s add version_retriever

data remove storage aspectlib:dummy text_suffix
execute if score #aspects aspects.version.is_dev matches 1 run data modify storage aspectlib:dummy text_suffix set value "-dev"

execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs, tag=!version_retriever] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{selector:"@s",color:"gold"}," checked this modification's version"]}
tellraw @s {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]},{text:"",color:gold,extra:["v",{score:{name:"#aspects",objective:"aspects.version.release"}},".",{score:{name:"#aspects",objective:"aspects.version.major"}},".",{score:{name:"#aspects",objective:"aspects.version.minor"}},{storage:"aspectlib:dummy",nbt:"text_suffix"}]}," (Pack Format: ",{score:{name:"#aspects",objective:"aspects.pack_format"},color:"gold"},")"]}

tag @s remove version_retriever
