#Run as players that are holding compasses with lodstone position coords
execute as @a[nbt={SelectedItem:{id:"minecraft:compass",tag:{LodestonePos:{}}}}] run function lodestone:check_dimension

#Run again in one tick
schedule function lodestone:tick 1t