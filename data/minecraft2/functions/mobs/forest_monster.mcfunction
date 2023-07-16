execute at @a[nbt={Inventory: [{id: "minecraft:knowledge_book", tag: {Tags: ["mc2_spawn_forest_monster"]}}]}] run summon husk ~ ~ ~ {Tags: ["forest_monster"], DeathLootTable: "minecraft2:entities/forest_monster", Silent: true, Attributes: [{Name: "generic.max_health", Base: 10.0d}], ActiveEffects: [{Id: 7, Amplifier: 127b}, {Id: 14, Amplifier: 10b, Duration: 999999}]}

item replace entity @e[tag=forest_monster,nbt={Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 3,Tags:["clear"]}

item replace entity @e[tag=forest_monster,nbt=!{Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 4,Tags:["clear"]}


# Обновлять motion таймер, ибо когда только создаём моба, у него таймера не существует, а если добавить ему в этот таймер 0, то таймер на мобе обновится и создастся.
scoreboard players add @p motion_timer 0

# Если моб двигается, добавлять ему в motion таймер 5.
scoreboard players set @p[nbt=!{Motion:[0.0,0.0,0.0]},scores={motion_timer=0}] motion_timer 10

# Если motion таймер больше 1, то вычитать из него 1.
scoreboard players remove @p[scores={motion_timer=1..}] motion_timer 1

# Если motion таймер равен 3 и моб не получал урон, то проигрывать звук топота.
execute as @p[scores={motion_timer=3},nbt={HurtTime:0s}] run playsound minecraft:block.wood.step neutral @a ~ ~ ~ 0.3 1

# Если моб получил урон, то проигрывать звук БОЛИ.
execute as @p[nbt={HurtTime:10s}] run playsound minecraft:block.wood.break hostile @a ~ ~ ~ 1 1
execute as @p[nbt={HurtTime:10s}] run particle minecraft:block oak_wood ~ ~0.5 ~ 0.1 0.1 0.1 1 10

# Каждый тик добавлять в ambient таймер 1
scoreboard players add @p ambient_timer 1

# На 100 тике ambient таймера проигрывать звук относительно моба, чтобы он не стоял беззвучно.
execute as @p[scores={ambient_timer=5}] run playsound minecraft:block.pumpkin.carve ambient @a ~ ~ ~ 1 1

# На 200 тике ambient таймера сбрасывать его на 0
scoreboard players set @p[scores={ambient_timer=10..}] ambient_timer 0