#Check that lodestone and player are in the same dimension.
execute store result score compass_dimension lodestone run data get entity @s SelectedItem.tag.LodestoneDimension
#end = 17, nether = 20, overworld = 19, none = 0

execute store result score dimension lodestone run data get entity @s Dimension
#end = 1, nether = -1, overworld = 0

#If in the same dimension continue.
execute if score compass_dimension lodestone matches 17 if score dimension lodestone matches 1 run function lodestone:find
execute if score compass_dimension lodestone matches 20 if score dimension lodestone matches -1 run function lodestone:find
execute if score compass_dimension lodestone matches 19 if score dimension lodestone matches 0 run function lodestone:find