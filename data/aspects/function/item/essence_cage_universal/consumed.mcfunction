advancement revoke @s only aspects:item/essence_cage_universal/consume

function aspectlib:expose/player/id
function aspects:expose/aspect/from_player_id with storage aspectlib:cache temp
function aspects:aspect/generic/remove_old_aspect with storage aspectlib:cache temp.aspect
function aspects:dialog/choose_aspect/open_menu
