kill @s
setblock ~ ~ ~ bamboo_planks
playsound minecraft:block.bamboo_wood.place block @a[distance=..10] ~ ~ ~
summon minecraft:item_display ~ ~0.5 ~ {brightness:{sky:15,block:0},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.001f,1.001f,1.001f]},item:{id:"bee_spawn_egg",tag:{CustomModelData:11},Count:1b},Tags:[smooth_bamboo_planks]}
