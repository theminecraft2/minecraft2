# я фокеминер
# я кубиус превет
# the loop function 

# piglins' king spawning

execute at @e[type=item,nbt={Item: {tag: {Tags: ["amulet_of_spawn_piglins_king"]}}}] run summon piglin ~ ~ ~ {Tags: ["piglins_king"], ArmorItems: [{id: "netherite_boots", Count: 1}, {id: "netherite_leggings", Count: 1}, {id: "netherite_chestplate", Count: 1}, {id: "netherite_helmet", Count: 1}], ActiveEffects: [{Id: 10, Amplifier: 5b, Duration: 600, ShowParticles: 0b}, {Id: 24, Amplifier: 1, Duration: 999999, ShowParticles: 0b}, {Id: 11, Amplifier: 3, Duration: 999999, ShowParticles: 0b}, {Id: 12, Amplifier: 25, Duration: 999999, ShowParticles: 0b}], Attributes: [{Name: "generic.attack_damage", Base: 6.0d}]}

function minecraft2:mob_magnet

# мобы

function minecraft2:mobs/mushroomer
function minecraft2:mobs/forest_monster
function minecraft2:mobs/goblin

# предметы

function minecraft2:items/magic_wand

execute as @a run title @s actionbar [{"text":"Магическая энергия: ","color":"yellow"},{"score":{"name":"@s","objective":"mc2_magic_energy"}}]

# Крафты с выбрасыванием (drofts)
execute at @e[type=item,nbt={Item:{id:"minecraft:diamond_helmet"}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_cencite_ingot"]},Count:5b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/cencite/helmet

execute at @e[type=item,nbt={Item:{id:"minecraft:diamond_chestplate"}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_cencite_ingot"]},Count:8b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/cencite/chestplate

execute at @e[type=item,nbt={Item:{id:"minecraft:diamond_leggings"}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_cencite_ingot"]},Count:7b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/cencite/leggings

execute at @e[type=item,nbt={Item:{id:"minecraft:diamond_boots"}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_cencite_ingot"]},Count:4b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/cencite/boots



execute at @e[type=item,nbt={Item:{id:"minecraft:diamond_helmet",tag:{Tags:["mc2_cencite_helmet"]}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_mushroom_plate"]},Count:5b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/mushroom/helmet

execute at @e[type=item,nbt={Item:{id:"minecraft:diamond_chestplate",tag:{Tags:["mc2_cencite_chestplate"]}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_mushroom_plate"]},Count:8b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/mushroom/chestplate

execute at @e[type=item,nbt={Item:{id:"minecraft:diamond_leggings",tag:{Tags:["mc2_cencite_leggings"]}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_mushroom_plate"]},Count:7b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/mushroom/leggings

execute at @e[type=item,nbt={Item:{id:"minecraft:diamond_boots",tag:{Tags:["mc2_cencite_boots"]}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_mushroom_plate"]},Count:4b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/mushroom/boots


# stop editing

execute at @e[type=item,nbt={Item: {tag: {Tags: ["remove"]}}}] run kill @e[type=item,distance=..1]
clear @a #minecraft2:clear{Tags: ["clear"]}
schedule function minecraft2:main 1s

# datapack by fakeminer