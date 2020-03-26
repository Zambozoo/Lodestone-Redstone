#Store lodestone location to scoreboard.
execute store result score x lodestone run data get entity @s SelectedItem.tag.LodestonePos.X
execute store result score y lodestone run data get entity @s SelectedItem.tag.LodestonePos.Y
execute store result score z lodestone run data get entity @s SelectedItem.tag.LodestonePos.Z

execute store result score px lodestone run data get entity @s Pos[0]
execute store result score py lodestone run data get entity @s Pos[1]
execute store result score pz lodestone run data get entity @s Pos[2]

# Store Player position, calculate distance from lodestone in x2
scoreboard players operation x2 lodestone = x lodestone
scoreboard players operation x2 lodestone -= px lodestone
scoreboard players operation x2 lodestone *= x2 lodestone

scoreboard players operation y2 lodestone = y lodestone
scoreboard players operation y2 lodestone -= py lodestone
scoreboard players operation y2 lodestone *= y2 lodestone

scoreboard players operation z2 lodestone = z lodestone
scoreboard players operation z2 lodestone -= pz lodestone
scoreboard players operation z2 lodestone *= z2 lodestone

scoreboard players operation x2 lodestone += y2 lodestone
scoreboard players operation x2 lodestone += z2 lodestone


#Spawn AEC, run power.
execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:[lodestone]}

execute as @e[type=minecraft:area_effect_cloud,tag=lodestone,limit=1] run function lodestone:power