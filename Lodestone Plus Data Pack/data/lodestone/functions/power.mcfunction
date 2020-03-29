#Calculate total distance squared
scoreboard players operation y2 lodestone -= y lodestone

scoreboard players operation x2 lodestone *= x2 lodestone
scoreboard players operation y2 lodestone *= y2 lodestone
scoreboard players operation z2 lodestone *= z2 lodestone

scoreboard players operation x2 lodestone += y2 lodestone
scoreboard players operation x2 lodestone += z2 lodestone

#Scale netherite to chunk size if netherite is > 0, else 1, and square it
execute unless score netherite lodestone matches 0 run scoreboard players operation netherite lodestone *= #16 lodestone
execute if score netherite lodestone matches 0 run scoreboard players set netherite lodestone 1
scoreboard players operation netherite lodestone *= netherite lodestone

# Calculate range values
scoreboard players set #r1 lodestone 1
scoreboard players set #r2 lodestone 4
scoreboard players set #r3 lodestone 9
scoreboard players set #r4 lodestone 16
scoreboard players set #r5 lodestone 25
scoreboard players set #r6 lodestone 36
scoreboard players set #r7 lodestone 49
scoreboard players set #r8 lodestone 64
scoreboard players set #r9 lodestone 81
scoreboard players set #r10 lodestone 100
scoreboard players set #r11 lodestone 121
scoreboard players set #r12 lodestone 144
scoreboard players set #r13 lodestone 169
scoreboard players set #r14 lodestone 196
scoreboard players set #r15 lodestone 225

scoreboard players operation #r1 lodestone *= netherite lodestone
scoreboard players operation #r2 lodestone *= netherite lodestone
scoreboard players operation #r3 lodestone *= netherite lodestone
scoreboard players operation #r4 lodestone *= netherite lodestone
scoreboard players operation #r5 lodestone *= netherite lodestone
scoreboard players operation #r6 lodestone *= netherite lodestone
scoreboard players operation #r7 lodestone *= netherite lodestone
scoreboard players operation #r8 lodestone *= netherite lodestone
scoreboard players operation #r9 lodestone *= netherite lodestone
scoreboard players operation #r10 lodestone *= netherite lodestone
scoreboard players operation #r11 lodestone *= netherite lodestone
scoreboard players operation #r12 lodestone *= netherite lodestone
scoreboard players operation #r13 lodestone *= netherite lodestone
scoreboard players operation #r14 lodestone *= netherite lodestone
scoreboard players operation #r15 lodestone *= netherite lodestone

# Compare range values to square distance
execute if score x2 lodestone <= #r15 lodestone run setblock ~ ~ ~ minecraft:target
execute if score x2 lodestone <= #r1 lodestone if score x2 lodestone > #0 lodestone run setblock ~ ~ ~ minecraft:target[power=15]
execute if score x2 lodestone <= #r2 lodestone if score x2 lodestone > #r1 lodestone run setblock ~ ~ ~ minecraft:target[power=14]
execute if score x2 lodestone <= #r3 lodestone if score x2 lodestone > #r2 lodestone run setblock ~ ~ ~ minecraft:target[power=13]
execute if score x2 lodestone <= #r4 lodestone if score x2 lodestone > #r3 lodestone run setblock ~ ~ ~ minecraft:target[power=12]
execute if score x2 lodestone <= #r5 lodestone if score x2 lodestone > #r4 lodestone run setblock ~ ~ ~ minecraft:target[power=11]
execute if score x2 lodestone <= #r6 lodestone if score x2 lodestone > #r5 lodestone run setblock ~ ~ ~ minecraft:target[power=10]
execute if score x2 lodestone <= #r7 lodestone if score x2 lodestone > #r6 lodestone run setblock ~ ~ ~ minecraft:target[power=9]
execute if score x2 lodestone <= #r8 lodestone if score x2 lodestone > #r7 lodestone run setblock ~ ~ ~ minecraft:target[power=8]
execute if score x2 lodestone <= #r9 lodestone if score x2 lodestone > #r8 lodestone run setblock ~ ~ ~ minecraft:target[power=7]
execute if score x2 lodestone <= #r10 lodestone if score x2 lodestone > #r9 lodestone run setblock ~ ~ ~ minecraft:target[power=6]
execute if score x2 lodestone <= #r11 lodestone if score x2 lodestone > #r10 lodestone run setblock ~ ~ ~ minecraft:target[power=5]
execute if score x2 lodestone <= #r12 lodestone if score x2 lodestone > #r11 lodestone run setblock ~ ~ ~ minecraft:target[power=4]
execute if score x2 lodestone <= #r13 lodestone if score x2 lodestone > #r12 lodestone run setblock ~ ~ ~ minecraft:target[power=3]
execute if score x2 lodestone <= #r14 lodestone if score x2 lodestone > #r13 lodestone run setblock ~ ~ ~ minecraft:target[power=2]
execute if score x2 lodestone > #r14 lodestone run setblock ~ ~ ~ minecraft:target[power=1]