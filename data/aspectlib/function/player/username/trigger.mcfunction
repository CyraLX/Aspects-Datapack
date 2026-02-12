summon minecraft:armor_stand ~ ~ ~ {NoGravity:true,Invisible:true,Invulnerable:true,Tags:["name_provider"]}
item replace entity @n[type=minecraft:armor_stand,tag=name_provider,distance=..16] armor.head with minecraft:stick
item modify entity @n[type=minecraft:armor_stand,tag=name_provider,distance=..16] armor.head {function:"minecraft:set_name",entity:"this",name:{selector:"@s"},target:"item_name"}
function aspectlib:player/id/expose
function aspectlib:player/username/store with storage aspectlib:dummy
kill @e[type=minecraft:armor_stand,tag=name_provider,distance=..16]
