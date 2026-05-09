# Set score to Default value
$function aspectlib:config/_macros/set_defaults with storage aspectlib:registry config[{namespace:"$(namespace)",type:"$(type)",name:"$(name)"}]

# Re-open Dialog
$function aspectlib:config/_macros/dialog_type/show_dialog {namespace:"$(namespace)",type:"$(type)",name:"$(name)"}