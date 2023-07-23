scoreboard players add @a[scores={mc2_magic_energy=0..19}] mc2_magic_energy 1
execute as @a run title @s actionbar [{"text":"Магическая энергия: ","color":"yellow"},{"color":"green","score":{"name":"@s","objective":"mc2_magic_energy"}}]

schedule function minecraft2:magic_energy_regen 20s