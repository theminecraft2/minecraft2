execute as @e[type=minecraft:armor_stand,tag=verdantria_planks] run data merge entity @s {Fire: 100s}
execute as @e[type=minecraft:item_frame,tag=verdantria_planks] run function minecraft2:blocks/verdantria_planks/place
execute as @e[type=minecraft:armor_stand,tag=verdantria_planks] at @s unless block ~ ~ ~ minecraft:oak_planks run function minecraft2:blocks/verdantria_planks/destroy