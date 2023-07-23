kill @e[type=item,nbt={Item:{id:"minecraft:dark_oak_planks"}},distance=..1.8,limit=1]
execute if entity @p[gamemode=survival] run loot spawn ~ ~ ~ loot minecraft2:blocks/smooth_dark_oak_planks
kill @s