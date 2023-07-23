item replace entity @e[tag=grass_golem,nbt={Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 5,Tags:["clear"]}

item replace entity @e[tag=grass_golem,nbt=!{Motion: [0.0d, 0.0d, 0.0d]}] armor.head with carved_pumpkin{CustomModelData: 6,Tags:["clear"]}

execute at @e[tag=grass_golem] run loot spawn ~ ~ ~ loot minecraft2:gameplay/mealing

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ wheat[age=0] run function minecraft2:grow/wheat/3

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ wheat[age=3] run function minecraft2:grow/wheat/5

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ wheat[age=5] run function minecraft2:grow/wheat/7

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ potatoes[age=0] run function minecraft2:grow/potatoes/3

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ potatoes[age=3] run function minecraft2:grow/potatoes/5

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ potatoes[age=5] run function minecraft2:grow/potatoes/7

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ carrots[age=0] run function minecraft2:grow/carrots/3

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ carrots[age=3] run function minecraft2:grow/carrots/5

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ carrots[age=5] run function minecraft2:grow/carrots/7

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ beetroots[age=0] run function minecraft2:grow/beetroots/1

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ beetroots[age=1] run function minecraft2:grow/beetroots/2

execute at @e[type=item,nbt={Item:{tag:{Tags:["mc2_magic_meal"]}}}] if block ~ ~1 ~ beetroots[age=2] run function minecraft2:grow/beetroots/3