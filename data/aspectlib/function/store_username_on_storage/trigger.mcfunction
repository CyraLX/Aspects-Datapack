summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Invulnerable:true,Tags:["name_provider"]}
item replace entity @n[tag=name_provider,distance=..4] armor.head with minecraft:stick
item modify entity @n[tag=name_provider,distance=..4] armor.head {function:"minecraft:set_name",entity:"this",name:{selector:"@s"},target:"item_name"}
function aspectlib:player_id/expose
function aspectlib:store_username_on_storage/store with storage aspectlib:dummy
kill @n[tag=name_provider,distance=..4]
