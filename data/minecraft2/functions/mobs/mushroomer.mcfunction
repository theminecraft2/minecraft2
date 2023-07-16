item replace entity @e[tag=mushroomer,nbt={Motion: [0.0d, 0.0d, 0.0d]}] armor.head with minecraft:carved_pumpkin{CustomModelData: 10,Tags:["clear"]}

item replace entity @e[tag=mushroomer,nbt=!{Motion: [0.0d, 0.0d, 0.0d]}] armor.head with minecraft:carved_pumpkin{CustomModelData: 11,Tags:["clear"]}

execute at @e[type=mooshroom,tag=!spawned,nbt={Age: 0}] run summon husk ~ ~ ~ {Tags: ["mushroomer"], DeathLootTable: "minecraft2:entities/mushroomer", Silent: true, Attributes: [{Name: "generic.max_health", Base: 60.0d}], ActiveEffects: [{Id: 7, Amplifier: 127b}, {Id: 14, Amplifier: 10b, Duration: 999999}]}

data modify entity @e[type=mooshroom,tag=!spawned,nbt={Age: 0},limit=1] Tags set value ["spawned"]

execute at @e[tag=mushroomer,nbt=!{Motion: [0.0d, 0.0d, 0.0d]}] run playsound minecraft:block.composter.fill ambient @p ~ ~ ~ 1
execute at @e[tag=mushroomer,nbt=!{HurtTime:0s}] run playsound minecraft:entity.zombie.hurt hostile @p ~ ~ ~ 1