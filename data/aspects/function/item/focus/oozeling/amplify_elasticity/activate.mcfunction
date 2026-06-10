scoreboard players set @s aspects.oozeling.amplify_elasticity 40
function aspectlib:expose/player/id
function aspects:item/focus/oozeling/amplify_elasticity/bossbar/show with storage aspectlib:cache temp
function aspects:item/focus/oozeling/amplify_elasticity/bossbar/set_value with storage aspectlib:cache temp
item modify entity @s armor.body {function:"set_enchantments",add:0b,enchantments:{"aspects:aspect/oozeling/amplify_elasticity/temp":1}}

# Apply Attributes
function aspects:item/focus/oozeling/amplify_elasticity/attributes/apply

# Play Aspect Sound
function aspects:aspect/generic/play_sound {namespace:"aspects",name:"oozeling",volume:100,pitch:110}