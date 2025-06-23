execute unless predicate aspects:focus/shulk/has_storage run return run playsound minecraft:entity.ender_eye.death player
scoreboard players set @s aspects.focus.shulk.has_storage 0
function aspectlib:player_id/expose
function aspects:focus/shulk/storage/get_storage_type with storage aspectlib:dummy
function aspects:focus/shulk/storage/apply_data with storage aspectlib:dummy
