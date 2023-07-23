kill @e[type=item,nbt={Item:{id:"minecraft:jungle_planks"}},distance=..1.8,limit=1]
execute if entity @p[gamemode=survival] run loot spawn ~ ~ ~ loot minecraft2:blocks/smooth_jungle_planks
kill @s