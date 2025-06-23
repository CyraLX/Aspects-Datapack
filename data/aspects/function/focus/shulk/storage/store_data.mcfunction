$execute if block ~ ~ ~ chest run data modify storage aspectlib:player_$(id) aspects.aspect_data.shulk.StorageType set value "chest"
$execute if block ~ ~ ~ barrel run data modify storage aspectlib:player_$(id) aspects.aspect_data.shulk.StorageType set value "barrel"
$data modify storage aspectlib:player_$(id) aspects.aspect_data.shulk.Storage set from block ~ ~ ~
