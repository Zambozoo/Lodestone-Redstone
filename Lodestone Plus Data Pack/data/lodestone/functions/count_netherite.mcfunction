# Store number of netherite_block in range of lodestone with netherite
scoreboard players set netherite lodestone 0
execute if block ~-1 ~-1 ~-1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~0 ~-1 ~-1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~1 ~-1 ~-1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~-1 ~0 ~-1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~0 ~0 ~-1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~1 ~0 ~-1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~-1 ~1 ~-1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~0 ~1 ~-1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~1 ~1 ~-1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~-1 ~-1 ~0 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~0 ~-1 ~0 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~1 ~-1 ~0 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~-1 ~0 ~0 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~1 ~0 ~0 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~-1 ~1 ~0 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~0 ~1 ~0 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~1 ~1 ~0 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~-1 ~-1 ~1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~0 ~-1 ~1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~1 ~-1 ~1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~-1 ~0 ~1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~0 ~0 ~1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~1 ~0 ~1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~-1 ~1 ~1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~0 ~1 ~1 minecraft:netherite_block run scoreboard players add netherite lodestone 1
execute if block ~1 ~1 ~1 minecraft:netherite_block run scoreboard players add netherite lodestone 1

# Check if range is whole dimension
execute if score netherite lodestone >= #20 lodestone run setblock ~ ~ ~ minecraft:target
execute if score netherite lodestone >= #20 lodestone run setblock ~ ~ ~ minecraft:target[power=1]

# If !overflow run power, happens at distance^2 == 65536^2 so we avoid that at (dx||dz)==32768
execute if score x2 lodestone < #max lodestone if score x2 lodestone > #min lodestone if score z2 lodestone < #max lodestone if score z2 lodestone > #min lodestone run function lodestone:power

setblock ~ ~ ~ minecraft:lodestone