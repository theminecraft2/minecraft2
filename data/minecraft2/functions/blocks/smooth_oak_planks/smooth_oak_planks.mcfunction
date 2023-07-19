#Гладкие дубовые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_oak_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_oak_planks] run function minecraft2:blocks/smooth_oak_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_oak_planks] at @s unless block ~ ~ ~ minecraft:oak_planks run function minecraft2:blocks/smooth_oak_planks/destroy
