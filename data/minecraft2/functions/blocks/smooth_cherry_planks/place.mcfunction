#Placing block2

execute at @s align xyz run summon armor_stand ~0.5 ~ ~0.5 {Marker:1b,Invisible:1b,Pose:{Head:[0f,180f,0f]},Tags:["smooth_cherry_planks"],ArmorItems:[{},{},{},{id:"minecraft:item_frame",Count:1b,tag:{CustomModelData:11}}]}
execute at @s run setblock ~ ~ ~ minecraft:cherry_planks
execute at @s align xyz run playsound minecraft:block.cherry_wood.place block @a[distance=..16]
kill @s

