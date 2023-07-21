# the one-time start function

tellraw @a [{"text":"<Minecraft 2 Datapack> Если вы первый раз настраиваете датапак в этом мире, нажмите на кнопку -> "},{"color":"green","text":"[setup]","clickEvent":{"action":"run_command","value":"/function minecraft2:setup"}}]

function minecraft2:effects
function minecraft2:piglins_king_loop
function minecraft2:magic_energy_regen

# datapack by fakeminer
scoreboard objectives add motion_timer dummy
scoreboard objectives add ambient_timer dummy
scoreboard objectives add selected_mossy_flesh dummy
scoreboard objectives add eat_mossy_flesh minecraft.used:minecraft.bread