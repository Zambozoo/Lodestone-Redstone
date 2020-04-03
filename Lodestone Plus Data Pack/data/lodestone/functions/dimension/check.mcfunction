#Check that lodestone and player are in the same dimension.
execute store result score compass_dimension lodestone run data get entity @s SelectedItem.tag.LodestoneDimension
#end = 17, nether = 20, overworld = 19, none = 0

#If in the same dimension continue.
execute if score compass_dimension lodestone = @s lodestone run function lodestone:pos/check