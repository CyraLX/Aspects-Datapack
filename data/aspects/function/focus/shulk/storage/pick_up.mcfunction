execute unless block ~ ~ ~ #aspects:focus/shulk/is_storage run return fail
execute if predicate aspects:focus/shulk/has_storage run return run playsound minecraft:block.chest.locked player
scoreboard players set @s aspects.focus.shulk.has_storage 1
function aspectlib:player/id/expose
function aspects:focus/shulk/storage/store_data with storage aspectlib:dummy
playsound minecraft:entity.item.pickup player @s
setblock ~ ~ ~ air
