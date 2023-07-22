execute as @e[type=minecraft:armor_stand,tag=verdantria_leaves] run data merge entity @s {Fire: 100s}
execute as @e[type=minecraft:item_frame,tag=verdantria_leaves] run function minecraft2:blocks/verdantria_leaves/place
execute as @e[type=minecraft:armor_stand,tag=verdantria_leaves] at @s unless block ~ ~ ~ minecraft:oak_leaves run function minecraft2:blocks/verdantria_leaves/destroy