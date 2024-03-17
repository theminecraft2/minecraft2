
#main
##mobs
function minecraft2:mobs/mushroomer
function minecraft2:mobs/forest_monster
function minecraft2:mobs/goblin
function minecraft2:mobs/grass_golem

##bosses
function minecraft2:bosses/piglins_king
function minecraft2:bosses/forest_guardian

##blocks
execute as @e[type=armor_stand,tag=block] at @s if block ~ ~ ~ air run function minecraft2:place
execute as @e[type=armor_stand,tag=block] at @s unless block ~ ~ ~ air run function minecraft2:not_place

##smooth_planks
function minecraft2:blocks/block/smooth_oak_planks
function minecraft2:blocks/block/smooth_spruce_planks
function minecraft2:blocks/block/smooth_birch_planks
function minecraft2:blocks/block/smooth_jungle_planks
function minecraft2:blocks/block/smooth_acacia_planks
function minecraft2:blocks/block/smooth_dark_oak_planks
function minecraft2:blocks/block/smooth_mangrove_planks
function minecraft2:blocks/block/smooth_cherry_planks
function minecraft2:blocks/block/smooth_bamboo_planks
function minecraft2:blocks/block/smooth_warped_planks
function minecraft2:blocks/block/smooth_crimson_planks
function minecraft2:blocks/block/smooth_foliader_planks

##foliader
function minecraft2:blocks/block/foliader_log
function minecraft2:blocks/block/foliader_wood
function minecraft2:blocks/block/stripped_foliader_log
function minecraft2:blocks/block/stripped_foliader_wood
function minecraft2:blocks/block/foliader_planks
function minecraft2:blocks/block/foliader_leaves

##mics
function minecraft2:items/mob_magnet
function minecraft2:items/magic_wand
function minecraft2:drofts
execute as @a run title @s actionbar [{"text":"Магическая энергия: ","color":"yellow"},{"score":{"name":"@s","objective":"mc2_magic_energy"}}]

##stop editing
execute at @e[type=item,nbt={Item: {tag: {Tags: ["remove"]}}}] run kill @e[type=item,distance=..1]
clear @a #minecraft2:clear{Tags: ["clear"]}
schedule function minecraft2:main 1s
#datapack by fakem1ner and kub1us