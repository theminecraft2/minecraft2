#Обтёсанное вердантривое бревно
execute as @e[type=minecraft:armor_stand,tag=stripped_verdantria_log] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=stripped_verdantria_log] run function minecraft2:blocks/stripped_verdantria_log/place
execute as @e[type=minecraft:armor_stand,tag=stripped_verdantria_log] at @s unless block ~ ~ ~ minecraft:stripped_oak_log run function minecraft2:blocks/stripped_verdantria_log/destroy