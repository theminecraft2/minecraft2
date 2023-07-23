
item replace entity @e[tag=forest_zombie,nbt={Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 12,Tags:["clear"]}

item replace entity @e[tag=forest_zombie,nbt=!{Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 13,Tags:["clear"]}

execute at @e[tag=forest_zombie,nbt=!{Motion: [0.0d, 0.0d, 0.0d]}] run playsound minecraft:block.grass.step ambient @p ~ ~ ~ 1
execute at @e[tag=forest_zombie,nbt=!{HurtTime:0s}] run playsound minecraft:entity.zombie.hurt hostile @p ~ ~ ~ 1