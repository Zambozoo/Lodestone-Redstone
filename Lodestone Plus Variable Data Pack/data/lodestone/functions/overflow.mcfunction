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

execute if score flag lodestone matches 21 run function lodestone:power/1
execute at @s run setblock ~ ~ ~ minecraft:lodestone

#Kill AEC
kill @s