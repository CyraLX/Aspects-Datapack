# Set score to Default value
$function aspects:config/_macros/set_defaults with storage aspects:registry config[{namespace:"$(namespace)",type:"$(type)",name:"$(name)"}]

# Re-open Dialog
$function aspects:config/_macros/dialog_type/show_dialog {namespace:"$(namespace)",type:"$(type)",name:"$(name)"}