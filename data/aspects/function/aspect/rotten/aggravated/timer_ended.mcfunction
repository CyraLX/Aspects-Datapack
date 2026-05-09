# End Aggravated
function aspectlib:expose/player/id
function aspects:aspect/rotten/aggravated/bossbar/hide with storage aspectlib:cache temp
# Play Aspect Sound
function aspects:aspect/generic/play_sound {namespace:"aspects",name:"rotten",volume:100,pitch:110}
# Disable Attributes
function aspects:aspect/rotten/aggravated/attribute/disabled