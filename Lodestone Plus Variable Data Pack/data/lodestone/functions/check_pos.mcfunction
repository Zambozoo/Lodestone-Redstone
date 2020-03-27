#Store lodestone location to scoreboard.
execute store result score x lodestone run data get entity @s SelectedItem.tag.LodestonePos.X
execute store result score y lodestone run data get entity @s SelectedItem.tag.LodestonePos.Y
execute store result score z lodestone run data get entity @s SelectedItem.tag.LodestonePos.Z

#Store player position in x2 y2 z2
execute store result score x2 lodestone run data get entity @s Pos[0]
execute store result score y2 lodestone run data get entity @s Pos[1]
execute store result score z2 lodestone run data get entity @s Pos[2]

# Store dx dz in x2 z2
scoreboard players operation x2 lodestone -= x lodestone
scoreboard players operation z2 lodestone -= z lodestone

# Check for overflow, happens at 65536^2 so we avoid that at 32768^2
scoreboard players set flag lodestone 1
execute if score x2 lodestone < #max lodestone if score x2 lodestone > #min lodestone if score z2 lodestone < #max lodestone if score z2 lodestone > #min lodestone run scoreboard players set flag lodestone 0

# Summon AEC
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[lodestone]}

execute if score flag lodestone matches 0 as @e[type=minecraft:area_effect_cloud,tag=lodestone,limit=1] run function lodestone:power
execute if score flag lodestone matches 1 as @e[type=minecraft:area_effect_cloud,tag=lodestone,limit=1] run function lodestone:overflow
