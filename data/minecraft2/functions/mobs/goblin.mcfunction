execute at @a[nbt={Inventory: [{id: "minecraft:knowledge_book", tag: {Tags: ["mc2_spawn_goblin"]}}]}] run summon husk ~ ~ ~ {Tags: ["goblin"], DeathLootTable: "minecraft2:entities/goblin", Silent: true, Attributes: [{Name: "generic.max_health", Base: 10.0d}], ActiveEffects: [{Id: 7, Amplifier: 127b}, {Id: 14, Amplifier: 10b, Duration: 999999}]}


item replace entity @e[tag=goblin,nbt={Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 1,Tags:["clear"]}

item replace entity @e[tag=goblin,nbt=!{Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 2,Tags:["clear"]}