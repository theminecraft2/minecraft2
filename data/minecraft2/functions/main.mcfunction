
# the loop function 

# piglins' king spawning

execute at @e[nbt={Item: {tag: {Tags: ["amulet_of_spawn_piglins_king"]}}}] run summon piglin ~ ~ ~ {Tags: ["piglins_king"], ArmorItems: [{id: "netherite_boots", Count: 1}, {id: "netherite_leggings", Count: 1}, {id: "netherite_chestplate", Count: 1}, {id: "netherite_helmet", Count: 1}], ActiveEffects: [{Id: 10, Amplifier: 5b, Duration: 600, ShowParticles: 0b}, {Id: 24, Amplifier: 1, Duration: 999999, ShowParticles: 0b}, {Id: 11, Amplifier: 3, Duration: 999999, ShowParticles: 0b}, {Id: 12, Amplifier: 25, Duration: 999999, ShowParticles: 0b}], Attributes: [{Name: "generic.attack_damage", Base: 6.0d}]}

function minecraft2:mob_magnet

# мобы

function minecraft2:mobs/mushroomer
function minecraft2:mobs/forest_wood

# предметы

function minecraft2:items/magic_wand

execute as @a run title @s actionbar [{"text":"Магическая энергия: ","color":"yellow"},{"score":{"name":"@s","objective":"mc2_magic_energy"}}]

# stop editing

execute at @e[nbt={Item: {tag: {Tags: ["remove"]}}}] run kill @e[type=item,distance=..1]
schedule function minecraft2:main 1s

# datapack by fakeminer