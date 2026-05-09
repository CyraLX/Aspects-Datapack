function aspectlib:expose/player/id
function aspects:expose/aspect/from_player_id with storage aspectlib:cache temp
return run function aspects:dialog/choose_aspect/undefined/reset_if_missing with storage aspectlib:cache temp.aspect
