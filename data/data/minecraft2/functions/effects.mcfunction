execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_fire_resistance"]}}]}] run effect give @s fire_resistance 10 0 true
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_jump_boost"]}}]}] run effect give @s jump_boost 10 0 true
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_live"]}}]}] run effect give @s regeneration 10 0 true
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_night_vision"]}}]}] run effect give @s night_vision 20 0 true
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_resistance"]}}]}] run effect give @s resistance 10 0 true
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_speed"]}}]}] run effect give @s speed 10 0 true
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_strength"]}}]}] run effect give @s strength 10 0 true
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_water_breathing"]}}]}] run effect give @s water_breathing 10 0 true

execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_fire_resistance"]}}]}] run scoreboard players remove @s mc2_magic_energy 1
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_jump_boost"]}}]}] run scoreboard players remove @s mc2_magic_energy 1
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_live"]}}]}] run scoreboard players remove @s mc2_magic_energy 1
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_night_vision"]}}]}] run scoreboard players remove @s mc2_magic_energy 1
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_resistance"]}}]}] run scoreboard players remove @s mc2_magic_energy 1
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_speed"]}}]}] run scoreboard players remove @s mc2_magic_energy 1
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_strength"]}}]}] run scoreboard players remove @s mc2_magic_energy 1
execute as @e[scores={mc2_magic_energy=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:scute",tag:{Tags:["amulet_of_water_breathing"]}}]}] run scoreboard players remove @s mc2_magic_energy 1

schedule function minecraft2:effects 9s