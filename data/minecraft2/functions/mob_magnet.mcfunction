execute at @e[tag=mob_magnet] run tp @e[type=!minecraft:player,type=!minecraft:item,tag=!mob_magnet,sort=nearest,limit=1,distance=..10] @p
execute at @e[tag=mob_magnet] as @p[gamemode=!creative] run function minecraft2:give/mob_magnet
kill @e[tag=mob_magnet]