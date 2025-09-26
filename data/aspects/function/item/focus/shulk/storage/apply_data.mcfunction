$data modify block ~ ~ ~ Items set from storage aspectlib:player_$(id) aspects.aspect_data."aspects:shulk".Storage.Items
$data modify block ~ ~ ~ CustomName set from storage aspectlib:player_$(id) aspects.aspect_data."aspects:shulk".Storage.CustomName
$data remove storage aspectlib:player_$(id) aspects.aspect_data."aspects:shulk".Storage
$data remove storage aspectlib:player_$(id) aspects.aspect_data."aspects:shulk".StorageType
