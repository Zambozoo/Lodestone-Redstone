#remove scoreboards
scoreboard objectives remove lodestone
scoreboard objectives remove lodestone_death

#disable datapack
datapack disable "file/Lodestone Plus Data Pack"

#Display message
tellraw @a ["",{"text":"["},{"text":"Lodestone Redstone Datapack","color":"gray"},{"text":"] Unloaded!"}]
