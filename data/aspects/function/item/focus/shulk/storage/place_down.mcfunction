execute unless predicate aspects:item/focus/shulk/has_storage run return run playsound minecraft:entity.ender_eye.death player
scoreboard players set @s aspects.focus.shulk.has_storage 0
function aspectlib:player/id/expose
function aspects:item/focus/shulk/storage/get_storage_type with storage aspectlib:dummy
function aspects:item/focus/shulk/storage/apply_data with storage aspectlib:dummy
