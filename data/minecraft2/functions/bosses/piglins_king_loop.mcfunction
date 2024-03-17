execute at @e[type=minecraft:piglin,tag=piglins_king] if entity @a[distance=..10] at @a[distance=..10] run loot spawn ^ ^ ^5 loot minecraft2:piglins_king_attacks

execute at @e[nbt={Item:{id:"minecraft:structure_void",tag:{Tags:["piglins_king_functions:lightning_bolt"]}}}] at @a[distance=..10] run summon lightning_bolt ~ ~ ~
execute at @e[nbt={Item:{id:"minecraft:structure_void",tag:{Tags:["piglins_king_functions:tnt"]}}}] at @a[distance=..10] run summon tnt ~ ~ ~
execute at @e[nbt={Item:{id:"minecraft:structure_void",tag:{Tags:["piglins_king_functions:lava"]}}}] at @a[distance=..10] run setblock ~ ~ ~ lava
execute at @e[nbt={Item:{id:"minecraft:structure_void",tag:{Tags:["piglins_king_functions:arrow"]}}}] at @a[distance=..10] run summon minecraft:arrow ~ ~3 ~ 
execute at @e[nbt={Item:{id:"minecraft:structure_void",tag:{Tags:["piglins_king_functions:helper"]}}}] at @a[distance=..10] run summon piglin_brute

schedule function minecraft2:piglins_king_loop 3s