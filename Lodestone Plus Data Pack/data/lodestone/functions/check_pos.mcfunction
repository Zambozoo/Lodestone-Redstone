#Store lodestone location to scoreboard.
execute store result score y lodestone run data get entity @s SelectedItem.tag.LodestonePos.Y
execute store result score z lodestone run data get entity @s SelectedItem.tag.LodestonePos.Z

#Store player position in x2 y2 z2
execute store result score x2 lodestone run data get entity @s Pos[0]
execute store result score y2 lodestone run data get entity @s Pos[1]
execute store result score z2 lodestone run data get entity @s Pos[2]

# Store dx dz in x2 z2
scoreboard players operation x2 lodestone -= x lodestone
scoreboard players operation z2 lodestone -= z lodestone

# Summon AEC, run as it
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[lodestone]}
execute as @e[type=minecraft:area_effect_cloud,tag=lodestone,limit=1] run function lodestone:lodestone_to
