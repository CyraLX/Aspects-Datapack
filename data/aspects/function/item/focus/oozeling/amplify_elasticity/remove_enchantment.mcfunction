# Clean up before removing enchantment
## Revoke attributes
function aspects:item/focus/oozeling/amplify_elasticity/attributes/revoke
## Delete bar
function aspectlib:expose/player/id
function aspects:item/focus/oozeling/amplify_elasticity/bossbar/hide with storage aspectlib:cache temp
## Reset scores
function aspects:item/focus/oozeling/amplify_elasticity/scoreboard/reset
# Remove enchantment
item modify entity @s armor.body {function:"set_enchantments",add:0b,enchantments:{"aspects:aspect/oozeling/amplify_elasticity/temp":0}}
# Play Aspect Sound
function aspects:aspect/generic/play_sound {namespace:"aspects",name:"oozeling",volume:100,pitch:90}
