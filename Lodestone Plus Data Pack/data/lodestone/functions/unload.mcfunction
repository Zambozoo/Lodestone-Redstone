#Clear scoreboard
scoreboard objectives remove lodestone

#disable datapack
datapack disable "file/Lodestone Plus Test Data Pack"

#Display message
tellraw @a ["",{"text":"["},{"text":"Lodestone Redstone Datapack","color":"gray"},{"text":"] Unloaded!"}]
