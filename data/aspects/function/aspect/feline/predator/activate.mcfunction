scoreboard players set @s aspects.feline.predator 11
function aspectlib:expose/player/id
function aspects:aspect/feline/predator/bossbar/show with storage aspectlib:cache temp
function aspects:aspect/feline/predator/bossbar/set_value with storage aspectlib:cache temp
item modify entity @s armor.body {function:"set_enchantments",add:0b,enchantments:{"aspects:aspect/feline/predator/temp":1}}
