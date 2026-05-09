# Clean up before removing enchantment
## Revoke attributes
function aspects:aspect/feline/predator/attributes/pursuing/revoke
function aspects:aspect/feline/predator/attributes/recovering/revoke
## Reset scoreboard state
scoreboard players set @s aspects.feline.predator.state 0
## Delete bar
function aspectlib:expose/player/id
function aspects:aspect/feline/predator/bossbar/hide with storage aspectlib:cache temp
## Reset scores
function aspects:aspect/feline/predator/scoreboard/reset
# Remove enchantment
item modify entity @s armor.body {function:"set_enchantments",add:0b,enchantments:{"aspects:aspect/feline/predator/temp":0}}
# Play Aspect Sound
function aspects:aspect/generic/play_sound {namespace:"aspects",name:"feline",volume:100,pitch:90}
