#Move AEC to lodestone
execute store result entity @s Pos[0] double 1 run scoreboard players get x lodestone
execute store result entity @s Pos[1] double 1 run scoreboard players get y lodestone
execute store result entity @s Pos[2] double 1 run scoreboard players get z lodestone

execute if score x2 lodestone <= #sq1 lodestone run function lodestone:power/15
execute if score x2 lodestone > #sq1 lodestone if score x2 lodestone <= #sq2 lodestone run function lodestone:power/14
execute if score x2 lodestone > #sq2 lodestone if score x2 lodestone <= #sq3 lodestone run function lodestone:power/13
execute if score x2 lodestone > #sq3 lodestone if score x2 lodestone <= #sq4 lodestone run function lodestone:power/12
execute if score x2 lodestone > #sq4 lodestone if score x2 lodestone <= #sq5 lodestone run function lodestone:power/11
execute if score x2 lodestone > #sq5 lodestone if score x2 lodestone <= #sq6 lodestone run function lodestone:power/10
execute if score x2 lodestone > #sq6 lodestone if score x2 lodestone <= #sq7 lodestone run function lodestone:power/9
execute if score x2 lodestone > #sq7 lodestone if score x2 lodestone <= #sq8 lodestone run function lodestone:power/8
execute if score x2 lodestone > #sq8 lodestone if score x2 lodestone <= #sq9 lodestone run function lodestone:power/7
execute if score x2 lodestone > #sq9 lodestone if score x2 lodestone <= #sq10 lodestone run function lodestone:power/6
execute if score x2 lodestone > #sq10 lodestone if score x2 lodestone <= #sq11 lodestone run function lodestone:power/5
execute if score x2 lodestone > #sq11 lodestone if score x2 lodestone <= #sq12 lodestone run function lodestone:power/4
execute if score x2 lodestone > #sq12 lodestone if score x2 lodestone <= #sq13 lodestone run function lodestone:power/3
execute if score x2 lodestone > #sq13 lodestone if score x2 lodestone <= #sq14 lodestone run function lodestone:power/2
execute if score x2 lodestone > #sq14 lodestone run function lodestone:power/1

execute at @s run setblock ~ ~ ~ minecraft:lodestone

#Kill AEC
kill @s