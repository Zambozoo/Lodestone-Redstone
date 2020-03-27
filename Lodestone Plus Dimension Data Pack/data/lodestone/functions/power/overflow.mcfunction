#Move AEC to lodestone
execute store result entity @s Pos[0] double 1 run scoreboard players get x lodestone
execute store result entity @s Pos[1] double 1 run scoreboard players get y lodestone
execute store result entity @s Pos[2] double 1 run scoreboard players get z lodestone

#Replace lodestone with target_block then back for redstone pulse.
execute at @s run setblock ~ ~ ~ minecraft:target
execute at @s run setblock ~ ~ ~ minecraft:target[power=1]

execute at @s run setblock ~ ~ ~ minecraft:lodestone

#Kill AEC
kill @s