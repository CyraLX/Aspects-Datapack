$data modify storage aspectlib:dummy aspects_pack_format_previous set from storage aspectlib:player_$(id) aspects.pack_format.previous
$data modify storage aspectlib:dummy aspects_pack_format_current set from storage aspectlib:player_$(id) aspects.pack_format.current
function #aspects:data_fixer/pack_format/validate_data with storage aspectlib:dummy
