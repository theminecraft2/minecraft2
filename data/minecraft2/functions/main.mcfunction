# превет недодаун

# the loop function 

# piglins' king spawning

execute at @e[nbt={Item:{tag:{Tags:["amulet_of_spawn_piglins_king"]}}}] run summon piglin ~ ~ ~ {Tags:["piglins_king"],ArmorItems:[{id:"netherite_boots",Count:1},{id:"netherite_leggings",Count:1},{id:"netherite_chestplate",Count:1},{id:"netherite_helmet",Count:1}],ActiveEffects:[{Id:10,Amplifier:5b,Duration:600,ShowParticles:0b},{Id:24,Amplifier:1,Duration:999999,ShowParticles:0b},{Id:11,Amplifier:3,Duration:999999,ShowParticles:0b},{Id:12,Amplifier:25,Duration:999999,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:6.0d}]}

function minecraft2:mob_magnet

# mushroom mob

item replace entity @e[tag=mushroom_mob,nbt={Motion:[0.0d,0.0d,0.0d]}] armor.head with carved_pumpkin{CustomModelData:10}
item replace entity @e[tag=mushroom_mob,nbt={Motion:[0.0d,0.0d,0.0d]}] armor.head with carved_pumpkin{CustomModelData:11}

execute at @e[type=mooshroom,tag=!spawned,nbt={Age:0}] run summon zombie ~ ~ ~ {Tags:["mushroom_mob"],DeathLootTable:"minecraft2:entities/mushroom_mob",Silent:true,Attributes:[{Name:"generic.max_health",Base:60.0d}],ActiveEffects:[{Id:7,Amplifier:127b}]}
execute at @e[type=mooshroom,tag=!spawned,nbt={Age:0}] run summon mooshroom ~ ~ ~ {Tags:["spawned"]}
kill @e[type=mooshroom,tag=!spawned,nbt={Age:0}]

# magic

execute as @a run title @s actionbar [{"text":"Магическая энергия: ","color":"yellow"},{"score":{"name":"@s","objective":"mc2_magic_energy"}}]

execute at @a[scores={mc2_damage=10..,mc2_magic_energy=10..20},nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{Tags:["mc2_magic_wand"]}}}] run effect give @e[limit=1,sort=nearest,type=!player] wither 10 255 true
execute at @a[scores={mc2_damage=10..,mc2_magic_energy=10..20},nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{Tags:["mc2_magic_wand"]}}}] run effect give @e[limit=1,sort=nearest,type=!player] slowness 10 255 true
execute as @a[scores={mc2_damage=10..,mc2_magic_energy=10..20},nbt={SelectedItem:{id:"minecraft:netherite_sword",tag:{Tags:["mc2_magic_wand"]}}}] run scoreboard players remove @s mc2_magic_energy 10
execute as @a[scores={mc2_damage=1..200}] run scoreboard players set @s mc2_damage 0

# stop editing

execute at @e[nbt={Item:{tag:{Tags:["remove"]}}}] run kill @e[type=item,distance=..1]
schedule function minecraft2:main 1s

# datapack by fakeminer