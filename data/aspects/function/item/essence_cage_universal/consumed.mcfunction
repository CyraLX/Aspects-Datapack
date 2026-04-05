advancement revoke @s only aspects:item/essence_cage_universal/consume

scoreboard players set @s aspects.essence_cage_universal.was_used 1

function aspectlib:expose/player/id
function aspects:expose/aspect/from_player_id with storage aspectlib:dummy
function aspects:aspect/generic/remove_old_aspect with storage aspectlib:dummy aspect
function aspects:dialog/choose_aspect/open_menu
