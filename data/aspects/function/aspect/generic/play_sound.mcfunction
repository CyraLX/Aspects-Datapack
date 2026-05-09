data remove storage aspectlib:cache temp.aspect
data remove storage aspectlib:cache temp.sound
$data modify storage aspectlib:cache temp.aspect set from storage aspectlib:registry aspect[{namespace:"$(namespace)",name:"$(name)"}]
data modify storage aspectlib:cache temp.sound.sound set from storage aspectlib:cache temp.aspect.sound
data modify storage aspectlib:cache temp.sound.type set value "player"
$data modify storage aspectlib:cache temp.sound.volume set value $(volume)
$data modify storage aspectlib:cache temp.sound.pitch set value $(pitch)
function aspectlib:utility/play_pitched_sound_macro with storage aspectlib:cache temp.sound