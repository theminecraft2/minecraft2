#Вердантрия
execute as @e[type=minecraft:armor_stand,tag=verdantria_log] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=verdantria_log] run function minecraft2:blocks/verdantria_log/place
execute as @e[type=minecraft:armor_stand,tag=verdantria_log] at @s unless block ~ ~ ~ minecraft:oak_log run function minecraft2:blocks/verdantria_log/destroy