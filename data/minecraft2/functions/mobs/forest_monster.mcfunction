execute at @a[nbt={Inventory: [{id: "minecraft:knowledge_book", tag: {Tags: ["mc2_spawn_forest_monster"]}}]}] run summon husk ~ ~ ~ {Tags: ["forest_monster"], DeathLootTable: "minecraft2:entities/forest_monster", Silent: true, Attributes: [{Name: "generic.max_health", Base: 10.0d}], ActiveEffects: [{Id: 7, Amplifier: 127b}, {Id: 14, Amplifier: 10b, Duration: 999999}]}

item replace entity @e[tag=forest_monster,nbt={Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 3}

item replace entity @e[tag=forest_monster,nbt=!{Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 4}