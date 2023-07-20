#Placing block2

execute at @s align xyz run summon armor_stand ~0.5 ~ ~0.5 {Marker:1b,Invisible:1b,Pose:{Head:[0f,180f,0f]},Tags:["verdantria_log"],ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:12}}]}
execute at @s run setblock ~ ~ ~ minecraft:oak_log
execute at @s align xyz run playsound minecraft:block.wood.place block @a[distance=..16]
kill @s

