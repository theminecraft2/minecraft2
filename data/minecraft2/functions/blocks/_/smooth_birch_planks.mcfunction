execute as @e[type=minecraft:armor_stand,tag=smooth_birch_planks] run data merge entity @s {Fire: 100s}
execute as @e[type=minecraft:item_frame,tag=smooth_birch_planks] run function minecraft2:blocks/smooth_birch_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_birch_planks] at @s unless block ~ ~ ~ minecraft:birch_planks run function minecraft2:blocks/smooth_birch_planks/destroy