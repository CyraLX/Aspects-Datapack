$data modify block ~ ~ ~ Items set from storage aspectlib:player_$(id) aspects.aspect_data.shulk.Storage.Items
$data modify block ~ ~ ~ CustomName set from storage aspectlib:player_$(id) aspects.aspect_data.shulk.Storage.CustomName
$data remove storage aspectlib:player_$(id) aspects.aspect_data.shulk.Storage
$data remove storage aspectlib:player_$(id) aspects.aspect_data.shulk.StorageType
