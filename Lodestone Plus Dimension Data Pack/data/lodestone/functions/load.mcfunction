#Add scoreboard
scoreboard objectives add lodestone dummy
scoreboard players set #sq1 lodestone 1
scoreboard players set #sq2 lodestone 4
scoreboard players set #sq3 lodestone 9
scoreboard players set #sq4 lodestone 16
scoreboard players set #sq5 lodestone 25
scoreboard players set #sq6 lodestone 36
scoreboard players set #sq7 lodestone 49
scoreboard players set #sq8 lodestone 64
scoreboard players set #sq9 lodestone 81
scoreboard players set #sq10 lodestone 100
scoreboard players set #sq11 lodestone 121
scoreboard players set #sq12 lodestone 144
scoreboard players set #sq13 lodestone 169
scoreboard players set #sq14 lodestone 196

#Display message
tellraw @a ["",{"text":"["},{"text":"Lodestone Redstone Datapack","color":"gray"},{"text":"] Loaded!\n Lodestones now emit a redstone signal that varies with distance if compasses that point to it are held in the same dimension."}]