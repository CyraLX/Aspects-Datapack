$bossbar set aspects:aspect_group/hydrophobia/player_$(id) name {translate: "bossbar.aspects.aspect_group.hydrophobic", color: "aqua", with: [{translate: "bossbar.aspects.aspect_group.hydrophobic.depleted", color: "red"}]}
$bossbar set aspects:aspect_group/hydrophobia/player_$(id) color red
scoreboard players set @s aspects.aspect_group.hydrophobic.state 2
