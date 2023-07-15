tellraw @a [{"text":"<Minecraft 2 Datapack> Настройка датапака успешно завершена!"}]

scoreboard objectives add mc2_magic_energy dummy
scoreboard objectives add mc2_damage dummy
scoreboard players set @a mc2_magic_energy 0
scoreboard objectives setdisplay list mc2_magic_energy