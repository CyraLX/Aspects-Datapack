# Logger
execute if entity @p[tag=get_debug_logs] run tellraw @a[tag=get_debug_logs] {text:"",color:"#aaaaaa",extra:[{text:"",color:"#f88379",extra:["[",{translate:"aspects"},"]: "]}, {selector:"@s",color:"gold"}," has an Aspect ID score \"",{score:{name:"@s",objective:"aspects.aspect_id"},color:"gold"},"\", but is missing an Aspect Enchantment. Running ",{text:"ON_RESPAWN",color:"gold"}," event for them..."]}
# Call ON_RESPAWN event
function #aspects:event/on_respawn
