advancement revoke @s from aspects:item/focus/rascal/use

playsound minecraft:ambient.cave player @a[distance=..16] ~ ~ ~
execute if dimension minecraft:overworld run return run spreadplayers ~ ~ 24 196 under 0 false @s
execute if dimension minecraft:the_nether run return run spreadplayers ~ ~ 12 48 under 72 false @s
execute if dimension minecraft:the_end run return run spreadplayers ~ ~ 36 256 under 72 false @s
spreadplayers ~ ~ 16 128 under 56 false @s
playsound minecraft:ambient.cave player @a[distance=..16] ~ ~ ~