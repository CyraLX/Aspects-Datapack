scoreboard players set @s aspects.aspect_group.hydrophobic.current 0
execute unless predicate aspects:aspect_group/hydrophobic/state/idle run return run function aspects:aspect_group/hydrophobic/logic/bossbar/state_idle with storage aspectlib:dummy
