kill @e[type=item,nbt={Item:{id:"minecraft:cherry_planks"}},distance=..1.8,limit=1]
execute if entity @p[gamemode=survival] run loot spawn ~ ~ ~ loot minecraft2:blocks/smooth_cherry_planks
kill @s