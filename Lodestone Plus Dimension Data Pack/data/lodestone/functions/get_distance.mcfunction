scoreboard players operation y2 lodestone = y lodestone
scoreboard players operation y2 lodestone -= py lodestone

scoreboard players operation x2 lodestone *= x2 lodestone
scoreboard players operation y2 lodestone *= y2 lodestone
scoreboard players operation z2 lodestone *= z2 lodestone

scoreboard players operation x2 lodestone += y2 lodestone
scoreboard players operation x2 lodestone += z2 lodestone

#Spawn AEC, run power.
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[lodestone]}

execute as @e[type=minecraft:area_effect_cloud,tag=lodestone,limit=1] run function lodestone:power