execute as @a[nbt={SelectedItem: {tag: {Tags: ["mossy_flesh"]}}}] run scoreboard players set @s selected_mossy_flesh 1
execute as @a[scores={selected_mossy_flesh=1}] if entity @s[nbt={SelectedItem: {tag: {Tags: ["mossy_flesh"]}}}] run scoreboard players set @s selected_mossy_flesh 0

execute as @a[scores={selected_mossy_flesh=1}] if entity @s[scores={eat_mossy_flesh=1..}] run effect give @s minecraft:resistance 5 1 true
scoreboard players set @a eat_mossy_flesh 0
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
execute at @e[type=item,nbt={Item: {id: "minecraft:diamond_helmet"}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_cencite_ingot"]}, Count: 5b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/cencite/helmet

execute at @e[type=item,nbt={Item: {id: "minecraft:diamond_chestplate"}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_cencite_ingot"]}, Count: 8b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/cencite/chestplate

execute at @e[type=item,nbt={Item: {id: "minecraft:diamond_leggings"}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_cencite_ingot"]}, Count: 7b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/cencite/leggings

execute at @e[type=item,nbt={Item: {id: "minecraft:diamond_boots"}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_cencite_ingot"]}, Count: 4b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/cencite/boots



execute at @e[type=item,nbt={Item: {id: "minecraft:diamond_helmet", tag: {Tags: ["mc2_cencite_helmet"]}}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_mushroom_plate"]}, Count: 5b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/mushroom/helmet

execute at @e[type=item,nbt={Item: {id: "minecraft:diamond_chestplate", tag: {Tags: ["mc2_cencite_chestplate"]}}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_mushroom_plate"]}, Count: 8b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/mushroom/chestplate

execute at @e[type=item,nbt={Item: {id: "minecraft:diamond_leggings", tag: {Tags: ["mc2_cencite_leggings"]}}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_mushroom_plate"]}, Count: 7b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/mushroom/leggings

execute at @e[type=item,nbt={Item: {id: "minecraft:diamond_boots", tag: {Tags: ["mc2_cencite_boots"]}}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_mushroom_plate"]}, Count: 4b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/mushroom/boots



execute at @e[type=item,nbt={Item: {id: "minecraft:iron_helmet"}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_wooden_metal_ingot"]}, Count: 5b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/wooden_iron/helmet

execute at @e[type=item,nbt={Item: {id: "minecraft:iron_chestplate"}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_wooden_metal_ingot"]}, Count: 8b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/wooden_iron/chestplate

execute at @e[type=item,nbt={Item: {id: "minecraft:iron_leggings"}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_wooden_metal_ingot"]}, Count: 7b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/wooden_iron/leggings

execute at @e[type=item,nbt={Item: {id: "minecraft:iron_boots"}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_wooden_metal_ingot"]}, Count: 4b}}] if block ~ ~-1 ~ minecraft:smithing_table run function minecraft2:drofts/item/armor/wooden_iron/boots


execute at @e[type=item,nbt={Item: {id: "minecraft:coal"}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_forest_branch"]}}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot"}}] if block ~ ~-1 ~ minecraft:furnace run function minecraft2:drofts/item/materials/wooden_metal_ingot


execute at @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_cencite_ingot"]}, Count: 4b}}] if entity @e[type=item,nbt={Item: {id: "minecraft:iron_ingot", tag: {Tags: ["mc2_wooden_metal_ingot"]}, Count: 4b}}] if entity @e[type=item,nbt={Item: {id: "minecraft:amethyst_shard"}}] if block ~ ~-1 ~ minecraft:crafting_table run function minecraft2:drofts/item/spawn_eggs/grass_golem

#blocks

function minecraft2:blocks/_/smooth_acacia_planks
function minecraft2:blocks/_/smooth_bamboo_planks
function minecraft2:blocks/_/smooth_birch_planks
function minecraft2:blocks/_/smooth_cherry_planks
function minecraft2:blocks/_/smooth_crimson_planks
function minecraft2:blocks/_/smooth_dark_oak_planks
function minecraft2:blocks/_/smooth_jungle_planks
function minecraft2:blocks/_/smooth_mangrove_planks
function minecraft2:blocks/_/smooth_oak_planks
function minecraft2:blocks/_/smooth_spruce_planks
function minecraft2:blocks/_/smooth_verdantria_planks
function minecraft2:blocks/_/stripped_verdantria_log
function minecraft2:blocks/_/verdantria_leaves
function minecraft2:blocks/_/verdantria_log
function minecraft2:blocks/_/verdantria_planks

# stop editing

execute at @e[type=item,nbt={Item: {tag: {Tags: ["remove"]}}}] run kill @e[type=item,distance=..1]
clear @a #minecraft2:clear{Tags: ["clear"]}
schedule function minecraft2:main 1s
#datapack by kub1us