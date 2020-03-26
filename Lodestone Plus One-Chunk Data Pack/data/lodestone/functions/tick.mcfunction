#Run as players that are holding compasses
execute as @a[nbt={SelectedItem:{id:"minecraft:compass"}}] run function lodestone:player_check

#Run again in one tick
schedule function lodestone:tick 1t