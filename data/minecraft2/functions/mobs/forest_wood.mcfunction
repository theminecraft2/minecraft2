item replace entity @e[tag=forest_wood,nbt={Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 3}
item replace entity @e[tag=forest_wood,nbt={Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 4}

execute at @e[type=zombie,tag=!spawned,nbt={Age: 0}] run summon husk ~ ~ ~ {Tags: ["forest_wood"], DeathLootTable: "minecraft2:entities/forest_wood", Silent: true, Attributes: [{Name: "generic.max_health", Base: 60.0d}], ActiveEffects: [{Id: 7, Amplifier: 127b}, {Id: 14, Amplifier: 10b, Duration: 999999}]}
execute at @e[type=zombie,tag=!spawned,nbt={Age: 0}] run summon zombie ~ ~ ~ {Tags: ["spawned"]}
kill @e[type=zombie,tag=!spawned,nbt={Age: 0}]