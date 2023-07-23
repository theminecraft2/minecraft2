kill @e[type=item,nbt={Item:{id:"minecraft:azalea_leaves[persistent=true]"}},distance=..1.8,limit=1]
execute if entity @p[gamemode=survival] run loot spawn ~ ~ ~ loot minecraft2:blocks/foliader_leaves
kill @s