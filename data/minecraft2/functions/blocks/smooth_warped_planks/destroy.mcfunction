#Destroy block2

execute if entity @p[gamemode=survival] run summon item ~ ~0.5 ~ {Item: {id: "minecraft:item_frame", Count: 1b, tag: {EntityTag: {Tags: ["smooth_warped_planks"], Invisible: 1b}, CustomModelData: 8, display: {Name: '{"text":"Гладкие искажённые доски","italic":false}'}}}, Motion: [0.0d, 0.2d, 0.0d], PickupDelay: 10}
execute if entity @p[gamemode=survival] run kill @e[type=item,distance=..2,limit=1,nbt={Item: {id: "minecraft:warped_planks"}}]
kill @s