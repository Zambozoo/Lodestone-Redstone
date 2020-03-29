#Move AEC to lodestone
execute store result entity @s Pos[0] double 1 run scoreboard players get x lodestone
execute store result entity @s Pos[1] double 1 run scoreboard players get y lodestone
execute store result entity @s Pos[2] double 1 run scoreboard players get z lodestone

#If block is lodestone, might not be if broken while holding compass, continue
execute at @s if block ~ ~ ~ minecraft:lodestone run function lodestone:count_netherite

#Kill AEC
kill @s