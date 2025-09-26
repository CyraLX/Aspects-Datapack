execute unless block ~ ~ ~ #aspects:item/focus/shulk/is_storage run return fail
execute if predicate aspects:item/focus/shulk/has_storage run return run playsound minecraft:block.chest.locked player
scoreboard players set @s aspects.focus.shulk.has_storage 1
function aspectlib:player/id/expose
function aspects:item/focus/shulk/storage/store_data with storage aspectlib:dummy
playsound minecraft:entity.item.pickup player @s
setblock ~ ~ ~ air
