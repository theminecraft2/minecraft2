execute as @e[tag=forest_guardian,nbt={Motion: [0.0d, 0.0d, 0.0d]}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData: 7}

execute as @e[tag=forest_guardian,nbt=!{Motion: [0.0d, 0.0d, 0.0d]}] run item replace entity @s armor.head with minecraft:carved_pumpkin{CustomModelData: 8}

execute at @e[type=item,nbt={Item: {tag: {Tags: ["forest_guardian:small_bomb"]}}}] at @p run summon minecraft:fireball ~ ~5 ~ {ExplosionPower: 2, power: [0d, -1d, 0d]}

execute at @e[type=item,nbt={Item: {tag: {Tags: ["forest_guardian:big_bomb"]}}}] at @p run summon minecraft:fireball ~ ~5 ~ {ExplosionPower: 5, power: [0d, -1d, 0d]}

execute at @e[type=item,nbt={Item: {tag: {Tags: ["forest_guardian:lightning_bolt"]}}}] at @p run summon minecraft:lightning_bolt ~ ~ ~

execute at @e[type=item,nbt={Item: {tag: {Tags: ["forest_guardian:helper"]}}}] at @p run summon husk ~ ~ ~ {Tags: ["forest_monster"], Silent: true, Attributes: [{Name: "generic.max_health", Base: 30.0d}], ActiveEffects: [{Id: 14, Amplifier: 10b, Duration: 999999}, {Id: 12, Amplifier: 10b, Duration: 999999}, {Id: 5, Duration: 9999999, Amplifier: 5, ShowParticles: 0b}]}

execute unless entity @e[tag=forest_guardian] run schedule clear minecraft2:bosses/forest_guardian_loop

execute as @e[tag=forest_guardian,tag=!started_attacks] run function minecraft2:bosses/forest_guardian_loop
execute as @e[tag=forest_guardian,tag=!started_attacks] run data modify entity @s Tags set value ["forest_guardian", "started_attacks"]