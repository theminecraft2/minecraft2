kill @e[type=item,nbt={Item:{id:"minecraft:acacia_planks"}},distance=..1.8,limit=1]
execute if entity @p[gamemode=survival] run loot spawn ~ ~ ~ loot minecraft2:blocks/smooth_acacia_planks
kill @s