
# the loop function 

# piglins' king spawning

execute at @e[type=item,nbt={Item: {tag: {Tags: ["amulet_of_spawn_piglins_king"]}}}] run summon piglin ~ ~ ~ {Tags: ["piglins_king"], ArmorItems: [{id: "netherite_boots", Count: 1}, {id: "netherite_leggings", Count: 1}, {id: "netherite_chestplate", Count: 1}, {id: "netherite_helmet", Count: 1}], ActiveEffects: [{Id: 10, Amplifier: 5b, Duration: 600, ShowParticles: 0b}, {Id: 24, Amplifier: 1, Duration: 999999, ShowParticles: 0b}, {Id: 11, Amplifier: 3, Duration: 999999, ShowParticles: 0b}, {Id: 12, Amplifier: 25, Duration: 999999, ShowParticles: 0b}], Attributes: [{Name: "generic.attack_damage", Base: 6.0d}]}

function minecraft2:mob_magnet

# Mobs

function minecraft2:mobs/mushroomer
function minecraft2:mobs/forest_monster
function minecraft2:mobs/goblin
function minecraft2:mobs/grass_golem

function minecraft2:bosses/forest_guardian

# items

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



execute at @e[type=item,nbt={Item:{id:"minecraft:iron_helmet"}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_wooden_metal_ingot"]},Count:5b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/wooden_iron/helmet

execute at @e[type=item,nbt={Item:{id:"minecraft:iron_chestplate"}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_wooden_metal_ingot"]},Count:8b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/wooden_iron/chestplate

execute at @e[type=item,nbt={Item:{id:"minecraft:iron_leggings"}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_wooden_metal_ingot"]},Count:7b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/wooden_iron/leggings

execute at @e[type=item,nbt={Item:{id:"minecraft:iron_boots"}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_wooden_metal_ingot"]},Count:4b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/wooden_iron/boots


execute at @e[type=item,nbt={Item:{id:"minecraft:coal"}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_forest_branch"]}}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot"}}] if block ~ ~-1 ~ minecraft:furnace run function minecraft2:drofts/item/materials/wooden_metal_ingot


execute at @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_cencite_ingot"]},Count:4b}}] if entity @e[type=item,nbt={Item:{id:"minecraft:iron_ingot",tag:{Tags:["mc2_wooden_metal_ingot"]},Count:4b}}] if entity @e[type=item,nbt={Item:{id:"minecraft:amethyst_shard"}}] if block ~ ~-1 ~ minecraft:crafting_table run function minecraft2:drofts/item/spawn_eggs/grass_golem


# stop editing

execute at @e[type=item,nbt={Item: {tag: {Tags: ["remove"]}}}] run kill @e[type=item,distance=..1]
clear @a #minecraft2:clear{Tags: ["clear"]}
schedule function minecraft2:main 1s

#blocks
#Гладкие дубовые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_oak_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_oak_planks] run function minecraft2:blocks/smooth_oak_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_oak_planks] at @s unless block ~ ~ ~ minecraft:oak_planks run function minecraft2:blocks/smooth_oak_planks/destroy

#Гладкие еловые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_spruce_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_spruce_planks] run function minecraft2:blocks/smooth_spruce_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_spruce_planks] at @s unless block ~ ~ ~ minecraft:spruce_planks run function minecraft2:blocks/smooth_spruce_planks/destroy

#Гладкие берёзовые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_birch_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_birch_planks] run function minecraft2:blocks/smooth_birch_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_birch_planks] at @s unless block ~ ~ ~ minecraft:birch_planks run function minecraft2:blocks/smooth_birch_planks/destroy

#Гладкие джунглевые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_jungle_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_jungle_planks] run function minecraft2:blocks/smooth_jungle_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_jungle_planks] at @s unless block ~ ~ ~ minecraft:jungle_planks run function minecraft2:blocks/smooth_jungle_planks/destroy

#Гладкие акациевые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_acacia_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_acacia_planks] run function minecraft2:blocks/smooth_acacia_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_acacia_planks] at @s unless block ~ ~ ~ minecraft:acacia_planks run function minecraft2:blocks/smooth_acacia_planks/destroy

#Гладкие доски из тёмного дума
execute as @e[type=minecraft:armor_stand,tag=smooth_dark_oak_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_dark_oak_planks] run function minecraft2:blocks/smooth_dark_oak_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_dark_oak_planks] at @s unless block ~ ~ ~ minecraft:dark_oak_planks run function minecraft2:blocks/smooth_dark_oak_planks/destroy

#Гладкие мангровые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_mangrove_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_mangrove_planks] run function minecraft2:blocks/smooth_mangrove_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_mangrove_planks] at @s unless block ~ ~ ~ minecraft:mangrove_planks run function minecraft2:blocks/smooth_mangrove_planks/destroy

#Гладкие искажённые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_warped_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_warped_planks] run function minecraft2:blocks/smooth_warped_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_warped_planks] at @s unless block ~ ~ ~ minecraft:warped_planks run function minecraft2:blocks/smooth_warped_planks/destroy

#Гладкие багровые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_crimson_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_crimson_planks] run function minecraft2:blocks/smooth_crimson_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_crimson_planks] at @s unless block ~ ~ ~ minecraft:crimson_planks run function minecraft2:blocks/smooth_crimson_planks/destroy

#Гладкие бамбуковые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_bamboo_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_bamboo_planks] run function minecraft2:blocks/smooth_bamboo_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_bamboo_planks] at @s unless block ~ ~ ~ minecraft:bamboo_planks run function minecraft2:blocks/smooth_bamboo_planks/destroy

#Гладкие вишнёвые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_cherry_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_cherry_planks] run function minecraft2:blocks/smooth_cherry_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_cherry_planks] at @s unless block ~ ~ ~ minecraft:cherry_planks run function minecraft2:blocks/smooth_cherry_planks/destroy

#Вердантрия
execute as @e[type=minecraft:armor_stand,tag=verdantria_log] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=verdantria_log] run function minecraft2:blocks/verdantria_log/place
execute as @e[type=minecraft:armor_stand,tag=verdantria_log] at @s unless block ~ ~ ~ minecraft:oak_log run function minecraft2:blocks/verdantria_log/destroy

#Обтёсанное вердантривое бревно
execute as @e[type=minecraft:armor_stand,tag=stripped_verdantria_log] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=stripped_verdantria_log] run function minecraft2:blocks/stripped_verdantria_log/place
execute as @e[type=minecraft:armor_stand,tag=stripped_verdantria_log] at @s unless block ~ ~ ~ minecraft:stripped_oak_log run function minecraft2:blocks/stripped_verdantria_log/destroy

#Вердантривые доски
execute as @e[type=minecraft:armor_stand,tag=verdantria_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=verdantria_planks] run function minecraft2:blocks/verdantria_planks/place
execute as @e[type=minecraft:armor_stand,tag=verdantria_planks] at @s unless block ~ ~ ~ minecraft:oak_planks run function minecraft2:blocks/verdantria_planks/destroy

#Гладкие вердантривые доски
execute as @e[type=minecraft:armor_stand,tag=smooth_verdantria_planks] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=smooth_verdantria_planks] run function minecraft2:blocks/smooth_verdantria_planks/place
execute as @e[type=minecraft:armor_stand,tag=smooth_verdantria_planks] at @s unless block ~ ~ ~ minecraft:oak_planks run function minecraft2:blocks/smooth_verdantria_planks/destroy

#Вердантривые листья
execute as @e[type=minecraft:armor_stand,tag=verdantria_leaves] run data merge entity @s {Fire:100s}
execute as @e[type=minecraft:item_frame,tag=verdantria_leaves] run function minecraft2:blocks/verdantria_leaves/place
execute as @e[type=minecraft:armor_stand,tag=verdantria_leaves] at @s unless block ~ ~ ~ minecraft:oak_leaves run function minecraft2:blocks/verdantria_leaves/destroy
#datapack by fakem1ner and kub1us