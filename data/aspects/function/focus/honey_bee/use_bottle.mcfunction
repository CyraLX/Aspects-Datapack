scoreboard players add @s aspects.honey_bee.created_honey_bottles 1
function aspectlib:player_id/expose
function aspects:focus/honey_bee/modify_bottle with storage aspectlib:dummy
item modify entity @s weapon.offhand aspectlib:consume/1
