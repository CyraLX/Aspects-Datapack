$bossbar set aspects:generic/hydrophobia/player_$(id) name {translate: "bossbar.aspects.generic.hydrophobia", color: "aqua", with: [{translate: "bossbar.aspects.generic.hydrophobia.depleted", color: "red"}]}
$bossbar set aspects:generic/hydrophobia/player_$(id) color red
scoreboard players set @s aspects.generic.hydrophobia.state 2
