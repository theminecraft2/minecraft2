item replace entity @e[tag=forest_monster,nbt={Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 3}

item replace entity @e[tag=forest_monster,nbt=!{Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 4}

execute at @e[type=zombie,tag=!spawned] run summon husk ~ ~ ~ {Tags: ["forest_monster"], DeathLootTable: "minecraft2:entities/forest_monster", Silent: true, Attributes: [{Name: "generic.max_health", Base: 60.0d}], ActiveEffects: [{Id: 7, Amplifier: 127b}, {Id: 14, Amplifier: 10b, Duration: 999999}]}

data modify entity @e[type=zombie,tag=!spawned,limit=1] Tags set value ["spawned"]