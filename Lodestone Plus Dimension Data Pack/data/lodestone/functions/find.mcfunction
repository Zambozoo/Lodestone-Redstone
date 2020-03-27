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

scoreboard players operation z2 lodestone = z lodestone
scoreboard players operation z2 lodestone -= pz lodestone

scoreboard players set flag lodestone 1
execute if score x2 lodestone < #max lodestone if score x2 lodestone > #min lodestone if score z2 lodestone < #max lodestone if score z2 lodestone > #min lodestone run scoreboard players set flag lodestone 0

execute if score flag lodestone matches 0 run function lodestone:get_distance
execute if score flag lodestone matches 1 run function lodestone:overflow
