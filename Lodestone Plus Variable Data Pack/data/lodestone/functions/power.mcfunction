#Calculate total distance squared
scoreboard players operation y2 lodestone -= y lodestone

scoreboard players operation x2 lodestone *= x2 lodestone
scoreboard players operation y2 lodestone *= y2 lodestone
scoreboard players operation z2 lodestone *= z2 lodestone

scoreboard players operation x2 lodestone += y2 lodestone
scoreboard players operation x2 lodestone += z2 lodestone

#Move AEC to lodestone
execute store result entity @s Pos[0] double 1 run scoreboard players get x lodestone
execute store result entity @s Pos[1] double 1 run scoreboard players get y lodestone
execute store result entity @s Pos[2] double 1 run scoreboard players get z lodestone

# Store number of netherite_block in range of lodestone with flag
scoreboard players set flag lodestone 1
execute at @s if block ~1 ~-1 ~-1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~0 ~-1 ~-1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~-1 ~-1 ~-1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~1 ~0 ~-1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~-1 ~0 ~-1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~1 ~1 ~-1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~0 ~1 ~-1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~-1 ~1 ~-1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~1 ~-1 ~0 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~-1 ~-1 ~0 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~1 ~1 ~0 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~-1 ~1 ~0 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~1 ~-1 ~1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~0 ~-1 ~1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~-1 ~-1 ~1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~1 ~0 ~1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~-1 ~0 ~1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~1 ~1 ~1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~0 ~1 ~1 minecraft:netherite_block run scoreboard players add flag lodestone 1
execute at @s if block ~-1 ~1 ~1 minecraft:netherite_block run scoreboard players add flag lodestone 1

# Calculate range values
scoreboard players set #r1 lodestone 1
scoreboard players operation #r1 lodestone *= flag lodestone
scoreboard players operation #r1 lodestone *= #r1 lodestone

scoreboard players set #r2 lodestone 2
scoreboard players operation #r2 lodestone *= flag lodestone
scoreboard players operation #r2 lodestone *= #r2 lodestone

scoreboard players set #r3 lodestone 3
scoreboard players operation #r3 lodestone *= flag lodestone
scoreboard players operation #r3 lodestone *= #r3 lodestone

scoreboard players set #r4 lodestone 4
scoreboard players operation #r4 lodestone *= flag lodestone
scoreboard players operation #r4 lodestone *= #r4 lodestone

scoreboard players set #r5 lodestone 5
scoreboard players operation #r5 lodestone *= flag lodestone
scoreboard players operation #r5 lodestone *= #r5 lodestone

scoreboard players set #r6 lodestone 6
scoreboard players operation #r6 lodestone *= flag lodestone
scoreboard players operation #r6 lodestone *= #r6 lodestone

scoreboard players set #r7 lodestone 7
scoreboard players operation #r7 lodestone *= flag lodestone
scoreboard players operation #r7 lodestone *= #r7 lodestone

scoreboard players set #r8 lodestone 8
scoreboard players operation #r8 lodestone *= flag lodestone
scoreboard players operation #r8 lodestone *= #r8 lodestone

scoreboard players set #r9 lodestone 9
scoreboard players operation #r9 lodestone *= flag lodestone
scoreboard players operation #r9 lodestone *= #r9 lodestone

scoreboard players set #r10 lodestone 10
scoreboard players operation #r10 lodestone *= flag lodestone
scoreboard players operation #r10 lodestone *= #r10 lodestone

scoreboard players set #r11 lodestone 11
scoreboard players operation #r11 lodestone *= flag lodestone
scoreboard players operation #r11 lodestone *= #r11 lodestone

scoreboard players set #r12 lodestone 12
scoreboard players operation #r12 lodestone *= flag lodestone
scoreboard players operation #r12 lodestone *= #r12 lodestone

scoreboard players set #r13 lodestone 13
scoreboard players operation #r13 lodestone *= flag lodestone
scoreboard players operation #r13 lodestone *= #r13 lodestone

scoreboard players set #r14 lodestone 14
scoreboard players operation #r14 lodestone *= flag lodestone
scoreboard players operation #r14 lodestone *= #r14 lodestone

scoreboard players set #r15 lodestone 15
scoreboard players operation #r15 lodestone *= flag lodestone
scoreboard players operation #r15 lodestone *= #r15 lodestone

# Compare range values to square distance
execute if score x2 lodestone > #0 lodestone if score x2 lodestone <= #r1 lodestone run function lodestone:power/15
execute if score x2 lodestone > #r1 lodestone if score x2 lodestone <= #r2 lodestone run function lodestone:power/14
execute if score x2 lodestone > #r2 lodestone if score x2 lodestone <= #r3 lodestone run function lodestone:power/13
execute if score x2 lodestone > #r3 lodestone if score x2 lodestone <= #r4 lodestone run function lodestone:power/12
execute if score x2 lodestone > #r4 lodestone if score x2 lodestone <= #r5 lodestone run function lodestone:power/11
execute if score x2 lodestone > #r5 lodestone if score x2 lodestone <= #r6 lodestone run function lodestone:power/10
execute if score x2 lodestone > #r6 lodestone if score x2 lodestone <= #r7 lodestone run function lodestone:power/9
execute if score x2 lodestone > #r7 lodestone if score x2 lodestone <= #r8 lodestone run function lodestone:power/8
execute if score x2 lodestone > #r8 lodestone if score x2 lodestone <= #r9 lodestone run function lodestone:power/7
execute if score x2 lodestone > #r9 lodestone if score x2 lodestone <= #r10 lodestone run function lodestone:power/6
execute if score x2 lodestone > #r10 lodestone if score x2 lodestone <= #r11 lodestone run function lodestone:power/5
execute if score x2 lodestone > #r11 lodestone if score x2 lodestone <= #r12 lodestone run function lodestone:power/4
execute if score x2 lodestone > #r12 lodestone if score x2 lodestone <= #r13 lodestone run function lodestone:power/3
execute if score x2 lodestone > #r13 lodestone if score x2 lodestone <= #r14 lodestone run function lodestone:power/2
execute if score x2 lodestone > #r14 lodestone if score x2 lodestone <= #r15 lodestone run function lodestone:power/1
execute if score flag lodestone matches 21 run function lodestone:power/1

execute at @s run setblock ~ ~ ~ minecraft:lodestone

#Kill AEC
kill @s