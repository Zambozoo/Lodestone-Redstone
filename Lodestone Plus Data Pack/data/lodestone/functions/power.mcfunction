#Calculate total distance squared
scoreboard players operation y2 lodestone -= y lodestone

scoreboard players operation x2 lodestone *= x2 lodestone
scoreboard players operation y2 lodestone *= y2 lodestone
scoreboard players operation z2 lodestone *= z2 lodestone

scoreboard players operation x2 lodestone += y2 lodestone
scoreboard players operation x2 lodestone += z2 lodestone

#Scale netherite to chunk size and square it
scoreboard players operation netherite lodestone *= #16 lodestone
scoreboard players operation netherite lodestone *= netherite lodestone

#Adjust x2 to netherite value.
scoreboard players operation x2 lodestone -= #2 lodestone
execute unless score netherite lodestone matches 0 run scoreboard players operation x2 lodestone /= netherite lodestone

#Compare range values to x2
execute if score x2 lodestone < #r15 lodestone run setblock ~ ~ ~ minecraft:target
execute if score x2 lodestone < #r1 lodestone run setblock ~ ~ ~ minecraft:target[power=15]
execute if score x2 lodestone < #r2 lodestone if score x2 lodestone >= #r1 lodestone run setblock ~ ~ ~ minecraft:target[power=14]
execute if score x2 lodestone < #r3 lodestone if score x2 lodestone >= #r2 lodestone run setblock ~ ~ ~ minecraft:target[power=13]
execute if score x2 lodestone < #r4 lodestone if score x2 lodestone >= #r3 lodestone run setblock ~ ~ ~ minecraft:target[power=12]
execute if score x2 lodestone < #r5 lodestone if score x2 lodestone >= #r4 lodestone run setblock ~ ~ ~ minecraft:target[power=11]
execute if score x2 lodestone < #r6 lodestone if score x2 lodestone >= #r5 lodestone run setblock ~ ~ ~ minecraft:target[power=10]
execute if score x2 lodestone < #r7 lodestone if score x2 lodestone >= #r6 lodestone run setblock ~ ~ ~ minecraft:target[power=9]
execute if score x2 lodestone < #r8 lodestone if score x2 lodestone >= #r7 lodestone run setblock ~ ~ ~ minecraft:target[power=8]
execute if score x2 lodestone < #r9 lodestone if score x2 lodestone >= #r8 lodestone run setblock ~ ~ ~ minecraft:target[power=7]
execute if score x2 lodestone < #r10 lodestone if score x2 lodestone >= #r9 lodestone run setblock ~ ~ ~ minecraft:target[power=6]
execute if score x2 lodestone < #r11 lodestone if score x2 lodestone >= #r10 lodestone run setblock ~ ~ ~ minecraft:target[power=5]
execute if score x2 lodestone < #r12 lodestone if score x2 lodestone >= #r11 lodestone run setblock ~ ~ ~ minecraft:target[power=4]
execute if score x2 lodestone < #r13 lodestone if score x2 lodestone >= #r12 lodestone run setblock ~ ~ ~ minecraft:target[power=3]
execute if score x2 lodestone < #r14 lodestone if score x2 lodestone >= #r13 lodestone run setblock ~ ~ ~ minecraft:target[power=2]
execute if score x2 lodestone >= #r14 lodestone run setblock ~ ~ ~ minecraft:target[power=1]