$execute if block ~ ~ ~ chest run data modify storage aspectlib:users player.$(id).aspects.aspect_data."aspects:shulk".StorageType set value "chest"
$execute if block ~ ~ ~ barrel run data modify storage aspectlib:users player.$(id).aspects.aspect_data."aspects:shulk".StorageType set value "barrel"
$data modify storage aspectlib:users player.$(id).aspects.aspect_data."aspects:shulk".Storage set from block ~ ~ ~
